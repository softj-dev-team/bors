.class Lcom/zharev/ZharevUtil$5$1;
.super Ljava/lang/Object;
.source "ZharevUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zharev/ZharevUtil$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zharev/ZharevUtil$5;


# direct methods
.method constructor <init>(Lcom/zharev/ZharevUtil$5;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/zharev/ZharevUtil$5$1;->this$1:Lcom/zharev/ZharevUtil$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 442
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "jswrapper \u8df3\u8f6c\u5230\u6743\u9650\u8bbe\u7f6e\u9875\u9762"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 443
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-static {}, Lcom/zharev/ZharevUtil;->access$000()Lcom/sdkbox/plugin/SDKBoxActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/zharev/ZharevUtil$5$1;->this$1:Lcom/zharev/ZharevUtil$5;

    iget-object v2, v2, Lcom/zharev/ZharevUtil$5;->this$0:Lcom/zharev/ZharevUtil;

    iget-object v2, v2, Lcom/zharev/ZharevUtil;->REQUEST_CODE_LOCATION_SETTINGS:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sdkbox/plugin/SDKBoxActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
