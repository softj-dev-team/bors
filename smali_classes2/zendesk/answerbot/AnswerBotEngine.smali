.class public Lzendesk/answerbot/AnswerBotEngine;
.super Lzendesk/messaging/ObservableEngine;
.source "AnswerBotEngine.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AnswerBotEngine"


# instance fields
.field private final answerBotCellFactory:Lzendesk/answerbot/AnswerBotCellFactory;

.field private final answerBotModel:Lzendesk/answerbot/AnswerBotModel;

.field private final configurationHelper:Lzendesk/configurations/ConfigurationHelper;

.field private final context:Landroid/content/Context;

.field private final stateActionListener:Lzendesk/messaging/components/CompositeActionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;>;"
        }
    .end annotation
.end field

.field private final updateActionListener:Lzendesk/messaging/components/CompositeActionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/Update;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lzendesk/answerbot/AnswerBotModel;Lzendesk/answerbot/AnswerBotCellFactory;Lzendesk/messaging/components/CompositeActionListener;Lzendesk/messaging/components/CompositeActionListener;Lzendesk/configurations/ConfigurationHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lzendesk/answerbot/AnswerBotModel;",
            "Lzendesk/answerbot/AnswerBotCellFactory;",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/Update;",
            ">;",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;>;",
            "Lzendesk/configurations/ConfigurationHelper;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 66
    invoke-direct {p0}, Lzendesk/messaging/ObservableEngine;-><init>()V

    .line 67
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotEngine;->context:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lzendesk/answerbot/AnswerBotEngine;->answerBotModel:Lzendesk/answerbot/AnswerBotModel;

    .line 69
    iput-object p3, p0, Lzendesk/answerbot/AnswerBotEngine;->answerBotCellFactory:Lzendesk/answerbot/AnswerBotCellFactory;

    .line 70
    iput-object p4, p0, Lzendesk/answerbot/AnswerBotEngine;->updateActionListener:Lzendesk/messaging/components/CompositeActionListener;

    .line 71
    iput-object p5, p0, Lzendesk/answerbot/AnswerBotEngine;->stateActionListener:Lzendesk/messaging/components/CompositeActionListener;

    .line 72
    iput-object p6, p0, Lzendesk/answerbot/AnswerBotEngine;->configurationHelper:Lzendesk/configurations/ConfigurationHelper;

    return-void
.end method

.method static synthetic access$000(Lzendesk/answerbot/AnswerBotEngine;)Lzendesk/answerbot/AnswerBotCellFactory;
    .locals 0

    .line 31
    iget-object p0, p0, Lzendesk/answerbot/AnswerBotEngine;->answerBotCellFactory:Lzendesk/answerbot/AnswerBotCellFactory;

    return-object p0
.end method

.method public static engine()Lzendesk/answerbot/AnswerBotEngine;
    .locals 3

    .line 44
    sget-object v0, Lzendesk/answerbot/AnswerBotComponentProvider;->INSTANCE:Lzendesk/answerbot/AnswerBotComponentProvider;

    sget-object v1, Lzendesk/core/Zendesk;->INSTANCE:Lzendesk/core/Zendesk;

    sget-object v2, Lzendesk/answerbot/AnswerBot;->INSTANCE:Lzendesk/answerbot/AnswerBot;

    invoke-virtual {v0, v1, v2}, Lzendesk/answerbot/AnswerBotComponentProvider;->provideAnswerBot(Lzendesk/core/Zendesk;Lzendesk/answerbot/AnswerBot;)Lzendesk/answerbot/AnswerBotEngine;

    move-result-object v0

    return-object v0
.end method

