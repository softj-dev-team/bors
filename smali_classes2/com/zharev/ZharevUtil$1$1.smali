.class Lcom/zharev/ZharevUtil$1$1;
.super Ljava/lang/Object;
.source "ZharevUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zharev/ZharevUtil$1;->onComplete(Lcom/google/android/gms/tasks/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zharev/ZharevUtil$1;


# direct methods
.method constructor <init>(Lcom/zharev/ZharevUtil$1;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/zharev/ZharevUtil$1$1;->this$1:Lcom/zharev/ZharevUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, ""

    .line 144
    invoke-static {v0}, Lcom/zharev/ZharevUtil;->onPushTokenUpdate(Ljava/lang/String;)V

    return-void
.end method
