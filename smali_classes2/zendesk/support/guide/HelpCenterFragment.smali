.class public Lzendesk/support/guide/HelpCenterFragment;
.super Landroidx/fragment/app/Fragment;
.source "HelpCenterFragment.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "HelpCenterFragment"


# instance fields
.field private adapter:Lzendesk/support/guide/HelpRecyclerViewAdapter;

.field helpCenterProvider:Lzendesk/support/HelpCenterProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field networkInfoProvider:Lzendesk/core/NetworkInfoProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private presenter:Lzendesk/support/guide/HelpCenterMvp$Presenter;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lzendesk/support/guide/HelpCenterConfiguration;)Lzendesk/support/guide/HelpCenterFragment;
    .locals 1

    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    invoke-static {v0, p0}, Lzendesk/configurations/ConfigurationUtil;->addToBundle(Landroid/os/Bundle;Lzendesk/configurations/Configuration;)V

    .line 118
    new-instance p0, Lzendesk/support/guide/HelpCenterFragment;

    invoke-direct {p0}, Lzendesk/support/guide/HelpCenterFragment;-><init>()V

    .line 119
    invoke-virtual {p0, v0}, Lzendesk/support/guide/HelpCenterFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private setupRecyclerView()V
    .locals 5

    .line 98
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 99
    invoke-virtual {p0}, Lzendesk/support/guide/HelpCenterFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 98
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 100
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lzendesk/support/guide/SeparatorDecoration;

    .line 101
    invoke-virtual {p0}, Lzendesk/support/guide/HelpCenterFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/zendesk/guide/sdk/R$drawable;->zs_help_separator:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lzendesk/support/guide/SeparatorDecoration;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 100
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 103
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lzendesk/support/guide/HelpCenterFragment;->adapter:Lzendesk/support/guide/HelpRecyclerViewAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 66
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 67
    invoke-virtual {p0, p1}, Lzendesk/support/guide/HelpCenterFragment;->setRetainInstance(Z)V

    .line 69
    sget-object p1, Lzendesk/support/guide/GuideSdkDependencyProvider;->INSTANCE:Lzendesk/support/guide/GuideSdkDependencyProvider;

    invoke-virtual {p1}, Lzendesk/support/guide/GuideSdkDependencyProvider;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p0}, Lzendesk/support/guide/HelpCenterFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Lzendesk/support/guide/HelpCenterConfiguration;

    invoke-static {p1, v0}, Lzendesk/configurations/ConfigurationUtil;->fromBundle(Landroid/os/Bundle;Ljava/lang/Class;)Lzendesk/configurations/Configuration;

    move-result-object p1

    check-cast p1, Lzendesk/support/guide/HelpCenterConfiguration;

    .line 73
    sget-object v0, Lzendesk/support/guide/GuideSdkDependencyProvider;->INSTANCE:Lzendesk/support/guide/GuideSdkDependencyProvider;

    invoke-virtual {v0}, Lzendesk/support/guide/GuideSdkDependencyProvider;->provideGuideSdkComponent()Lzendesk/support/guide/GuideSdkComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lzendesk/support/guide/GuideSdkComponent;->inject(Lzendesk/support/guide/HelpCenterFragment;)V

    .line 76
    new-instance v0, Lzendesk/support/guide/HelpRecyclerViewAdapter;

    iget-object v1, p0, Lzendesk/support/guide/HelpCenterFragment;->helpCenterProvider:Lzendesk/support/HelpCenterProvider;

    iget-object v2, p0, Lzendesk/support/guide/HelpCenterFragment;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    invoke-direct {v0, p1, v1, v2}, Lzendesk/support/guide/HelpRecyclerViewAdapter;-><init>(Lzendesk/support/guide/HelpCenterConfiguration;Lzendesk/support/HelpCenterProvider;Lzendesk/core/NetworkInfoProvider;)V

    iput-object v0, p0, Lzendesk/support/guide/HelpCenterFragment;->adapter:Lzendesk/support/guide/HelpRecyclerViewAdapter;

    .line 78
    iget-object p1, p0, Lzendesk/support/guide/HelpCenterFragment;->presenter:Lzendesk/support/guide/HelpCenterMvp$Presenter;

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {v0, p1}, Lzendesk/support/guide/HelpRecyclerViewAdapter;->setContentUpdateListener(Lzendesk/support/guide/HelpCenterMvp$Presenter;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 88
    sget p3, Lcom/zendesk/guide/sdk/R$layout;->zs_fragment_help:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 90
    sget p2, Lcom/zendesk/guide/sdk/R$id;->help_center_article_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lzendesk/support/guide/HelpCenterFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    invoke-direct {p0}, Lzendesk/support/guide/HelpCenterFragment;->setupRecyclerView()V

    return-object p1
.end method

.method public setPresenter(Lzendesk/support/guide/HelpCenterMvp$Presenter;)V
    .locals 1

    .line 57
    iput-object p1, p0, Lzendesk/support/guide/HelpCenterFragment;->presenter:Lzendesk/support/guide/HelpCenterMvp$Presenter;

    .line 59
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterFragment;->adapter:Lzendesk/support/guide/HelpRecyclerViewAdapter;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0, p1}, Lzendesk/support/guide/HelpRecyclerViewAdapter;->setContentUpdateListener(Lzendesk/support/guide/HelpCenterMvp$Presenter;)V

    :cond_0
    return-void
.end method
