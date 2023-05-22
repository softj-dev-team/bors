/* -*- indent-tabs-mode: nil; js-indent-level: 2; js-indent-level: 2 -*- */
/* vim: set ft=javascript ts=2 et sw=2 tw=80: */
/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

"use strict";

// const { Cu, Ci } = require("chrome");
// const { GeneratedLocation } = require("devtools/server/actors/common");
// const { DebuggerServer } = require("devtools/server/main");
// const DevToolsUtils = require("devtools/shared/DevToolsUtils");
// const { assert, dumpn } = DevToolsUtils;
// const PromiseDebugging = require("PromiseDebugging");

const TYPED_ARRAY_CLASSES = ["Uint8Array", "Uint8ClampedArray", "Uint16Array",
      "Uint32Array", "Int8Array", "Int16Array", "Int32Array", "Float32Array",
      "Float64Array"];

// Number of items to preview in objects, arrays, maps, sets, lists,
// collections, etc.
const OBJECT_PREVIEW_MAX_ITEMS = 10;

/**
 * Creates an actor for the specified object.
 *
 * @param obj Debugger.Object
 *        The debuggee object.
 * @param hooks Object
 *        A collection of abstract methods that are implemented by the caller.
 *        ObjectActor requires the following functions to be implemented by
 *        the caller:
 *          - createValueGrip
 *              Creates a value grip for the given object
 *          - sources
 *              TabSources getter that manages the sources of a thread
 *          - createEnvironmentActor
 *              Creates and return an environment actor
 *          - getGripDepth
 *              An actor's grip depth getter
 *          - incrementGripDepth
 *              Increment the actor's grip depth
 *          - decrementGripDepth
 *              Decrement the actor's grip depth
 *          - globalDebugObject
 *              The Debuggee Global Object as given by the ThreadActor
 */
function ObjectActor(obj, {
  createValueGrip,
  sources,
  createEnvironmentActor,
  getGripDepth,
  incrementGripDepth,
  decrementGripDepth,
  getGlobalDebugObject
}) {
  assert(!obj.optimizedOut,
         "Should not create object actors for optimized out values!");
  this.obj = obj;
  this.hooks = {
    createValueGrip,
    sources,
    createEnvironmentActor,
    getGripDepth,
    incrementGripDepth,
    decrementGripDepth,
    getGlobalDebugObject
  };
  this.iterators = new Set();
}

