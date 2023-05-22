.class public final Lzendesk/core/CoreModule_ActionHandlerRegistryFactory;
.super Ljava/lang/Object;
.source "CoreModule_ActionHandlerRegistryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/core/ActionHandlerRegistry;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/core/CoreModule;


# direct methods
.method public constructor <init>(Lzendesk/core/CoreModule;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lzendesk/core/CoreModule_ActionHandlerRegistryFactory;->module:Lzendesk/core/CoreModule;

    return-void
.end method

.method public static actionHandlerRegistry(Lzendesk/core/CoreModule;)Lzendesk/core/ActionHandlerRegistry;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lzendesk/core/CoreModule;->actionHandlerRegistry()Lzendesk/core/ActionHandlerRegistry;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/core/ActionHandlerRegistry;

    return-object p0
.end method

.method public static create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_ActionHandlerRegistryFactory;
    .locals 1

    .line 30
    new-instance v0, Lzendesk/core/CoreModule_ActionHandlerRegistryFactory;

    invoke-direct {v0, p0}, Lzendesk/core/CoreModule_ActionHandlerRegistryFactory;-><init>(Lzendesk/core/CoreModule;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lzendesk/core/CoreModule_ActionHandlerRegistryFactory;->get()Lzendesk/core/ActionHandlerRegistry;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/ActionHandlerRegistry;
    .locals 1

    .line 26
    iget-object v0, p0, Lzendesk/core/CoreModule_ActionHandlerRegistryFactory;->module:Lzendesk/core/CoreModule;

    invoke-static {v0}, Lzendesk/core/CoreModule_ActionHandlerRegistryFactory;->actionHandlerRegistry(Lzendesk/core/CoreModule;)Lzendesk/core/ActionHandlerRegistry;

    move-result-object v0

    return-object v0
.end method
