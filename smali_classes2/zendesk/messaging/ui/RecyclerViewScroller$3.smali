.class Lzendesk/messaging/ui/RecyclerViewScroller$3;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "RecyclerViewScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/messaging/ui/RecyclerViewScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/messaging/ui/RecyclerViewScroller;

.field final synthetic val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lzendesk/messaging/ui/RecyclerViewScroller;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lzendesk/messaging/ui/RecyclerViewScroller$3;->this$0:Lzendesk/messaging/ui/RecyclerViewScroller;

    iput-object p2, p0, Lzendesk/messaging/ui/RecyclerViewScroller$3;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemRangeInserted(II)V
    .locals 0

    .line 71
    iget-object p1, p0, Lzendesk/messaging/ui/RecyclerViewScroller$3;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 72
    iget-object p1, p0, Lzendesk/messaging/ui/RecyclerViewScroller$3;->this$0:Lzendesk/messaging/ui/RecyclerViewScroller;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lzendesk/messaging/ui/RecyclerViewScroller;->access$200(Lzendesk/messaging/ui/RecyclerViewScroller;I)V

    :cond_0
    return-void
.end method
