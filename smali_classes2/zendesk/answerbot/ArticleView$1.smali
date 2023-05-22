.class Lzendesk/answerbot/ArticleView$1;
.super Ljava/lang/Object;
.source "ArticleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/answerbot/ArticleView;->showArticle(Lzendesk/support/Article;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/answerbot/ArticleView;

.field final synthetic val$article:Lzendesk/support/Article;

.field final synthetic val$details:Ljava/lang/String;


# direct methods
.method constructor <init>(Lzendesk/answerbot/ArticleView;Lzendesk/support/Article;Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lzendesk/answerbot/ArticleView$1;->this$0:Lzendesk/answerbot/ArticleView;

    iput-object p2, p0, Lzendesk/answerbot/ArticleView$1;->val$article:Lzendesk/support/Article;

    iput-object p3, p0, Lzendesk/answerbot/ArticleView$1;->val$details:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 115
    iget-object v0, p0, Lzendesk/answerbot/ArticleView$1;->this$0:Lzendesk/answerbot/ArticleView;

    invoke-static {v0}, Lzendesk/answerbot/ArticleView;->access$100(Lzendesk/answerbot/ArticleView;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzendesk/answerbot/R$string;->zab_view_article_html_body:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lzendesk/answerbot/ArticleView$1;->this$0:Lzendesk/answerbot/ArticleView;

    .line 116
    invoke-static {v3}, Lzendesk/answerbot/ArticleView;->access$000(Lzendesk/answerbot/ArticleView;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lzendesk/answerbot/ArticleView$1;->val$article:Lzendesk/support/Article;

    .line 117
    invoke-virtual {v3}, Lzendesk/support/Article;->getTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lzendesk/answerbot/ArticleView$1;->val$article:Lzendesk/support/Article;

    .line 118
    invoke-virtual {v3}, Lzendesk/support/Article;->getBody()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, p0, Lzendesk/answerbot/ArticleView$1;->val$details:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lzendesk/answerbot/ArticleView$1;->this$0:Lzendesk/answerbot/ArticleView;

    invoke-static {v1}, Lzendesk/answerbot/ArticleView;->access$200(Lzendesk/answerbot/ArticleView;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Lzendesk/answerbot/ArticleView$1$1;

    invoke-direct {v2, p0, v0}, Lzendesk/answerbot/ArticleView$1$1;-><init>(Lzendesk/answerbot/ArticleView$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
