.class Lzendesk/support/ZendeskHelpCenterProvider;
.super Ljava/lang/Object;
.source "ZendeskHelpCenterProvider.java"

# interfaces
.implements Lzendesk/support/HelpCenterProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/ZendeskHelpCenterProvider$ZendeskCallbackSuccess;
    }
.end annotation


# static fields
.field private static final EMPTY_JSON_BODY:Ljava/lang/String; = "{}"

.field private static final LOG_TAG:Ljava/lang/String; = "ZendeskHelpCenterProvider"


# instance fields
.field private final blipsProvider:Lzendesk/support/HelpCenterBlipsProvider;

.field private final helpCenterService:Lzendesk/support/ZendeskHelpCenterService;

.field private final helpCenterSessionCache:Lzendesk/support/HelpCenterSessionCache;

.field private final helpCenterTracker:Lzendesk/support/HelpCenterTracker;

.field private final settingsProvider:Lzendesk/support/HelpCenterSettingsProvider;


# direct methods
.method constructor <init>(Lzendesk/support/HelpCenterSettingsProvider;Lzendesk/support/HelpCenterBlipsProvider;Lzendesk/support/ZendeskHelpCenterService;Lzendesk/support/HelpCenterSessionCache;Lzendesk/support/HelpCenterTracker;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lzendesk/support/ZendeskHelpCenterProvider;->settingsProvider:Lzendesk/support/HelpCenterSettingsProvider;

    .line 42
    iput-object p2, p0, Lzendesk/support/ZendeskHelpCenterProvider;->blipsProvider:Lzendesk/support/HelpCenterBlipsProvider;

    .line 43
    iput-object p3, p0, Lzendesk/support/ZendeskHelpCenterProvider;->helpCenterService:Lzendesk/support/ZendeskHelpCenterService;

    .line 44
    iput-object p4, p0, Lzendesk/support/ZendeskHelpCenterProvider;->helpCenterSessionCache:Lzendesk/support/HelpCenterSessionCache;

    .line 45
    iput-object p5, p0, Lzendesk/support/ZendeskHelpCenterProvider;->helpCenterTracker:Lzendesk/support/HelpCenterTracker;

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/ZendeskHelpCenterProvider;)Lzendesk/support/HelpCenterTracker;
    .locals 0

    .line 24
    iget-object p0, p0, Lzendesk/support/ZendeskHelpCenterProvider;->helpCenterTracker:Lzendesk/support/HelpCenterTracker;

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/support/ZendeskHelpCenterProvider;Lzendesk/support/HelpResponse;)Ljava/util/List;
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lzendesk/support/ZendeskHelpCenterProvider;->convert(Lzendesk/support/HelpResponse;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lzendesk/support/ZendeskHelpCenterProvider;)Lzendesk/support/ZendeskHelpCenterService;
    .locals 0

    .line 24
    iget-object p0, p0, Lzendesk/support/ZendeskHelpCenterProvider;->helpCenterService:Lzendesk/support/ZendeskHelpCenterService;

    return-object p0
.end method

.method static synthetic access$300(Lzendesk/support/ZendeskHelpCenterProvider;)Lzendesk/support/HelpCenterSessionCache;
    .locals 0

    .line 24
    iget-object p0, p0, Lzendesk/support/ZendeskHelpCenterProvider;->helpCenterSessionCache:Lzendesk/support/HelpCenterSessionCache;

    return-object p0
.end method

.method static synthetic access$400(Lzendesk/support/ZendeskHelpCenterProvider;Lcom/zendesk/service/ZendeskCallback;Lzendesk/support/HelpCenterSettings;)Z
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lzendesk/support/ZendeskHelpCenterProvider;->checkSettingsAndVotingEnabled(Lcom/zendesk/service/ZendeskCallback;Lzendesk/support/HelpCenterSettings;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lzendesk/support/ZendeskHelpCenterProvider;)Lzendesk/support/HelpCenterBlipsProvider;
    .locals 0

    .line 24
    iget-object p0, p0, Lzendesk/support/ZendeskHelpCenterProvider;->blipsProvider:Lzendesk/support/HelpCenterBlipsProvider;

    return-object p0
.end method

