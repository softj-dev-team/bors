.class public final Lzendesk/support/SupportEngineModule_BotMessageDispatcherFactory;
.super Ljava/lang/Object;
.source "SupportEngineModule_BotMessageDispatcherFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/messaging/components/bot/BotMessageDispatcher<",
        "Lzendesk/messaging/MessagingItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final messageIdentifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final module:Lzendesk/support/SupportEngineModule;

.field private final stateActionListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/ActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final timerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/Timer$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final updateActionListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/ActionListener<",
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
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/ActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/ActionListener<",
            "Lzendesk/messaging/Update;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/Timer$Factory;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lzendesk/support/SupportEngineModule_BotMessageDispatcherFactory;->module:Lzendesk/support/SupportEngineModule;

    .line 40
    iput-object p2, p0, Lzendesk/support/SupportEngineModule_BotMessageDispatcherFactory;->messageIdentifierProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p3, p0, Lzendesk/support/SupportEngineModule_BotMessageDispatcherFactory;->stateActionListenerProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p4, p0, Lzendesk/support/SupportEngineModule_BotMessageDispatcherFactory;->updateActionListenerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p5, p0, Lzendesk/support/SupportEngineModule_BotMessageDispatcherFactory;->timerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static botMessageDispatcher(Lzendesk/support/SupportEngineModule;Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;Lzendesk/messaging/components/ActionListener;Lzendesk/messaging/components/ActionListener;Lzendesk/messaging/components/Timer$Factory;)Lzendesk/messaging/components/bot/BotMessageDispatcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportEngineModule;",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier<",
            "Lzendesk/messaging/MessagingItem;",
            ">;",
            "Lzendesk/messaging/components/ActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;",
            "Lzendesk/messaging/components/ActionListener<",
            "Lzendesk/messaging/Update;",
            ">;",
            "Lzendesk/messaging/components/Timer$Factory;",
            ")",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher<",
            "Lzendesk/messaging/MessagingItem;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-virtual {p0, p1, p2, p3, p4}, Lzendesk/support/SupportEngineModule;->botMessageDispatcher(Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;Lzendesk/messaging/components/ActionListener;Lzendesk/messaging/components/ActionListener;Lzendesk/messaging/components/Timer$Factory;)Lzendesk/messaging/components/bot/BotMessageDispatcher;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;

    return-object p0
.end method

.method public static create(Lzendesk/support/SupportEngineModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/support/SupportEngineModule_BotMessageDispatcherFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportEngineModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/ActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/ActionListener<",
            "Lzendesk/messaging/Update;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/Timer$Factory;",
            ">;)",
            "Lzendesk/support/SupportEngineModule_BotMessageDispatcherFactory;"
        }
    .end annotation

    .line 56
    new-instance v6, Lzendesk/support/SupportEngineModule_BotMessageDispatcherFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lzendesk/support/SupportEngineModule_BotMessageDispatcherFactory;-><init>(Lzendesk/support/SupportEngineModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lzendesk/support/SupportEngineModule_BotMessageDispatcherFactory;->get()Lzendesk/messaging/components/bot/BotMessageDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/messaging/components/bot/BotMessageDispatcher;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher<",
            "Lzendesk/messaging/MessagingItem;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lzendesk/support/SupportEngineModule_BotMessageDispatcherFactory;->module:Lzendesk/support/SupportEngineModule;

    iget-object v1, p0, Lzendesk/support/SupportEngineModule_BotMessageDispatcherFactory;->messageIdentifierProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;

    iget-object v2, p0, Lzendesk/support/SupportEngineModule_BotMessageDispatcherFactory;->stateActionListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/messaging/components/ActionListener;

    iget-object v3, p0, Lzendesk/support/SupportEngineModule_BotMessageDispatcherFactory;->updateActionListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/messaging/components/ActionListener;

    iget-object v4, p0, Lzendesk/support/SupportEngineModule_BotMessageDispatcherFactory;->timerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzendesk/messaging/components/Timer$Factory;

    invoke-static {v0, v1, v2, v3, v4}, Lzendesk/support/SupportEngineModule_BotMessageDispatcherFactory;->botMessageDispatcher(Lzendesk/support/SupportEngineModule;Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;Lzendesk/messaging/components/ActionListener;Lzendesk/messaging/components/ActionListener;Lzendesk/messaging/components/Timer$Factory;)Lzendesk/messaging/components/bot/BotMessageDispatcher;

    move-result-object v0

    return-object v0
.end method