ObjectActor.prototype = {
  actorPrefix: "obj",

  /**
   * Returns a grip for this actor for returning in a protocol message.
   */
  grip: function () {
    this.hooks.incrementGripDepth();

    let g = {
      "type": "object",
      "actor": this.actorID
    };

    // If it's a proxy, lie and tell that it belongs to an invented
    // "Proxy" class, and avoid calling the [[IsExtensible]] trap
    if(this.obj.isProxy) {
      g.class = "Proxy";
      g.proxyTarget = this.hooks.createValueGrip(this.obj.proxyTarget);
      g.proxyHandler = this.hooks.createValueGrip(this.obj.proxyHandler);
    } else {
      g.class = this.obj.class;
      g.extensible = this.obj.isExtensible();
      g.frozen = this.obj.isFrozen();
      g.sealed = this.obj.isSealed();
    }

    if (g.class != "DeadObject") {
      if (g.class == "Promise") {
        g.promiseState = this._createPromiseState();
      }

      // FF40+: Allow to know how many properties an object has
      // to lazily display them when there is a bunch.
      // Throws on some MouseEvent object in tests.
      try {
        // Bug 1163520: Assert on internal functions
        if (!["Function", "Proxy"].includes(g.class)) {
          g.ownPropertyLength = this.obj.getOwnPropertyNames().length;
        }
      } catch (e) {}

      let raw = this.obj.unsafeDereference();

      // If Cu is not defined, we are running on a worker thread, where xrays
      // don't exist.
      // if (Cu) {
      //   raw = Cu.unwaiveXrays(raw);
      // }

      if (!DevToolsUtils.isSafeJSObject(raw)) {
        raw = null;
      }

      // let previewers = DebuggerServer.ObjectActorPreviewers[g.class] ||
      //                  DebuggerServer.ObjectActorPreviewers.Object;
      // for (let fn of previewers) {
      //   try {
      //     if (fn(this, g, raw)) {
      //       break;
      //     }
      //   } catch (e) {
      //     let msg = "ObjectActor.prototype.grip previewer function";
      //     DevToolsUtils.reportException(msg, e);
      //   }
      // }
    }

    this.hooks.decrementGripDepth();
    return g;
  },

  /**
   * Returns an object exposing the internal Promise state.
   */
  _createPromiseState: function () {
    const { state, value, reason } = getPromiseState(this.obj);
    let promiseState = { state };

    if (state == "fulfilled") {
      promiseState.value = this.hooks.createValueGrip(value);
    } else if (state == "rejected") {
      promiseState.reason = this.hooks.createValueGrip(reason);
    }

    promiseState.creationTimestamp = Date.now() - this.obj.promiseLifetime;

    // Only add the timeToSettle property if the Promise isn't pending.
    if (state !== "pending") {
      promiseState.timeToSettle = this.obj.promiseTimeToResolution;
    }

    return promiseState;
  },

  /**
   * Releases this actor from the pool.
   */
  release: function () {
    if (this.registeredPool.objectActors) {
      this.registeredPool.objectActors.delete(this.obj);
    }
    this.iterators.forEach(actor => this.registeredPool.removeActor(actor));
    this.iterators.clear();
    this.registeredPool.removeActor(this);
  },

  /**
   * Handle a protocol request to provide the definition site of this function
   * object.
   */
  onDefinitionSite: function () {
    if (this.obj.class != "Function") {
      return {
        from: this.actorID,
        error: "objectNotFunction",
        message: this.actorID + " is not a function."
      };
    }

    if (!this.obj.script) {
      return {
        from: this.actorID,
        error: "noScript",
        message: this.actorID + " has no Debugger.Script"
      };
    }

    return this.hooks.sources().getOriginalLocation(new GeneratedLocation(
      this.hooks.sources().createNonSourceMappedActor(this.obj.script.source),
      this.obj.script.startLine,
      0 // TODO bug 901138: use Debugger.Script.prototype.startColumn
    )).then((originalLocation) => {
      return {
        source: originalLocation.originalSourceActor.form(),
        line: originalLocation.originalLine,
        column: originalLocation.originalColumn
      };
    });
  },

  /**
   * Handle a protocol request to provide the names of the properties defined on
   * the object and not its prototype.
   */
  onOwnPropertyNames: function () {
    return { from: this.actorID,
             ownPropertyNames: this.obj.getOwnPropertyNames() };
  },

  /**
   * Creates an actor to iterate over an object property names and values.
   * See PropertyIteratorActor constructor for more info about options param.
   *
   * @param request object
   *        The protocol request object.
   */
  onEnumProperties: function (request) {
    let actor = new PropertyIteratorActor(this, request.options);
    this.registeredPool.addActor(actor);
    this.iterators.add(actor);
    return { iterator: actor.grip() };
  },

  /**
   * Creates an actor to iterate over entries of a Map/Set-like object.
   */
  onEnumEntries: function () {
    let actor = new PropertyIteratorActor(this, { enumEntries: true });
    this.registeredPool.addActor(actor);
    this.iterators.add(actor);
    return { iterator: actor.grip() };
  },

  /**
   * Handle a protocol request to provide the prototype and own properties of
   * the object.
   */
  onPrototypeAndProperties: function () {
    let ownProperties = Object.create(null);
    let names;
    try {
      names = this.obj.getOwnPropertyNames();
    } catch (ex) {
      // The above can throw if this.obj points to a dead object.
      // TODO: we should use Cu.isDeadWrapper() - see bug 885800.
      return { from: this.actorID,
               prototype: this.hooks.createValueGrip(null),
               ownProperties: ownProperties,
               safeGetterValues: Object.create(null) };
    }
    for (let name of names) {
      ownProperties[name] = this._propertyDescriptor(name);
    }
    return { from: this.actorID,
             prototype: this.hooks.createValueGrip(this.obj.proto),
             ownProperties: ownProperties,
             safeGetterValues: this._findSafeGetterValues(names) };
  },

  /**
   * Find the safe getter values for the current Debugger.Object, |this.obj|.
   *
   * @private
   * @param array ownProperties
   *        The array that holds the list of known ownProperties names for
   *        |this.obj|.
   * @param number [limit=0]
   *        Optional limit of getter values to find.
   * @return object
   *         An object that maps property names to safe getter descriptors as
   *         defined by the remote debugging protocol.
   */
  _findSafeGetterValues: function (ownProperties, limit = 0) {
    let safeGetterValues = Object.create(null);
    let obj = this.obj;
    let level = 0, i = 0;

    // Most objects don't have any safe getters but inherit some from their
    // prototype. Avoid calling getOwnPropertyNames on objects that may have
    // many properties like Array, strings or js objects. That to avoid
    // freezing firefox when doing so.
    if (TYPED_ARRAY_CLASSES.includes(this.obj.class) ||
        ["Array", "Object", "String"].includes(this.obj.class)) {
      obj = obj.proto;
      level++;
    }

    while (obj) {
      let getters = this._findSafeGetters(obj);
      for (let name of getters) {
        // Avoid overwriting properties from prototypes closer to this.obj. Also
        // avoid providing safeGetterValues from prototypes if property |name|
        // is already defined as an own property.
        if (name in safeGetterValues ||
            (obj != this.obj && ownProperties.indexOf(name) !== -1)) {
          continue;
        }

        // Ignore __proto__ on Object.prototye.
        if (!obj.proto && name == "__proto__") {
          continue;
        }

        let desc = null, getter = null;
        try {
          desc = obj.getOwnPropertyDescriptor(name);
          getter = desc.get;
        } catch (ex) {
          // The above can throw if the cache becomes stale.
        }
        if (!getter) {
          obj._safeGetters = null;
          continue;
        }

        let result = getter.call(this.obj);
        if (result && !("throw" in result)) {
          let getterValue = undefined;
          if ("return" in result) {
            getterValue = result.return;
          } else if ("yield" in result) {
            getterValue = result.yield;
          }
          // WebIDL attributes specified with the LenientThis extended attribute
          // return undefined and should be ignored.
          if (getterValue !== undefined) {
            safeGetterValues[name] = {
              getterValue: this.hooks.createValueGrip(getterValue),
              getterPrototypeLevel: level,
              enumerable: desc.enumerable,
              writable: level == 0 ? desc.writable : true,
            };
            if (limit && ++i == limit) {
              break;
            }
          }
        }
      }
      if (limit && i == limit) {
        break;
      }

      obj = obj.proto;
      level++;
    }

    return safeGetterValues;
  },

  /**
   * Find the safe getters for a given Debugger.Object. Safe getters are native
   * getters which are safe to execute.
   *
   * @private
   * @param Debugger.Object object
   *        The Debugger.Object where you want to find safe getters.
   * @return Set
   *         A Set of names of safe getters. This result is cached for each
   *         Debugger.Object.
   */
  _findSafeGetters: function (object) {
    if (object._safeGetters) {
      return object._safeGetters;
    }

    let getters = new Set();
    let names = [];
    try {
      names = object.getOwnPropertyNames();
    } catch (ex) {
      // Calling getOwnPropertyNames() on some wrapped native prototypes is not
      // allowed: "cannot modify properties of a WrappedNative". See bug 952093.
    }

    for (let name of names) {
      let desc = null;
      try {
        desc = object.getOwnPropertyDescriptor(name);
      } catch (e) {
        // Calling getOwnPropertyDescriptor on wrapped native prototypes is not
        // allowed (bug 560072).
      }
      if (!desc || desc.value !== undefined || !("get" in desc)) {
        continue;
      }

      if (DevToolsUtils.hasSafeGetter(desc)) {
        getters.add(name);
      }
    }

    object._safeGetters = getters;
    return getters;
  },

  /**
   * Handle a protocol request to provide the prototype of the object.
   */
  onPrototype: function () {
    return { from: this.actorID,
             prototype: this.hooks.createValueGrip(this.obj.proto) };
  },

  /**
   * Handle a protocol request to provide the property descriptor of the
   * object's specified property.
   *
   * @param request object
   *        The protocol request object.
   */
  onProperty: function (request) {
    if (!request.name) {
      return { error: "missingParameter",
               message: "no property name was specified" };
    }

    return { from: this.actorID,
             descriptor: this._propertyDescriptor(request.name) };
  },

  /**
   * Handle a protocol request to provide the display string for the object.
   */
  onDisplayString: function () {
    const string = stringify(this.obj);
    return { from: this.actorID,
             displayString: this.hooks.createValueGrip(string) };
  },

  /**
   * A helper method that creates a property descriptor for the provided object,
   * properly formatted for sending in a protocol response.
   *
   * @private
   * @param string name
   *        The property that the descriptor is generated for.
   * @param boolean [onlyEnumerable]
   *        Optional: true if you want a descriptor only for an enumerable
   *        property, false otherwise.
   * @return object|undefined
   *         The property descriptor, or undefined if this is not an enumerable
   *         property and onlyEnumerable=true.
   */
  _propertyDescriptor: function (name, onlyEnumerable) {
    let desc;
    try {
      desc = this.obj.getOwnPropertyDescriptor(name);
    } catch (e) {
      // Calling getOwnPropertyDescriptor on wrapped native prototypes is not
      // allowed (bug 560072). Inform the user with a bogus, but hopefully
      // explanatory, descriptor.
      return {
        configurable: false,
        writable: false,
        enumerable: false,
        value: e.name
      };
    }

    if (!desc || onlyEnumerable && !desc.enumerable) {
      return undefined;
    }

    let retval = {
      configurable: desc.configurable,
      enumerable: desc.enumerable
    };

    if ("value" in desc) {
      retval.writable = desc.writable;
      retval.value = this.hooks.createValueGrip(desc.value);
    } else {
      if ("get" in desc) {
        retval.get = this.hooks.createValueGrip(desc.get);
      }
      if ("set" in desc) {
        retval.set = this.hooks.createValueGrip(desc.set);
      }
    }
    return retval;
  },

  /**
   * Handle a protocol request to provide the source code of a function.
   *
   * @param request object
   *        The protocol request object.
   */
  onDecompile: function (request) {
    if (this.obj.class !== "Function") {
      return { error: "objectNotFunction",
               message: "decompile request is only valid for object grips " +
                        "with a 'Function' class." };
    }

    return { from: this.actorID,
             decompiledCode: this.obj.decompile(!!request.pretty) };
  },

  /**
   * Handle a protocol request to provide the parameters of a function.
   */
  onParameterNames: function () {
    if (this.obj.class !== "Function") {
      return { error: "objectNotFunction",
               message: "'parameterNames' request is only valid for object " +
                        "grips with a 'Function' class." };
    }

    return { parameterNames: this.obj.parameterNames };
  },

  /**
   * Handle a protocol request to release a thread-lifetime grip.
   */
  onRelease: function () {
    this.release();
    return {};
  },

  /**
   * Handle a protocol request to provide the lexical scope of a function.
   */
  onScope: function () {
    if (this.obj.class !== "Function") {
      return { error: "objectNotFunction",
               message: "scope request is only valid for object grips with a" +
                        " 'Function' class." };
    }

    let envActor = this.hooks.createEnvironmentActor(this.obj.environment,
                                                     this.registeredPool);
    if (!envActor) {
      return { error: "notDebuggee",
               message: "cannot access the environment of this function." };
    }

    return { from: this.actorID, scope: envActor.form() };
  },

  /**
   * Handle a protocol request to get the list of dependent promises of a
   * promise.
   *
   * @return object
   *         Returns an object containing an array of object grips of the
   *         dependent promises
   */
  onDependentPromises: function () {
    if (this.obj.class != "Promise") {
      return { error: "objectNotPromise",
               message: "'dependentPromises' request is only valid for " +
                        "object grips with a 'Promise' class." };
    }

    let promises = this.obj.promiseDependentPromises.map(p => this.hooks.createValueGrip(p));

    return { promises };
  },

  /**
   * Handle a protocol request to get the allocation stack of a promise.
   */
  onAllocationStack: function () {
    if (this.obj.class != "Promise") {
      return { error: "objectNotPromise",
               message: "'allocationStack' request is only valid for " +
                        "object grips with a 'Promise' class." };
    }

    let stack = this.obj.promiseAllocationSite;
    let allocationStacks = [];

    while (stack) {
      if (stack.source) {
        let source = this._getSourceOriginalLocation(stack);

        if (source) {
          allocationStacks.push(source);
        }
      }
      stack = stack.parent;
    }

    return Promise.all(allocationStacks).then(stacks => {
      return { allocationStack: stacks };
    });
  },

  /**
   * Handle a protocol request to get the fulfillment stack of a promise.
   */
  onFulfillmentStack: function () {
    if (this.obj.class != "Promise") {
      return { error: "objectNotPromise",
               message: "'fulfillmentStack' request is only valid for " +
                        "object grips with a 'Promise' class." };
    }

    let stack = this.obj.promiseResolutionSite;
    let fulfillmentStacks = [];

    while (stack) {
      if (stack.source) {
        let source = this._getSourceOriginalLocation(stack);

        if (source) {
          fulfillmentStacks.push(source);
        }
      }
      stack = stack.parent;
    }

    return Promise.all(fulfillmentStacks).then(stacks => {
      return { fulfillmentStack: stacks };
    });
  },

  /**
   * Handle a protocol request to get the rejection stack of a promise.
   */
  onRejectionStack: function () {
    if (this.obj.class != "Promise") {
      return { error: "objectNotPromise",
               message: "'rejectionStack' request is only valid for " +
                        "object grips with a 'Promise' class." };
    }

    let stack = this.obj.promiseResolutionSite;
    let rejectionStacks = [];

    while (stack) {
      if (stack.source) {
        let source = this._getSourceOriginalLocation(stack);

        if (source) {
          rejectionStacks.push(source);
        }
      }
      stack = stack.parent;
    }

    return Promise.all(rejectionStacks).then(stacks => {
      return { rejectionStack: stacks };
    });
  },

  /**
   * Helper function for fetching the source location of a SavedFrame stack.
   *
   * @param SavedFrame stack
   *        The promise allocation stack frame
   * @return object
   *         Returns an object containing the source location of the SavedFrame
   *         stack.
   */
  _getSourceOriginalLocation: function (stack) {
    let source;

    // Catch any errors if the source actor cannot be found
    try {
      source = this.hooks.sources().getSourceActorByURL(stack.source);
    } catch (e) {}

    if (!source) {
      return null;
    }

    return this.hooks.sources().getOriginalLocation(new GeneratedLocation(
      source,
      stack.line,
      stack.column
    )).then((originalLocation) => {
      return {
        source: originalLocation.originalSourceActor.form(),
        line: originalLocation.originalLine,
        column: originalLocation.originalColumn,
        functionDisplayName: stack.functionDisplayName
      };
    });
  }
};

