.class Lzendesk/belvedere/ImageStreamUi$ToolbarBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "ImageStreamUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/belvedere/ImageStreamUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToolbarBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final notifyScrollListener:Z

.field final synthetic this$0:Lzendesk/belvedere/ImageStreamUi;


# direct methods
.method private constructor <init>(Lzendesk/belvedere/ImageStreamUi;Z)V
    .locals 0

    .line 398
    iput-object p1, p0, Lzendesk/belvedere/ImageStreamUi$ToolbarBehavior;->this$0:Lzendesk/belvedere/ImageStreamUi;

    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 399
    iput-boolean p2, p0, Lzendesk/belvedere/ImageStreamUi$ToolbarBehavior;->notifyScrollListener:Z

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/belvedere/ImageStreamUi;ZLzendesk/belvedere/ImageStreamUi$1;)V
    .locals 0

    .line 394
    invoke-direct {p0, p1, p2}, Lzendesk/belvedere/ImageStreamUi$ToolbarBehavior;-><init>(Lzendesk/belvedere/ImageStreamUi;Z)V

    return-void
.end method

.method private animateToolbarShiftIn(IFILandroid/view/View;)V
    .locals 2

    int-to-float p1, p1

    mul-float v0, p2, p1

    sub-float/2addr p1, v0

    int-to-float p3, p3

    cmpg-float v0, p1, p3

    if-gtz v0, :cond_0

    .line 425
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi$ToolbarBehavior;->this$0:Lzendesk/belvedere/ImageStreamUi;

    invoke-virtual {v0}, Lzendesk/belvedere/ImageStreamUi;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lzendesk/belvedere/Utils;->showToolbar(Landroid/view/View;Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p3, p1, p3

    sub-float/2addr v0, p3

    .line 426
    invoke-virtual {p4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 427
    invoke-virtual {p4, p1}, Landroid/view/View;->setY(F)V

    goto :goto_0

    .line 430
    :cond_0
    iget-object p1, p0, Lzendesk/belvedere/ImageStreamUi$ToolbarBehavior;->this$0:Lzendesk/belvedere/ImageStreamUi;

    invoke-virtual {p1}, Lzendesk/belvedere/ImageStreamUi;->getContentView()Landroid/view/View;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lzendesk/belvedere/Utils;->showToolbar(Landroid/view/View;Z)V

    .line 433
    :goto_0
    iget-object p1, p0, Lzendesk/belvedere/ImageStreamUi$ToolbarBehavior;->this$0:Lzendesk/belvedere/ImageStreamUi;

    invoke-static {p1, p2}, Lzendesk/belvedere/ImageStreamUi;->access$600(Lzendesk/belvedere/ImageStreamUi;F)V

    return-void
.end method


# virtual methods
.method public layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 404
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p1

    sget p2, Lzendesk/belvedere/ui/R$id;->bottom_sheet:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 409
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lzendesk/belvedere/ImageStreamUi$ToolbarBehavior;->this$0:Lzendesk/belvedere/ImageStreamUi;

    invoke-static {v1}, Lzendesk/belvedere/ImageStreamUi;->access$000(Lzendesk/belvedere/ImageStreamUi;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getPeekHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 410
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p3

    sub-float/2addr v1, p3

    iget-object p3, p0, Lzendesk/belvedere/ImageStreamUi$ToolbarBehavior;->this$0:Lzendesk/belvedere/ImageStreamUi;

    invoke-static {p3}, Lzendesk/belvedere/ImageStreamUi;->access$000(Lzendesk/belvedere/ImageStreamUi;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getPeekHeight()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr v1, p3

    int-to-float p3, v0

    div-float/2addr v1, p3

    .line 412
    iget-object p3, p0, Lzendesk/belvedere/ImageStreamUi$ToolbarBehavior;->this$0:Lzendesk/belvedere/ImageStreamUi;

    invoke-static {p3}, Lzendesk/belvedere/ImageStreamUi;->access$500(Lzendesk/belvedere/ImageStreamUi;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p3

    invoke-static {p3}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result p3

    invoke-direct {p0, v0, v1, p3, p2}, Lzendesk/belvedere/ImageStreamUi$ToolbarBehavior;->animateToolbarShiftIn(IFILandroid/view/View;)V

    .line 414
    iget-boolean p2, p0, Lzendesk/belvedere/ImageStreamUi$ToolbarBehavior;->notifyScrollListener:Z

    if-eqz p2, :cond_0

    .line 415
    iget-object p2, p0, Lzendesk/belvedere/ImageStreamUi$ToolbarBehavior;->this$0:Lzendesk/belvedere/ImageStreamUi;

    invoke-static {p2}, Lzendesk/belvedere/ImageStreamUi;->access$400(Lzendesk/belvedere/ImageStreamUi;)Lzendesk/belvedere/ImageStreamPresenter;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result p1

    invoke-virtual {p2, p1, v0, v1}, Lzendesk/belvedere/ImageStreamPresenter;->onImageStreamScrolled(IIF)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
