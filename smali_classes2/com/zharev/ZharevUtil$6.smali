.class Lcom/zharev/ZharevUtil$6;
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

    .line 449
    iput-object p1, p0, Lcom/zharev/ZharevUtil$6;->this$0:Lcom/zharev/ZharevUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 452
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "jswrapper \u62d2\u7edd\u8df3\u8f6c\u5230\u6743\u9650\u8bbe\u7f6e\u9875\u9762"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
