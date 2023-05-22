.class public final Lzendesk/answerbot/AnswerBotConversationModule_ProvideStateActionListenerFactory;
.super Ljava/lang/Object;
.source "AnswerBotConversationModule_ProvideStateActionListenerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/messaging/components/ActionListener<",
        "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
        "Lzendesk/answerbot/AnswerBotInteraction;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/answerbot/AnswerBotConversationModule;

.field private final observerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzendesk/answerbot/AnswerBotConversationModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/answerbot/AnswerBotConversationModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;>;>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotConversationModule_ProvideStateActionListenerFactory;->module:Lzendesk/answerbot/AnswerBotConversationModule;

    .line 30
    iput-object p2, p0, Lzendesk/answerbot/AnswerBotConversationModule_ProvideStateActionListenerFactory;->observerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lzendesk/answerbot/AnswerBotConversationModule;Ljavax/inject/Provider;)Lzendesk/answerbot/AnswerBotConversationModule_ProvideStateActionListenerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/answerbot/AnswerBotConversationModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;>;>;)",
            "Lzendesk/answerbot/AnswerBotConversationModule_ProvideStateActionListenerFactory;"
        }
    .end annotation

    .line 41
    new-instance v0, Lzendesk/answerbot/AnswerBotConversationModule_ProvideStateActionListenerFactory;

    invoke-direct {v0, p0, p1}, Lzendesk/answerbot/AnswerBotConversationModule_ProvideStateActionListenerFactory;-><init>(Lzendesk/answerbot/AnswerBotConversationModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideStateActionListener(Lzendesk/answerbot/AnswerBotConversationModule;Lzendesk/messaging/components/CompositeActionListener;)Lzendesk/messaging/components/ActionListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/answerbot/AnswerBotConversationModule;",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;>;)",
            "Lzendesk/messaging/components/ActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;>;"
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lzendesk/answerbot/AnswerBotConversationModule;->provideStateActionListener(Lzendesk/messaging/components/CompositeActionListener;)Lzendesk/messaging/components/ActionListener;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/messaging/components/ActionListener;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotConversationModule_ProvideStateActionListenerFactory;->get()Lzendesk/messaging/components/ActionListener;

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
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;>;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotConversationModule_ProvideStateActionListenerFactory;->module:Lzendesk/answerbot/AnswerBotConversationModule;

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotConversationModule_ProvideStateActionListenerFactory;->observerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/messaging/components/CompositeActionListener;

    invoke-static {v0, v1}, Lzendesk/answerbot/AnswerBotConversationModule_ProvideStateActionListenerFactory;->provideStateActionListener(Lzendesk/answerbot/AnswerBotConversationModule;Lzendesk/messaging/components/CompositeActionListener;)Lzendesk/messaging/components/ActionListener;

    move-result-object v0

    return-object v0
.end method