.method private handleArticleSuggestionEvent(Lzendesk/messaging/Event$ArticleSuggestionClicked;)V
    .locals 9

    .line 181
    invoke-virtual {p1}, Lzendesk/messaging/Event$ArticleSuggestionClicked;->getArticleSuggestion()Lzendesk/messaging/MessagingItem$ArticlesResponse$ArticleSuggestion;

    move-result-object p1

    .line 182
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotEngine;->answerBotModel:Lzendesk/answerbot/AnswerBotModel;

    .line 183
    invoke-virtual {p1}, Lzendesk/messaging/MessagingItem$ArticlesResponse$ArticleSuggestion;->getArticleInteractionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzendesk/answerbot/AnswerBotModel;->getInteractionById(Ljava/lang/String;)Lzendesk/answerbot/AnswerBotInteraction;

    move-result-object v0

    .line 185
    instance-of v1, v0, Lzendesk/answerbot/AnswerBotInteraction$ArticlesReply;

    if-eqz v1, :cond_3

    .line 186
    check-cast v0, Lzendesk/answerbot/AnswerBotInteraction$ArticlesReply;

    .line 187
    invoke-virtual {v0}, Lzendesk/answerbot/AnswerBotInteraction$ArticlesReply;->getDeflectionResponse()Lzendesk/answerbot/DeflectionResponse;

    move-result-object v0

    const/4 v1, 0x0

    .line 189
    invoke-virtual {v0}, Lzendesk/answerbot/DeflectionResponse;->getDeflectionArticles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/answerbot/DeflectionArticle;

    .line 190
    invoke-virtual {v3}, Lzendesk/answerbot/DeflectionArticle;->getArticleId()J

    move-result-wide v4

    invoke-virtual {p1}, Lzendesk/messaging/MessagingItem$ArticlesResponse$ArticleSuggestion;->getArticleId()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    move-object v1, v3

    :cond_1
    if-nez v1, :cond_2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "AnswerBotEngine"

    const-string v1, "Selected Article Suggestion not found, can not open."

    .line 196
    invoke-static {v0, v1, p1}, Lcom/zendesk/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 200
    :cond_2
    invoke-static {v0, v1}, Lzendesk/answerbot/AnswerBotArticleActivity;->builder(Lzendesk/answerbot/DeflectionResponse;Lzendesk/answerbot/DeflectionArticle;)Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->config()Lzendesk/configurations/Configuration;

    move-result-object p1

    .line 202
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 203
    iget-object v1, p0, Lzendesk/answerbot/AnswerBotEngine;->configurationHelper:Lzendesk/configurations/ConfigurationHelper;

    invoke-virtual {v1, v0, p1}, Lzendesk/configurations/ConfigurationHelper;->addToBundle(Landroid/os/Bundle;Lzendesk/configurations/Configuration;)V

    .line 205
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotEngine;->context:Landroid/content/Context;

    const-class v2, Lzendesk/answerbot/AnswerBotArticleActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 208
    new-instance v0, Lzendesk/messaging/Update$Action$Navigation;

    const/16 v1, 0x3e7

    invoke-direct {v0, p1, v1}, Lzendesk/messaging/Update$Action$Navigation;-><init>(Landroid/content/Intent;I)V

    invoke-virtual {p0, v0}, Lzendesk/answerbot/AnswerBotEngine;->notifyObservers(Lzendesk/messaging/Update;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "ANSWER_BOT"

    return-object v0
.end method

.method public getTransferOptionDescription()Lzendesk/messaging/Engine$TransferOptionDescription;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onEvent(Lzendesk/messaging/Event;)V
    .locals 3

    .line 138
    invoke-virtual {p1}, Lzendesk/messaging/Event;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "activity_result_received"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_1
    const-string v1, "typing_started"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_2
    const-string v1, "message_resent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_3
    const-string v1, "message_submitted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "message_deleted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_5
    const-string v1, "response_option_clicked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_6
    const-string v1, "article_suggestion_clicked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 153
    :pswitch_0
    check-cast p1, Lzendesk/messaging/Event$ActivityResult;

    .line 154
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotEngine;->answerBotModel:Lzendesk/answerbot/AnswerBotModel;

    .line 155
    invoke-virtual {p1}, Lzendesk/messaging/Event$ActivityResult;->getRequestCode()I

    move-result v1

    .line 156
    invoke-virtual {p1}, Lzendesk/messaging/Event$ActivityResult;->getResultCode()I

    move-result v2

    .line 157
    invoke-virtual {p1}, Lzendesk/messaging/Event$ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    .line 154
    invoke-virtual {v0, v1, v2, p1}, Lzendesk/answerbot/AnswerBotModel;->onArticleResult(IILandroid/content/Intent;)V

    goto :goto_1

    .line 145
    :pswitch_1
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotEngine;->answerBotModel:Lzendesk/answerbot/AnswerBotModel;

    invoke-virtual {p1}, Lzendesk/answerbot/AnswerBotModel;->onTypingStarted()V

    goto :goto_1

    .line 171
    :pswitch_2
    check-cast p1, Lzendesk/messaging/Event$MessageResent;

    .line 172
    invoke-virtual {p1}, Lzendesk/messaging/Event$MessageResent;->getQuery()Lzendesk/messaging/MessagingItem$Query;

    move-result-object p1

    .line 173
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotEngine;->answerBotModel:Lzendesk/answerbot/AnswerBotModel;

    invoke-virtual {v0, p1}, Lzendesk/answerbot/AnswerBotModel;->handleRetryQueryEvent(Lzendesk/messaging/MessagingItem$Query;)V

    goto :goto_1

    .line 140
    :pswitch_3
    check-cast p1, Lzendesk/messaging/Event$MessageSubmitted;

    .line 141
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotEngine;->answerBotModel:Lzendesk/answerbot/AnswerBotModel;

    invoke-virtual {p1}, Lzendesk/messaging/Event$MessageSubmitted;->getTextInput()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lzendesk/answerbot/AnswerBotModel;->sendQuery(Ljava/lang/String;)V

    goto :goto_1

    .line 165
    :pswitch_4
    check-cast p1, Lzendesk/messaging/Event$MessageDeleted;

    .line 166
    invoke-virtual {p1}, Lzendesk/messaging/Event$MessageDeleted;->getMessage()Lzendesk/messaging/MessagingItem$Query;

    move-result-object p1

    .line 167
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotEngine;->answerBotModel:Lzendesk/answerbot/AnswerBotModel;

    invoke-virtual {v0, p1}, Lzendesk/answerbot/AnswerBotModel;->handleDeleteQueryEvent(Lzendesk/messaging/MessagingItem$Query;)V

    goto :goto_1

    .line 161
    :pswitch_5
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotEngine;->answerBotModel:Lzendesk/answerbot/AnswerBotModel;

    check-cast p1, Lzendesk/messaging/Event$ResponseOptionClicked;

    invoke-virtual {v0, p1}, Lzendesk/answerbot/AnswerBotModel;->onResponseOptionSelection(Lzendesk/messaging/Event$ResponseOptionClicked;)V

    goto :goto_1

    .line 149
    :pswitch_6
    check-cast p1, Lzendesk/messaging/Event$ArticleSuggestionClicked;

    invoke-direct {p0, p1}, Lzendesk/answerbot/AnswerBotEngine;->handleArticleSuggestionEvent(Lzendesk/messaging/Event$ArticleSuggestionClicked;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7fe0492b -> :sswitch_6
        -0x74e855e5 -> :sswitch_5
        0x14c3dfe1 -> :sswitch_4
        0x1d7546c3 -> :sswitch_3
        0x399ac383 -> :sswitch_2
        0x3e8545b9 -> :sswitch_1
        0x74516e93 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public start(Lzendesk/messaging/MessagingApi;)V
    .locals 3

    .line 79
    invoke-interface {p1}, Lzendesk/messaging/MessagingApi;->getBotAgentDetails()Lzendesk/messaging/AgentDetails;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lzendesk/answerbot/AnswerBotEngine;->stateActionListener:Lzendesk/messaging/components/CompositeActionListener;

    new-instance v2, Lzendesk/answerbot/AnswerBotEngine$1;

    invoke-direct {v2, p0, v0, p1}, Lzendesk/answerbot/AnswerBotEngine$1;-><init>(Lzendesk/answerbot/AnswerBotEngine;Lzendesk/messaging/AgentDetails;Lzendesk/messaging/MessagingApi;)V

    invoke-virtual {v1, v2}, Lzendesk/messaging/components/CompositeActionListener;->addListener(Lzendesk/messaging/components/ActionListener;)V

    .line 98
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotEngine;->updateActionListener:Lzendesk/messaging/components/CompositeActionListener;

    new-instance v1, Lzendesk/answerbot/AnswerBotEngine$2;

    invoke-direct {v1, p0}, Lzendesk/answerbot/AnswerBotEngine$2;-><init>(Lzendesk/answerbot/AnswerBotEngine;)V

    invoke-virtual {v0, v1}, Lzendesk/messaging/components/CompositeActionListener;->addListener(Lzendesk/messaging/components/ActionListener;)V

    .line 105
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotEngine;->context:Landroid/content/Context;

    sget v1, Lzendesk/answerbot/R$string;->zab_hint_type_your_question:I

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Lzendesk/messaging/Update$State$UpdateInputFieldState;->updateHint(Ljava/lang/String;)Lzendesk/messaging/Update$State$UpdateInputFieldState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzendesk/answerbot/AnswerBotEngine;->notifyObservers(Lzendesk/messaging/Update;)V

    .line 107
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotEngine;->answerBotModel:Lzendesk/answerbot/AnswerBotModel;

    invoke-interface {p1}, Lzendesk/messaging/MessagingApi;->getTransferOptionDescriptions()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/zendesk/util/CollectionUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lzendesk/answerbot/AnswerBotModel;->startConversation(Z)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 113
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotEngine;->updateActionListener:Lzendesk/messaging/components/CompositeActionListener;

    invoke-virtual {v0}, Lzendesk/messaging/components/CompositeActionListener;->clearListeners()V

    .line 114
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotEngine;->stateActionListener:Lzendesk/messaging/components/CompositeActionListener;

    invoke-virtual {v0}, Lzendesk/messaging/components/CompositeActionListener;->clearListeners()V

    return-void
.end method
