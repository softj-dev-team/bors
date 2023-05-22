.class public final Lzendesk/answerbot/AnswerBotArticleModule_GetArticleUrlIdentifierFactory;
.super Ljava/lang/Object;
.source "AnswerBotArticleModule_GetArticleUrlIdentifierFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/answerbot/ArticleUrlIdentifier;",
        ">;"
    }
.end annotation


# instance fields
.field private final configProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ApplicationConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lzendesk/answerbot/AnswerBotArticleModule;


# direct methods
.method public constructor <init>(Lzendesk/answerbot/AnswerBotArticleModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/answerbot/AnswerBotArticleModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ApplicationConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotArticleModule_GetArticleUrlIdentifierFactory;->module:Lzendesk/answerbot/AnswerBotArticleModule;

    .line 27
    iput-object p2, p0, Lzendesk/answerbot/AnswerBotArticleModule_GetArticleUrlIdentifierFactory;->configProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lzendesk/answerbot/AnswerBotArticleModule;Ljavax/inject/Provider;)Lzendesk/answerbot/AnswerBotArticleModule_GetArticleUrlIdentifierFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/answerbot/AnswerBotArticleModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ApplicationConfiguration;",
            ">;)",
            "Lzendesk/answerbot/AnswerBotArticleModule_GetArticleUrlIdentifierFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lzendesk/answerbot/AnswerBotArticleModule_GetArticleUrlIdentifierFactory;

    invoke-direct {v0, p0, p1}, Lzendesk/answerbot/AnswerBotArticleModule_GetArticleUrlIdentifierFactory;-><init>(Lzendesk/answerbot/AnswerBotArticleModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static getArticleUrlIdentifier(Lzendesk/answerbot/AnswerBotArticleModule;Lzendesk/core/ApplicationConfiguration;)Lzendesk/answerbot/ArticleUrlIdentifier;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lzendesk/answerbot/AnswerBotArticleModule;->getArticleUrlIdentifier(Lzendesk/core/ApplicationConfiguration;)Lzendesk/answerbot/ArticleUrlIdentifier;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/answerbot/ArticleUrlIdentifier;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotArticleModule_GetArticleUrlIdentifierFactory;->get()Lzendesk/answerbot/ArticleUrlIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/answerbot/ArticleUrlIdentifier;
    .locals 2

    .line 32
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleModule_GetArticleUrlIdentifierFactory;->module:Lzendesk/answerbot/AnswerBotArticleModule;

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotArticleModule_GetArticleUrlIdentifierFactory;->configProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/core/ApplicationConfiguration;

    invoke-static {v0, v1}, Lzendesk/answerbot/AnswerBotArticleModule_GetArticleUrlIdentifierFactory;->getArticleUrlIdentifier(Lzendesk/answerbot/AnswerBotArticleModule;Lzendesk/core/ApplicationConfiguration;)Lzendesk/answerbot/ArticleUrlIdentifier;

    move-result-object v0

    return-object v0
.end method
