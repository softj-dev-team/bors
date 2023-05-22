.class Lzendesk/messaging/ui/LostConnectionBanner$2;
.super Landroidx/transition/TransitionListenerAdapter;
.source "LostConnectionBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/messaging/ui/LostConnectionBanner;-><init>(Landroid/view/ViewGroup;Landroidx/recyclerview/widget/RecyclerView;Lzendesk/messaging/ui/InputBox;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final originalPaddingTop:I

.field final synthetic this$0:Lzendesk/messaging/ui/LostConnectionBanner;

.field final synthetic val$inputBox:Lzendesk/messaging/ui/InputBox;

.field final synthetic val$lostConnectionBanner:Landroid/view/View;

.field final synthetic val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lzendesk/messaging/ui/LostConnectionBanner;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Lzendesk/messaging/ui/InputBox;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lzendesk/messaging/ui/LostConnectionBanner$2;->this$0:Lzendesk/messaging/ui/LostConnectionBanner;

    iput-object p2, p0, Lzendesk/messaging/ui/LostConnectionBanner$2;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lzendesk/messaging/ui/LostConnectionBanner$2;->val$lostConnectionBanner:Landroid/view/View;

    iput-object p4, p0, Lzendesk/messaging/ui/LostConnectionBanner$2;->val$inputBox:Lzendesk/messaging/ui/InputBox;

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    .line 89
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lzendesk/messaging/ui/LostConnectionBanner$2;->originalPaddingTop:I

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 6

    .line 93
    iget-object p1, p0, Lzendesk/messaging/ui/LostConnectionBanner$2;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 94
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lzendesk/messaging/ui/LostConnectionBanner$2;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 95
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lzendesk/messaging/ui/LostConnectionBanner$2;->val$lostConnectionBanner:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lzendesk/messaging/ui/LostConnectionBanner$2;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 96
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lzendesk/messaging/ui/LostConnectionBanner$2;->val$inputBox:Lzendesk/messaging/ui/InputBox;

    .line 97
    invoke-virtual {v3}, Lzendesk/messaging/ui/InputBox;->getHeight()I

    move-result v3

    iget-object v4, p0, Lzendesk/messaging/ui/LostConnectionBanner$2;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lzendesk/messaging/ui/LostConnectionBanner$2;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 98
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lzendesk/messaging/ui/LostConnectionBanner$2;->originalPaddingTop:I

    sub-int/2addr v4, v5

    .line 97
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 93
    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 101
    iget-object p1, p0, Lzendesk/messaging/ui/LostConnectionBanner$2;->this$0:Lzendesk/messaging/ui/LostConnectionBanner;

    sget-object v0, Lzendesk/messaging/ui/LostConnectionBanner$State;->ENTERED:Lzendesk/messaging/ui/LostConnectionBanner$State;

    invoke-static {p1, v0}, Lzendesk/messaging/ui/LostConnectionBanner;->access$102(Lzendesk/messaging/ui/LostConnectionBanner;Lzendesk/messaging/ui/LostConnectionBanner$State;)Lzendesk/messaging/ui/LostConnectionBanner$State;

    return-void
.end method

.method public onTransitionStart(Landroidx/transition/Transition;)V
    .locals 1

    .line 106
    iget-object p1, p0, Lzendesk/messaging/ui/LostConnectionBanner$2;->this$0:Lzendesk/messaging/ui/LostConnectionBanner;

    sget-object v0, Lzendesk/messaging/ui/LostConnectionBanner$State;->ENTERING:Lzendesk/messaging/ui/LostConnectionBanner$State;

    invoke-static {p1, v0}, Lzendesk/messaging/ui/LostConnectionBanner;->access$102(Lzendesk/messaging/ui/LostConnectionBanner;Lzendesk/messaging/ui/LostConnectionBanner$State;)Lzendesk/messaging/ui/LostConnectionBanner$State;

    return-void
.end method
