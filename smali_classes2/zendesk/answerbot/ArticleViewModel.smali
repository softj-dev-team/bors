.class Lzendesk/answerbot/ArticleViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "ArticleViewModel.java"


# instance fields
.field private final articleId:Ljava/lang/Long;

.field private final articleTitle:Ljava/lang/String;

.field private final helpCenterProvider:Lzendesk/support/HelpCenterProvider;

.field private final liveArticleViewState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lzendesk/answerbot/ArticleViewState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lzendesk/support/HelpCenterProvider;Landroidx/lifecycle/MutableLiveData;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/HelpCenterProvider;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lzendesk/answerbot/ArticleViewState;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 26
    iput-object p1, p0, Lzendesk/answerbot/ArticleViewModel;->helpCenterProvider:Lzendesk/support/HelpCenterProvider;

    .line 27
    iput-object p2, p0, Lzendesk/answerbot/ArticleViewModel;->liveArticleViewState:Landroidx/lifecycle/MutableLiveData;

    .line 28
    iput-object p3, p0, Lzendesk/answerbot/ArticleViewModel;->articleId:Ljava/lang/Long;

    .line 29
    iput-object p4, p0, Lzendesk/answerbot/ArticleViewModel;->articleTitle:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lzendesk/answerbot/ArticleViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 15
    iget-object p0, p0, Lzendesk/answerbot/ArticleViewModel;->liveArticleViewState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/answerbot/ArticleViewModel;)Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lzendesk/answerbot/ArticleViewModel;->articleTitle:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method getArticleId()J
    .locals 2

    .line 42
    iget-object v0, p0, Lzendesk/answerbot/ArticleViewModel;->articleId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method getArticleTitle()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lzendesk/answerbot/ArticleViewModel;->articleTitle:Ljava/lang/String;

    return-object v0
.end method

.method liveArticleViewState()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lzendesk/answerbot/ArticleViewState;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lzendesk/answerbot/ArticleViewModel;->liveArticleViewState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method load()V
    .locals 3

    .line 46
    iget-object v0, p0, Lzendesk/answerbot/ArticleViewModel;->liveArticleViewState:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lzendesk/answerbot/ArticleViewModel;->articleTitle:Ljava/lang/String;

    .line 47
    invoke-static {v1}, Lzendesk/answerbot/ArticleViewState;->init(Ljava/lang/String;)Lzendesk/answerbot/ArticleViewState;

    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lzendesk/answerbot/ArticleViewModel;->helpCenterProvider:Lzendesk/support/HelpCenterProvider;

    iget-object v1, p0, Lzendesk/answerbot/ArticleViewModel;->articleId:Ljava/lang/Long;

    new-instance v2, Lzendesk/answerbot/ArticleViewModel$1;

    invoke-direct {v2, p0}, Lzendesk/answerbot/ArticleViewModel$1;-><init>(Lzendesk/answerbot/ArticleViewModel;)V

    invoke-interface {v0, v1, v2}, Lzendesk/support/HelpCenterProvider;->getArticle(Ljava/lang/Long;Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method