ObjectActor.prototype.requestTypes = {
  "definitionSite": ObjectActor.prototype.onDefinitionSite,
  "parameterNames": ObjectActor.prototype.onParameterNames,
  "prototypeAndProperties": ObjectActor.prototype.onPrototypeAndProperties,
  "enumProperties": ObjectActor.prototype.onEnumProperties,
  "prototype": ObjectActor.prototype.onPrototype,
  "property": ObjectActor.prototype.onProperty,
  "displayString": ObjectActor.prototype.onDisplayString,
  "ownPropertyNames": ObjectActor.prototype.onOwnPropertyNames,
  "decompile": ObjectActor.prototype.onDecompile,
  "release": ObjectActor.prototype.onRelease,
  "scope": ObjectActor.prototype.onScope,
  "dependentPromises": ObjectActor.prototype.onDependentPromises,
  "allocationStack": ObjectActor.prototype.onAllocationStack,
  "fulfillmentStack": ObjectActor.prototype.onFulfillmentStack,
  "rejectionStack": ObjectActor.prototype.onRejectionStack,
  "enumEntries": ObjectActor.prototype.onEnumEntries,
};

/**
 * Creates an actor to iterate over an object's property names and values.
 *
 * @param objectActor ObjectActor
 *        The object actor.
 * @param options Object
 *        A dictionary object with various boolean attributes:
 *        - enumEntries Boolean
 *          If true, enumerates the entries of a Map or Set object
 *          instead of enumerating properties.
 *        - ignoreIndexedProperties Boolean
 *          If true, filters out Array items.
 *          e.g. properties names between `0` and `object.length`.
 *        - ignoreNonIndexedProperties Boolean
 *          If true, filters out items that aren't array items
 *          e.g. properties names that are not a number between `0`
 *          and `object.length`.
 *        - sort Boolean
 *          If true, the iterator will sort the properties by name
 *          before dispatching them.
 *        - query String
 *          If non-empty, will filter the properties by names and values
 *          containing this query string. The match is not case-sensitive.
 *          Regarding value filtering it just compare to the stringification
 *          of the property value.
 */
function PropertyIteratorActor(objectActor, options) {
  if (options.enumEntries) {
    let cls = objectActor.obj.class;
    if (cls == "Map") {
      this.iterator = enumMapEntries(objectActor);
    } else if (cls == "WeakMap") {
      this.iterator = enumWeakMapEntries(objectActor);
    } else if (cls == "Set") {
      this.iterator = enumSetEntries(objectActor);
    } else if (cls == "WeakSet") {
      this.iterator = enumWeakSetEntries(objectActor);
    } else {
      throw new Error("Unsupported class to enumerate entries from: " + cls);
    }
  } else if (options.ignoreNonIndexedProperties && !options.query) {
    this.iterator = enumArrayProperties(objectActor, options);
  } else {
    this.iterator = enumObjectProperties(objectActor, options);
  }
}

PropertyIteratorActor.prototype = {
  actorPrefix: "propertyIterator",

  grip() {
    return {
      type: this.actorPrefix,
      actor: this.actorID,
      count: this.iterator.size
    };
  },

  names({ indexes }) {
    let list = [];
    for (let idx of indexes) {
      list.push(this.iterator.propertyName(idx));
    }
    return {
      names: indexes
    };
  },

  slice({ start, count }) {
    let ownProperties = Object.create(null);
    for (let i = start, m = start + count; i < m; i++) {
      let name = this.iterator.propertyName(i);
      ownProperties[name] = this.iterator.propertyDescription(i);
    }
    return {
      ownProperties
    };
  },

  all() {
    return this.slice({ start: 0, count: this.length });
  }
};

PropertyIteratorActor.prototype.requestTypes = {
  "names": PropertyIteratorActor.prototype.names,
  "slice": PropertyIteratorActor.prototype.slice,
  "all": PropertyIteratorActor.prototype.all,
};

function enumArrayProperties(objectActor, options) {
  let length = DevToolsUtils.getProperty(objectActor.obj, "length");
  if (typeof length !== "number") {
    // Pseudo arrays are flagged as ArrayLike if they have
    // subsequent indexed properties without having any length attribute.
    length = 0;
    let names = objectActor.obj.getOwnPropertyNames();
    for (let key of names) {
      if (isNaN(key) || key != length++) {
        break;
      }
    }
  }

  return {
    size: length,
    propertyName(index) {
      return index;
    },
    propertyDescription(index) {
      return objectActor._propertyDescriptor(index);
    }
  };
}

