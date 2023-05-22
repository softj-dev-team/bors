.class Lzendesk/answerbot/AnswerBotArticleViewModel;
.super Ljava/lang/Object;
.source "AnswerBotArticleViewModel.java"


# static fields
.field private static final DELAY_SHOW_RESOLUTION_BOX:I = 0xbb8

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
.field private final answerBotArticleUiConfig:Lzendesk/answerbot/AnswerBotArticleConfiguration;

.field private final answerBotProvider:Lzendesk/answerbot/AnswerBotProvider;

.field private articleViewModel:Lzendesk/answerbot/ArticleViewModel;

.field private final liveAnswerBotArticleViewState:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lzendesk/answerbot/AnswerBotArticleViewState;",
            ">;"
        }
    .end annotation
.end field

.field private final timer:Lzendesk/messaging/components/Timer;

.field private final urlIdentifier:Lzendesk/answerbot/ArticleUrlIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 198
    new-instance v0, Lzendesk/answerbot/AnswerBotArticleViewModel$3;

    invoke-direct {v0}, Lzendesk/answerbot/AnswerBotArticleViewModel$3;-><init>()V

    sput-object v0, Lzendesk/answerbot/AnswerBotArticleViewModel;->NO_OP_CALLBACK:Lcom/zendesk/service/ZendeskCallback;

    return-void
.end method

.method constructor <init>(Lzendesk/answerbot/AnswerBotArticleConfiguration;Lzendesk/answerbot/ArticleViewModel;Landroidx/lifecycle/MediatorLiveData;Lzendesk/answerbot/AnswerBotProvider;Lzendesk/messaging/components/Timer$Factory;Lzendesk/answerbot/ArticleUrlIdentifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/answerbot/AnswerBotArticleConfiguration;",
            "Lzendesk/answerbot/ArticleViewModel;",
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lzendesk/answerbot/AnswerBotArticleViewState;",
            ">;",
            "Lzendesk/answerbot/AnswerBotProvider;",
            "Lzendesk/messaging/components/Timer$Factory;",
            "Lzendesk/answerbot/ArticleUrlIdentifier;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->answerBotArticleUiConfig:Lzendesk/answerbot/AnswerBotArticleConfiguration;

    .line 33
    iput-object p2, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->articleViewModel:Lzendesk/answerbot/ArticleViewModel;

    .line 34
    iput-object p3, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->liveAnswerBotArticleViewState:Landroidx/lifecycle/MediatorLiveData;

    .line 35
    iput-object p4, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->answerBotProvider:Lzendesk/answerbot/AnswerBotProvider;

    .line 36
    iput-object p6, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->urlIdentifier:Lzendesk/answerbot/ArticleUrlIdentifier;

    .line 38
    new-instance p1, Lzendesk/answerbot/AnswerBotArticleViewModel$1;

    invoke-direct {p1, p0}, Lzendesk/answerbot/AnswerBotArticleViewModel$1;-><init>(Lzendesk/answerbot/AnswerBotArticleViewModel;)V

    const/16 p3, 0xbb8

    invoke-virtual {p5, p1, p3}, Lzendesk/messaging/components/Timer$Factory;->create(Ljava/lang/Runnable;I)Lzendesk/messaging/components/Timer;

    move-result-object p1

    iput-object p1, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->timer:Lzendesk/messaging/components/Timer;

    .line 50
    invoke-virtual {p2}, Lzendesk/answerbot/ArticleViewModel;->liveArticleViewState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzendesk/answerbot/AnswerBotArticleViewModel;->observeArticleViewState(Landroidx/lifecycle/LiveData;)V

    return-void
.end method

.method static synthetic access$000(Lzendesk/answerbot/AnswerBotArticleViewModel;)Landroidx/lifecycle/MediatorLiveData;
    .locals 0

    .line 14
    iget-object p0, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->liveAnswerBotArticleViewState:Landroidx/lifecycle/MediatorLiveData;

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/answerbot/AnswerBotArticleViewModel;)Lzendesk/messaging/components/Timer;
    .locals 0

    .line 14
    iget-object p0, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->timer:Lzendesk/messaging/components/Timer;

    return-object p0
.end method


