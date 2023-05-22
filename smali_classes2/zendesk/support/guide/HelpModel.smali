.class Lzendesk/support/guide/HelpModel;
.super Ljava/lang/Object;
.source "HelpModel.java"

# interfaces
.implements Lzendesk/support/guide/HelpMvp$Model;


# instance fields
.field private provider:Lzendesk/support/HelpCenterProvider;


# direct methods
.method constructor <init>(Lzendesk/support/HelpCenterProvider;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lzendesk/support/guide/HelpModel;->provider:Lzendesk/support/HelpCenterProvider;

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/guide/HelpModel;Lzendesk/support/Article;)Lzendesk/support/ArticleItem;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lzendesk/support/guide/HelpModel;->convertArticle(Lzendesk/support/Article;)Lzendesk/support/ArticleItem;

    move-result-object p0

    return-object p0
.end method

.method private convertArticle(Lzendesk/support/Article;)Lzendesk/support/ArticleItem;
    .locals 3

    .line 85
    new-instance v0, Lzendesk/support/ArticleItem;

    invoke-virtual {p1}, Lzendesk/support/Article;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 86
    invoke-virtual {p1}, Lzendesk/support/Article;->getSectionId()Ljava/lang/Long;

    move-result-object v2

    .line 87
    invoke-virtual {p1}, Lzendesk/support/Article;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lzendesk/support/ArticleItem;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getArticles(Ljava/util/List;Ljava/util/List;[Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Ljava/util/List<",
            "Lzendesk/support/HelpItem;",
            ">;>;)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lzendesk/support/guide/HelpModel;->provider:Lzendesk/support/HelpCenterProvider;

    new-instance v1, Lzendesk/support/HelpRequest$Builder;

    invoke-direct {v1}, Lzendesk/support/HelpRequest$Builder;-><init>()V

    .line 41
    invoke-virtual {v1, p1}, Lzendesk/support/HelpRequest$Builder;->withCategoryIds(Ljava/util/List;)Lzendesk/support/HelpRequest$Builder;

    move-result-object p1

    .line 42
    invoke-virtual {p1, p2}, Lzendesk/support/HelpRequest$Builder;->withSectionIds(Ljava/util/List;)Lzendesk/support/HelpRequest$Builder;

    move-result-object p1

    .line 43
    invoke-virtual {p1, p3}, Lzendesk/support/HelpRequest$Builder;->withLabelNames([Ljava/lang/String;)Lzendesk/support/HelpRequest$Builder;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lzendesk/support/HelpRequest$Builder;->includeCategories()Lzendesk/support/HelpRequest$Builder;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lzendesk/support/HelpRequest$Builder;->includeSections()Lzendesk/support/HelpRequest$Builder;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lzendesk/support/HelpRequest$Builder;->build()Lzendesk/support/HelpRequest;

    move-result-object p1

    .line 39
    invoke-interface {v0, p1, p4}, Lzendesk/support/HelpCenterProvider;->getHelp(Lzendesk/support/HelpRequest;Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method public getArticlesForSection(Lzendesk/support/SectionItem;[Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SectionItem;",
            "[",
            "Ljava/lang/String;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Ljava/util/List<",
            "Lzendesk/support/ArticleItem;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 55
    invoke-virtual {p1}, Lzendesk/support/SectionItem;->getId()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lzendesk/support/guide/HelpModel;->provider:Lzendesk/support/HelpCenterProvider;

    invoke-virtual {p1}, Lzendesk/support/SectionItem;->getId()Ljava/lang/Long;

    move-result-object p1

    .line 61
    invoke-static {p2}, Lcom/zendesk/util/StringUtils;->toCsvString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lzendesk/support/guide/HelpModel$1;

    invoke-direct {v1, p0, p3}, Lzendesk/support/guide/HelpModel$1;-><init>(Lzendesk/support/guide/HelpModel;Lcom/zendesk/service/ZendeskCallback;)V

    .line 60
    invoke-interface {v0, p1, p2, v1}, Lzendesk/support/HelpCenterProvider;->getArticles(Ljava/lang/Long;Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V

    return-void

    .line 56
    :cond_1
    :goto_0
    new-instance p1, Lcom/zendesk/service/ErrorResponseAdapter;

    const-string p2, "SectionItem or its ID was null, cannot load more articles."

    invoke-direct {p1, p2}, Lcom/zendesk/service/ErrorResponseAdapter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/zendesk/service/ZendeskCallback;->onError(Lcom/zendesk/service/ErrorResponse;)V

    return-void
.end method
