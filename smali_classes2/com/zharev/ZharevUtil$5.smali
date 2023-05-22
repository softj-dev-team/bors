.class Lcom/zharev/ZharevUtil$5;
.super Ljava/lang/Object;
.source "ZharevUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zharev/ZharevUtil;->openDialogToOpenGPS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zharev/ZharevUtil;


# direct methods
.method constructor <init>(Lcom/zharev/ZharevUtil;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/zharev/ZharevUtil$5;->this$0:Lcom/zharev/ZharevUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 439
    invoke-static {}, Lcom/zharev/ZharevUtil;->access$000()Lcom/sdkbox/plugin/SDKBoxActivity;

    move-result-object p1

    new-instance p2, Lcom/zharev/ZharevUtil$5$1;

    invoke-direct {p2, p0}, Lcom/zharev/ZharevUtil$5$1;-><init>(Lcom/zharev/ZharevUtil$5;)V

    invoke-virtual {p1, p2}, Lcom/sdkbox/plugin/SDKBoxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method
