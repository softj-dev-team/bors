.class Lzendesk/messaging/ui/ValueAnimators$4;
.super Ljava/lang/Object;
.source "ValueAnimators.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/messaging/ui/ValueAnimators;->topMarginAnimator(Landroid/view/View;IIJ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$params:Landroid/view/ViewGroup$MarginLayoutParams;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/view/View;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lzendesk/messaging/ui/ValueAnimators$4;->val$params:Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object p2, p0, Lzendesk/messaging/ui/ValueAnimators$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lzendesk/messaging/ui/ValueAnimators$4;->val$params:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 134
    iget-object p1, p0, Lzendesk/messaging/ui/ValueAnimators$4;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
