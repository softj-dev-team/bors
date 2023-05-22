.class Lzendesk/belvedere/ImageStreamUi$3;
.super Ljava/lang/Object;
.source "ImageStreamUi.java"

# interfaces
.implements Lzendesk/belvedere/KeyboardHelper$SizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/belvedere/ImageStreamUi;->initBottomSheet(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/belvedere/ImageStreamUi;


# direct methods
.method constructor <init>(Lzendesk/belvedere/ImageStreamUi;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lzendesk/belvedere/ImageStreamUi$3;->this$0:Lzendesk/belvedere/ImageStreamUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(I)V
    .locals 2

    .line 287
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi$3;->this$0:Lzendesk/belvedere/ImageStreamUi;

    invoke-static {v0}, Lzendesk/belvedere/ImageStreamUi;->access$000(Lzendesk/belvedere/ImageStreamUi;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getPeekHeight()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 288
    iget-object p1, p0, Lzendesk/belvedere/ImageStreamUi$3;->this$0:Lzendesk/belvedere/ImageStreamUi;

    invoke-static {p1}, Lzendesk/belvedere/ImageStreamUi;->access$000(Lzendesk/belvedere/ImageStreamUi;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi$3;->this$0:Lzendesk/belvedere/ImageStreamUi;

    invoke-static {v0}, Lzendesk/belvedere/ImageStreamUi;->access$200(Lzendesk/belvedere/ImageStreamUi;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lzendesk/belvedere/ImageStreamUi$3;->this$0:Lzendesk/belvedere/ImageStreamUi;

    invoke-static {v1}, Lzendesk/belvedere/ImageStreamUi;->access$300(Lzendesk/belvedere/ImageStreamUi;)Lzendesk/belvedere/KeyboardHelper;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/belvedere/KeyboardHelper;->getKeyboardHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    :cond_0
    return-void
.end method
