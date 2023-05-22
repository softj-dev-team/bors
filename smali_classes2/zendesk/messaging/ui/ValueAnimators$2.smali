.class Lzendesk/messaging/ui/ValueAnimators$2;
.super Ljava/lang/Object;
.source "ValueAnimators.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/messaging/ui/ValueAnimators;->bottomPaddingAnimator(Landroid/view/View;IIJ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final paddingLeft:I

.field final paddingRight:I

.field final paddingTop:I

.field final synthetic val$valueAnimator:Landroid/animation/ValueAnimator;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lzendesk/messaging/ui/ValueAnimators$2;->val$view:Landroid/view/View;

    iput-object p2, p0, Lzendesk/messaging/ui/ValueAnimators$2;->val$valueAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    iput p2, p0, Lzendesk/messaging/ui/ValueAnimators$2;->paddingLeft:I

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    iput p2, p0, Lzendesk/messaging/ui/ValueAnimators$2;->paddingRight:I

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lzendesk/messaging/ui/ValueAnimators$2;->paddingTop:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 72
    iget-object p1, p0, Lzendesk/messaging/ui/ValueAnimators$2;->val$view:Landroid/view/View;

    iget v0, p0, Lzendesk/messaging/ui/ValueAnimators$2;->paddingLeft:I

    iget v1, p0, Lzendesk/messaging/ui/ValueAnimators$2;->paddingTop:I

    iget v2, p0, Lzendesk/messaging/ui/ValueAnimators$2;->paddingRight:I

    iget-object v3, p0, Lzendesk/messaging/ui/ValueAnimators$2;->val$valueAnimator:Landroid/animation/ValueAnimator;

    .line 76
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 72
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
