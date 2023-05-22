.class Lzendesk/messaging/ui/LostConnectionBanner$3;
.super Landroid/animation/AnimatorListenerAdapter;
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
.field private final originalMargin:I

.field private final originalPaddingBottom:I

.field final synthetic this$0:Lzendesk/messaging/ui/LostConnectionBanner;

.field final synthetic val$inputBox:Lzendesk/messaging/ui/InputBox;

.field final synthetic val$lostConnectionBanner:Landroid/view/View;

.field final synthetic val$params:Landroid/view/ViewGroup$MarginLayoutParams;

.field final synthetic val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lzendesk/messaging/ui/LostConnectionBanner;Landroid/view/ViewGroup$MarginLayoutParams;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Lzendesk/messaging/ui/InputBox;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lzendesk/messaging/ui/LostConnectionBanner$3;->this$0:Lzendesk/messaging/ui/LostConnectionBanner;

    iput-object p2, p0, Lzendesk/messaging/ui/LostConnectionBanner$3;->val$params:Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object p3, p0, Lzendesk/messaging/ui/LostConnectionBanner$3;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p4, p0, Lzendesk/messaging/ui/LostConnectionBanner$3;->val$lostConnectionBanner:Landroid/view/View;

    iput-object p5, p0, Lzendesk/messaging/ui/LostConnectionBanner$3;->val$inputBox:Lzendesk/messaging/ui/InputBox;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 130
    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p1, p0, Lzendesk/messaging/ui/LostConnectionBanner$3;->originalMargin:I

    .line 131
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Lzendesk/messaging/ui/LostConnectionBanner$3;->originalPaddingBottom:I

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 135
    iget-object p1, p0, Lzendesk/messaging/ui/LostConnectionBanner$3;->val$params:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lzendesk/messaging/ui/LostConnectionBanner$3;->originalMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 136
    iget-object p1, p0, Lzendesk/messaging/ui/LostConnectionBanner$3;->val$lostConnectionBanner:Landroid/view/View;

    iget-object v0, p0, Lzendesk/messaging/ui/LostConnectionBanner$3;->val$params:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object p1, p0, Lzendesk/messaging/ui/LostConnectionBanner$3;->val$lostConnectionBanner:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object p1, p0, Lzendesk/messaging/ui/LostConnectionBanner$3;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 139
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lzendesk/messaging/ui/LostConnectionBanner$3;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 140
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lzendesk/messaging/ui/LostConnectionBanner$3;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 141
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lzendesk/messaging/ui/LostConnectionBanner$3;->originalPaddingBottom:I

    iget-object v4, p0, Lzendesk/messaging/ui/LostConnectionBanner$3;->val$inputBox:Lzendesk/messaging/ui/InputBox;

    .line 142
    invoke-virtual {v4}, Lzendesk/messaging/ui/InputBox;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 138
    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 144
    iget-object p1, p0, Lzendesk/messaging/ui/LostConnectionBanner$3;->this$0:Lzendesk/messaging/ui/LostConnectionBanner;

    sget-object v0, Lzendesk/messaging/ui/LostConnectionBanner$State;->EXITED:Lzendesk/messaging/ui/LostConnectionBanner$State;

    invoke-static {p1, v0}, Lzendesk/messaging/ui/LostConnectionBanner;->access$102(Lzendesk/messaging/ui/LostConnectionBanner;Lzendesk/messaging/ui/LostConnectionBanner$State;)Lzendesk/messaging/ui/LostConnectionBanner$State;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 149
    iget-object p1, p0, Lzendesk/messaging/ui/LostConnectionBanner$3;->this$0:Lzendesk/messaging/ui/LostConnectionBanner;

    sget-object v0, Lzendesk/messaging/ui/LostConnectionBanner$State;->EXITING:Lzendesk/messaging/ui/LostConnectionBanner$State;

    invoke-static {p1, v0}, Lzendesk/messaging/ui/LostConnectionBanner;->access$102(Lzendesk/messaging/ui/LostConnectionBanner;Lzendesk/messaging/ui/LostConnectionBanner$State;)Lzendesk/messaging/ui/LostConnectionBanner$State;

    return-void
.end method