function enumObjectProperties(objectActor, options) {
  let names = [];
  try {
    names = objectActor.obj.getOwnPropertyNames();
  } catch (ex) {
    // Calling getOwnPropertyNames() on some wrapped native prototypes is not
    // allowed: "cannot modify properties of a WrappedNative". See bug 952093.
  }

  if (options.ignoreNonIndexedProperties || options.ignoreIndexedProperties) {
    let length = DevToolsUtils.getProperty(objectActor.obj, "length");
    if (typeof length !== "number") {
      // Pseudo arrays are flagged as ArrayLike if they have
      // subsequent indexed properties without having any length attribute.
      length = 0;
      for (let key of names) {
        if (isNaN(key) || key != length++) {
          break;
        }
      }
    }

    // It appears that getOwnPropertyNames always returns indexed properties
    // first, so we can safely slice `names` for/against indexed properties.
    // We do such clever operation to optimize very large array inspection,
    // like webaudio buffers.
    if (options.ignoreIndexedProperties) {
      // Keep items after `length` index
      names = names.slice(length);
    } else if (options.ignoreNonIndexedProperties) {
      // Remove `length` first items
      names.splice(length);
    }
  }

  let safeGetterValues = objectActor._findSafeGetterValues(names, 0);
  let safeGetterNames = Object.keys(safeGetterValues);
  // Merge the safe getter values into the existing properties list.
  for (let name of safeGetterNames) {
    if (!names.includes(name)) {
      names.push(name);
    }
  }

  if (options.query) {
    let { query } = options;
    query = query.toLowerCase();
    names = names.filter(name => {
      // Filter on attribute names
      if (name.toLowerCase().includes(query)) {
        return true;
      }
      // and then on attribute values
      let desc;
      try {
        desc = objectActor.obj.getOwnPropertyDescriptor(name);
      } catch (e) {
        // Calling getOwnPropertyDescriptor on wrapped native prototypes is not
        // allowed (bug 560072).
      }
      if (desc && desc.value &&
          String(desc.value).includes(query)) {
        return true;
      }
      return false;
    });
  }

  if (options.sort) {
    names.sort();
  }

  return {
    size: names.length,
    propertyName(index) {
      return names[index];
    },
    propertyDescription(index) {
      let name = names[index];
      let desc = objectActor._propertyDescriptor(name);
      if (!desc) {
        desc = safeGetterValues[name];
      } else if (name in safeGetterValues) {
        // Merge the safe getter values into the existing properties list.
        let { getterValue, getterPrototypeLevel } = safeGetterValues[name];
        desc.getterValue = getterValue;
        desc.getterPrototypeLevel = getterPrototypeLevel;
      }
      return desc;
    }
  };
}

/**
 * Helper function to create a grip from a Map/Set entry
 */
function gripFromEntry({ obj, hooks }, entry) {
  return hooks.createValueGrip(
    makeDebuggeeValueIfNeeded(obj, Cu.unwaiveXrays(entry)));
}

function enumMapEntries(objectActor) {
  // Iterating over a Map via .entries goes through various intermediate
  // objects - an Iterator object, then a 2-element Array object, then the
  // actual values we care about. We don't have Xrays to Iterator objects,
  // so we get Opaque wrappers for them. And even though we have Xrays to
  // Arrays, the semantics often deny access to the entires based on the
  // nature of the values. So we need waive Xrays for the iterator object
  // and the tupes, and then re-apply them on the underlying values until
  // we fix bug 1023984.
  //
  // Even then though, we might want to continue waiving Xrays here for the
  // same reason we do so for Arrays above - this filtering behavior is likely
  // to be more confusing than beneficial in the case of Object previews.
  let raw = objectActor.obj.unsafeDereference();

  let keys = [...Cu.waiveXrays(Map.prototype.keys.call(raw))];
  return {
    [Symbol.iterator]: function* () {
      for (let key of keys) {
        let value = Map.prototype.get.call(raw, key);
        yield [ key, value ].map(val => gripFromEntry(objectActor, val));
      }
    },
    size: keys.length,
    propertyName(index) {
      return index;
    },
    propertyDescription(index) {
      let key = keys[index];
      let val = Map.prototype.get.call(raw, key);
      return {
        enumerable: true,
        value: {
          type: "mapEntry",
          preview: {
            key: gripFromEntry(objectActor, key),
            value: gripFromEntry(objectActor, val)
          }
        }
      };
    }
  };
}

function enumWeakMapEntries(objectActor) {
  // We currently lack XrayWrappers for WeakMap, so when we iterate over
  // the values, the temporary iterator objects get created in the target
  // compartment. However, we _do_ have Xrays to Object now, so we end up
  // Xraying those temporary objects, and filtering access to |it.value|
  // based on whether or not it's Xrayable and/or callable, which breaks
  // the for/of iteration.
  //
  // This code is designed to handle untrusted objects, so we can safely
  // waive Xrays on the iterable, and relying on the Debugger machinery to
  // make sure we handle the resulting objects carefully.
  let raw = objectActor.obj.unsafeDereference();
  let keys = Cu.waiveXrays(
    ThreadSafeChromeUtils.nondeterministicGetWeakMapKeys(raw));

  return {
    [Symbol.iterator]: function* () {
      for (let key of keys) {
        let value = WeakMap.prototype.get.call(raw, key);
        yield [ key, value ].map(val => gripFromEntry(objectActor, val));
      }
    },
    size: keys.length,
    propertyName(index) {
      return index;
    },
    propertyDescription(index) {
      let key = keys[index];
      let val = WeakMap.prototype.get.call(raw, key);
      return {
        enumerable: true,
        value: {
          type: "mapEntry",
          preview: {
            key: gripFromEntry(objectActor, key),
            value: gripFromEntry(objectActor, val)
          }
        }
      };
    }
  };
}

function enumSetEntries(objectActor) {
  // We currently lack XrayWrappers for Set, so when we iterate over
  // the values, the temporary iterator objects get created in the target
  // compartment. However, we _do_ have Xrays to Object now, so we end up
  // Xraying those temporary objects, and filtering access to |it.value|
  // based on whether or not it's Xrayable and/or callable, which breaks
  // the for/of iteration.
  //
  // This code is designed to handle untrusted objects, so we can safely
  // waive Xrays on the iterable, and relying on the Debugger machinery to
  // make sure we handle the resulting objects carefully.
  let raw = objectActor.obj.unsafeDereference();
  let values = [...Cu.waiveXrays(Set.prototype.values.call(raw))];

  return {
    [Symbol.iterator]: function* () {
      for (let item of values) {
        yield gripFromEntry(objectActor, item);
      }
    },
    size: values.length,
    propertyName(index) {
      return index;
    },
    propertyDescription(index) {
      let val = values[index];
      return {
        enumerable: true,
        value: gripFromEntry(objectActor, val)
      };
    }
  };
}

function enumWeakSetEntries(objectActor) {
  // We currently lack XrayWrappers for WeakSet, so when we iterate over
  // the values, the temporary iterator objects get created in the target
  // compartment. However, we _do_ have Xrays to Object now, so we end up
  // Xraying those temporary objects, and filtering access to |it.value|
  // based on whether or not it's Xrayable and/or callable, which breaks
  // the for/of iteration.
  //
  // This code is designed to handle untrusted objects, so we can safely
  // waive Xrays on the iterable, and relying on the Debugger machinery to
  // make sure we handle the resulting objects carefully.
  let raw = objectActor.obj.unsafeDereference();
  let keys = Cu.waiveXrays(
    ThreadSafeChromeUtils.nondeterministicGetWeakSetKeys(raw));

  return {
    [Symbol.iterator]: function* () {
      for (let item of keys) {
        yield gripFromEntry(objectActor, item);
      }
    },
    size: keys.length,
    propertyName(index) {
      return index;
    },
    propertyDescription(index) {
      let val = keys[index];
      return {
        enumerable: true,
        value: gripFromEntry(objectActor, val)
      };
    }
  };
}

/**
 * Functions for adding information to ObjectActor grips for the purpose of
 * having customized output. This object holds arrays mapped by
 * Debugger.Object.prototype.class.
 *
 * In each array you can add functions that take three
 * arguments:
 *   - the ObjectActor instance and its hooks to make a preview for,
 *   - the grip object being prepared for the client,
 *   - the raw JS object after calling Debugger.Object.unsafeDereference(). This
 *   argument is only provided if the object is safe for reading properties and
 *   executing methods. See DevToolsUtils.isSafeJSObject().
 *
 * Functions must return false if they cannot provide preview
 * information for the debugger object, or true otherwise.
 */