# virtual methods
.method getAnswerBotArticleUiConfig()Lzendesk/answerbot/AnswerBotArticleConfiguration;
    .locals 1

    .line 195
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->answerBotArticleUiConfig:Lzendesk/answerbot/AnswerBotArticleConfiguration;

    return-object v0
.end method

.method getArticleResult()Lzendesk/answerbot/AnswerBotArticleResult;
    .locals 1

    .line 185
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->liveAnswerBotArticleViewState:Landroidx/lifecycle/MediatorLiveData;

    .line 186
    invoke-virtual {v0}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/answerbot/AnswerBotArticleViewState;

    .line 187
    invoke-virtual {v0}, Lzendesk/answerbot/AnswerBotArticleViewState;->getArticleResult()Lzendesk/answerbot/AnswerBotArticleResult;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    sget-object v0, Lzendesk/answerbot/AnswerBotArticleResult;->NOT_SET:Lzendesk/answerbot/AnswerBotArticleResult;

    :goto_0
    return-object v0
.end method

.method getLiveAnswerBotArticleViewState()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lzendesk/answerbot/AnswerBotArticleViewState;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->liveAnswerBotArticleViewState:Landroidx/lifecycle/MediatorLiveData;

    return-object v0
.end method

.method init()V
    .locals 1

    .line 80
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->liveAnswerBotArticleViewState:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0}, Lzendesk/answerbot/AnswerBotArticleViewModel;->loadArticle(Lzendesk/answerbot/AnswerBotArticleResult;)V

    return-void
.end method

