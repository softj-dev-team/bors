.class Lzendesk/belvedere/SelectableView$1;
.super Ljava/lang/Object;
.source "SelectableView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/belvedere/SelectableView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/belvedere/SelectableView;


# direct methods
.method constructor <init>(Lzendesk/belvedere/SelectableView;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lzendesk/belvedere/SelectableView$1;->this$0:Lzendesk/belvedere/SelectableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lzendesk/belvedere/SelectableView$1;->this$0:Lzendesk/belvedere/SelectableView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lzendesk/belvedere/SelectableView;->access$000(Lzendesk/belvedere/SelectableView;F)V

    return-void
.end method
