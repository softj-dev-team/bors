.class public final Lzendesk/answerbot/AnswerBotArticleModule_GetViewModelFactory;
.super Ljava/lang/Object;
.source "AnswerBotArticleModule_GetViewModelFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/answerbot/AnswerBotArticleViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final answerBotProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/AnswerBotProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final articleViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/ArticleViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lzendesk/answerbot/AnswerBotArticleModule;

.field private final timerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/Timer$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final urlIdentifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/ArticleUrlIdentifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzendesk/answerbot/AnswerBotArticleModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/answerbot/AnswerBotArticleModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/AnswerBotProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/ArticleViewModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/Timer$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/ArticleUrlIdentifier;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotArticleModule_GetViewModelFactory;->module:Lzendesk/answerbot/AnswerBotArticleModule;

    .line 36
    iput-object p2, p0, Lzendesk/answerbot/AnswerBotArticleModule_GetViewModelFactory;->answerBotProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p3, p0, Lzendesk/answerbot/AnswerBotArticleModule_GetViewModelFactory;->articleViewModelProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p4, p0, Lzendesk/answerbot/AnswerBotArticleModule_GetViewModelFactory;->timerFactoryProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p5, p0, Lzendesk/answerbot/AnswerBotArticleModule_GetViewModelFactory;->urlIdentifierProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lzendesk/answerbot/AnswerBotArticleModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/answerbot/AnswerBotArticleModule_GetViewModelFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/answerbot/AnswerBotArticleModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/AnswerBotProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/ArticleViewModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/Timer$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/ArticleUrlIdentifier;",
            ">;)",
            "Lzendesk/answerbot/AnswerBotArticleModule_GetViewModelFactory;"
        }
    .end annotation

    .line 52
    new-instance v6, Lzendesk/answerbot/AnswerBotArticleModule_GetViewModelFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lzendesk/answerbot/AnswerBotArticleModule_GetViewModelFactory;-><init>(Lzendesk/answerbot/AnswerBotArticleModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static getViewModel(Lzendesk/answerbot/AnswerBotArticleModule;Lzendesk/answerbot/AnswerBotProvider;Ljava/lang/Object;Lzendesk/messaging/components/Timer$Factory;Ljava/lang/Object;)Lzendesk/answerbot/AnswerBotArticleViewModel;
    .locals 0

    .line 58
    check-cast p2, Lzendesk/answerbot/ArticleViewModel;

    check-cast p4, Lzendesk/answerbot/ArticleUrlIdentifier;

    invoke-virtual {p0, p1, p2, p3, p4}, Lzendesk/answerbot/AnswerBotArticleModule;->getViewModel(Lzendesk/answerbot/AnswerBotProvider;Lzendesk/answerbot/ArticleViewModel;Lzendesk/messaging/components/Timer$Factory;Lzendesk/answerbot/ArticleUrlIdentifier;)Lzendesk/answerbot/AnswerBotArticleViewModel;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/answerbot/AnswerBotArticleViewModel;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotArticleModule_GetViewModelFactory;->get()Lzendesk/answerbot/AnswerBotArticleViewModel;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/answerbot/AnswerBotArticleViewModel;
    .locals 5

    .line 44
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleModule_GetViewModelFactory;->module:Lzendesk/answerbot/AnswerBotArticleModule;

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotArticleModule_GetViewModelFactory;->answerBotProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/answerbot/AnswerBotProvider;

    iget-object v2, p0, Lzendesk/answerbot/AnswerBotArticleModule_GetViewModelFactory;->articleViewModelProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lzendesk/answerbot/AnswerBotArticleModule_GetViewModelFactory;->timerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/messaging/components/Timer$Factory;

    iget-object v4, p0, Lzendesk/answerbot/AnswerBotArticleModule_GetViewModelFactory;->urlIdentifierProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lzendesk/answerbot/AnswerBotArticleModule_GetViewModelFactory;->getViewModel(Lzendesk/answerbot/AnswerBotArticleModule;Lzendesk/answerbot/AnswerBotProvider;Ljava/lang/Object;Lzendesk/messaging/components/Timer$Factory;Ljava/lang/Object;)Lzendesk/answerbot/AnswerBotArticleViewModel;

    move-result-object v0

    return-object v0
.end method
