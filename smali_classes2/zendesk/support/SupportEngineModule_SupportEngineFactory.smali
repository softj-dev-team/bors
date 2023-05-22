.class public final Lzendesk/support/SupportEngineModule_SupportEngineFactory;
.super Ljava/lang/Object;
.source "SupportEngineModule_SupportEngineFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/support/SupportEngine;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lzendesk/support/SupportEngineModule;

.field private final stateViewObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final supportEngineModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportEngineModel;",
            ">;"
        }
    .end annotation
.end field

.field private final updateViewObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/Update;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzendesk/support/SupportEngineModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportEngineModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportEngineModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/Update;",
            ">;>;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lzendesk/support/SupportEngineModule_SupportEngineFactory;->module:Lzendesk/support/SupportEngineModule;

    .line 39
    iput-object p2, p0, Lzendesk/support/SupportEngineModule_SupportEngineFactory;->contextProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p3, p0, Lzendesk/support/SupportEngineModule_SupportEngineFactory;->supportEngineModelProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p4, p0, Lzendesk/support/SupportEngineModule_SupportEngineFactory;->stateViewObserverProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p5, p0, Lzendesk/support/SupportEngineModule_SupportEngineFactory;->updateViewObserverProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lzendesk/support/SupportEngineModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/support/SupportEngineModule_SupportEngineFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportEngineModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportEngineModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/Update;",
            ">;>;)",
            "Lzendesk/support/SupportEngineModule_SupportEngineFactory;"
        }
    .end annotation

    .line 54
    new-instance v6, Lzendesk/support/SupportEngineModule_SupportEngineFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lzendesk/support/SupportEngineModule_SupportEngineFactory;-><init>(Lzendesk/support/SupportEngineModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static supportEngine(Lzendesk/support/SupportEngineModule;Landroid/content/Context;Ljava/lang/Object;Lzendesk/messaging/components/CompositeActionListener;Lzendesk/messaging/components/CompositeActionListener;)Lzendesk/support/SupportEngine;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportEngineModule;",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/Update;",
            ">;)",
            "Lzendesk/support/SupportEngine;"
        }
    .end annotation

    .line 61
    check-cast p2, Lzendesk/support/SupportEngineModel;

    invoke-virtual {p0, p1, p2, p3, p4}, Lzendesk/support/SupportEngineModule;->supportEngine(Landroid/content/Context;Lzendesk/support/SupportEngineModel;Lzendesk/messaging/components/CompositeActionListener;Lzendesk/messaging/components/CompositeActionListener;)Lzendesk/support/SupportEngine;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/support/SupportEngine;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lzendesk/support/SupportEngineModule_SupportEngineFactory;->get()Lzendesk/support/SupportEngine;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/SupportEngine;
    .locals 5

    .line 47
    iget-object v0, p0, Lzendesk/support/SupportEngineModule_SupportEngineFactory;->module:Lzendesk/support/SupportEngineModule;

    iget-object v1, p0, Lzendesk/support/SupportEngineModule_SupportEngineFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lzendesk/support/SupportEngineModule_SupportEngineFactory;->supportEngineModelProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lzendesk/support/SupportEngineModule_SupportEngineFactory;->stateViewObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/messaging/components/CompositeActionListener;

    iget-object v4, p0, Lzendesk/support/SupportEngineModule_SupportEngineFactory;->updateViewObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzendesk/messaging/components/CompositeActionListener;

    invoke-static {v0, v1, v2, v3, v4}, Lzendesk/support/SupportEngineModule_SupportEngineFactory;->supportEngine(Lzendesk/support/SupportEngineModule;Landroid/content/Context;Ljava/lang/Object;Lzendesk/messaging/components/CompositeActionListener;Lzendesk/messaging/components/CompositeActionListener;)Lzendesk/support/SupportEngine;

    move-result-object v0

    return-object v0
.end method
