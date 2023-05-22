.class Lcom/coloros/ocs/base/common/api/TaskListenerHolder$TaskListenerHandler;
.super Lcom/coloros/ocs/base/common/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/ocs/base/common/api/TaskListenerHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskListenerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/ocs/base/common/api/TaskListenerHolder;


# direct methods
.method public constructor <init>(Lcom/coloros/ocs/base/common/api/TaskListenerHolder;Landroid/os/Looper;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/TaskListenerHolder$TaskListenerHandler;->this$0:Lcom/coloros/ocs/base/common/api/TaskListenerHolder;

    .line 83
    invoke-direct {p0, p2}, Lcom/coloros/ocs/base/common/a;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 88
    invoke-super {p0, p1}, Lcom/coloros/ocs/base/common/a;->handleMessage(Landroid/os/Message;)V

    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/TaskListenerHolder$TaskListenerHandler;->this$0:Lcom/coloros/ocs/base/common/api/TaskListenerHolder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;->a(Lcom/coloros/ocs/base/common/api/TaskListenerHolder;I)V

    return-void

    .line 1123
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
