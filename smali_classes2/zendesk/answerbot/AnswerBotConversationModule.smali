.class Lzendesk/answerbot/AnswerBotConversationModule;
.super Ljava/lang/Object;
.source "AnswerBotConversationModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method configurationHelper()Lzendesk/configurations/ConfigurationHelper;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 139
    new-instance v0, Lzendesk/configurations/ConfigurationHelper;

    invoke-direct {v0}, Lzendesk/configurations/ConfigurationHelper;-><init>()V

    return-object v0
.end method

.method getAnswerBotCellFactory()Lzendesk/answerbot/AnswerBotCellFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 58
    new-instance v0, Lzendesk/answerbot/AnswerBotCellFactory;

    invoke-direct {v0}, Lzendesk/answerbot/AnswerBotCellFactory;-><init>()V

    return-object v0
.end method

.method getAnswerBotModel(Lzendesk/answerbot/AnswerBotProvider;Lzendesk/answerbot/AnswerBotSettingsProvider;Lzendesk/messaging/components/Timer$Factory;Landroid/content/res/Resources;Lzendesk/answerbot/AnswerBotConversationManager;Lzendesk/configurations/ConfigurationHelper;)Lzendesk/answerbot/AnswerBotModel;
    .locals 10
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 42
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 43
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 44
    new-instance v9, Lzendesk/answerbot/AnswerBotModel;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lzendesk/answerbot/AnswerBotModel;-><init>(Lzendesk/answerbot/AnswerBotProvider;Lzendesk/answerbot/AnswerBotSettingsProvider;Lzendesk/messaging/components/Timer$Factory;Landroid/content/res/Resources;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lzendesk/answerbot/AnswerBotConversationManager;Lzendesk/configurations/ConfigurationHelper;)V

    return-object v9
.end method

.method getPicasso(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 29
    new-instance v0, Lcom/squareup/picasso/Picasso$Builder;

    invoke-direct {v0, p1}, Lcom/squareup/picasso/Picasso$Builder;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {v0}, Lcom/squareup/picasso/Picasso$Builder;->build()Lcom/squareup/picasso/Picasso;

    move-result-object p1

    return-object p1
.end method

.method provideBotMessageDispatcher(Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;Lzendesk/messaging/components/ActionListener;Lzendesk/messaging/components/ActionListener;Lzendesk/messaging/components/Timer$Factory;)Lzendesk/messaging/components/bot/BotMessageDispatcher;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;",
            "Lzendesk/messaging/components/ActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;>;",
            "Lzendesk/messaging/components/ActionListener<",
            "Lzendesk/messaging/Update;",
            ">;",
            "Lzendesk/messaging/components/Timer$Factory;",
            ")",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Lzendesk/messaging/components/bot/BotMessageDispatcher;

    invoke-direct {v0, p1, p2, p3, p4}, Lzendesk/messaging/components/bot/BotMessageDispatcher;-><init>(Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;Lzendesk/messaging/components/ActionListener;Lzendesk/messaging/components/ActionListener;Lzendesk/messaging/components/Timer$Factory;)V

    return-object v0
.end method

.method provideConversationManager(Lzendesk/messaging/components/bot/BotMessageDispatcher;Lzendesk/messaging/components/DateProvider;)Lzendesk/answerbot/AnswerBotConversationManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;",
            "Lzendesk/messaging/components/DateProvider;",
            ")",
            "Lzendesk/answerbot/AnswerBotConversationManager;"
        }
    .end annotation

    .line 85
    new-instance v0, Lzendesk/answerbot/AnswerBotConversationManager;

    invoke-direct {v0, p1, p2}, Lzendesk/answerbot/AnswerBotConversationManager;-><init>(Lzendesk/messaging/components/bot/BotMessageDispatcher;Lzendesk/messaging/components/DateProvider;)V

    return-object v0
.end method

.method provideDateProvider()Lzendesk/messaging/components/DateProvider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 91
    new-instance v0, Lzendesk/messaging/components/DateProvider;

    invoke-direct {v0}, Lzendesk/messaging/components/DateProvider;-><init>()V

    return-object v0
.end method

.method provideInteractionIdentifier()Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Lzendesk/answerbot/AnswerBotConversationModule$1;

    invoke-direct {v0, p0}, Lzendesk/answerbot/AnswerBotConversationModule$1;-><init>(Lzendesk/answerbot/AnswerBotConversationModule;)V

    return-object v0
.end method

.method provideStateActionListener(Lzendesk/messaging/components/CompositeActionListener;)Lzendesk/messaging/components/ActionListener;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 118
    new-instance v0, Lzendesk/answerbot/AnswerBotConversationModule$2;

    invoke-direct {v0, p0, p1}, Lzendesk/answerbot/AnswerBotConversationModule$2;-><init>(Lzendesk/answerbot/AnswerBotConversationModule;Lzendesk/messaging/components/CompositeActionListener;)V

    return-object v0
.end method

.method provideStateCompositeActionListener()Lzendesk/messaging/components/CompositeActionListener;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;>;"
        }
    .end annotation

    .line 71
    invoke-static {}, Lzendesk/messaging/components/CompositeActionListener;->create()Lzendesk/messaging/components/CompositeActionListener;

    move-result-object v0

    return-object v0
.end method

.method provideUpdateActionListener(Lzendesk/messaging/components/CompositeActionListener;)Lzendesk/messaging/components/ActionListener;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/Update;",
            ">;)",
            "Lzendesk/messaging/components/ActionListener<",
            "Lzendesk/messaging/Update;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Lzendesk/answerbot/AnswerBotConversationModule$3;

    invoke-direct {v0, p0, p1}, Lzendesk/answerbot/AnswerBotConversationModule$3;-><init>(Lzendesk/answerbot/AnswerBotConversationModule;Lzendesk/messaging/components/CompositeActionListener;)V

    return-object v0
.end method

.method provideUpdateCompositeActionListener()Lzendesk/messaging/components/CompositeActionListener;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/Update;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-static {}, Lzendesk/messaging/components/CompositeActionListener;->create()Lzendesk/messaging/components/CompositeActionListener;

    move-result-object v0

    return-object v0
.end method
