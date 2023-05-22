.class Lzendesk/support/ArticleResponse;
.super Ljava/lang/Object;
.source "ArticleResponse.java"


# instance fields
.field private article:Lzendesk/support/Article;

.field private users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/core/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getArticle()Lzendesk/support/Article;
    .locals 1

    .line 32
    iget-object v0, p0, Lzendesk/support/ArticleResponse;->article:Lzendesk/support/Article;

    return-object v0
.end method

.method getUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/core/User;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lzendesk/support/ArticleResponse;->users:Ljava/util/List;

    invoke-static {v0}, Lcom/zendesk/util/CollectionUtils;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
