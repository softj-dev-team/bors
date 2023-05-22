.class Lzendesk/answerbot/AnswerBotArticleModule;
.super Ljava/lang/Object;
.source "AnswerBotArticleModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# instance fields
.field private final answerBotArticleUiConfig:Lzendesk/answerbot/AnswerBotArticleConfiguration;

.field private final helpCenterProvider:Lzendesk/support/HelpCenterProvider;


# direct methods
.method constructor <init>(Lzendesk/answerbot/AnswerBotArticleConfiguration;Lzendesk/support/HelpCenterProvider;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotArticleModule;->answerBotArticleUiConfig:Lzendesk/answerbot/AnswerBotArticleConfiguration;

    .line 25
    iput-object p2, p0, Lzendesk/answerbot/AnswerBotArticleModule;->helpCenterProvider:Lzendesk/support/HelpCenterProvider;

    return-void
.end method


# virtual methods
.method articleViewModel()Lzendesk/answerbot/ArticleViewModel;
    .locals 5
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 48
    new-instance v0, Lzendesk/answerbot/ArticleViewModel;

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotArticleModule;->helpCenterProvider:Lzendesk/support/HelpCenterProvider;

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iget-object v3, p0, Lzendesk/answerbot/AnswerBotArticleModule;->answerBotArticleUiConfig:Lzendesk/answerbot/AnswerBotArticleConfiguration;

    .line 51
    invoke-virtual {v3}, Lzendesk/answerbot/AnswerBotArticleConfiguration;->getArticleId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lzendesk/answerbot/AnswerBotArticleModule;->answerBotArticleUiConfig:Lzendesk/answerbot/AnswerBotArticleConfiguration;

    .line 52
    invoke-virtual {v4}, Lzendesk/answerbot/AnswerBotArticleConfiguration;->getArticleTitle()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lzendesk/answerbot/ArticleViewModel;-><init>(Lzendesk/support/HelpCenterProvider;Landroidx/lifecycle/MutableLiveData;Ljava/lang/Long;Ljava/lang/String;)V

    return-object v0
.end method

.method getArticleUrlIdentifier(Lzendesk/core/ApplicationConfiguration;)Lzendesk/answerbot/ArticleUrlIdentifier;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 42
    new-instance v0, Lzendesk/answerbot/ArticleUrlIdentifier;

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotArticleModule;->helpCenterProvider:Lzendesk/support/HelpCenterProvider;

    invoke-direct {v0, p1, v1}, Lzendesk/answerbot/ArticleUrlIdentifier;-><init>(Lzendesk/core/ApplicationConfiguration;Lzendesk/support/HelpCenterProvider;)V

    return-object v0
.end method

.method getViewModel(Lzendesk/answerbot/AnswerBotProvider;Lzendesk/answerbot/ArticleViewModel;Lzendesk/messaging/components/Timer$Factory;Lzendesk/answerbot/ArticleUrlIdentifier;)Lzendesk/answerbot/AnswerBotArticleViewModel;
    .locals 8
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 62
    new-instance v7, Lzendesk/answerbot/AnswerBotArticleViewModel;

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotArticleModule;->answerBotArticleUiConfig:Lzendesk/answerbot/AnswerBotArticleConfiguration;

    new-instance v3, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v3}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    move-object v0, v7

    move-object v2, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lzendesk/answerbot/AnswerBotArticleViewModel;-><init>(Lzendesk/answerbot/AnswerBotArticleConfiguration;Lzendesk/answerbot/ArticleViewModel;Landroidx/lifecycle/MediatorLiveData;Lzendesk/answerbot/AnswerBotProvider;Lzendesk/messaging/components/Timer$Factory;Lzendesk/answerbot/ArticleUrlIdentifier;)V

    return-object v7
.end method

.method getWebViewClient(Lzendesk/core/ApplicationConfiguration;Lzendesk/core/RestServiceProvider;)Lzendesk/answerbot/ZendeskWebViewClient;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 33
    new-instance v0, Lzendesk/answerbot/ZendeskWebViewClient;

    .line 34
    invoke-virtual {p1}, Lzendesk/core/ApplicationConfiguration;->getZendeskUrl()Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-interface {p2}, Lzendesk/core/RestServiceProvider;->getMediaOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lzendesk/answerbot/ZendeskWebViewClient;-><init>(Ljava/lang/String;Lokhttp3/OkHttpClient;)V

    return-object v0
.end method
