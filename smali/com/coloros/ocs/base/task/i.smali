.class final Lcom/coloros/ocs/base/task/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/coloros/ocs/base/task/h;

.field private b:Lcom/coloros/ocs/base/task/Task;


# direct methods
.method constructor <init>(Lcom/coloros/ocs/base/task/h;Lcom/coloros/ocs/base/task/Task;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/coloros/ocs/base/task/i;->a:Lcom/coloros/ocs/base/task/h;

    .line 11
    iput-object p2, p0, Lcom/coloros/ocs/base/task/i;->b:Lcom/coloros/ocs/base/task/Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/coloros/ocs/base/task/i;->a:Lcom/coloros/ocs/base/task/h;

    invoke-virtual {v0}, Lcom/coloros/ocs/base/task/h;->a()Lcom/coloros/ocs/base/task/OnFailureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/coloros/ocs/base/task/i;->a:Lcom/coloros/ocs/base/task/h;

    invoke-virtual {v0}, Lcom/coloros/ocs/base/task/h;->a()Lcom/coloros/ocs/base/task/OnFailureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/ocs/base/task/i;->b:Lcom/coloros/ocs/base/task/Task;

    invoke-virtual {v1}, Lcom/coloros/ocs/base/task/Task;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/coloros/ocs/base/task/OnFailureListener;->onFailure(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