.method loadArticle(Lzendesk/answerbot/AnswerBotArticleResult;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->liveAnswerBotArticleViewState:Landroidx/lifecycle/MediatorLiveData;

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->articleViewModel:Lzendesk/answerbot/ArticleViewModel;

    .line 91
    invoke-virtual {v1}, Lzendesk/answerbot/ArticleViewModel;->getArticleTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzendesk/answerbot/ArticleViewState;->init(Ljava/lang/String;)Lzendesk/answerbot/ArticleViewState;

    move-result-object v1

    .line 90
    invoke-static {v1, p1}, Lzendesk/answerbot/AnswerBotArticleViewState;->initState(Lzendesk/answerbot/ArticleViewState;Lzendesk/answerbot/AnswerBotArticleResult;)Lzendesk/answerbot/AnswerBotArticleViewState;

    move-result-object p1

    .line 89
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    .line 95
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->articleViewModel:Lzendesk/answerbot/ArticleViewModel;

    invoke-virtual {p1}, Lzendesk/answerbot/ArticleViewModel;->load()V

    return-void
.end method

.method observeArticleViewState(Landroidx/lifecycle/LiveData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Lzendesk/answerbot/ArticleViewState;",
            ">;)V"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->liveAnswerBotArticleViewState:Landroidx/lifecycle/MediatorLiveData;

    new-instance v1, Lzendesk/answerbot/AnswerBotArticleViewModel$2;

    invoke-direct {v1, p0}, Lzendesk/answerbot/AnswerBotArticleViewModel$2;-><init>(Lzendesk/answerbot/AnswerBotArticleViewModel;)V

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method onLinkClicked(Ljava/lang/String;)Z
    .locals 1

    .line 168
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->urlIdentifier:Lzendesk/answerbot/ArticleUrlIdentifier;

    invoke-virtual {v0, p1}, Lzendesk/answerbot/ArticleUrlIdentifier;->articleViewModelFromUrl(Ljava/lang/String;)Lzendesk/answerbot/ArticleViewModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 171
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->articleViewModel:Lzendesk/answerbot/ArticleViewModel;

    .line 173
    invoke-virtual {p1}, Lzendesk/answerbot/ArticleViewModel;->liveArticleViewState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzendesk/answerbot/AnswerBotArticleViewModel;->observeArticleViewState(Landroidx/lifecycle/LiveData;)V

    .line 174
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotArticleViewModel;->getArticleResult()Lzendesk/answerbot/AnswerBotArticleResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzendesk/answerbot/AnswerBotArticleViewModel;->loadArticle(Lzendesk/answerbot/AnswerBotArticleResult;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method onNegativeBtnClicked()V
    .locals 10

    .line 136
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotArticleViewModel;->getArticleResult()Lzendesk/answerbot/AnswerBotArticleResult;

    move-result-object v0

    .line 138
    sget-object v1, Lzendesk/answerbot/AnswerBotArticleResult;->NOT_SET:Lzendesk/answerbot/AnswerBotArticleResult;

    if-ne v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->liveAnswerBotArticleViewState:Landroidx/lifecycle/MediatorLiveData;

    .line 142
    invoke-virtual {v0}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/answerbot/AnswerBotArticleViewState;

    sget-object v2, Lzendesk/answerbot/AnswerBotArticleResult;->ARTICLE_NOT_HELPFUL:Lzendesk/answerbot/AnswerBotArticleResult;

    .line 143
    invoke-virtual {v1, v2}, Lzendesk/answerbot/AnswerBotArticleViewState;->withArticleResult(Lzendesk/answerbot/AnswerBotArticleResult;)Lzendesk/answerbot/AnswerBotArticleViewState;

    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 145
    :cond_0
    sget-object v1, Lzendesk/answerbot/AnswerBotArticleResult;->ARTICLE_NOT_HELPFUL:Lzendesk/answerbot/AnswerBotArticleResult;

    if-ne v0, v1, :cond_1

    .line 146
    iget-object v2, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->answerBotProvider:Lzendesk/answerbot/AnswerBotProvider;

    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->answerBotArticleUiConfig:Lzendesk/answerbot/AnswerBotArticleConfiguration;

    .line 147
    invoke-virtual {v0}, Lzendesk/answerbot/AnswerBotArticleConfiguration;->getDeflectionId()J

    move-result-wide v3

    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->answerBotArticleUiConfig:Lzendesk/answerbot/AnswerBotArticleConfiguration;

    .line 148
    invoke-virtual {v0}, Lzendesk/answerbot/AnswerBotArticleConfiguration;->getArticleId()J

    move-result-wide v5

    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->answerBotArticleUiConfig:Lzendesk/answerbot/AnswerBotArticleConfiguration;

    .line 149
    invoke-virtual {v0}, Lzendesk/answerbot/AnswerBotArticleConfiguration;->getInteractionAccessToken()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lzendesk/answerbot/RejectionReason;->NOT_RELATED:Lzendesk/answerbot/RejectionReason;

    sget-object v9, Lzendesk/answerbot/AnswerBotArticleViewModel;->NO_OP_CALLBACK:Lcom/zendesk/service/ZendeskCallback;

    .line 146
    invoke-interface/range {v2 .. v9}, Lzendesk/answerbot/AnswerBotProvider;->rejectWithArticle(JJLjava/lang/String;Lzendesk/answerbot/RejectionReason;Lcom/zendesk/service/ZendeskCallback;)V

    .line 155
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->liveAnswerBotArticleViewState:Landroidx/lifecycle/MediatorLiveData;

    .line 157
    invoke-virtual {v0}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/answerbot/AnswerBotArticleViewState;

    sget-object v2, Lzendesk/answerbot/AnswerBotArticleResult;->ARTICLE_NOT_RELATED:Lzendesk/answerbot/AnswerBotArticleResult;

    .line 158
    invoke-virtual {v1, v2}, Lzendesk/answerbot/AnswerBotArticleViewState;->withArticleResult(Lzendesk/answerbot/AnswerBotArticleResult;)Lzendesk/answerbot/AnswerBotArticleViewState;

    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method onPositiveBtnClicked()V
    .locals 10

    .line 100
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotArticleViewModel;->getArticleResult()Lzendesk/answerbot/AnswerBotArticleResult;

    move-result-object v0

    .line 102
    sget-object v1, Lzendesk/answerbot/AnswerBotArticleResult;->NOT_SET:Lzendesk/answerbot/AnswerBotArticleResult;

    if-ne v0, v1, :cond_0

    .line 103
    iget-object v2, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->answerBotProvider:Lzendesk/answerbot/AnswerBotProvider;

    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->answerBotArticleUiConfig:Lzendesk/answerbot/AnswerBotArticleConfiguration;

    .line 104
    invoke-virtual {v0}, Lzendesk/answerbot/AnswerBotArticleConfiguration;->getDeflectionId()J

    move-result-wide v3

    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->answerBotArticleUiConfig:Lzendesk/answerbot/AnswerBotArticleConfiguration;

    .line 105
    invoke-virtual {v0}, Lzendesk/answerbot/AnswerBotArticleConfiguration;->getArticleId()J

    move-result-wide v5

    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->answerBotArticleUiConfig:Lzendesk/answerbot/AnswerBotArticleConfiguration;

    .line 106
    invoke-virtual {v0}, Lzendesk/answerbot/AnswerBotArticleConfiguration;->getInteractionAccessToken()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lzendesk/answerbot/AnswerBotArticleViewModel;->NO_OP_CALLBACK:Lcom/zendesk/service/ZendeskCallback;

    .line 103
    invoke-interface/range {v2 .. v8}, Lzendesk/answerbot/AnswerBotProvider;->resolveWithArticle(JJLjava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V

    .line 111
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->liveAnswerBotArticleViewState:Landroidx/lifecycle/MediatorLiveData;

    .line 113
    invoke-virtual {v0}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/answerbot/AnswerBotArticleViewState;

    sget-object v2, Lzendesk/answerbot/AnswerBotArticleResult;->ARTICLE_HELPFUL:Lzendesk/answerbot/AnswerBotArticleResult;

    .line 114
    invoke-virtual {v1, v2}, Lzendesk/answerbot/AnswerBotArticleViewState;->withArticleResult(Lzendesk/answerbot/AnswerBotArticleResult;)Lzendesk/answerbot/AnswerBotArticleViewState;

    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    :cond_0
    sget-object v1, Lzendesk/answerbot/AnswerBotArticleResult;->ARTICLE_NOT_HELPFUL:Lzendesk/answerbot/AnswerBotArticleResult;

    if-ne v0, v1, :cond_1

    .line 117
    iget-object v2, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->answerBotProvider:Lzendesk/answerbot/AnswerBotProvider;

    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->answerBotArticleUiConfig:Lzendesk/answerbot/AnswerBotArticleConfiguration;

    .line 118
    invoke-virtual {v0}, Lzendesk/answerbot/AnswerBotArticleConfiguration;->getDeflectionId()J

    move-result-wide v3

    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->answerBotArticleUiConfig:Lzendesk/answerbot/AnswerBotArticleConfiguration;

    .line 119
    invoke-virtual {v0}, Lzendesk/answerbot/AnswerBotArticleConfiguration;->getArticleId()J

    move-result-wide v5

    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->answerBotArticleUiConfig:Lzendesk/answerbot/AnswerBotArticleConfiguration;

    .line 120
    invoke-virtual {v0}, Lzendesk/answerbot/AnswerBotArticleConfiguration;->getInteractionAccessToken()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lzendesk/answerbot/RejectionReason;->RELATED_DIDNT_ANSWER:Lzendesk/answerbot/RejectionReason;

    sget-object v9, Lzendesk/answerbot/AnswerBotArticleViewModel;->NO_OP_CALLBACK:Lcom/zendesk/service/ZendeskCallback;

    .line 117
    invoke-interface/range {v2 .. v9}, Lzendesk/answerbot/AnswerBotProvider;->rejectWithArticle(JJLjava/lang/String;Lzendesk/answerbot/RejectionReason;Lcom/zendesk/service/ZendeskCallback;)V

    .line 126
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->liveAnswerBotArticleViewState:Landroidx/lifecycle/MediatorLiveData;

    .line 128
    invoke-virtual {v0}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/answerbot/AnswerBotArticleViewState;

    sget-object v2, Lzendesk/answerbot/AnswerBotArticleResult;->ARTICLE_RELATED_DIDNT_ANSWER:Lzendesk/answerbot/AnswerBotArticleResult;

    .line 129
    invoke-virtual {v1, v2}, Lzendesk/answerbot/AnswerBotArticleViewState;->withArticleResult(Lzendesk/answerbot/AnswerBotArticleResult;)Lzendesk/answerbot/AnswerBotArticleViewState;

    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method onRetryBtnClicked()V
    .locals 1

    .line 164
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleViewModel;->articleViewModel:Lzendesk/answerbot/ArticleViewModel;

    invoke-virtual {v0}, Lzendesk/answerbot/ArticleViewModel;->load()V

    return-void
.end method
