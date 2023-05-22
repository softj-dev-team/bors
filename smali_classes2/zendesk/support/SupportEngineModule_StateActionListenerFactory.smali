.class public final Lzendesk/support/SupportEngineModule_StateActionListenerFactory;
.super Ljava/lang/Object;
.source "SupportEngineModule_StateActionListenerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/messaging/components/ActionListener<",
        "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
        "Lzendesk/messaging/MessagingItem;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/support/SupportEngineModule;

.field private final observerProvider:Ljavax/inject/Provider;
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


# direct methods
.method public constructor <init>(Lzendesk/support/SupportEngineModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportEngineModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lzendesk/support/SupportEngineModule_StateActionListenerFactory;->module:Lzendesk/support/SupportEngineModule;

    .line 30
    iput-object p2, p0, Lzendesk/support/SupportEngineModule_StateActionListenerFactory;->observerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lzendesk/support/SupportEngineModule;Ljavax/inject/Provider;)Lzendesk/support/SupportEngineModule_StateActionListenerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportEngineModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;>;)",
            "Lzendesk/support/SupportEngineModule_StateActionListenerFactory;"
        }
    .end annotation

    .line 40
    new-instance v0, Lzendesk/support/SupportEngineModule_StateActionListenerFactory;

    invoke-direct {v0, p0, p1}, Lzendesk/support/SupportEngineModule_StateActionListenerFactory;-><init>(Lzendesk/support/SupportEngineModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static stateActionListener(Lzendesk/support/SupportEngineModule;Lzendesk/messaging/components/CompositeActionListener;)Lzendesk/messaging/components/ActionListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportEngineModule;",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;)",
            "Lzendesk/messaging/components/ActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;"
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1}, Lzendesk/support/SupportEngineModule;->stateActionListener(Lzendesk/messaging/components/CompositeActionListener;)Lzendesk/messaging/components/ActionListener;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/messaging/components/ActionListener;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lzendesk/support/SupportEngineModule_StateActionListenerFactory;->get()Lzendesk/messaging/components/ActionListener;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/messaging/components/ActionListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzendesk/messaging/components/ActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lzendesk/support/SupportEngineModule_StateActionListenerFactory;->module:Lzendesk/support/SupportEngineModule;

    iget-object v1, p0, Lzendesk/support/SupportEngineModule_StateActionListenerFactory;->observerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/messaging/components/CompositeActionListener;

    invoke-static {v0, v1}, Lzendesk/support/SupportEngineModule_StateActionListenerFactory;->stateActionListener(Lzendesk/support/SupportEngineModule;Lzendesk/messaging/components/CompositeActionListener;)Lzendesk/messaging/components/ActionListener;

    move-result-object v0

    return-object v0
.end method
