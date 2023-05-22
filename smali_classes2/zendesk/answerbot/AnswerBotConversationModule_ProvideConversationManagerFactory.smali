.class public final Lzendesk/answerbot/AnswerBotConversationModule_ProvideConversationManagerFactory;
.super Ljava/lang/Object;
.source "AnswerBotConversationModule_ProvideConversationManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/answerbot/AnswerBotConversationManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final botMessageDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/DateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lzendesk/answerbot/AnswerBotConversationModule;


# direct methods
.method public constructor <init>(Lzendesk/answerbot/AnswerBotConversationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/answerbot/AnswerBotConversationModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/DateProvider;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotConversationModule_ProvideConversationManagerFactory;->module:Lzendesk/answerbot/AnswerBotConversationModule;

    .line 32
    iput-object p2, p0, Lzendesk/answerbot/AnswerBotConversationModule_ProvideConversationManagerFactory;->botMessageDispatcherProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lzendesk/answerbot/AnswerBotConversationModule_ProvideConversationManagerFactory;->dateProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lzendesk/answerbot/AnswerBotConversationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/answerbot/AnswerBotConversationModule_ProvideConversationManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/answerbot/AnswerBotConversationModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/DateProvider;",
            ">;)",
            "Lzendesk/answerbot/AnswerBotConversationModule_ProvideConversationManagerFactory;"
        }
    .end annotation

    .line 45
    new-instance v0, Lzendesk/answerbot/AnswerBotConversationModule_ProvideConversationManagerFactory;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/answerbot/AnswerBotConversationModule_ProvideConversationManagerFactory;-><init>(Lzendesk/answerbot/AnswerBotConversationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideConversationManager(Lzendesk/answerbot/AnswerBotConversationModule;Lzendesk/messaging/components/bot/BotMessageDispatcher;Lzendesk/messaging/components/DateProvider;)Lzendesk/answerbot/AnswerBotConversationManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/answerbot/AnswerBotConversationModule;",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;",
            "Lzendesk/messaging/components/DateProvider;",
            ")",
            "Lzendesk/answerbot/AnswerBotConversationManager;"
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1, p2}, Lzendesk/answerbot/AnswerBotConversationModule;->provideConversationManager(Lzendesk/messaging/components/bot/BotMessageDispatcher;Lzendesk/messaging/components/DateProvider;)Lzendesk/answerbot/AnswerBotConversationManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/answerbot/AnswerBotConversationManager;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotConversationModule_ProvideConversationManagerFactory;->get()Lzendesk/answerbot/AnswerBotConversationManager;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/answerbot/AnswerBotConversationManager;
    .locals 3

    .line 38
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotConversationModule_ProvideConversationManagerFactory;->module:Lzendesk/answerbot/AnswerBotConversationModule;

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotConversationModule_ProvideConversationManagerFactory;->botMessageDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/messaging/components/bot/BotMessageDispatcher;

    iget-object v2, p0, Lzendesk/answerbot/AnswerBotConversationModule_ProvideConversationManagerFactory;->dateProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/messaging/components/DateProvider;

    invoke-static {v0, v1, v2}, Lzendesk/answerbot/AnswerBotConversationModule_ProvideConversationManagerFactory;->provideConversationManager(Lzendesk/answerbot/AnswerBotConversationModule;Lzendesk/messaging/components/bot/BotMessageDispatcher;Lzendesk/messaging/components/DateProvider;)Lzendesk/answerbot/AnswerBotConversationManager;

    move-result-object v0

    return-object v0
.end method
