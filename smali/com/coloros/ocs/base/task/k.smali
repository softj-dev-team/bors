.class final Lcom/coloros/ocs/base/task/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/coloros/ocs/base/task/j;

.field private b:Lcom/coloros/ocs/base/task/Task;


# direct methods
.method constructor <init>(Lcom/coloros/ocs/base/task/j;Lcom/coloros/ocs/base/task/Task;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/coloros/ocs/base/task/k;->a:Lcom/coloros/ocs/base/task/j;

    .line 11
    iput-object p2, p0, Lcom/coloros/ocs/base/task/k;->b:Lcom/coloros/ocs/base/task/Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/coloros/ocs/base/task/k;->a:Lcom/coloros/ocs/base/task/j;

    invoke-virtual {v0}, Lcom/coloros/ocs/base/task/j;->a()Lcom/coloros/ocs/base/task/OnSuccessListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/coloros/ocs/base/task/k;->a:Lcom/coloros/ocs/base/task/j;

    invoke-virtual {v0}, Lcom/coloros/ocs/base/task/j;->a()Lcom/coloros/ocs/base/task/OnSuccessListener;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/ocs/base/task/k;->b:Lcom/coloros/ocs/base/task/Task;

    invoke-virtual {v1}, Lcom/coloros/ocs/base/task/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/coloros/ocs/base/task/OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
