.class public final Lzendesk/answerbot/AnswerBotArticleModule_GetWebViewClientFactory;
.super Ljava/lang/Object;
.source "AnswerBotArticleModule_GetWebViewClientFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/answerbot/ZendeskWebViewClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final applicationConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ApplicationConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lzendesk/answerbot/AnswerBotArticleModule;

.field private final restServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/RestServiceProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzendesk/answerbot/AnswerBotArticleModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/answerbot/AnswerBotArticleModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ApplicationConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/RestServiceProvider;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotArticleModule_GetWebViewClientFactory;->module:Lzendesk/answerbot/AnswerBotArticleModule;

    .line 31
    iput-object p2, p0, Lzendesk/answerbot/AnswerBotArticleModule_GetWebViewClientFactory;->applicationConfigurationProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lzendesk/answerbot/AnswerBotArticleModule_GetWebViewClientFactory;->restServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lzendesk/answerbot/AnswerBotArticleModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/answerbot/AnswerBotArticleModule_GetWebViewClientFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/answerbot/AnswerBotArticleModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ApplicationConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/RestServiceProvider;",
            ">;)",
            "Lzendesk/answerbot/AnswerBotArticleModule_GetWebViewClientFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lzendesk/answerbot/AnswerBotArticleModule_GetWebViewClientFactory;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/answerbot/AnswerBotArticleModule_GetWebViewClientFactory;-><init>(Lzendesk/answerbot/AnswerBotArticleModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static getWebViewClient(Lzendesk/answerbot/AnswerBotArticleModule;Lzendesk/core/ApplicationConfiguration;Lzendesk/core/RestServiceProvider;)Lzendesk/answerbot/ZendeskWebViewClient;
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2}, Lzendesk/answerbot/AnswerBotArticleModule;->getWebViewClient(Lzendesk/core/ApplicationConfiguration;Lzendesk/core/RestServiceProvider;)Lzendesk/answerbot/ZendeskWebViewClient;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/answerbot/ZendeskWebViewClient;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotArticleModule_GetWebViewClientFactory;->get()Lzendesk/answerbot/ZendeskWebViewClient;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/answerbot/ZendeskWebViewClient;
    .locals 3

    .line 37
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleModule_GetWebViewClientFactory;->module:Lzendesk/answerbot/AnswerBotArticleModule;

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotArticleModule_GetWebViewClientFactory;->applicationConfigurationProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/core/ApplicationConfiguration;

    iget-object v2, p0, Lzendesk/answerbot/AnswerBotArticleModule_GetWebViewClientFactory;->restServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/core/RestServiceProvider;

    invoke-static {v0, v1, v2}, Lzendesk/answerbot/AnswerBotArticleModule_GetWebViewClientFactory;->getWebViewClient(Lzendesk/answerbot/AnswerBotArticleModule;Lzendesk/core/ApplicationConfiguration;Lzendesk/core/RestServiceProvider;)Lzendesk/answerbot/ZendeskWebViewClient;

    move-result-object v0

    return-object v0
.end method