.method private checkSettingsAndVotingEnabled(Lcom/zendesk/service/ZendeskCallback;Lzendesk/support/HelpCenterSettings;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/service/ZendeskCallback<",
            "*>;",
            "Lzendesk/support/HelpCenterSettings;",
            ")Z"
        }
    .end annotation

    .line 636
    invoke-virtual {p0, p1, p2}, Lzendesk/support/ZendeskHelpCenterProvider;->sanityCheckHelpCenterSettings(Lcom/zendesk/service/ZendeskCallback;Lzendesk/support/HelpCenterSettings;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 637
    invoke-virtual {p2}, Lzendesk/support/HelpCenterSettings;->isArticleVotingEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "ZendeskHelpCenterProvider"

    const-string v2, "Help Center voting is disabled in your app\'s settings. Can not continue with the call"

    .line 642
    invoke-static {v0, v2, p2}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 644
    new-instance p2, Lcom/zendesk/service/ErrorResponseAdapter;

    invoke-direct {p2, v2}, Lcom/zendesk/service/ErrorResponseAdapter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/zendesk/service/ZendeskCallback;->onError(Lcom/zendesk/service/ErrorResponse;)V

    :cond_1
    return v1
.end method

.method private convert(Lzendesk/support/HelpResponse;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/HelpResponse;",
            ")",
            "Ljava/util/List<",
            "Lzendesk/support/HelpItem;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 81
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 84
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-virtual {p1}, Lzendesk/support/HelpResponse;->getCategories()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/CategoryItem;

    .line 87
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {v1}, Lzendesk/support/CategoryItem;->getSections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/support/SectionItem;

    .line 89
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {v2}, Lzendesk/support/SectionItem;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method asFlatArticleList(Lzendesk/support/ArticlesResponse;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/ArticlesResponse;",
            ")",
            "Ljava/util/List<",
            "Lzendesk/support/FlatArticle;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 723
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 726
    :cond_0
    invoke-interface {p1}, Lzendesk/support/ArticlesResponse;->getCategories()Ljava/util/List;

    move-result-object v0

    .line 727
    invoke-interface {p1}, Lzendesk/support/ArticlesResponse;->getSections()Ljava/util/List;

    move-result-object v1

    .line 728
    invoke-interface {p1}, Lzendesk/support/ArticlesResponse;->getArticles()Ljava/util/List;

    move-result-object p1

    .line 730
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 731
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 734
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 736
    invoke-static {p1}, Lcom/zendesk/util/CollectionUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 737
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzendesk/support/Category;

    .line 738
    invoke-virtual {v5}, Lzendesk/support/Category;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 741
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/Section;

    .line 742
    invoke-virtual {v1}, Lzendesk/support/Section;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 745
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/Article;

    .line 746
    invoke-virtual {v0}, Lzendesk/support/Article;->getSectionId()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/Section;

    .line 747
    invoke-virtual {v1}, Lzendesk/support/Section;->getCategoryId()Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzendesk/support/Category;

    .line 749
    new-instance v6, Lzendesk/support/FlatArticle;

    invoke-direct {v6, v5, v1, v0}, Lzendesk/support/FlatArticle;-><init>(Lzendesk/support/Category;Lzendesk/support/Section;Lzendesk/support/Article;)V

    .line 750
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "ZendeskHelpCenterProvider"

    const-string v1, "There are no articles contained in this account"

    .line 754
    invoke-static {v0, v1, p1}, Lcom/zendesk/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 755
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 758
    :cond_4
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v4
.end method

.method asSearchArticleList(Lzendesk/support/ArticlesResponse;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/ArticlesResponse;",
            ")",
            "Ljava/util/List<",
            "Lzendesk/support/SearchArticle;",
            ">;"
        }
    .end annotation

    .line 655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 661
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 662
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 663
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 665
    invoke-interface {p1}, Lzendesk/support/ArticlesResponse;->getArticles()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/zendesk/util/CollectionUtils;->ensureEmpty(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 666
    invoke-interface {p1}, Lzendesk/support/ArticlesResponse;->getSections()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/zendesk/util/CollectionUtils;->ensureEmpty(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 667
    invoke-interface {p1}, Lzendesk/support/ArticlesResponse;->getCategories()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/zendesk/util/CollectionUtils;->ensureEmpty(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 668
    invoke-interface {p1}, Lzendesk/support/ArticlesResponse;->getUsers()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/zendesk/util/CollectionUtils;->ensureEmpty(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 670
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lzendesk/support/Section;

    .line 671
    invoke-virtual {v7}, Lzendesk/support/Section;->getId()Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 672
    invoke-virtual {v7}, Lzendesk/support/Section;->getId()Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 676
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lzendesk/support/Category;

    .line 677
    invoke-virtual {v6}, Lzendesk/support/Category;->getId()Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 678
    invoke-virtual {v6}, Lzendesk/support/Category;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 682
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzendesk/core/User;

    .line 683
    invoke-virtual {v5}, Lzendesk/core/User;->getId()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 684
    invoke-virtual {v5}, Lzendesk/core/User;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 688
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzendesk/support/Article;

    .line 693
    invoke-virtual {v4}, Lzendesk/support/Article;->getSectionId()Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "ZendeskHelpCenterProvider"

    if-eqz v5, :cond_7

    .line 694
    invoke-virtual {v4}, Lzendesk/support/Article;->getSectionId()Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzendesk/support/Section;

    goto :goto_4

    :cond_7
    new-array v5, v7, [Ljava/lang/Object;

    const-string v9, "Unable to determine section as section id was null."

    .line 696
    invoke-static {v8, v9, v5}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v6

    :goto_4
    if-eqz v5, :cond_8

    .line 699
    invoke-virtual {v5}, Lzendesk/support/Section;->getCategoryId()Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 700
    invoke-virtual {v5}, Lzendesk/support/Section;->getCategoryId()Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lzendesk/support/Category;

    goto :goto_5

    :cond_8
    new-array v9, v7, [Ljava/lang/Object;

    const-string v10, "Unable to determine category as section was null."

    .line 702
    invoke-static {v8, v10, v9}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 705
    :goto_5
    invoke-virtual {v4}, Lzendesk/support/Article;->getAuthorId()Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 706
    invoke-virtual {v4}, Lzendesk/support/Article;->getAuthorId()Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lzendesk/core/User;

    invoke-virtual {v4, v7}, Lzendesk/support/Article;->setAuthor(Lzendesk/core/User;)V

    goto :goto_6

    :cond_9
    new-array v7, v7, [Ljava/lang/Object;

    const-string v9, "Unable to determine author as author id was null."

    .line 708
    invoke-static {v8, v9, v7}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 712
    :goto_6
    new-instance v7, Lzendesk/support/SearchArticle;

    invoke-direct {v7, v4, v5, v6}, Lzendesk/support/SearchArticle;-><init>(Lzendesk/support/Article;Lzendesk/support/Section;Lzendesk/support/Category;)V

    .line 713
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    return-object v0
.end method

.method public deleteVote(Ljava/lang/Long;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 459
    invoke-virtual {p0, p2, v0}, Lzendesk/support/ZendeskHelpCenterProvider;->sanityCheck(Lcom/zendesk/service/ZendeskCallback;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 463
    :cond_0
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider;->settingsProvider:Lzendesk/support/HelpCenterSettingsProvider;

    new-instance v1, Lzendesk/support/ZendeskHelpCenterProvider$14;

    invoke-direct {v1, p0, p2, p2, p1}, Lzendesk/support/ZendeskHelpCenterProvider$14;-><init>(Lzendesk/support/ZendeskHelpCenterProvider;Lcom/zendesk/service/ZendeskCallback;Lcom/zendesk/service/ZendeskCallback;Ljava/lang/Long;)V

    invoke-interface {v0, v1}, Lzendesk/support/HelpCenterSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method public downvoteArticle(Ljava/lang/Long;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/support/ArticleVote;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 431
    invoke-virtual {p0, p2, v0}, Lzendesk/support/ZendeskHelpCenterProvider;->sanityCheck(Lcom/zendesk/service/ZendeskCallback;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 435
    :cond_0
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider;->settingsProvider:Lzendesk/support/HelpCenterSettingsProvider;

    new-instance v1, Lzendesk/support/ZendeskHelpCenterProvider$13;

    invoke-direct {v1, p0, p2, p2, p1}, Lzendesk/support/ZendeskHelpCenterProvider$13;-><init>(Lzendesk/support/ZendeskHelpCenterProvider;Lcom/zendesk/service/ZendeskCallback;Lcom/zendesk/service/ZendeskCallback;Ljava/lang/Long;)V

    invoke-interface {v0, v1}, Lzendesk/support/HelpCenterSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method public getArticle(Ljava/lang/Long;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/support/Article;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 300
    invoke-virtual {p0, p2, v0}, Lzendesk/support/ZendeskHelpCenterProvider;->sanityCheck(Lcom/zendesk/service/ZendeskCallback;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider;->settingsProvider:Lzendesk/support/HelpCenterSettingsProvider;

    new-instance v1, Lzendesk/support/ZendeskHelpCenterProvider$8;

    invoke-direct {v1, p0, p2, p2, p1}, Lzendesk/support/ZendeskHelpCenterProvider$8;-><init>(Lzendesk/support/ZendeskHelpCenterProvider;Lcom/zendesk/service/ZendeskCallback;Lcom/zendesk/service/ZendeskCallback;Ljava/lang/Long;)V

    invoke-interface {v0, v1}, Lzendesk/support/HelpCenterSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method public getArticles(Ljava/lang/Long;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Ljava/util/List<",
            "Lzendesk/support/Article;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0, p1, v0, p2}, Lzendesk/support/ZendeskHelpCenterProvider;->getArticles(Ljava/lang/Long;Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method public getArticles(Ljava/lang/Long;Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Ljava/util/List<",
            "Lzendesk/support/Article;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 140
    invoke-virtual {p0, p3, v0}, Lzendesk/support/ZendeskHelpCenterProvider;->sanityCheck(Lcom/zendesk/service/ZendeskCallback;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider;->settingsProvider:Lzendesk/support/HelpCenterSettingsProvider;

    new-instance v7, Lzendesk/support/ZendeskHelpCenterProvider$4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lzendesk/support/ZendeskHelpCenterProvider$4;-><init>(Lzendesk/support/ZendeskHelpCenterProvider;Lcom/zendesk/service/ZendeskCallback;Lcom/zendesk/service/ZendeskCallback;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Lzendesk/support/HelpCenterSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method public getAttachments(Ljava/lang/Long;Lzendesk/support/AttachmentType;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lzendesk/support/AttachmentType;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Ljava/util/List<",
            "Lzendesk/support/HelpCenterAttachment;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 384
    invoke-virtual {p0, p3, v0}, Lzendesk/support/ZendeskHelpCenterProvider;->sanityCheck(Lcom/zendesk/service/ZendeskCallback;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider;->settingsProvider:Lzendesk/support/HelpCenterSettingsProvider;

    new-instance v7, Lzendesk/support/ZendeskHelpCenterProvider$11;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lzendesk/support/ZendeskHelpCenterProvider$11;-><init>(Lzendesk/support/ZendeskHelpCenterProvider;Lcom/zendesk/service/ZendeskCallback;Lcom/zendesk/service/ZendeskCallback;Ljava/lang/Long;Lzendesk/support/AttachmentType;)V

    invoke-interface {v0, v7}, Lzendesk/support/HelpCenterSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method public getCategories(Lcom/zendesk/service/ZendeskCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Ljava/util/List<",
            "Lzendesk/support/Category;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 100
    invoke-virtual {p0, p1, v0}, Lzendesk/support/ZendeskHelpCenterProvider;->sanityCheck(Lcom/zendesk/service/ZendeskCallback;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider;->settingsProvider:Lzendesk/support/HelpCenterSettingsProvider;

    new-instance v1, Lzendesk/support/ZendeskHelpCenterProvider$2;

    invoke-direct {v1, p0, p1, p1}, Lzendesk/support/ZendeskHelpCenterProvider$2;-><init>(Lzendesk/support/ZendeskHelpCenterProvider;Lcom/zendesk/service/ZendeskCallback;Lcom/zendesk/service/ZendeskCallback;)V

    invoke-interface {v0, v1}, Lzendesk/support/HelpCenterSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method public getCategory(Ljava/lang/Long;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/support/Category;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 365
    invoke-virtual {p0, p2, v0}, Lzendesk/support/ZendeskHelpCenterProvider;->sanityCheck(Lcom/zendesk/service/ZendeskCallback;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider;->settingsProvider:Lzendesk/support/HelpCenterSettingsProvider;

    new-instance v1, Lzendesk/support/ZendeskHelpCenterProvider$10;

    invoke-direct {v1, p0, p2, p2, p1}, Lzendesk/support/ZendeskHelpCenterProvider$10;-><init>(Lzendesk/support/ZendeskHelpCenterProvider;Lcom/zendesk/service/ZendeskCallback;Lcom/zendesk/service/ZendeskCallback;Ljava/lang/Long;)V

    invoke-interface {v0, v1}, Lzendesk/support/HelpCenterSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method public getHelp(Lzendesk/support/HelpRequest;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/HelpRequest;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Ljava/util/List<",
            "Lzendesk/support/HelpItem;",
            ">;>;)V"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider;->settingsProvider:Lzendesk/support/HelpCenterSettingsProvider;

    new-instance v1, Lzendesk/support/ZendeskHelpCenterProvider$1;

    invoke-direct {v1, p0, p2, p2, p1}, Lzendesk/support/ZendeskHelpCenterProvider$1;-><init>(Lzendesk/support/ZendeskHelpCenterProvider;Lcom/zendesk/service/ZendeskCallback;Lcom/zendesk/service/ZendeskCallback;Lzendesk/support/HelpRequest;)V

    invoke-interface {v0, v1}, Lzendesk/support/HelpCenterSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method getLocale(Lzendesk/support/HelpCenterSettings;)Ljava/util/Locale;
    .locals 1

    .line 564
    sget-object v0, Lzendesk/support/Guide;->INSTANCE:Lzendesk/support/Guide;

    invoke-virtual {v0}, Lzendesk/support/Guide;->getHelpCenterLocaleOverride()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 565
    sget-object p1, Lzendesk/support/Guide;->INSTANCE:Lzendesk/support/Guide;

    invoke-virtual {p1}, Lzendesk/support/Guide;->getHelpCenterLocaleOverride()Ljava/util/Locale;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 567
    invoke-virtual {p1}, Lzendesk/support/HelpCenterSettings;->getLocale()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 568
    :goto_0
    invoke-static {p1}, Lcom/zendesk/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    goto :goto_1

    .line 569
    :cond_2
    invoke-static {p1}, Lcom/zendesk/util/LocaleUtil;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public getSection(Ljava/lang/Long;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/support/Section;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 348
    invoke-virtual {p0, p2, v0}, Lzendesk/support/ZendeskHelpCenterProvider;->sanityCheck(Lcom/zendesk/service/ZendeskCallback;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider;->settingsProvider:Lzendesk/support/HelpCenterSettingsProvider;

    new-instance v1, Lzendesk/support/ZendeskHelpCenterProvider$9;

    invoke-direct {v1, p0, p2, p2, p1}, Lzendesk/support/ZendeskHelpCenterProvider$9;-><init>(Lzendesk/support/ZendeskHelpCenterProvider;Lcom/zendesk/service/ZendeskCallback;Lcom/zendesk/service/ZendeskCallback;Ljava/lang/Long;)V

    invoke-interface {v0, v1}, Lzendesk/support/HelpCenterSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method public getSections(Ljava/lang/Long;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Ljava/util/List<",
            "Lzendesk/support/Section;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 117
    invoke-virtual {p0, p2, v0}, Lzendesk/support/ZendeskHelpCenterProvider;->sanityCheck(Lcom/zendesk/service/ZendeskCallback;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider;->settingsProvider:Lzendesk/support/HelpCenterSettingsProvider;

    new-instance v1, Lzendesk/support/ZendeskHelpCenterProvider$3;

    invoke-direct {v1, p0, p2, p2, p1}, Lzendesk/support/ZendeskHelpCenterProvider$3;-><init>(Lzendesk/support/ZendeskHelpCenterProvider;Lcom/zendesk/service/ZendeskCallback;Lcom/zendesk/service/ZendeskCallback;Ljava/lang/Long;)V

    invoke-interface {v0, v1}, Lzendesk/support/HelpCenterSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method public getSuggestedArticles(Lzendesk/support/SuggestedArticleSearch;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SuggestedArticleSearch;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/support/SuggestedArticleResponse;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 484
    invoke-virtual {p0, p2, v0}, Lzendesk/support/ZendeskHelpCenterProvider;->sanityCheck(Lcom/zendesk/service/ZendeskCallback;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider;->settingsProvider:Lzendesk/support/HelpCenterSettingsProvider;

    new-instance v1, Lzendesk/support/ZendeskHelpCenterProvider$15;

    invoke-direct {v1, p0, p2, p2, p1}, Lzendesk/support/ZendeskHelpCenterProvider$15;-><init>(Lzendesk/support/ZendeskHelpCenterProvider;Lcom/zendesk/service/ZendeskCallback;Lcom/zendesk/service/ZendeskCallback;Lzendesk/support/SuggestedArticleSearch;)V

    invoke-interface {v0, v1}, Lzendesk/support/HelpCenterSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method public listArticles(Lzendesk/support/ListArticleQuery;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/ListArticleQuery;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Ljava/util/List<",
            "Lzendesk/support/SearchArticle;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 160
    invoke-virtual {p0, p2, v0}, Lzendesk/support/ZendeskHelpCenterProvider;->sanityCheck(Lcom/zendesk/service/ZendeskCallback;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider;->settingsProvider:Lzendesk/support/HelpCenterSettingsProvider;

    new-instance v1, Lzendesk/support/ZendeskHelpCenterProvider$5;

    invoke-direct {v1, p0, p2, p2, p1}, Lzendesk/support/ZendeskHelpCenterProvider$5;-><init>(Lzendesk/support/ZendeskHelpCenterProvider;Lcom/zendesk/service/ZendeskCallback;Lcom/zendesk/service/ZendeskCallback;Lzendesk/support/ListArticleQuery;)V

    invoke-interface {v0, v1}, Lzendesk/support/HelpCenterSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method public listArticlesFlat(Lzendesk/support/ListArticleQuery;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/ListArticleQuery;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Ljava/util/List<",
            "Lzendesk/support/FlatArticle;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 202
    invoke-virtual {p0, p2, v0}, Lzendesk/support/ZendeskHelpCenterProvider;->sanityCheck(Lcom/zendesk/service/ZendeskCallback;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider;->settingsProvider:Lzendesk/support/HelpCenterSettingsProvider;

    new-instance v1, Lzendesk/support/ZendeskHelpCenterProvider$6;

    invoke-direct {v1, p0, p2, p2, p1}, Lzendesk/support/ZendeskHelpCenterProvider$6;-><init>(Lzendesk/support/ZendeskHelpCenterProvider;Lcom/zendesk/service/ZendeskCallback;Lcom/zendesk/service/ZendeskCallback;Lzendesk/support/ListArticleQuery;)V

    invoke-interface {v0, v1}, Lzendesk/support/HelpCenterSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method varargs sanityCheck(Lcom/zendesk/service/ZendeskCallback;[Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/service/ZendeskCallback<",
            "*>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 587
    array-length v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, p2, v3

    if-nez v5, :cond_0

    const/4 v4, 0x0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_3

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "ZendeskHelpCenterProvider"

    const-string v1, "One or more provided parameters are null."

    .line 595
    invoke-static {v0, v1, p2}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    .line 598
    new-instance p2, Lcom/zendesk/service/ErrorResponseAdapter;

    invoke-direct {p2, v1}, Lcom/zendesk/service/ErrorResponseAdapter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/zendesk/service/ZendeskCallback;->onError(Lcom/zendesk/service/ErrorResponse;)V

    :cond_2
    return v2

    :cond_3
    return v0
.end method

.method sanityCheckHelpCenterSettings(Lcom/zendesk/service/ZendeskCallback;Lzendesk/support/HelpCenterSettings;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/service/ZendeskCallback<",
            "*>;",
            "Lzendesk/support/HelpCenterSettings;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "ZendeskHelpCenterProvider"

    const/4 v2, 0x0

    if-nez p2, :cond_1

    new-array p2, v2, [Ljava/lang/Object;

    const-string v2, "Help Center settings are null. Can not continue with the call"

    .line 612
    invoke-static {v1, v2, p2}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 615
    new-instance p2, Lcom/zendesk/service/ErrorResponseAdapter;

    invoke-direct {p2, v2}, Lcom/zendesk/service/ErrorResponseAdapter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/zendesk/service/ZendeskCallback;->onError(Lcom/zendesk/service/ErrorResponse;)V

    :cond_0
    return v0

    .line 621
    :cond_1
    invoke-virtual {p2}, Lzendesk/support/HelpCenterSettings;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_3

    new-array p2, v2, [Ljava/lang/Object;

    const-string v2, "Help Center is disabled in your app\'s settings. Can not continue with the call"

    .line 623
    invoke-static {v1, v2, p2}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    .line 626
    new-instance p2, Lcom/zendesk/service/ErrorResponseAdapter;

    invoke-direct {p2, v2}, Lcom/zendesk/service/ErrorResponseAdapter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/zendesk/service/ZendeskCallback;->onError(Lcom/zendesk/service/ErrorResponse;)V

    :cond_2
    return v0

    :cond_3
    return v2
.end method

.method public searchArticles(Lzendesk/support/HelpCenterSearch;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/HelpCenterSearch;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Ljava/util/List<",
            "Lzendesk/support/SearchArticle;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 242
    invoke-virtual {p0, p2, v0}, Lzendesk/support/ZendeskHelpCenterProvider;->sanityCheck(Lcom/zendesk/service/ZendeskCallback;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider;->blipsProvider:Lzendesk/support/HelpCenterBlipsProvider;

    invoke-virtual {p1}, Lzendesk/support/HelpCenterSearch;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lzendesk/support/HelpCenterBlipsProvider;->helpCenterSearch(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider;->settingsProvider:Lzendesk/support/HelpCenterSettingsProvider;

    new-instance v1, Lzendesk/support/ZendeskHelpCenterProvider$7;

    invoke-direct {v1, p0, p2, p2, p1}, Lzendesk/support/ZendeskHelpCenterProvider$7;-><init>(Lzendesk/support/ZendeskHelpCenterProvider;Lcom/zendesk/service/ZendeskCallback;Lcom/zendesk/service/ZendeskCallback;Lzendesk/support/HelpCenterSearch;)V

    invoke-interface {v0, v1}, Lzendesk/support/HelpCenterSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method public submitRecordArticleView(Lzendesk/support/Article;Ljava/util/Locale;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/Article;",
            "Ljava/util/Locale;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 517
    invoke-virtual {p0, p3, v0}, Lzendesk/support/ZendeskHelpCenterProvider;->sanityCheck(Lcom/zendesk/service/ZendeskCallback;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider;->helpCenterTracker:Lzendesk/support/HelpCenterTracker;

    invoke-interface {v0}, Lzendesk/support/HelpCenterTracker;->helpCenterArticleViewed()V

    .line 523
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider;->blipsProvider:Lzendesk/support/HelpCenterBlipsProvider;

    invoke-interface {v0, p1}, Lzendesk/support/HelpCenterBlipsProvider;->articleView(Lzendesk/support/Article;)V

    .line 525
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider;->settingsProvider:Lzendesk/support/HelpCenterSettingsProvider;

    new-instance v7, Lzendesk/support/ZendeskHelpCenterProvider$16;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lzendesk/support/ZendeskHelpCenterProvider$16;-><init>(Lzendesk/support/ZendeskHelpCenterProvider;Lcom/zendesk/service/ZendeskCallback;Lcom/zendesk/service/ZendeskCallback;Lzendesk/support/Article;Ljava/util/Locale;)V

    invoke-interface {v0, v7}, Lzendesk/support/HelpCenterSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method public upvoteArticle(Ljava/lang/Long;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/support/ArticleVote;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 402
    invoke-virtual {p0, p2, v0}, Lzendesk/support/ZendeskHelpCenterProvider;->sanityCheck(Lcom/zendesk/service/ZendeskCallback;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider;->settingsProvider:Lzendesk/support/HelpCenterSettingsProvider;

    new-instance v1, Lzendesk/support/ZendeskHelpCenterProvider$12;

    invoke-direct {v1, p0, p2, p2, p1}, Lzendesk/support/ZendeskHelpCenterProvider$12;-><init>(Lzendesk/support/ZendeskHelpCenterProvider;Lcom/zendesk/service/ZendeskCallback;Lcom/zendesk/service/ZendeskCallback;Ljava/lang/Long;)V

    invoke-interface {v0, v1}, Lzendesk/support/HelpCenterSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method
