.class public Lzendesk/messaging/ui/MessagingView;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.source "MessagingView.java"


# static fields
.field public static final DEFAULT_ANIMATION_DURATION:J


# instance fields
.field private final cellListAdapter:Lzendesk/messaging/ui/CellListAdapter;

.field private final lostConnectionBanner:Lzendesk/messaging/ui/LostConnectionBanner;

.field private final progressBar:Lzendesk/commonui/AlmostRealProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lzendesk/messaging/ui/MessagingView;->DEFAULT_ANIMATION_DURATION:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lzendesk/messaging/ui/MessagingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lzendesk/messaging/ui/MessagingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lzendesk/messaging/R$layout;->zui_view_messaging:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 51
    sget p2, Lzendesk/messaging/R$id;->zui_progressBar:I

    invoke-virtual {p0, p2}, Lzendesk/messaging/ui/MessagingView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lzendesk/commonui/AlmostRealProgressBar;

    iput-object p2, p0, Lzendesk/messaging/ui/MessagingView;->progressBar:Lzendesk/commonui/AlmostRealProgressBar;

    .line 52
    new-instance p2, Lzendesk/messaging/ui/CellListAdapter;

    invoke-direct {p2}, Lzendesk/messaging/ui/CellListAdapter;-><init>()V

    iput-object p2, p0, Lzendesk/messaging/ui/MessagingView;->cellListAdapter:Lzendesk/messaging/ui/CellListAdapter;

    .line 53
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p3, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 54
    sget p1, Lzendesk/messaging/R$id;->zui_recycler_view:I

    invoke-virtual {p0, p1}, Lzendesk/messaging/ui/MessagingView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 56
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 57
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 62
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    sget v1, Lzendesk/messaging/R$layout;->zui_cell_response_options_stacked:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 64
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 65
    sget-wide v3, Lzendesk/messaging/ui/MessagingView;->DEFAULT_ANIMATION_DURATION:J

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setAddDuration(J)V

    .line 66
    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setChangeDuration(J)V

    .line 67
    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setRemoveDuration(J)V

    .line 68
    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setMoveDuration(J)V

    .line 69
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 70
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 72
    sget v0, Lzendesk/messaging/R$id;->zui_input_box:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/MessagingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzendesk/messaging/ui/InputBox;

    .line 73
    invoke-static {p0, p1, v0}, Lzendesk/messaging/ui/LostConnectionBanner;->create(Landroid/view/ViewGroup;Landroidx/recyclerview/widget/RecyclerView;Lzendesk/messaging/ui/InputBox;)Lzendesk/messaging/ui/LostConnectionBanner;

    move-result-object v1

    iput-object v1, p0, Lzendesk/messaging/ui/MessagingView;->lostConnectionBanner:Lzendesk/messaging/ui/LostConnectionBanner;

    .line 75
    new-instance v1, Lzendesk/messaging/ui/RecyclerViewScroller;

    invoke-direct {v1, p1, p3, p2}, Lzendesk/messaging/ui/RecyclerViewScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 76
    invoke-virtual {v1, v0}, Lzendesk/messaging/ui/RecyclerViewScroller;->install(Lzendesk/messaging/ui/InputBox;)V

    return-void
.end method


# virtual methods
.method public renderState(Lzendesk/messaging/ui/MessagingState;Lzendesk/messaging/ui/MessagingCellFactory;Lcom/squareup/picasso/Picasso;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lzendesk/messaging/ui/MessagingView;->cellListAdapter:Lzendesk/messaging/ui/CellListAdapter;

    iget-object v1, p1, Lzendesk/messaging/ui/MessagingState;->messagingItems:Ljava/util/List;

    iget-object v2, p1, Lzendesk/messaging/ui/MessagingState;->typingState:Lzendesk/messaging/ui/MessagingState$TypingState;

    iget-object v3, p1, Lzendesk/messaging/ui/MessagingState;->attachmentSettings:Lzendesk/messaging/AttachmentSettings;

    invoke-virtual {p2, v1, v2, p3, v3}, Lzendesk/messaging/ui/MessagingCellFactory;->createCells(Ljava/util/List;Lzendesk/messaging/ui/MessagingState$TypingState;Lcom/squareup/picasso/Picasso;Lzendesk/messaging/AttachmentSettings;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lzendesk/messaging/ui/CellListAdapter;->submitList(Ljava/util/List;)V

    .line 94
    iget-boolean p2, p1, Lzendesk/messaging/ui/MessagingState;->progressBarVisible:Z

    if-eqz p2, :cond_1

    .line 95
    iget-object p2, p0, Lzendesk/messaging/ui/MessagingView;->progressBar:Lzendesk/commonui/AlmostRealProgressBar;

    sget-object p3, Lzendesk/commonui/AlmostRealProgressBar;->DONT_STOP_MOVING:Ljava/util/List;

    invoke-virtual {p2, p3}, Lzendesk/commonui/AlmostRealProgressBar;->start(Ljava/util/List;)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object p2, p0, Lzendesk/messaging/ui/MessagingView;->progressBar:Lzendesk/commonui/AlmostRealProgressBar;

    const-wide/16 v0, 0x12c

    invoke-virtual {p2, v0, v1}, Lzendesk/commonui/AlmostRealProgressBar;->stop(J)V

    .line 100
    :goto_0
    iget-object p2, p0, Lzendesk/messaging/ui/MessagingView;->lostConnectionBanner:Lzendesk/messaging/ui/LostConnectionBanner;

    iget-object p1, p1, Lzendesk/messaging/ui/MessagingState;->connectionState:Lzendesk/messaging/ConnectionState;

    invoke-virtual {p2, p1}, Lzendesk/messaging/ui/LostConnectionBanner;->update(Lzendesk/messaging/ConnectionState;)V

    .line 101
    iget-object p1, p0, Lzendesk/messaging/ui/MessagingView;->lostConnectionBanner:Lzendesk/messaging/ui/LostConnectionBanner;

    new-instance p2, Lzendesk/messaging/ui/MessagingView$1;

    invoke-direct {p2, p0, p4, p5}, Lzendesk/messaging/ui/MessagingView$1;-><init>(Lzendesk/messaging/ui/MessagingView;Lzendesk/messaging/EventListener;Lzendesk/messaging/EventFactory;)V

    invoke-virtual {p1, p2}, Lzendesk/messaging/ui/LostConnectionBanner;->setOnRetryConnectionClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
