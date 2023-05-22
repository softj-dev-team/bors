.class public interface abstract Lcom/sdkbox/reflect/AdUnit;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Lcom/sdkbox/plugin/PluginListener;


# virtual methods
.method public abstract available(Ljava/lang/String;)Z
.end method

.method public abstract cache(Ljava/lang/String;)V
.end method

.method public abstract configure(Lcom/sdkbox/plugin/JSON;)V
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract hide(Ljava/lang/String;)V
.end method

.method public abstract identify()Ljava/lang/String;
.end method

.method public abstract observe(Lcom/sdkbox/reflect/AdUnitObserver;)V
.end method

.method public abstract observeAvailability(Lcom/sdkbox/reflect/AdUnitAvailabilityObserver;)V
.end method

.method public abstract play()V
.end method

.method public abstract play(Ljava/lang/String;Lcom/sdkbox/plugin/JSON;)Z
.end method

.method public abstract stopObserving(Lcom/sdkbox/reflect/AdUnitObserver;)V
.end method

.method public abstract stopObservingAvailability(Lcom/sdkbox/reflect/AdUnitAvailabilityObserver;)V
.end method
