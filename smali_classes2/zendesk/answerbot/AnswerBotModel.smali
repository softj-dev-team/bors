.class Lzendesk/answerbot/AnswerBotModel;
.super Ljava/lang/Object;
.source "AnswerBotModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/answerbot/AnswerBotModel$Responses;
    }
.end annotation


# static fields
.field static final ANSWER_BOT_ARTICLE_REQUEST_CODE:I = 0x3e7

.field private static final LOG_TAG:Ljava/lang/String; = "AnswerBotModel"

.field private static final NO_OP_CALLBACK:Lcom/zendesk/service/ZendeskCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/service/ZendeskCallback<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final answerBotProvider:Lzendesk/answerbot/AnswerBotProvider;

.field private final configurationHelper:Lzendesk/configurations/ConfigurationHelper;

.field private final conversation:Lzendesk/answerbot/AnswerBotConversationManager;

.field private final conversationStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private formHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lzendesk/answerbot/FormResponseEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private previousResponse:Lzendesk/answerbot/AnswerBotModel$Responses;

.field private final resources:Landroid/content/res/Resources;

.field private screenOpenedTimer:Lzendesk/messaging/components/Timer;

.field private final settingsProvider:Lzendesk/answerbot/AnswerBotSettingsProvider;

.field private final timerFactory:Lzendesk/messaging/components/Timer$Factory;

.field private final transferOptionsAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private userTypedTimer:Lzendesk/messaging/components/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 374
    new-instance v0, Lzendesk/answerbot/AnswerBotModel$6;

    invoke-direct {v0}, Lzendesk/answerbot/AnswerBotModel$6;-><init>()V

    sput-object v0, Lzendesk/answerbot/AnswerBotModel;->NO_OP_CALLBACK:Lcom/zendesk/service/ZendeskCallback;

    return-void
.end method

