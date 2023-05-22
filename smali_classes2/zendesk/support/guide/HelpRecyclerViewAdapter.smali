.class Lzendesk/support/guide/HelpRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HelpRecyclerViewAdapter.java"

# interfaces
.implements Lzendesk/support/guide/HelpMvp$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/guide/HelpRecyclerViewAdapter$HelpViewHolder;,
        Lzendesk/support/guide/HelpRecyclerViewAdapter$ExtraPaddingViewHolder;,
        Lzendesk/support/guide/HelpRecyclerViewAdapter$NoResultsViewHolder;,
        Lzendesk/support/guide/HelpRecyclerViewAdapter$LoadingViewHolder;,
        Lzendesk/support/guide/HelpRecyclerViewAdapter$SeeAllViewHolder;,
        Lzendesk/support/guide/HelpRecyclerViewAdapter$ArticleViewHolder;,
        Lzendesk/support/guide/HelpRecyclerViewAdapter$SectionViewHolder;,
        Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lzendesk/support/guide/HelpRecyclerViewAdapter$HelpViewHolder;",
        ">;",
        "Lzendesk/support/guide/HelpMvp$View;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private defaultCategoryTitleColour:I

.field private final helpCenterUiConfig:Lzendesk/support/guide/HelpCenterConfiguration;

.field private highlightCategoryTitleColour:I

.field private presenter:Lzendesk/support/guide/HelpMvp$Presenter;


# direct methods
.method constructor <init>(Lzendesk/support/guide/HelpCenterConfiguration;Lzendesk/support/HelpCenterProvider;Lzendesk/core/NetworkInfoProvider;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 51
    new-instance v0, Lzendesk/support/guide/HelpAdapterPresenter;

    new-instance v1, Lzendesk/support/guide/HelpModel;

    invoke-direct {v1, p2}, Lzendesk/support/guide/HelpModel;-><init>(Lzendesk/support/HelpCenterProvider;)V

    invoke-direct {v0, p0, v1, p3, p1}, Lzendesk/support/guide/HelpAdapterPresenter;-><init>(Lzendesk/support/guide/HelpMvp$View;Lzendesk/support/guide/HelpMvp$Model;Lzendesk/core/NetworkInfoProvider;Lzendesk/support/guide/HelpCenterConfiguration;)V

    iput-object v0, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter;->presenter:Lzendesk/support/guide/HelpMvp$Presenter;

    .line 56
    iput-object p1, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter;->helpCenterUiConfig:Lzendesk/support/guide/HelpCenterConfiguration;

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/guide/HelpRecyclerViewAdapter;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lzendesk/support/guide/HelpRecyclerViewAdapter;)Lzendesk/support/guide/HelpMvp$Presenter;
    .locals 0

    .line 34
    iget-object p0, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter;->presenter:Lzendesk/support/guide/HelpMvp$Presenter;

    return-object p0
.end method

.method static synthetic access$500(Lzendesk/support/guide/HelpRecyclerViewAdapter;)I
    .locals 0

    .line 34
    iget p0, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter;->highlightCategoryTitleColour:I

    return p0
.end method

.method static synthetic access$600(Lzendesk/support/guide/HelpRecyclerViewAdapter;)I
    .locals 0

    .line 34
    iget p0, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter;->defaultCategoryTitleColour:I

    return p0
.end method

.method static synthetic access$700(Lzendesk/support/guide/HelpRecyclerViewAdapter;)Lzendesk/support/guide/HelpCenterConfiguration;
    .locals 0

    .line 34
    iget-object p0, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter;->helpCenterUiConfig:Lzendesk/support/guide/HelpCenterConfiguration;

    return-object p0
.end method

