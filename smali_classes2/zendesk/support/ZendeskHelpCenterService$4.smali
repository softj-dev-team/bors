.class Lzendesk/support/ZendeskHelpCenterService$4;
.super Ljava/lang/Object;
.source "ZendeskHelpCenterService.java"

# interfaces
.implements Lcom/zendesk/service/RetrofitZendeskCallbackAdapter$RequestExtractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/ZendeskHelpCenterService;->getArticle(Ljava/lang/Long;Ljava/util/Locale;Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zendesk/service/RetrofitZendeskCallbackAdapter$RequestExtractor<",
        "Lzendesk/support/ArticleResponse;",
        "Lzendesk/support/Article;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/ZendeskHelpCenterService;


# direct methods
.method constructor <init>(Lzendesk/support/ZendeskHelpCenterService;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lzendesk/support/ZendeskHelpCenterService$4;->this$0:Lzendesk/support/ZendeskHelpCenterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic extract(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 205
    check-cast p1, Lzendesk/support/ArticleResponse;

    invoke-virtual {p0, p1}, Lzendesk/support/ZendeskHelpCenterService$4;->extract(Lzendesk/support/ArticleResponse;)Lzendesk/support/Article;

    move-result-object p1

    return-object p1
.end method

.method public extract(Lzendesk/support/ArticleResponse;)Lzendesk/support/Article;
    .locals 2

    .line 208
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterService$4;->this$0:Lzendesk/support/ZendeskHelpCenterService;

    invoke-virtual {p1}, Lzendesk/support/ArticleResponse;->getArticle()Lzendesk/support/Article;

    move-result-object v1

    .line 209
    invoke-virtual {p1}, Lzendesk/support/ArticleResponse;->getUsers()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/zendesk/util/CollectionUtils;->ensureEmpty(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 208
    invoke-virtual {v0, v1, p1}, Lzendesk/support/ZendeskHelpCenterService;->matchArticleWithUsers(Lzendesk/support/Article;Ljava/util/List;)Lzendesk/support/Article;

    move-result-object p1

    return-object p1
.end method
