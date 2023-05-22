.class public final Lzendesk/support/SupportEngineModule_UpdateViewObserverFactory;
.super Ljava/lang/Object;
.source "SupportEngineModule_UpdateViewObserverFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/messaging/components/CompositeActionListener<",
        "Lzendesk/messaging/Update;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/support/SupportEngineModule;


# direct methods
.method public constructor <init>(Lzendesk/support/SupportEngineModule;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lzendesk/support/SupportEngineModule_UpdateViewObserverFactory;->module:Lzendesk/support/SupportEngineModule;

    return-void
.end method

.method public static create(Lzendesk/support/SupportEngineModule;)Lzendesk/support/SupportEngineModule_UpdateViewObserverFactory;
    .locals 1

    .line 32
    new-instance v0, Lzendesk/support/SupportEngineModule_UpdateViewObserverFactory;

    invoke-direct {v0, p0}, Lzendesk/support/SupportEngineModule_UpdateViewObserverFactory;-><init>(Lzendesk/support/SupportEngineModule;)V

    return-object v0
.end method

.method public static updateViewObserver(Lzendesk/support/SupportEngineModule;)Lzendesk/messaging/components/CompositeActionListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportEngineModule;",
            ")",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/Update;",
            ">;"
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lzendesk/support/SupportEngineModule;->updateViewObserver()Lzendesk/messaging/components/CompositeActionListener;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/messaging/components/CompositeActionListener;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lzendesk/support/SupportEngineModule_UpdateViewObserverFactory;->get()Lzendesk/messaging/components/CompositeActionListener;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/messaging/components/CompositeActionListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/Update;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lzendesk/support/SupportEngineModule_UpdateViewObserverFactory;->module:Lzendesk/support/SupportEngineModule;

    invoke-static {v0}, Lzendesk/support/SupportEngineModule_UpdateViewObserverFactory;->updateViewObserver(Lzendesk/support/SupportEngineModule;)Lzendesk/messaging/components/CompositeActionListener;

    move-result-object v0

    return-object v0
.end method