DebuggerServer.ObjectActorPreviewers = {
  String: [function (objectActor, grip, rawObj) {
    return wrappedPrimitivePreviewer("String", String, objectActor, grip, rawObj);
  }],

  Boolean: [function (objectActor, grip, rawObj) {
    return wrappedPrimitivePreviewer("Boolean", Boolean, objectActor, grip, rawObj);
  }],

  Number: [function (objectActor, grip, rawObj) {
    return wrappedPrimitivePreviewer("Number", Number, objectActor, grip, rawObj);
  }],

  Function: [function ({obj, hooks}, grip) {
    if (obj.name) {
      grip.name = obj.name;
    }

    if (obj.displayName) {
      grip.displayName = obj.displayName.substr(0, 500);
    }

    if (obj.parameterNames) {
      grip.parameterNames = obj.parameterNames;
    }

    // Check if the developer has added a de-facto standard displayName
    // property for us to use.
    let userDisplayName;
    try {
      userDisplayName = obj.getOwnPropertyDescriptor("displayName");
    } catch (e) {
      // Calling getOwnPropertyDescriptor with displayName might throw
      // with "permission denied" errors for some functions.
      dumpn(e);
    }

    if (userDisplayName && typeof userDisplayName.value == "string" &&
        userDisplayName.value) {
      grip.userDisplayName = hooks.createValueGrip(userDisplayName.value);
    }

    let dbgGlobal = hooks.getGlobalDebugObject();
    if (dbgGlobal) {
      let script = dbgGlobal.makeDebuggeeValue(obj.unsafeDereference()).script;
      if (script) {
        grip.location = {
          url: script.url,
          line: script.startLine
        };
      }
    }

    return true;
  }],

  RegExp: [function ({obj, hooks}, grip) {
    // Avoid having any special preview for the RegExp.prototype itself.
    if (!obj.proto || obj.proto.class != "RegExp") {
      return false;
    }

    let str = RegExp.prototype.toString.call(obj.unsafeDereference());
    grip.displayString = hooks.createValueGrip(str);
    return true;
  }],

  Date: [function ({obj, hooks}, grip) {
    let time = Date.prototype.getTime.call(obj.unsafeDereference());

    grip.preview = {
      timestamp: hooks.createValueGrip(time),
    };
    return true;
  }],

  Array: [function ({obj, hooks}, grip) {
    let length = DevToolsUtils.getProperty(obj, "length");
    if (typeof length != "number") {
      return false;
    }

    grip.preview = {
      kind: "ArrayLike",
      length: length,
    };

    if (hooks.getGripDepth() > 1) {
      return true;
    }

    let raw = obj.unsafeDereference();
    let items = grip.preview.items = [];

    for (let i = 0; i < length; ++i) {
      // Array Xrays filter out various possibly-unsafe properties (like
      // functions, and claim that the value is undefined instead. This
      // is generally the right thing for privileged code accessing untrusted
      // objects, but quite confusing for Object previews. So we manually
      // override this protection by waiving Xrays on the array, and re-applying
      // Xrays on any indexed value props that we pull off of it.
      let desc = Object.getOwnPropertyDescriptor(Cu.waiveXrays(raw), i);
      if (desc && !desc.get && !desc.set) {
        let value = Cu.unwaiveXrays(desc.value);
        value = makeDebuggeeValueIfNeeded(obj, value);
        items.push(hooks.createValueGrip(value));
      } else {
        items.push(null);
      }

      if (items.length == OBJECT_PREVIEW_MAX_ITEMS) {
        break;
      }
    }

    return true;
  }],

  Set: [function (objectActor, grip) {
    let size = DevToolsUtils.getProperty(objectActor.obj, "size");
    if (typeof size != "number") {
      return false;
    }

    grip.preview = {
      kind: "ArrayLike",
      length: size,
    };

    // Avoid recursive object grips.
    if (objectActor.hooks.getGripDepth() > 1) {
      return true;
    }

    let items = grip.preview.items = [];
    for (let item of enumSetEntries(objectActor)) {
      items.push(item);
      if (items.length == OBJECT_PREVIEW_MAX_ITEMS) {
        break;
      }
    }

    return true;
  }],

  WeakSet: [function (objectActor, grip) {
    let enumEntries = enumWeakSetEntries(objectActor);

    grip.preview = {
      kind: "ArrayLike",
      length: enumEntries.size
    };

    // Avoid recursive object grips.
    if (objectActor.hooks.getGripDepth() > 1) {
      return true;
    }

    let items = grip.preview.items = [];
    for (let item of enumEntries) {
      items.push(item);
      if (items.length == OBJECT_PREVIEW_MAX_ITEMS) {
        break;
      }
    }

    return true;
  }],

  Map: [function (objectActor, grip) {
    let size = DevToolsUtils.getProperty(objectActor.obj, "size");
    if (typeof size != "number") {
      return false;
    }

    grip.preview = {
      kind: "MapLike",
      size: size,
    };

    if (objectActor.hooks.getGripDepth() > 1) {
      return true;
    }

    let entries = grip.preview.entries = [];
    for (let entry of enumMapEntries(objectActor)) {
      entries.push(entry);
      if (entries.length == OBJECT_PREVIEW_MAX_ITEMS) {
        break;
      }
    }

    return true;
  }],

  WeakMap: [function (objectActor, grip) {
    let enumEntries = enumWeakMapEntries(objectActor);

    grip.preview = {
      kind: "MapLike",
      size: enumEntries.size
    };

    if (objectActor.hooks.getGripDepth() > 1) {
      return true;
    }

    let entries = grip.preview.entries = [];
    for (let entry of enumEntries) {
      entries.push(entry);
      if (entries.length == OBJECT_PREVIEW_MAX_ITEMS) {
        break;
      }
    }

    return true;
  }],

  DOMStringMap: [function ({obj, hooks}, grip, rawObj) {
    if (!rawObj) {
      return false;
    }

    let keys = obj.getOwnPropertyNames();
    grip.preview = {
      kind: "MapLike",
      size: keys.length,
    };

    if (hooks.getGripDepth() > 1) {
      return true;
    }

    let entries = grip.preview.entries = [];
    for (let key of keys) {
      let value = makeDebuggeeValueIfNeeded(obj, rawObj[key]);
      entries.push([key, hooks.createValueGrip(value)]);
      if (entries.length == OBJECT_PREVIEW_MAX_ITEMS) {
        break;
      }
    }

    return true;
  }],

  Proxy: [function ({obj, hooks}, grip, rawObj) {
    grip.preview = {
      kind: "Object",
      ownProperties: Object.create(null),
      ownPropertiesLength: 2
    };

    if (hooks.getGripDepth() > 1) {
      return true;
    }

    grip.preview.ownProperties['<target>'] = {value: grip.proxyTarget};
    grip.preview.ownProperties['<handler>'] = {value: grip.proxyHandler};

    return true;
  }],
};

/**
 * Generic previewer for classes wrapping primitives, like String,
 * Number and Boolean.
 *
 * @param string className
 *        Class name to expect.
 * @param object classObj
 *        The class to expect, eg. String. The valueOf() method of the class is
 *        invoked on the given object.
 * @param ObjectActor objectActor
 *        The object actor
 * @param Object grip
 *        The result grip to fill in
 * @return Booolean true if the object was handled, false otherwise
 */
function wrappedPrimitivePreviewer(className, classObj, objectActor, grip, rawObj) {
  let {obj, hooks} = objectActor;

  if (!obj.proto || obj.proto.class != className) {
    return false;
  }

  let v = null;
  try {
    v = classObj.prototype.valueOf.call(rawObj);
  } catch (ex) {
    // valueOf() can throw if the raw JS object is "misbehaved".
    return false;
  }

  if (v === null) {
    return false;
  }

  let canHandle = GenericObject(objectActor, grip, rawObj, className === "String");
  if (!canHandle) {
    return false;
  }

  grip.preview.wrappedValue =
    hooks.createValueGrip(makeDebuggeeValueIfNeeded(obj, v));
  return true;
}