.method private inflateView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2

    .line 144
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addItem(ILzendesk/support/HelpItem;)V
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lzendesk/support/guide/HelpRecyclerViewAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 149
    iget-object v0, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter;->presenter:Lzendesk/support/guide/HelpMvp$Presenter;

    invoke-interface {v0}, Lzendesk/support/guide/HelpMvp$Presenter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 165
    iget-object v0, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter;->presenter:Lzendesk/support/guide/HelpMvp$Presenter;

    invoke-interface {v0, p1}, Lzendesk/support/guide/HelpMvp$Presenter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 87
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 88
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 90
    sget p1, Lcom/zendesk/guide/sdk/R$attr;->colorPrimary:I

    iget-object v0, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter;->context:Landroid/content/Context;

    sget v1, Lcom/zendesk/guide/sdk/R$color;->zs_fallback_text_color:I

    invoke-static {p1, v0, v1}, Lzendesk/support/guide/UiUtils;->themeAttributeToColor(ILandroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter;->highlightCategoryTitleColour:I

    .line 92
    iget-object p1, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter;->context:Landroid/content/Context;

    sget v0, Lcom/zendesk/guide/sdk/R$color;->zs_help_text_color_primary:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter;->defaultCategoryTitleColour:I

    .line 94
    iget-object p1, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter;->presenter:Lzendesk/support/guide/HelpMvp$Presenter;

    invoke-interface {p1}, Lzendesk/support/guide/HelpMvp$Presenter;->onAttached()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 34
    check-cast p1, Lzendesk/support/guide/HelpRecyclerViewAdapter$HelpViewHolder;

    invoke-virtual {p0, p1, p2}, Lzendesk/support/guide/HelpRecyclerViewAdapter;->onBindViewHolder(Lzendesk/support/guide/HelpRecyclerViewAdapter$HelpViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lzendesk/support/guide/HelpRecyclerViewAdapter$HelpViewHolder;I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "HelpCenterActivity"

    const-string v0, "Holder was null, possible unexpected item type"

    .line 156
    invoke-static {p2, v0, p1}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter;->presenter:Lzendesk/support/guide/HelpMvp$Presenter;

    invoke-interface {v0, p2}, Lzendesk/support/guide/HelpMvp$Presenter;->getItemForBinding(I)Lzendesk/support/HelpItem;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lzendesk/support/guide/HelpRecyclerViewAdapter$HelpViewHolder;->bindTo(Lzendesk/support/HelpItem;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lzendesk/support/guide/HelpRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lzendesk/support/guide/HelpRecyclerViewAdapter$HelpViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lzendesk/support/guide/HelpRecyclerViewAdapter$HelpViewHolder;
    .locals 1

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "HelpCenterActivity"

    const-string v0, "Unknown item type, returning null for holder"

    .line 138
    invoke-static {p2, v0, p1}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 134
    :pswitch_1
    sget p2, Lcom/zendesk/guide/sdk/R$layout;->zs_row_padding:I

    invoke-direct {p0, p1, p2}, Lzendesk/support/guide/HelpRecyclerViewAdapter;->inflateView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    .line 135
    new-instance p2, Lzendesk/support/guide/HelpRecyclerViewAdapter$ExtraPaddingViewHolder;

    invoke-direct {p2, p0, p1}, Lzendesk/support/guide/HelpRecyclerViewAdapter$ExtraPaddingViewHolder;-><init>(Lzendesk/support/guide/HelpRecyclerViewAdapter;Landroid/view/View;)V

    return-object p2

    .line 130
    :pswitch_2
    sget p2, Lcom/zendesk/guide/sdk/R$layout;->zs_row_no_articles_found:I

    invoke-direct {p0, p1, p2}, Lzendesk/support/guide/HelpRecyclerViewAdapter;->inflateView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    .line 131
    new-instance p2, Lzendesk/support/guide/HelpRecyclerViewAdapter$NoResultsViewHolder;

    invoke-direct {p2, p0, p1}, Lzendesk/support/guide/HelpRecyclerViewAdapter$NoResultsViewHolder;-><init>(Lzendesk/support/guide/HelpRecyclerViewAdapter;Landroid/view/View;)V

    return-object p2

    .line 126
    :pswitch_3
    sget p2, Lcom/zendesk/guide/sdk/R$layout;->zs_row_loading_progress:I

    invoke-direct {p0, p1, p2}, Lzendesk/support/guide/HelpRecyclerViewAdapter;->inflateView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    .line 127
    new-instance p2, Lzendesk/support/guide/HelpRecyclerViewAdapter$LoadingViewHolder;

    invoke-direct {p2, p0, p1}, Lzendesk/support/guide/HelpRecyclerViewAdapter$LoadingViewHolder;-><init>(Lzendesk/support/guide/HelpRecyclerViewAdapter;Landroid/view/View;)V

    return-object p2

    .line 122
    :pswitch_4
    sget p2, Lcom/zendesk/guide/sdk/R$layout;->zs_row_action:I

    invoke-direct {p0, p1, p2}, Lzendesk/support/guide/HelpRecyclerViewAdapter;->inflateView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    .line 123
    new-instance p2, Lzendesk/support/guide/HelpRecyclerViewAdapter$SeeAllViewHolder;

    invoke-direct {p2, p0, p1}, Lzendesk/support/guide/HelpRecyclerViewAdapter$SeeAllViewHolder;-><init>(Lzendesk/support/guide/HelpRecyclerViewAdapter;Landroid/view/View;)V

    return-object p2

    .line 118
    :pswitch_5
    sget p2, Lcom/zendesk/guide/sdk/R$layout;->zs_row_article:I

    invoke-direct {p0, p1, p2}, Lzendesk/support/guide/HelpRecyclerViewAdapter;->inflateView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    .line 119
    new-instance p2, Lzendesk/support/guide/HelpRecyclerViewAdapter$ArticleViewHolder;

    invoke-direct {p2, p0, p1}, Lzendesk/support/guide/HelpRecyclerViewAdapter$ArticleViewHolder;-><init>(Lzendesk/support/guide/HelpRecyclerViewAdapter;Landroid/view/View;)V

    return-object p2

    .line 114
    :pswitch_6
    sget p2, Lcom/zendesk/guide/sdk/R$layout;->zs_row_section:I

    invoke-direct {p0, p1, p2}, Lzendesk/support/guide/HelpRecyclerViewAdapter;->inflateView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    .line 115
    new-instance p2, Lzendesk/support/guide/HelpRecyclerViewAdapter$SectionViewHolder;

    invoke-direct {p2, p0, p1}, Lzendesk/support/guide/HelpRecyclerViewAdapter$SectionViewHolder;-><init>(Lzendesk/support/guide/HelpRecyclerViewAdapter;Landroid/view/View;)V

    return-object p2

    .line 110
    :pswitch_7
    sget p2, Lcom/zendesk/guide/sdk/R$layout;->zs_row_category:I

    invoke-direct {p0, p1, p2}, Lzendesk/support/guide/HelpRecyclerViewAdapter;->inflateView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    .line 111
    new-instance p2, Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;

    invoke-direct {p2, p0, p1}, Lzendesk/support/guide/HelpRecyclerViewAdapter$CategoryViewHolder;-><init>(Lzendesk/support/guide/HelpRecyclerViewAdapter;Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 99
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 100
    iget-object p1, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter;->presenter:Lzendesk/support/guide/HelpMvp$Presenter;

    invoke-interface {p1}, Lzendesk/support/guide/HelpMvp$Presenter;->onDetached()V

    const/4 p1, 0x0

    .line 101
    iput-object p1, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method public removeItem(I)V
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lzendesk/support/guide/HelpRecyclerViewAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method setContentUpdateListener(Lzendesk/support/guide/HelpCenterMvp$Presenter;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lzendesk/support/guide/HelpRecyclerViewAdapter;->presenter:Lzendesk/support/guide/HelpMvp$Presenter;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p1}, Lzendesk/support/guide/HelpMvp$Presenter;->setContentPresenter(Lzendesk/support/guide/HelpCenterMvp$Presenter;)V

    :cond_0
    return-void
.end method

.method public showItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/HelpItem;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lzendesk/support/guide/HelpRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
