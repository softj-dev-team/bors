.class public Lzendesk/messaging/ui/StackedResponseOptionsView;
.super Landroid/widget/FrameLayout;
.source "StackedResponseOptionsView.java"

# interfaces
.implements Lzendesk/messaging/ui/Updatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lzendesk/messaging/ui/Updatable<",
        "Lzendesk/messaging/ui/ResponseOptionsViewState;",
        ">;"
    }
.end annotation


# instance fields
.field private adapter:Lzendesk/messaging/ui/ResponseOptionsAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lzendesk/messaging/ui/StackedResponseOptionsView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lzendesk/messaging/ui/StackedResponseOptionsView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0}, Lzendesk/messaging/ui/StackedResponseOptionsView;->init()V

    return-void
.end method

.method static synthetic access$000(Lzendesk/messaging/ui/StackedResponseOptionsView;)Lzendesk/messaging/ui/ResponseOptionsAdapter;
    .locals 0

    .line 23
    iget-object p0, p0, Lzendesk/messaging/ui/StackedResponseOptionsView;->adapter:Lzendesk/messaging/ui/ResponseOptionsAdapter;

    return-object p0
.end method

.method private init()V
    .locals 2

    .line 43
    invoke-virtual {p0}, Lzendesk/messaging/ui/StackedResponseOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lzendesk/messaging/R$layout;->zui_view_response_options_content:I

    invoke-static {v0, v1, p0}, Lzendesk/messaging/ui/StackedResponseOptionsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 5

    .line 48
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 50
    sget v0, Lzendesk/messaging/R$id;->zui_response_options_recycler:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/StackedResponseOptionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 56
    new-instance v1, Lcom/google/android/flexbox/FlexboxItemDecoration;

    invoke-virtual {p0}, Lzendesk/messaging/ui/StackedResponseOptionsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/flexbox/FlexboxItemDecoration;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x3

    .line 58
    invoke-virtual {v1, v2}, Lcom/google/android/flexbox/FlexboxItemDecoration;->setOrientation(I)V

    .line 59
    invoke-virtual {p0}, Lzendesk/messaging/ui/StackedResponseOptionsView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lzendesk/messaging/R$drawable;->zui_view_stacked_response_options_divider:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {v1, v2}, Lcom/google/android/flexbox/FlexboxItemDecoration;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :cond_0
    new-instance v2, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {p0}, Lzendesk/messaging/ui/StackedResponseOptionsView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 66
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 68
    new-instance v1, Lzendesk/messaging/ui/ResponseOptionsAdapter;

    invoke-direct {v1}, Lzendesk/messaging/ui/ResponseOptionsAdapter;-><init>()V

    iput-object v1, p0, Lzendesk/messaging/ui/StackedResponseOptionsView;->adapter:Lzendesk/messaging/ui/ResponseOptionsAdapter;

    .line 69
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lzendesk/messaging/ui/ResponseOptionsViewState;

    invoke-virtual {p0, p1}, Lzendesk/messaging/ui/StackedResponseOptionsView;->update(Lzendesk/messaging/ui/ResponseOptionsViewState;)V

    return-void
.end method

.method public update(Lzendesk/messaging/ui/ResponseOptionsViewState;)V
    .locals 2

    .line 74
    invoke-virtual {p1}, Lzendesk/messaging/ui/ResponseOptionsViewState;->getProps()Lzendesk/messaging/ui/MessagingCellProps;

    move-result-object v0

    invoke-virtual {v0, p0}, Lzendesk/messaging/ui/MessagingCellProps;->apply(Landroid/view/View;)V

    .line 75
    iget-object v0, p0, Lzendesk/messaging/ui/StackedResponseOptionsView;->adapter:Lzendesk/messaging/ui/ResponseOptionsAdapter;

    new-instance v1, Lzendesk/messaging/ui/StackedResponseOptionsView$1;

    invoke-direct {v1, p0, p1}, Lzendesk/messaging/ui/StackedResponseOptionsView$1;-><init>(Lzendesk/messaging/ui/StackedResponseOptionsView;Lzendesk/messaging/ui/ResponseOptionsViewState;)V

    invoke-virtual {v0, v1}, Lzendesk/messaging/ui/ResponseOptionsAdapter;->setResponseOptionHandler(Lzendesk/messaging/ui/ResponseOptionHandler;)V

    .line 82
    iget-object v0, p0, Lzendesk/messaging/ui/StackedResponseOptionsView;->adapter:Lzendesk/messaging/ui/ResponseOptionsAdapter;

    invoke-virtual {p1}, Lzendesk/messaging/ui/ResponseOptionsViewState;->getOptions()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lzendesk/messaging/ui/ResponseOptionsAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method
