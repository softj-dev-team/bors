.class public Lzendesk/support/guide/HelpSearchFragment;
.super Landroidx/fragment/app/Fragment;
.source "HelpSearchFragment.java"


# instance fields
.field private adapter:Lzendesk/support/guide/HelpSearchRecyclerViewAdapter;

.field private helpCenterProvider:Lzendesk/support/HelpCenterProvider;

.field private query:Ljava/lang/String;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private searchArticles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/SearchArticle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 35
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/guide/HelpSearchFragment;->searchArticles:Ljava/util/List;

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lzendesk/support/guide/HelpSearchFragment;->query:Ljava/lang/String;

    return-void
.end method

.method public static newInstance(Lzendesk/support/guide/HelpCenterConfiguration;Lzendesk/support/HelpCenterProvider;)Lzendesk/support/guide/HelpSearchFragment;
    .locals 1

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    invoke-static {v0, p0}, Lzendesk/configurations/ConfigurationUtil;->addToBundle(Landroid/os/Bundle;Lzendesk/configurations/Configuration;)V

    .line 53
    new-instance p0, Lzendesk/support/guide/HelpSearchFragment;

    invoke-direct {p0}, Lzendesk/support/guide/HelpSearchFragment;-><init>()V

    .line 54
    invoke-virtual {p0, v0}, Lzendesk/support/guide/HelpSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 55
    iput-object p1, p0, Lzendesk/support/guide/HelpSearchFragment;->helpCenterProvider:Lzendesk/support/HelpCenterProvider;

    return-object p0
.end method

.method private setupRecyclerView()V
    .locals 6

    .line 110
    invoke-virtual {p0}, Lzendesk/support/guide/HelpSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lzendesk/support/guide/HelpCenterConfiguration;

    invoke-static {v0, v1}, Lzendesk/configurations/ConfigurationUtil;->fromBundle(Landroid/os/Bundle;Ljava/lang/Class;)Lzendesk/configurations/Configuration;

    move-result-object v0

    check-cast v0, Lzendesk/support/guide/HelpCenterConfiguration;

    .line 112
    iget-object v1, p0, Lzendesk/support/guide/HelpSearchFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 113
    invoke-virtual {p0}, Lzendesk/support/guide/HelpSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 112
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 115
    new-instance v1, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter;

    iget-object v2, p0, Lzendesk/support/guide/HelpSearchFragment;->searchArticles:Ljava/util/List;

    iget-object v3, p0, Lzendesk/support/guide/HelpSearchFragment;->query:Ljava/lang/String;

    iget-object v4, p0, Lzendesk/support/guide/HelpSearchFragment;->helpCenterProvider:Lzendesk/support/HelpCenterProvider;

    invoke-direct {v1, v2, v3, v0, v4}, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter;-><init>(Ljava/util/List;Ljava/lang/String;Lzendesk/support/guide/HelpCenterConfiguration;Lzendesk/support/HelpCenterProvider;)V

    iput-object v1, p0, Lzendesk/support/guide/HelpSearchFragment;->adapter:Lzendesk/support/guide/HelpSearchRecyclerViewAdapter;

    .line 117
    iget-object v0, p0, Lzendesk/support/guide/HelpSearchFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public clearResults()V
    .locals 1

    .line 102
    iget-object v0, p0, Lzendesk/support/guide/HelpSearchFragment;->adapter:Lzendesk/support/guide/HelpSearchRecyclerViewAdapter;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter;->clearResults()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 64
    invoke-virtual {p0, p1}, Lzendesk/support/guide/HelpSearchFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 71
    sget p3, Lcom/zendesk/guide/sdk/R$layout;->zs_fragment_help:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 73
    sget p2, Lcom/zendesk/guide/sdk/R$id;->help_center_article_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lzendesk/support/guide/HelpSearchFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 75
    invoke-direct {p0}, Lzendesk/support/guide/HelpSearchFragment;->setupRecyclerView()V

    return-object p1
.end method

.method public updateResults(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/SearchArticle;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lzendesk/support/guide/HelpSearchFragment;->searchArticles:Ljava/util/List;

    .line 88
    iput-object p2, p0, Lzendesk/support/guide/HelpSearchFragment;->query:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lzendesk/support/guide/HelpSearchFragment;->adapter:Lzendesk/support/guide/HelpSearchRecyclerViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzendesk/support/guide/HelpSearchFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 91
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lzendesk/support/guide/HelpSearchFragment;->adapter:Lzendesk/support/guide/HelpSearchRecyclerViewAdapter;

    invoke-virtual {v0, p1, p2}, Lzendesk/support/guide/HelpSearchRecyclerViewAdapter;->update(Ljava/util/List;Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Lzendesk/support/guide/HelpSearchFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sget p2, Lcom/zendesk/guide/sdk/R$string;->zs_help_center_search_loaded_accessibility:I

    invoke-virtual {p0, p2}, Lzendesk/support/guide/HelpSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
