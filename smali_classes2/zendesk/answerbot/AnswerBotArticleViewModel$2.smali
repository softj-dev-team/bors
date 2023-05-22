.class Lzendesk/answerbot/AnswerBotArticleViewModel$2;
.super Lzendesk/answerbot/SafeObserver;
.source "AnswerBotArticleViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/answerbot/AnswerBotArticleViewModel;->observeArticleViewState(Landroidx/lifecycle/LiveData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzendesk/answerbot/SafeObserver<",
        "Lzendesk/answerbot/ArticleViewState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/answerbot/AnswerBotArticleViewModel;


# direct methods
.method constructor <init>(Lzendesk/answerbot/AnswerBotArticleViewModel;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotArticleViewModel$2;->this$0:Lzendesk/answerbot/AnswerBotArticleViewModel;

    invoke-direct {p0}, Lzendesk/answerbot/SafeObserver;-><init>()V

    return-void
.end method


# virtual methods
.method bridge synthetic onUpdated(Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, Lzendesk/answerbot/ArticleViewState;

    invoke-virtual {p0, p1}, Lzendesk/answerbot/AnswerBotArticleViewModel$2;->onUpdated(Lzendesk/answerbot/ArticleViewState;)V

    return-void
.end method

.method onUpdated(Lzendesk/answerbot/ArticleViewState;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleViewModel$2;->this$0:Lzendesk/answerbot/AnswerBotArticleViewModel;

    invoke-static {v0}, Lzendesk/answerbot/AnswerBotArticleViewModel;->access$000(Lzendesk/answerbot/AnswerBotArticleViewModel;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotArticleViewModel$2;->this$0:Lzendesk/answerbot/AnswerBotArticleViewModel;

    .line 61
    invoke-static {v1}, Lzendesk/answerbot/AnswerBotArticleViewModel;->access$000(Lzendesk/answerbot/AnswerBotArticleViewModel;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/answerbot/AnswerBotArticleViewState;

    .line 63
    invoke-virtual {v1, p1}, Lzendesk/answerbot/AnswerBotArticleViewState;->withArticleViewState(Lzendesk/answerbot/ArticleViewState;)Lzendesk/answerbot/AnswerBotArticleViewState;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p1}, Lzendesk/answerbot/ArticleViewState;->isLoading()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lzendesk/answerbot/ArticleViewState;->isFailed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotArticleViewModel$2;->this$0:Lzendesk/answerbot/AnswerBotArticleViewModel;

    invoke-static {p1}, Lzendesk/answerbot/AnswerBotArticleViewModel;->access$100(Lzendesk/answerbot/AnswerBotArticleViewModel;)Lzendesk/messaging/components/Timer;

    move-result-object p1

    invoke-virtual {p1}, Lzendesk/messaging/components/Timer;->start()Z

    :cond_1
    :goto_0
    return-void
.end method