function GenericObject(objectActor, grip, rawObj, specialStringBehavior = false) {
  let {obj, hooks} = objectActor;
  if (grip.preview || grip.displayString || hooks.getGripDepth() > 1) {
    return false;
  }

  let i = 0, names = [];
  let preview = grip.preview = {
    kind: "Object",
    ownProperties: Object.create(null),
  };

  try {
    names = obj.getOwnPropertyNames();
  } catch (ex) {
    // Calling getOwnPropertyNames() on some wrapped native prototypes is not
    // allowed: "cannot modify properties of a WrappedNative". See bug 952093.
  }

  preview.ownPropertiesLength = names.length;

  let length;
  if (specialStringBehavior) {
    length = DevToolsUtils.getProperty(obj, "length");
    if (typeof length != "number") {
      specialStringBehavior = false;
    }
  }

  for (let name of names) {
    if (specialStringBehavior && /^[0-9]+$/.test(name)) {
      let num = parseInt(name, 10);
      if (num.toString() === name && num >= 0 && num < length) {
        continue;
      }
    }

    let desc = objectActor._propertyDescriptor(name, true);
    if (!desc) {
      continue;
    }

    preview.ownProperties[name] = desc;
    if (++i == OBJECT_PREVIEW_MAX_ITEMS) {
      break;
    }
  }

  if (i < OBJECT_PREVIEW_MAX_ITEMS) {
    preview.safeGetterValues = objectActor._findSafeGetterValues(
      Object.keys(preview.ownProperties),
      OBJECT_PREVIEW_MAX_ITEMS - i);
  }

  return true;
}

// Preview functions that do not rely on the object class.
DebuggerServer.ObjectActorPreviewers.Object = [
  function TypedArray({obj, hooks}, grip) {
    if (TYPED_ARRAY_CLASSES.indexOf(obj.class) == -1) {
      return false;
    }

    let length = DevToolsUtils.getProperty(obj, "length");
    if (typeof length != "number") {
      return false;
    }

    grip.preview = {
      kind: "ArrayLike",
      length: length,
    };

    if (hooks.getGripDepth() > 1) {
      return true;
    }

    let raw = obj.unsafeDereference();
    let global = Cu.getGlobalForObject(DebuggerServer);
    let classProto = global[obj.class].prototype;
    // The Xray machinery for TypedArrays denies indexed access on the grounds
    // that it's slow, and advises callers to do a structured clone instead.
    let safeView = Cu.cloneInto(classProto.subarray.call(raw, 0,
      OBJECT_PREVIEW_MAX_ITEMS), global);
    let items = grip.preview.items = [];
    for (let i = 0; i < safeView.length; i++) {
      items.push(safeView[i]);
    }

    return true;
  },

  function Error({obj, hooks}, grip) {
    switch (obj.class) {
      case "Error":
      case "EvalError":
      case "RangeError":
      case "ReferenceError":
      case "SyntaxError":
      case "TypeError":
      case "URIError":
        let name = DevToolsUtils.getProperty(obj, "name");
        let msg = DevToolsUtils.getProperty(obj, "message");
        let stack = DevToolsUtils.getProperty(obj, "stack");
        let fileName = DevToolsUtils.getProperty(obj, "fileName");
        let lineNumber = DevToolsUtils.getProperty(obj, "lineNumber");
        let columnNumber = DevToolsUtils.getProperty(obj, "columnNumber");
        grip.preview = {
          kind: "Error",
          name: hooks.createValueGrip(name),
          message: hooks.createValueGrip(msg),
          stack: hooks.createValueGrip(stack),
          fileName: hooks.createValueGrip(fileName),
          lineNumber: hooks.createValueGrip(lineNumber),
          columnNumber: hooks.createValueGrip(columnNumber),
        };
        return true;
      default:
        return false;
    }
  },

  function CSSMediaRule({obj, hooks}, grip, rawObj) {
    if (isWorker || !rawObj || !(rawObj instanceof Ci.nsIDOMCSSMediaRule)) {
      return false;
    }
    grip.preview = {
      kind: "ObjectWithText",
      text: hooks.createValueGrip(rawObj.conditionText),
    };
    return true;
  },

  function CSSStyleRule({obj, hooks}, grip, rawObj) {
    if (isWorker || !rawObj || !(rawObj instanceof Ci.nsIDOMCSSStyleRule)) {
      return false;
    }
    grip.preview = {
      kind: "ObjectWithText",
      text: hooks.createValueGrip(rawObj.selectorText),
    };
    return true;
  },

  function ObjectWithURL({obj, hooks}, grip, rawObj) {
    if (isWorker || !rawObj || !(rawObj instanceof Ci.nsIDOMCSSImportRule ||
                                 rawObj instanceof Ci.nsIDOMCSSStyleSheet ||
                                 rawObj instanceof Ci.nsIDOMLocation ||
                                 rawObj instanceof Ci.nsIDOMWindow)) {
      return false;
    }

    let url;
    if (rawObj instanceof Ci.nsIDOMWindow && rawObj.location) {
      url = rawObj.location.href;
    } else if (rawObj.href) {
      url = rawObj.href;
    } else {
      return false;
    }

    grip.preview = {
      kind: "ObjectWithURL",
      url: hooks.createValueGrip(url),
    };

    return true;
  },

  function ArrayLike({obj, hooks}, grip, rawObj) {
    if (isWorker || !rawObj ||
        obj.class != "DOMStringList" &&
        obj.class != "DOMTokenList" &&
        !(rawObj instanceof Ci.nsIDOMMozNamedAttrMap ||
          rawObj instanceof Ci.nsIDOMCSSRuleList ||
          rawObj instanceof Ci.nsIDOMCSSValueList ||
          rawObj instanceof Ci.nsIDOMFileList ||
          rawObj instanceof Ci.nsIDOMFontFaceList ||
          rawObj instanceof Ci.nsIDOMMediaList ||
          rawObj instanceof Ci.nsIDOMNodeList ||
          rawObj instanceof Ci.nsIDOMStyleSheetList)) {
      return false;
    }

    if (typeof rawObj.length != "number") {
      return false;
    }

    grip.preview = {
      kind: "ArrayLike",
      length: rawObj.length,
    };

    if (hooks.getGripDepth() > 1) {
      return true;
    }

    let items = grip.preview.items = [];

    for (let i = 0; i < rawObj.length &&
                    items.length < OBJECT_PREVIEW_MAX_ITEMS; i++) {
      let value = makeDebuggeeValueIfNeeded(obj, rawObj[i]);
      items.push(hooks.createValueGrip(value));
    }

    return true;
  },

  function CSSStyleDeclaration({obj, hooks}, grip, rawObj) {
    if (isWorker || !rawObj ||
        !(rawObj instanceof Ci.nsIDOMCSSStyleDeclaration)) {
      return false;
    }

    grip.preview = {
      kind: "MapLike",
      size: rawObj.length,
    };

    let entries = grip.preview.entries = [];

    for (let i = 0; i < OBJECT_PREVIEW_MAX_ITEMS &&
                    i < rawObj.length; i++) {
      let prop = rawObj[i];
      let value = rawObj.getPropertyValue(prop);
      entries.push([prop, hooks.createValueGrip(value)]);
    }

    return true;
  },

  function DOMNode({obj, hooks}, grip, rawObj) {
    if (isWorker || obj.class == "Object" || !rawObj ||
        !(rawObj instanceof Ci.nsIDOMNode)) {
      return false;
    }

    let preview = grip.preview = {
      kind: "DOMNode",
      nodeType: rawObj.nodeType,
      nodeName: rawObj.nodeName,
    };

    if (rawObj instanceof Ci.nsIDOMDocument && rawObj.location) {
      preview.location = hooks.createValueGrip(rawObj.location.href);
    } else if (rawObj instanceof Ci.nsIDOMDocumentFragment) {
      preview.childNodesLength = rawObj.childNodes.length;

      if (hooks.getGripDepth() < 2) {
        preview.childNodes = [];
        for (let node of rawObj.childNodes) {
          let actor = hooks.createValueGrip(obj.makeDebuggeeValue(node));
          preview.childNodes.push(actor);
          if (preview.childNodes.length == OBJECT_PREVIEW_MAX_ITEMS) {
            break;
          }
        }
      }
    } else if (rawObj instanceof Ci.nsIDOMElement) {
      // Add preview for DOM element attributes.
      if (rawObj instanceof Ci.nsIDOMHTMLElement) {
        preview.nodeName = preview.nodeName.toLowerCase();
      }

      let i = 0;
      preview.attributes = {};
      preview.attributesLength = rawObj.attributes.length;
      for (let attr of rawObj.attributes) {
        preview.attributes[attr.nodeName] = hooks.createValueGrip(attr.value);
      }
    } else if (rawObj instanceof Ci.nsIDOMAttr) {
      preview.value = hooks.createValueGrip(rawObj.value);
    } else if (rawObj instanceof Ci.nsIDOMText ||
               rawObj instanceof Ci.nsIDOMComment) {
      preview.textContent = hooks.createValueGrip(rawObj.textContent);
    }

    return true;
  },

  function DOMEvent({obj, hooks}, grip, rawObj) {
    if (isWorker || !rawObj || !(rawObj instanceof Ci.nsIDOMEvent)) {
      return false;
    }

    let preview = grip.preview = {
      kind: "DOMEvent",
      type: rawObj.type,
      properties: Object.create(null),
    };

    if (hooks.getGripDepth() < 2) {
      let target = obj.makeDebuggeeValue(rawObj.target);
      preview.target = hooks.createValueGrip(target);
    }

    let props = [];
    if (rawObj instanceof Ci.nsIDOMMouseEvent) {
      props.push("buttons", "clientX", "clientY", "layerX", "layerY");
    } else if (rawObj instanceof Ci.nsIDOMKeyEvent) {
      let modifiers = [];
      if (rawObj.altKey) {
        modifiers.push("Alt");
      }
      if (rawObj.ctrlKey) {
        modifiers.push("Control");
      }
      if (rawObj.metaKey) {
        modifiers.push("Meta");
      }
      if (rawObj.shiftKey) {
        modifiers.push("Shift");
      }
      preview.eventKind = "key";
      preview.modifiers = modifiers;

      props.push("key", "charCode", "keyCode");
    } else if (rawObj instanceof Ci.nsIDOMTransitionEvent) {
      props.push("propertyName", "pseudoElement");
    } else if (rawObj instanceof Ci.nsIDOMAnimationEvent) {
      props.push("animationName", "pseudoElement");
    } else if (rawObj instanceof Ci.nsIDOMClipboardEvent) {
      props.push("clipboardData");
    }

    // Add event-specific properties.
    for (let prop of props) {
      let value = rawObj[prop];
      if (value && (typeof value == "object" || typeof value == "function")) {
        // Skip properties pointing to objects.
        if (hooks.getGripDepth() > 1) {
          continue;
        }
        value = obj.makeDebuggeeValue(value);
      }
      preview.properties[prop] = hooks.createValueGrip(value);
    }

    // Add any properties we find on the event object.
    if (!props.length) {
      let i = 0;
      for (let prop in rawObj) {
        let value = rawObj[prop];
        if (prop == "target" || prop == "type" || value === null ||
            typeof value == "function") {
          continue;
        }
        if (value && typeof value == "object") {
          if (hooks.getGripDepth() > 1) {
            continue;
          }
          value = obj.makeDebuggeeValue(value);
        }
        preview.properties[prop] = hooks.createValueGrip(value);
        if (++i == OBJECT_PREVIEW_MAX_ITEMS) {
          break;
        }
      }
    }

    return true;
  },

  function DOMException({obj, hooks}, grip, rawObj) {
    if (isWorker || !rawObj || !(rawObj instanceof Ci.nsIDOMDOMException)) {
      return false;
    }

    grip.preview = {
      kind: "DOMException",
      name: hooks.createValueGrip(rawObj.name),
      message: hooks.createValueGrip(rawObj.message),
      code: hooks.createValueGrip(rawObj.code),
      result: hooks.createValueGrip(rawObj.result),
      filename: hooks.createValueGrip(rawObj.filename),
      lineNumber: hooks.createValueGrip(rawObj.lineNumber),
      columnNumber: hooks.createValueGrip(rawObj.columnNumber),
    };

    return true;
  },

  function PseudoArray({obj, hooks}, grip, rawObj) {
    let length;

    let keys = obj.getOwnPropertyNames();
    if (keys.length == 0) {
      return false;
    }

    // If no item is going to be displayed in preview, better display as sparse object.
    // The first key should contain the smallest integer index (if any).
    if(keys[0] >= OBJECT_PREVIEW_MAX_ITEMS) {
      return false;
    }

    // Pseudo-arrays should only have array indices and, optionally, a "length" property.
    // Since integer indices are sorted first, check if the last property is "length".
    if(keys[keys.length-1] === "length") {
      keys.pop();
      length = DevToolsUtils.getProperty(obj, "length");
    } else {
      // Otherwise, let length be the (presumably) greatest array index plus 1.
      length = +keys[keys.length-1] + 1;
    }
    // Check if length is a valid array length, i.e. is a Uint32 number.
    if(typeof length !== "number" || length >>> 0 !== length) {
      return false;
    }

    // Ensure all keys are increasing array indices smaller than length. The order is not
    // guaranteed for exotic objects but, in most cases, big array indices and properties
    // which are not integer indices should be at the end. Then, iterating backwards
    // allows us to return earlier when the object is not completely a pseudo-array.
    let prev = length;
    for(let i = keys.length - 1; i >= 0; --i) {
      let key = keys[i];
      let numKey = key >>> 0; // ToUint32(key)
      if (numKey + '' !== key || numKey >= prev) {
        return false;
      }
      prev = numKey;
    }

    grip.preview = {
      kind: "ArrayLike",
      length: length,
    };

    // Avoid recursive object grips.
    if (hooks.getGripDepth() > 1) {
      return true;
    }

    let items = grip.preview.items = [];
    let numItems = Math.min(OBJECT_PREVIEW_MAX_ITEMS, length);

    for (let i = 0; i < numItems; ++i) {
      let desc = obj.getOwnPropertyDescriptor(i);
      if (desc && 'value' in desc) {
        items.push(hooks.createValueGrip(desc.value));
      } else {
        items.push(null);
      }
    }

    return true;
  },

  function Object(objectActor, grip, rawObj) {
    return GenericObject(objectActor, grip, rawObj, /* specialStringBehavior = */ false);
  },
];

