.class interface abstract Lzendesk/support/SupportEngineComponent;
.super Ljava/lang/Object;
.source "SupportEngineComponent.java"


# annotations
.annotation runtime Ldagger/Component;
    modules = {
        Lzendesk/core/CoreModule;,
        Lzendesk/support/SupportModule;,
        Lzendesk/support/SupportEngineModule;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# virtual methods
.method public abstract supportEngine()Lzendesk/support/SupportEngine;
.end method
