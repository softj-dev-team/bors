.class Lzendesk/answerbot/AnswerBotArticleViewState;
.super Ljava/lang/Object;
.source "AnswerBotArticleViewState.java"


# instance fields
.field private final articleResult:Lzendesk/answerbot/AnswerBotArticleResult;

.field private final articleViewState:Lzendesk/answerbot/ArticleViewState;


# direct methods
.method constructor <init>(Lzendesk/answerbot/ArticleViewState;Lzendesk/answerbot/AnswerBotArticleResult;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotArticleViewState;->articleViewState:Lzendesk/answerbot/ArticleViewState;

    .line 24
    iput-object p2, p0, Lzendesk/answerbot/AnswerBotArticleViewState;->articleResult:Lzendesk/answerbot/AnswerBotArticleResult;

    return-void
.end method

.method static initState(Lzendesk/answerbot/ArticleViewState;Lzendesk/answerbot/AnswerBotArticleResult;)Lzendesk/answerbot/AnswerBotArticleViewState;
    .locals 1

    .line 11
    new-instance v0, Lzendesk/answerbot/AnswerBotArticleViewState;

    invoke-direct {v0, p0, p1}, Lzendesk/answerbot/AnswerBotArticleViewState;-><init>(Lzendesk/answerbot/ArticleViewState;Lzendesk/answerbot/AnswerBotArticleResult;)V

    return-object v0
.end method


# virtual methods
.method getArticleResult()Lzendesk/answerbot/AnswerBotArticleResult;
    .locals 1

    .line 46
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleViewState;->articleResult:Lzendesk/answerbot/AnswerBotArticleResult;

    return-object v0
.end method

.method getArticleViewState()Lzendesk/answerbot/ArticleViewState;
    .locals 1

    .line 42
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleViewState;->articleViewState:Lzendesk/answerbot/ArticleViewState;

    return-object v0
.end method

.method withArticleResult(Lzendesk/answerbot/AnswerBotArticleResult;)Lzendesk/answerbot/AnswerBotArticleViewState;
    .locals 2

    .line 28
    new-instance v0, Lzendesk/answerbot/AnswerBotArticleViewState;

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotArticleViewState;->articleViewState:Lzendesk/answerbot/ArticleViewState;

    invoke-direct {v0, v1, p1}, Lzendesk/answerbot/AnswerBotArticleViewState;-><init>(Lzendesk/answerbot/ArticleViewState;Lzendesk/answerbot/AnswerBotArticleResult;)V

    return-object v0
.end method

.method withArticleViewState(Lzendesk/answerbot/ArticleViewState;)Lzendesk/answerbot/AnswerBotArticleViewState;
    .locals 2

    .line 35
    new-instance v0, Lzendesk/answerbot/AnswerBotArticleViewState;

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotArticleViewState;->articleResult:Lzendesk/answerbot/AnswerBotArticleResult;

    invoke-direct {v0, p1, v1}, Lzendesk/answerbot/AnswerBotArticleViewState;-><init>(Lzendesk/answerbot/ArticleViewState;Lzendesk/answerbot/AnswerBotArticleResult;)V

    return-object v0
.end method
