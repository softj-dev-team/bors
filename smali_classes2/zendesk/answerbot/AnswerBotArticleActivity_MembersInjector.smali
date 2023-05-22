.class public final Lzendesk/answerbot/AnswerBotArticleActivity_MembersInjector;
.super Ljava/lang/Object;
.source "AnswerBotArticleActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lzendesk/answerbot/AnswerBotArticleActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final timerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/Timer$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final viewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/AnswerBotArticleViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private final zendeskWebViewClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/ZendeskWebViewClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/AnswerBotArticleViewModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/ZendeskWebViewClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/Timer$Factory;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotArticleActivity_MembersInjector;->viewModelProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p2, p0, Lzendesk/answerbot/AnswerBotArticleActivity_MembersInjector;->zendeskWebViewClientProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p3, p0, Lzendesk/answerbot/AnswerBotArticleActivity_MembersInjector;->timerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/AnswerBotArticleViewModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/ZendeskWebViewClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/Timer$Factory;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lzendesk/answerbot/AnswerBotArticleActivity;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Lzendesk/answerbot/AnswerBotArticleActivity_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/answerbot/AnswerBotArticleActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectTimerFactory(Lzendesk/answerbot/AnswerBotArticleActivity;Lzendesk/messaging/components/Timer$Factory;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotArticleActivity;->timerFactory:Lzendesk/messaging/components/Timer$Factory;

    return-void
.end method

.method public static injectViewModel(Lzendesk/answerbot/AnswerBotArticleActivity;Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Lzendesk/answerbot/AnswerBotArticleViewModel;

    iput-object p1, p0, Lzendesk/answerbot/AnswerBotArticleActivity;->viewModel:Lzendesk/answerbot/AnswerBotArticleViewModel;

    return-void
.end method

.method public static injectZendeskWebViewClient(Lzendesk/answerbot/AnswerBotArticleActivity;Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Lzendesk/answerbot/ZendeskWebViewClient;

    iput-object p1, p0, Lzendesk/answerbot/AnswerBotArticleActivity;->zendeskWebViewClient:Lzendesk/answerbot/ZendeskWebViewClient;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lzendesk/answerbot/AnswerBotArticleActivity;

    invoke-virtual {p0, p1}, Lzendesk/answerbot/AnswerBotArticleActivity_MembersInjector;->injectMembers(Lzendesk/answerbot/AnswerBotArticleActivity;)V

    return-void
.end method

.method public injectMembers(Lzendesk/answerbot/AnswerBotArticleActivity;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleActivity_MembersInjector;->viewModelProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/answerbot/AnswerBotArticleActivity_MembersInjector;->injectViewModel(Lzendesk/answerbot/AnswerBotArticleActivity;Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleActivity_MembersInjector;->zendeskWebViewClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/answerbot/AnswerBotArticleActivity_MembersInjector;->injectZendeskWebViewClient(Lzendesk/answerbot/AnswerBotArticleActivity;Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleActivity_MembersInjector;->timerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/messaging/components/Timer$Factory;

    invoke-static {p1, v0}, Lzendesk/answerbot/AnswerBotArticleActivity_MembersInjector;->injectTimerFactory(Lzendesk/answerbot/AnswerBotArticleActivity;Lzendesk/messaging/components/Timer$Factory;)V

    return-void
.end method