/**
 * Get thisDebugger.Object referent's `promiseState`.
 *
 * @returns Object
 *          An object of one of the following forms:
 *          - { state: "pending" }
 *          - { state: "fulfilled", value }
 *          - { state: "rejected", reason }
 */
function getPromiseState(obj) {
  if (obj.class != "Promise") {
    throw new Error(
      "Can't call `getPromiseState` on `Debugger.Object`s that don't " +
      "refer to Promise objects.");
  }

  let state = { state: obj.promiseState };
  if (state.state === "fulfilled") {
    state.value = obj.promiseValue;
  } else if (state.state === "rejected") {
    state.reason = obj.promiseReason;
  }
  return state;
}

/**
 * Determine if a given value is non-primitive.
 *
 * @param Any value
 *        The value to test.
 * @return Boolean
 *         Whether the value is non-primitive.
 */
function isObject(value) {
  const type = typeof value;
  return type == "object" ? value !== null : type == "function";
}

/**
 * Create a function that can safely stringify Debugger.Objects of a given
 * builtin type.
 *
 * @param Function ctor
 *        The builtin class constructor.
 * @return Function
 *         The stringifier for the class.
 */
function createBuiltinStringifier(ctor) {
  return obj => ctor.prototype.toString.call(obj.unsafeDereference());
}

/**
 * Stringify a Debugger.Object-wrapped Error instance.
 *
 * @param Debugger.Object obj
 *        The object to stringify.
 * @return String
 *         The stringification of the object.
 */
function errorStringify(obj) {
  let name = DevToolsUtils.getProperty(obj, "name");
  if (name === "" || name === undefined) {
    name = obj.class;
  } else if (isObject(name)) {
    name = stringify(name);
  }

  let message = DevToolsUtils.getProperty(obj, "message");
  if (isObject(message)) {
    message = stringify(message);
  }

  if (message === "" || message === undefined) {
    return name;
  }
  return name + ": " + message;
}

/**
 * Stringify a Debugger.Object based on its class.
 *
 * @param Debugger.Object obj
 *        The object to stringify.
 * @return String
 *         The stringification for the object.
 */
