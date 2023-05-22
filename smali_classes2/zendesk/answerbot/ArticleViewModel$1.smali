.class Lzendesk/answerbot/ArticleViewModel$1;
.super Lcom/zendesk/service/ZendeskCallback;
.source "ArticleViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/answerbot/ArticleViewModel;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/service/ZendeskCallback<",
        "Lzendesk/support/Article;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/answerbot/ArticleViewModel;


# direct methods
.method constructor <init>(Lzendesk/answerbot/ArticleViewModel;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lzendesk/answerbot/ArticleViewModel$1;->this$0:Lzendesk/answerbot/ArticleViewModel;

    invoke-direct {p0}, Lcom/zendesk/service/ZendeskCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/zendesk/service/ErrorResponse;)V
    .locals 1

    .line 60
    iget-object p1, p0, Lzendesk/answerbot/ArticleViewModel$1;->this$0:Lzendesk/answerbot/ArticleViewModel;

    invoke-static {p1}, Lzendesk/answerbot/ArticleViewModel;->access$000(Lzendesk/answerbot/ArticleViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lzendesk/answerbot/ArticleViewModel$1;->this$0:Lzendesk/answerbot/ArticleViewModel;

    .line 61
    invoke-static {v0}, Lzendesk/answerbot/ArticleViewModel;->access$100(Lzendesk/answerbot/ArticleViewModel;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzendesk/answerbot/ArticleViewState;->error(Ljava/lang/String;)Lzendesk/answerbot/ArticleViewState;

    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p1, Lzendesk/support/Article;

    invoke-virtual {p0, p1}, Lzendesk/answerbot/ArticleViewModel$1;->onSuccess(Lzendesk/support/Article;)V

    return-void
.end method

.method public onSuccess(Lzendesk/support/Article;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lzendesk/answerbot/ArticleViewModel$1;->this$0:Lzendesk/answerbot/ArticleViewModel;

    invoke-static {v0}, Lzendesk/answerbot/ArticleViewModel;->access$000(Lzendesk/answerbot/ArticleViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    .line 54
    invoke-static {p1}, Lzendesk/answerbot/ArticleViewState;->success(Lzendesk/support/Article;)Lzendesk/answerbot/ArticleViewState;

    move-result-object p1

    .line 53
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
