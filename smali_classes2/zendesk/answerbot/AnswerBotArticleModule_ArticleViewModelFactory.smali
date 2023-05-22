.class public final Lzendesk/answerbot/AnswerBotArticleModule_ArticleViewModelFactory;
.super Ljava/lang/Object;
.source "AnswerBotArticleModule_ArticleViewModelFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/answerbot/ArticleViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/answerbot/AnswerBotArticleModule;


# direct methods
.method public constructor <init>(Lzendesk/answerbot/AnswerBotArticleModule;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotArticleModule_ArticleViewModelFactory;->module:Lzendesk/answerbot/AnswerBotArticleModule;

    return-void
.end method

.method public static articleViewModel(Lzendesk/answerbot/AnswerBotArticleModule;)Lzendesk/answerbot/ArticleViewModel;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotArticleModule;->articleViewModel()Lzendesk/answerbot/ArticleViewModel;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/answerbot/ArticleViewModel;

    return-object p0
.end method

.method public static create(Lzendesk/answerbot/AnswerBotArticleModule;)Lzendesk/answerbot/AnswerBotArticleModule_ArticleViewModelFactory;
    .locals 1

    .line 31
    new-instance v0, Lzendesk/answerbot/AnswerBotArticleModule_ArticleViewModelFactory;

    invoke-direct {v0, p0}, Lzendesk/answerbot/AnswerBotArticleModule_ArticleViewModelFactory;-><init>(Lzendesk/answerbot/AnswerBotArticleModule;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotArticleModule_ArticleViewModelFactory;->get()Lzendesk/answerbot/ArticleViewModel;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/answerbot/ArticleViewModel;
    .locals 1

    .line 26
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleModule_ArticleViewModelFactory;->module:Lzendesk/answerbot/AnswerBotArticleModule;

    invoke-static {v0}, Lzendesk/answerbot/AnswerBotArticleModule_ArticleViewModelFactory;->articleViewModel(Lzendesk/answerbot/AnswerBotArticleModule;)Lzendesk/answerbot/ArticleViewModel;

    move-result-object v0

    return-object v0
.end method