function stringify(obj) {
  if (obj.class == "DeadObject") {
    const error = new Error("Dead object encountered.");
    DevToolsUtils.reportException("stringify", error);
    return "<dead object>";
  }

  const stringifier = stringifiers[obj.class] || stringifiers.Object;

  try {
    return stringifier(obj);
  } catch (e) {
    DevToolsUtils.reportException("stringify", e);
    return "<failed to stringify object>";
  }
}

// Used to prevent infinite recursion when an array is found inside itself.
var seen = null;

var stringifiers = {
  Error: errorStringify,
  EvalError: errorStringify,
  RangeError: errorStringify,
  ReferenceError: errorStringify,
  SyntaxError: errorStringify,
  TypeError: errorStringify,
  URIError: errorStringify,
  Boolean: createBuiltinStringifier(Boolean),
  Function: createBuiltinStringifier(Function),
  Number: createBuiltinStringifier(Number),
  RegExp: createBuiltinStringifier(RegExp),
  String: createBuiltinStringifier(String),
  Object: obj => "[object " + obj.class + "]",
  Array: obj => {
    // If we're at the top level then we need to create the Set for tracking
    // previously stringified arrays.
    const topLevel = !seen;
    if (topLevel) {
      seen = new Set();
    } else if (seen.has(obj)) {
      return "";
    }

    seen.add(obj);

    const len = DevToolsUtils.getProperty(obj, "length");
    let string = "";

    // The following check is only required because the debuggee could possibly
    // be a Proxy and return any value. For normal objects, array.length is
    // always a non-negative integer.
    if (typeof len == "number" && len > 0) {
      for (let i = 0; i < len; i++) {
        const desc = obj.getOwnPropertyDescriptor(i);
        if (desc) {
          const { value } = desc;
          if (value != null) {
            string += isObject(value) ? stringify(value) : value;
          }
        }

        if (i < len - 1) {
          string += ",";
        }
      }
    }

    if (topLevel) {
      seen = null;
    }

    return string;
  },
  DOMException: obj => {
    const message = DevToolsUtils.getProperty(obj, "message") || "<no message>";
    const result = (+DevToolsUtils.getProperty(obj, "result")).toString(16);
    const code = DevToolsUtils.getProperty(obj, "code");
    const name = DevToolsUtils.getProperty(obj, "name") || "<unknown>";

    return '[Exception... "' + message + '" ' +
           'code: "' + code + '" ' +
           'nsresult: "0x' + result + " (" + name + ')"]';
  },
  Promise: obj => {
    const { state, value, reason } = getPromiseState(obj);
    let statePreview = state;
    if (state != "pending") {
      const settledValue = state === "fulfilled" ? value : reason;
      statePreview += ": " + (typeof settledValue === "object" && settledValue !== null
                                ? stringify(settledValue)
                                : settledValue);
    }
    return "Promise (" + statePreview + ")";
  },
};

/**
 * Make a debuggee value for the given object, if needed. Primitive values
 * are left the same.
 *
 * Use case: you have a raw JS object (after unsafe dereference) and you want to
 * send it to the client. In that case you need to use an ObjectActor which
 * requires a debuggee value. The Debugger.Object.prototype.makeDebuggeeValue()
 * method works only for JS objects and functions.
 *
 * @param Debugger.Object obj
 * @param any value
 * @return object
 */
function makeDebuggeeValueIfNeeded(obj, value) {
  if (value && (typeof value == "object" || typeof value == "function")) {
    return obj.makeDebuggeeValue(value);
  }
  return value;
}

/**
 * Creates an actor for the specied "very long" string. "Very long" is specified
 * at the server's discretion.
 *
 * @param string String
 *        The string.
 */
function LongStringActor(string) {
  this.string = string;
  this.stringLength = string.length;
}

LongStringActor.prototype = {
  actorPrefix: "longString",

  disconnect: function () {
    // Because longStringActors is not a weak map, we won't automatically leave
    // it so we need to manually leave on disconnect so that we don't leak
    // memory.
    this._releaseActor();
  },

  /**
   * Returns a grip for this actor for returning in a protocol message.
   */
  grip: function () {
    return {
      "type": "longString",
      "initial": this.string.substring(
        0, DebuggerServer.LONG_STRING_INITIAL_LENGTH),
      "length": this.stringLength,
      "actor": this.actorID
    };
  },

  /**
   * Handle a request to extract part of this actor's string.
   *
   * @param request object
   *        The protocol request object.
   */
  onSubstring: function (request) {
    return {
      "from": this.actorID,
      "substring": this.string.substring(request.start, request.end)
    };
  },

  /**
   * Handle a request to release this LongStringActor instance.
   */
  onRelease: function () {
    // TODO: also check if registeredPool === threadActor.threadLifetimePool
    // when the web console moves aray from manually releasing pause-scoped
    // actors.
    this._releaseActor();
    this.registeredPool.removeActor(this);
    return {};
  },

  _releaseActor: function () {
    if (this.registeredPool && this.registeredPool.longStringActors) {
      delete this.registeredPool.longStringActors[this.string];
    }
  }
};

LongStringActor.prototype.requestTypes = {
  "substring": LongStringActor.prototype.onSubstring,
  "release": LongStringActor.prototype.onRelease
};

/**
 * Create a grip for the given debuggee value.  If the value is an
 * object, will create an actor with the given lifetime.
 */
function createValueGrip(value, pool, makeObjectGrip) {
  switch (typeof value) {
    case "boolean":
      return value;

    case "string":
      if (stringIsLong(value)) {
        return longStringGrip(value, pool);
      }
      return value;

    case "number":
      if (value === Infinity) {
        return { type: "Infinity" };
      } else if (value === -Infinity) {
        return { type: "-Infinity" };
      } else if (Number.isNaN(value)) {
        return { type: "NaN" };
      } else if (!value && 1 / value === -Infinity) {
        return { type: "-0" };
      }
      return value;

    case "undefined":
      return { type: "undefined" };

    case "object":
      if (value === null) {
        return { type: "null" };
      }
      else if (value.optimizedOut ||
             value.uninitialized ||
             value.missingArguments) {
        // The slot is optimized out, an uninitialized binding, or
        // arguments on a dead scope
        return {
          type: "null",
          optimizedOut: value.optimizedOut,
          uninitialized: value.uninitialized,
          missingArguments: value.missingArguments
        };
      }
      return makeObjectGrip(value, pool);

    case "symbol":
      let form = {
        type: "symbol"
      };
      let name = getSymbolName(value);
      if (name !== undefined) {
        form.name = createValueGrip(name, pool, makeObjectGrip);
      }
      return form;

    default:
      assert(false, "Failed to provide a grip for: " + value);
      return null;
  }
}

// const symbolProtoToString = Symbol.prototype.toString;

// function getSymbolName(symbol) {
//   const name = symbolProtoToString.call(symbol).slice("Symbol(".length, -1);
//   return name || undefined;
// }

/**
 * Returns true if the string is long enough to use a LongStringActor instead
 * of passing the value directly over the protocol.
 *
 * @param str String
 *        The string we are checking the length of.
 */
function stringIsLong(str) {
  return str.length >= DebuggerServer.LONG_STRING_LENGTH;
}

/**
 * Create a grip for the given string.
 *
 * @param str String
 *        The string we are creating a grip for.
 * @param pool ActorPool
 *        The actor pool where the new actor will be added.
 */
function longStringGrip(str, pool) {
  if (!pool.longStringActors) {
    pool.longStringActors = {};
  }

  if (pool.longStringActors.hasOwnProperty(str)) {
    return pool.longStringActors[str].grip();
  }

  let actor = new LongStringActor(str);
  pool.addActor(actor);
  pool.longStringActors[str] = actor;
  return actor.grip();
}

// exports.ObjectActor = ObjectActor;
// exports.PropertyIteratorActor = PropertyIteratorActor;
// exports.LongStringActor = LongStringActor;
// exports.createValueGrip = createValueGrip;
// exports.stringIsLong = stringIsLong;
// exports.longStringGrip = longStringGrip;
