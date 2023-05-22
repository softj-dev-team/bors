.class public final Lzendesk/support/SupportEngineModule_TimerFactoryFactory;
.super Ljava/lang/Object;
.source "SupportEngineModule_TimerFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/messaging/components/Timer$Factory;",
        ">;"
    }
.end annotation


# instance fields
.field private final handlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lzendesk/support/SupportEngineModule;


# direct methods
.method public constructor <init>(Lzendesk/support/SupportEngineModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportEngineModule;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lzendesk/support/SupportEngineModule_TimerFactoryFactory;->module:Lzendesk/support/SupportEngineModule;

    .line 28
    iput-object p2, p0, Lzendesk/support/SupportEngineModule_TimerFactoryFactory;->handlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lzendesk/support/SupportEngineModule;Ljavax/inject/Provider;)Lzendesk/support/SupportEngineModule_TimerFactoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportEngineModule;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)",
            "Lzendesk/support/SupportEngineModule_TimerFactoryFactory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lzendesk/support/SupportEngineModule_TimerFactoryFactory;

    invoke-direct {v0, p0, p1}, Lzendesk/support/SupportEngineModule_TimerFactoryFactory;-><init>(Lzendesk/support/SupportEngineModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static timerFactory(Lzendesk/support/SupportEngineModule;Landroid/os/Handler;)Lzendesk/messaging/components/Timer$Factory;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lzendesk/support/SupportEngineModule;->timerFactory(Landroid/os/Handler;)Lzendesk/messaging/components/Timer$Factory;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/messaging/components/Timer$Factory;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lzendesk/support/SupportEngineModule_TimerFactoryFactory;->get()Lzendesk/messaging/components/Timer$Factory;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/messaging/components/Timer$Factory;
    .locals 2

    .line 33
    iget-object v0, p0, Lzendesk/support/SupportEngineModule_TimerFactoryFactory;->module:Lzendesk/support/SupportEngineModule;

    iget-object v1, p0, Lzendesk/support/SupportEngineModule_TimerFactoryFactory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-static {v0, v1}, Lzendesk/support/SupportEngineModule_TimerFactoryFactory;->timerFactory(Lzendesk/support/SupportEngineModule;Landroid/os/Handler;)Lzendesk/messaging/components/Timer$Factory;

    move-result-object v0

    return-object v0
.end method