.method constructor <init>(Lzendesk/answerbot/AnswerBotProvider;Lzendesk/answerbot/AnswerBotSettingsProvider;Lzendesk/messaging/components/Timer$Factory;Landroid/content/res/Resources;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lzendesk/answerbot/AnswerBotConversationManager;Lzendesk/configurations/ConfigurationHelper;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->formHandlers:Ljava/util/Map;

    .line 59
    sget-object v0, Lzendesk/answerbot/AnswerBotModel$Responses;->NONE:Lzendesk/answerbot/AnswerBotModel$Responses;

    iput-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->previousResponse:Lzendesk/answerbot/AnswerBotModel$Responses;

    .line 69
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotModel;->answerBotProvider:Lzendesk/answerbot/AnswerBotProvider;

    .line 70
    iput-object p2, p0, Lzendesk/answerbot/AnswerBotModel;->settingsProvider:Lzendesk/answerbot/AnswerBotSettingsProvider;

    .line 71
    iput-object p3, p0, Lzendesk/answerbot/AnswerBotModel;->timerFactory:Lzendesk/messaging/components/Timer$Factory;

    .line 72
    iput-object p4, p0, Lzendesk/answerbot/AnswerBotModel;->resources:Landroid/content/res/Resources;

    .line 73
    iput-object p5, p0, Lzendesk/answerbot/AnswerBotModel;->conversationStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    iput-object p6, p0, Lzendesk/answerbot/AnswerBotModel;->transferOptionsAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    iput-object p7, p0, Lzendesk/answerbot/AnswerBotModel;->conversation:Lzendesk/answerbot/AnswerBotConversationManager;

    .line 76
    iput-object p8, p0, Lzendesk/answerbot/AnswerBotModel;->configurationHelper:Lzendesk/configurations/ConfigurationHelper;

    .line 78
    invoke-direct {p0}, Lzendesk/answerbot/AnswerBotModel;->setupUserInputTimerPrompts()V

    return-void
.end method

.method static synthetic access$000(Lzendesk/answerbot/AnswerBotModel;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lzendesk/answerbot/AnswerBotModel;->showGreetings()V

    return-void
.end method

.method static synthetic access$100(Lzendesk/answerbot/AnswerBotModel;)Lzendesk/answerbot/AnswerBotConversationManager;
    .locals 0

    .line 29
    iget-object p0, p0, Lzendesk/answerbot/AnswerBotModel;->conversation:Lzendesk/answerbot/AnswerBotConversationManager;

    return-object p0
.end method

.method static synthetic access$1000(Lzendesk/answerbot/AnswerBotModel;JJLjava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p5}, Lzendesk/answerbot/AnswerBotModel;->showWasArticleRelevantResponse(JJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lzendesk/answerbot/AnswerBotModel;JJLjava/lang/String;Lzendesk/answerbot/RejectionReason;)V
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p6}, Lzendesk/answerbot/AnswerBotModel;->markArticleUnhelpful(JJLjava/lang/String;Lzendesk/answerbot/RejectionReason;)V

    return-void
.end method

.method static synthetic access$1200(Lzendesk/answerbot/AnswerBotModel;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lzendesk/answerbot/AnswerBotModel;->showNotHelpfulResponse()V

    return-void
.end method

.method static synthetic access$1300(Lzendesk/answerbot/AnswerBotModel;)Lzendesk/messaging/components/Timer;
    .locals 0

    .line 29
    iget-object p0, p0, Lzendesk/answerbot/AnswerBotModel;->userTypedTimer:Lzendesk/messaging/components/Timer;

    return-object p0
.end method

.method static synthetic access$200(Lzendesk/answerbot/AnswerBotModel;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 29
    iget-object p0, p0, Lzendesk/answerbot/AnswerBotModel;->transferOptionsAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Lzendesk/answerbot/AnswerBotModel;)Lzendesk/messaging/components/Timer;
    .locals 0

    .line 29
    iget-object p0, p0, Lzendesk/answerbot/AnswerBotModel;->screenOpenedTimer:Lzendesk/messaging/components/Timer;

    return-object p0
.end method

.method static synthetic access$400(Lzendesk/answerbot/AnswerBotModel;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lzendesk/answerbot/AnswerBotModel;->showDisabledResponse()V

    return-void
.end method

.method static synthetic access$502(Lzendesk/answerbot/AnswerBotModel;Lzendesk/answerbot/AnswerBotModel$Responses;)Lzendesk/answerbot/AnswerBotModel$Responses;
    .locals 0

    .line 29
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotModel;->previousResponse:Lzendesk/answerbot/AnswerBotModel$Responses;

    return-object p1
.end method

.method static synthetic access$600(Lzendesk/answerbot/AnswerBotModel;)Landroid/content/res/Resources;
    .locals 0

    .line 29
    iget-object p0, p0, Lzendesk/answerbot/AnswerBotModel;->resources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$700(Lzendesk/answerbot/AnswerBotModel;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lzendesk/answerbot/AnswerBotModel;->showTransferOptions(I)V

    return-void
.end method

.method static synthetic access$800(Lzendesk/answerbot/AnswerBotModel;JJLjava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p5}, Lzendesk/answerbot/AnswerBotModel;->markArticleHelpful(JJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lzendesk/answerbot/AnswerBotModel;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lzendesk/answerbot/AnswerBotModel;->showHelpfulResponse()V

    return-void
.end method

.method private ensureNoResponseOptions()V
    .locals 2

    .line 284
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->conversation:Lzendesk/answerbot/AnswerBotConversationManager;

    invoke-virtual {v0}, Lzendesk/answerbot/AnswerBotConversationManager;->getLastInteraction()Lzendesk/answerbot/AnswerBotInteraction;

    move-result-object v0

    instance-of v0, v0, Lzendesk/answerbot/AnswerBotInteraction$ResponseOption;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->conversation:Lzendesk/answerbot/AnswerBotConversationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lzendesk/answerbot/AnswerBotConversationManager;->removeLastInteractions(I)V

    :cond_0
    return-void
.end method

.method private handleArticleResult(Lzendesk/answerbot/AnswerBotArticleConfiguration;)V
    .locals 13

    .line 201
    invoke-virtual {p1}, Lzendesk/answerbot/AnswerBotArticleConfiguration;->getResult()Lzendesk/answerbot/AnswerBotArticleResult;

    move-result-object v0

    .line 202
    sget-object v1, Lzendesk/answerbot/AnswerBotModel$7;->$SwitchMap$zendesk$answerbot$AnswerBotArticleResult:[I

    invoke-virtual {v0}, Lzendesk/answerbot/AnswerBotArticleResult;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    invoke-direct {p0}, Lzendesk/answerbot/AnswerBotModel;->showHelpfulResponse()V

    goto :goto_0

    .line 217
    :cond_1
    invoke-direct {p0}, Lzendesk/answerbot/AnswerBotModel;->showNotHelpfulResponse()V

    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {p1}, Lzendesk/answerbot/AnswerBotArticleConfiguration;->getDeflectionId()J

    move-result-wide v2

    .line 212
    invoke-virtual {p1}, Lzendesk/answerbot/AnswerBotArticleConfiguration;->getArticleId()J

    move-result-wide v4

    .line 213
    invoke-virtual {p1}, Lzendesk/answerbot/AnswerBotArticleConfiguration;->getInteractionAccessToken()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    .line 210
    invoke-direct/range {v1 .. v6}, Lzendesk/answerbot/AnswerBotModel;->showWasArticleRelevantResponse(JJLjava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_3
    invoke-virtual {p1}, Lzendesk/answerbot/AnswerBotArticleConfiguration;->getDeflectionId()J

    move-result-wide v8

    .line 206
    invoke-virtual {p1}, Lzendesk/answerbot/AnswerBotArticleConfiguration;->getArticleId()J

    move-result-wide v10

    .line 207
    invoke-virtual {p1}, Lzendesk/answerbot/AnswerBotArticleConfiguration;->getInteractionAccessToken()Ljava/lang/String;

    move-result-object v12

    move-object v7, p0

    .line 204
    invoke-direct/range {v7 .. v12}, Lzendesk/answerbot/AnswerBotModel;->showWasArticleHelpfulResponse(JJLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private markArticleHelpful(JJLjava/lang/String;)V
    .locals 7

    .line 329
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->answerBotProvider:Lzendesk/answerbot/AnswerBotProvider;

    sget-object v6, Lzendesk/answerbot/AnswerBotModel;->NO_OP_CALLBACK:Lcom/zendesk/service/ZendeskCallback;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lzendesk/answerbot/AnswerBotProvider;->resolveWithArticle(JJLjava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method private markArticleUnhelpful(JJLjava/lang/String;Lzendesk/answerbot/RejectionReason;)V
    .locals 8

    .line 336
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->answerBotProvider:Lzendesk/answerbot/AnswerBotProvider;

    sget-object v7, Lzendesk/answerbot/AnswerBotModel;->NO_OP_CALLBACK:Lcom/zendesk/service/ZendeskCallback;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v7}, Lzendesk/answerbot/AnswerBotProvider;->rejectWithArticle(JJLjava/lang/String;Lzendesk/answerbot/RejectionReason;Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method private setupUserInputTimerPrompts()V
    .locals 4

    .line 355
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->resources:Landroid/content/res/Resources;

    sget v1, Lzendesk/answerbot/R$integer;->zs_answerbot_screen_opened_inactivity_timeout:I

    .line 356
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 357
    iget-object v1, p0, Lzendesk/answerbot/AnswerBotModel;->resources:Landroid/content/res/Resources;

    sget v2, Lzendesk/answerbot/R$integer;->zs_answerbot_user_typed_inactivity_timeout:I

    .line 358
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 360
    new-instance v2, Lzendesk/answerbot/AnswerBotModel$5;

    invoke-direct {v2, p0}, Lzendesk/answerbot/AnswerBotModel$5;-><init>(Lzendesk/answerbot/AnswerBotModel;)V

    .line 370
    iget-object v3, p0, Lzendesk/answerbot/AnswerBotModel;->timerFactory:Lzendesk/messaging/components/Timer$Factory;

    invoke-virtual {v3, v2, v0}, Lzendesk/messaging/components/Timer$Factory;->create(Ljava/lang/Runnable;I)Lzendesk/messaging/components/Timer;

    move-result-object v0

    iput-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->screenOpenedTimer:Lzendesk/messaging/components/Timer;

    .line 371
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->timerFactory:Lzendesk/messaging/components/Timer$Factory;

    invoke-virtual {v0, v2, v1}, Lzendesk/messaging/components/Timer$Factory;->create(Ljava/lang/Runnable;I)Lzendesk/messaging/components/Timer;

    move-result-object v0

    iput-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->userTypedTimer:Lzendesk/messaging/components/Timer;

    return-void
.end method

.method private showDisabledResponse()V
    .locals 3

    .line 340
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->conversation:Lzendesk/answerbot/AnswerBotConversationManager;

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotModel;->resources:Landroid/content/res/Resources;

    sget v2, Lzendesk/answerbot/R$string;->zab_cell_text_answerbot_disabled_response:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzendesk/answerbot/AnswerBotConversationManager;->addTextReply(Ljava/lang/String;)Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->transferOptionsAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    sget v0, Lzendesk/answerbot/R$string;->zab_cell_text_answerbot_disabled_header:I

    invoke-direct {p0, v0}, Lzendesk/answerbot/AnswerBotModel;->showTransferOptions(I)V

    :cond_0
    return-void
.end method

.method private showGreetings()V
    .locals 5

    .line 347
    sget-object v0, Lzendesk/answerbot/AnswerBotModel$Responses;->GREETING:Lzendesk/answerbot/AnswerBotModel$Responses;

    iput-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->previousResponse:Lzendesk/answerbot/AnswerBotModel$Responses;

    .line 348
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->resources:Landroid/content/res/Resources;

    sget v1, Lzendesk/answerbot/R$array;->zab_cells_greeting_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 349
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 350
    iget-object v4, p0, Lzendesk/answerbot/AnswerBotModel;->conversation:Lzendesk/answerbot/AnswerBotConversationManager;

    invoke-virtual {v4, v3}, Lzendesk/answerbot/AnswerBotConversationManager;->addTextReply(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private showHelpfulResponse()V
    .locals 3

    .line 232
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->previousResponse:Lzendesk/answerbot/AnswerBotModel$Responses;

    sget-object v1, Lzendesk/answerbot/AnswerBotModel$Responses;->ARTICLE_HELPFUL:Lzendesk/answerbot/AnswerBotModel$Responses;

    if-ne v0, v1, :cond_0

    return-void

    .line 235
    :cond_0
    invoke-direct {p0}, Lzendesk/answerbot/AnswerBotModel;->ensureNoResponseOptions()V

    .line 236
    sget-object v0, Lzendesk/answerbot/AnswerBotModel$Responses;->ARTICLE_HELPFUL:Lzendesk/answerbot/AnswerBotModel$Responses;

    iput-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->previousResponse:Lzendesk/answerbot/AnswerBotModel$Responses;

    .line 237
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->conversation:Lzendesk/answerbot/AnswerBotConversationManager;

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotModel;->resources:Landroid/content/res/Resources;

    sget v2, Lzendesk/answerbot/R$string;->zab_cell_text_acknowledgement_did_help:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzendesk/answerbot/AnswerBotConversationManager;->addTextReply(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->conversation:Lzendesk/answerbot/AnswerBotConversationManager;

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotModel;->resources:Landroid/content/res/Resources;

    sget v2, Lzendesk/answerbot/R$string;->zab_cell_text_did_help_ask_again:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzendesk/answerbot/AnswerBotConversationManager;->addTextReply(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private showNotHelpfulResponse()V
    .locals 3

    .line 314
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->previousResponse:Lzendesk/answerbot/AnswerBotModel$Responses;

    sget-object v1, Lzendesk/answerbot/AnswerBotModel$Responses;->ARTICLE_NOT_HELPFUL:Lzendesk/answerbot/AnswerBotModel$Responses;

    if-ne v0, v1, :cond_0

    return-void

    .line 317
    :cond_0
    invoke-direct {p0}, Lzendesk/answerbot/AnswerBotModel;->ensureNoResponseOptions()V

    .line 318
    sget-object v0, Lzendesk/answerbot/AnswerBotModel$Responses;->ARTICLE_NOT_HELPFUL:Lzendesk/answerbot/AnswerBotModel$Responses;

    iput-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->previousResponse:Lzendesk/answerbot/AnswerBotModel$Responses;

    .line 319
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->conversation:Lzendesk/answerbot/AnswerBotConversationManager;

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotModel;->resources:Landroid/content/res/Resources;

    sget v2, Lzendesk/answerbot/R$string;->zab_cell_text_acknowledgement_did_not_help:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzendesk/answerbot/AnswerBotConversationManager;->addTextReply(Ljava/lang/String;)Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->transferOptionsAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    sget v0, Lzendesk/answerbot/R$string;->zab_cell_text_contact_options_header:I

    invoke-direct {p0, v0}, Lzendesk/answerbot/AnswerBotModel;->showTransferOptions(I)V

    goto :goto_0

    .line 323
    :cond_1
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->conversation:Lzendesk/answerbot/AnswerBotConversationManager;

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotModel;->resources:Landroid/content/res/Resources;

    sget v2, Lzendesk/answerbot/R$string;->zab_cell_text_prompt_another_question_no_transfer_options:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzendesk/answerbot/AnswerBotConversationManager;->addTextReply(Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private showResponseOptions(ILzendesk/answerbot/FormResponseEventHandler;)V
    .locals 2

    .line 268
    invoke-direct {p0}, Lzendesk/answerbot/AnswerBotModel;->ensureNoResponseOptions()V

    .line 269
    sget-object v0, Lzendesk/answerbot/AnswerBotModel$Responses;->ARTICLE_HELPFUL_QUESTION:Lzendesk/answerbot/AnswerBotModel$Responses;

    iput-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->previousResponse:Lzendesk/answerbot/AnswerBotModel$Responses;

    .line 270
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->resources:Landroid/content/res/Resources;

    sget v1, Lzendesk/answerbot/R$array;->zab_article_helpful_response_options:I

    .line 271
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lzendesk/answerbot/AnswerBotModel;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 274
    iget-object v1, p0, Lzendesk/answerbot/AnswerBotModel;->conversation:Lzendesk/answerbot/AnswerBotConversationManager;

    invoke-virtual {v1, p1, v0}, Lzendesk/answerbot/AnswerBotConversationManager;->addResponseOptions(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 275
    invoke-static {p1}, Lcom/zendesk/util/CollectionUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->formHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private showTransferOptions(I)V
    .locals 1

    .line 226
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 227
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->conversation:Lzendesk/answerbot/AnswerBotConversationManager;

    invoke-virtual {v0, p1}, Lzendesk/answerbot/AnswerBotConversationManager;->addTransferOptions(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private showWasArticleHelpfulResponse(JJLjava/lang/String;)V
    .locals 8

    .line 246
    new-instance v7, Lzendesk/answerbot/AnswerBotModel$3;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lzendesk/answerbot/AnswerBotModel$3;-><init>(Lzendesk/answerbot/AnswerBotModel;JJLjava/lang/String;)V

    .line 260
    sget-object p1, Lzendesk/answerbot/AnswerBotModel$Responses;->ARTICLE_HELPFUL_QUESTION:Lzendesk/answerbot/AnswerBotModel$Responses;

    iput-object p1, p0, Lzendesk/answerbot/AnswerBotModel;->previousResponse:Lzendesk/answerbot/AnswerBotModel$Responses;

    .line 262
    sget p1, Lzendesk/answerbot/R$string;->zab_cell_text_question_did_article_help_with_question:I

    invoke-direct {p0, p1, v7}, Lzendesk/answerbot/AnswerBotModel;->showResponseOptions(ILzendesk/answerbot/FormResponseEventHandler;)V

    return-void
.end method

.method private showWasArticleRelevantResponse(JJLjava/lang/String;)V
    .locals 8

    .line 294
    new-instance v7, Lzendesk/answerbot/AnswerBotModel$4;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lzendesk/answerbot/AnswerBotModel$4;-><init>(Lzendesk/answerbot/AnswerBotModel;JJLjava/lang/String;)V

    .line 308
    sget-object p1, Lzendesk/answerbot/AnswerBotModel$Responses;->ARTICLE_HELPFUL_QUESTION:Lzendesk/answerbot/AnswerBotModel$Responses;

    iput-object p1, p0, Lzendesk/answerbot/AnswerBotModel;->previousResponse:Lzendesk/answerbot/AnswerBotModel$Responses;

    .line 309
    sget p1, Lzendesk/answerbot/R$string;->zab_cell_text_help_followup_question:I

    invoke-direct {p0, p1, v7}, Lzendesk/answerbot/AnswerBotModel;->showResponseOptions(ILzendesk/answerbot/FormResponseEventHandler;)V

    return-void
.end method


# virtual methods
.method getInteractionById(Ljava/lang/String;)Lzendesk/answerbot/AnswerBotInteraction;
    .locals 1

    .line 179
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->conversation:Lzendesk/answerbot/AnswerBotConversationManager;

    invoke-virtual {v0, p1}, Lzendesk/answerbot/AnswerBotConversationManager;->getInteractionById(Ljava/lang/String;)Lzendesk/answerbot/AnswerBotInteraction;

    move-result-object p1

    return-object p1
.end method

.method handleDeleteQueryEvent(Lzendesk/messaging/MessagingItem$Query;)V
    .locals 1

    .line 156
    invoke-virtual {p1}, Lzendesk/messaging/MessagingItem$Query;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzendesk/answerbot/AnswerBotModel;->getInteractionById(Ljava/lang/String;)Lzendesk/answerbot/AnswerBotInteraction;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->conversation:Lzendesk/answerbot/AnswerBotConversationManager;

    invoke-interface {p1}, Lzendesk/answerbot/AnswerBotInteraction;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lzendesk/answerbot/AnswerBotConversationManager;->removeInteraction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method handleRetryQueryEvent(Lzendesk/messaging/MessagingItem$Query;)V
    .locals 2

    .line 148
    invoke-virtual {p1}, Lzendesk/messaging/MessagingItem$Query;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzendesk/answerbot/AnswerBotModel;->getInteractionById(Ljava/lang/String;)Lzendesk/answerbot/AnswerBotInteraction;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 150
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->conversation:Lzendesk/answerbot/AnswerBotConversationManager;

    invoke-interface {p1}, Lzendesk/answerbot/AnswerBotInteraction;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzendesk/answerbot/AnswerBotConversationManager;->removeInteraction(Ljava/lang/String;)V

    .line 151
    check-cast p1, Lzendesk/answerbot/AnswerBotInteraction$TextQuery;

    invoke-virtual {p1}, Lzendesk/answerbot/AnswerBotInteraction$TextQuery;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzendesk/answerbot/AnswerBotModel;->sendQuery(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method onArticleResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    const/4 v0, 0x0

    const-string v1, "AnswerBotModel"

    if-ne p2, p1, :cond_1

    .line 185
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotModel;->configurationHelper:Lzendesk/configurations/ConfigurationHelper;

    .line 186
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-class p3, Lzendesk/answerbot/AnswerBotArticleConfiguration;

    invoke-virtual {p1, p2, p3}, Lzendesk/configurations/ConfigurationHelper;->fromBundle(Landroid/os/Bundle;Ljava/lang/Class;)Lzendesk/configurations/Configuration;

    move-result-object p1

    check-cast p1, Lzendesk/answerbot/AnswerBotArticleConfiguration;

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "No configuration found, ignoring #onActivityResult(...)"

    .line 189
    invoke-static {v1, p2, p1}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 191
    :cond_0
    invoke-direct {p0, p1}, Lzendesk/answerbot/AnswerBotModel;->handleArticleResult(Lzendesk/answerbot/AnswerBotArticleConfiguration;)V

    goto :goto_0

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "result code != RESULT_OK"

    .line 195
    invoke-static {v1, p2, p1}, Lcom/zendesk/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method onResponseOptionSelection(Lzendesk/messaging/Event$ResponseOptionClicked;)V
    .locals 2

    .line 170
    invoke-virtual {p1}, Lzendesk/messaging/Event$ResponseOptionClicked;->getOptionsResponse()Lzendesk/messaging/MessagingItem$OptionsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/messaging/MessagingItem$OptionsResponse;->getId()Ljava/lang/String;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lzendesk/answerbot/AnswerBotModel;->formHandlers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/answerbot/FormResponseEventHandler;

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0, p1}, Lzendesk/answerbot/FormResponseEventHandler;->handle(Lzendesk/messaging/Event$ResponseOptionClicked;)V

    :cond_0
    return-void
.end method

.method onTypingStarted()V
    .locals 1

    .line 163
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->screenOpenedTimer:Lzendesk/messaging/components/Timer;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lzendesk/messaging/components/Timer;->disable()V

    .line 165
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->userTypedTimer:Lzendesk/messaging/components/Timer;

    invoke-virtual {v0}, Lzendesk/messaging/components/Timer;->start()Z

    :cond_0
    return-void
.end method

.method sendQuery(Ljava/lang/String;)V
    .locals 3

    .line 112
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->userTypedTimer:Lzendesk/messaging/components/Timer;

    invoke-virtual {v0}, Lzendesk/messaging/components/Timer;->disable()V

    .line 113
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->screenOpenedTimer:Lzendesk/messaging/components/Timer;

    invoke-virtual {v0}, Lzendesk/messaging/components/Timer;->disable()V

    .line 114
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->conversation:Lzendesk/answerbot/AnswerBotConversationManager;

    invoke-virtual {v0, p1}, Lzendesk/answerbot/AnswerBotConversationManager;->addPendingMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lzendesk/answerbot/AnswerBotModel;->answerBotProvider:Lzendesk/answerbot/AnswerBotProvider;

    new-instance v2, Lzendesk/answerbot/AnswerBotModel$2;

    invoke-direct {v2, p0, v0, p1}, Lzendesk/answerbot/AnswerBotModel$2;-><init>(Lzendesk/answerbot/AnswerBotModel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p1, v2}, Lzendesk/answerbot/AnswerBotProvider;->getDeflectionForQuery(Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method startConversation(Z)V
    .locals 1

    .line 82
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->conversationStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotModel;->conversation:Lzendesk/answerbot/AnswerBotConversationManager;

    invoke-virtual {p1}, Lzendesk/answerbot/AnswerBotConversationManager;->reloadConversation()V

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel;->transferOptionsAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 88
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotModel;->conversation:Lzendesk/answerbot/AnswerBotConversationManager;

    const/4 v0, 0x0

    invoke-static {v0}, Lzendesk/messaging/Update$State$UpdateInputFieldState;->updateInputFieldEnabled(Z)Lzendesk/messaging/Update$State$UpdateInputFieldState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzendesk/answerbot/AnswerBotConversationManager;->dispatchUpdate(Lzendesk/messaging/Update;)V

    .line 89
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotModel;->settingsProvider:Lzendesk/answerbot/AnswerBotSettingsProvider;

    new-instance v0, Lzendesk/answerbot/AnswerBotModel$1;

    invoke-direct {v0, p0}, Lzendesk/answerbot/AnswerBotModel$1;-><init>(Lzendesk/answerbot/AnswerBotModel;)V

    invoke-interface {p1, v0}, Lzendesk/answerbot/AnswerBotSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    .line 108
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotModel;->conversationStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
