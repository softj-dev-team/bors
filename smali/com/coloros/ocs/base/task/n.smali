.class final Lcom/coloros/ocs/base/task/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/coloros/ocs/base/task/m;

.field private b:Lcom/coloros/ocs/base/task/Task;


# direct methods
.method constructor <init>(Lcom/coloros/ocs/base/task/m;Lcom/coloros/ocs/base/task/Task;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/coloros/ocs/base/task/n;->a:Lcom/coloros/ocs/base/task/m;

    .line 11
    iput-object p2, p0, Lcom/coloros/ocs/base/task/n;->b:Lcom/coloros/ocs/base/task/Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/coloros/ocs/base/task/n;->a:Lcom/coloros/ocs/base/task/m;

    .line 1019
    iget-object v0, v0, Lcom/coloros/ocs/base/task/m;->a:Lcom/coloros/ocs/base/task/SuccessContinuation;

    .line 18
    iget-object v1, p0, Lcom/coloros/ocs/base/task/n;->b:Lcom/coloros/ocs/base/task/Task;

    invoke-virtual {v1}, Lcom/coloros/ocs/base/task/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/coloros/ocs/base/task/SuccessContinuation;->then(Ljava/lang/Object;)Lcom/coloros/ocs/base/task/Task;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/coloros/ocs/base/task/n;->a:Lcom/coloros/ocs/base/task/m;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Continuation returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/coloros/ocs/base/task/m;->onFailure(Ljava/lang/Exception;)V

    return-void

    .line 35
    :cond_0
    sget-object v1, Lcom/coloros/ocs/base/task/TaskExecutors;->CURRENT_THREAD:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/coloros/ocs/base/task/n;->a:Lcom/coloros/ocs/base/task/m;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/ocs/base/task/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/OnSuccessListener;)Lcom/coloros/ocs/base/task/Task;

    .line 36
    sget-object v1, Lcom/coloros/ocs/base/task/TaskExecutors;->CURRENT_THREAD:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/coloros/ocs/base/task/n;->a:Lcom/coloros/ocs/base/task/m;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/ocs/base/task/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/OnFailureListener;)Lcom/coloros/ocs/base/task/Task;

    .line 37
    sget-object v1, Lcom/coloros/ocs/base/task/TaskExecutors;->CURRENT_THREAD:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/coloros/ocs/base/task/n;->a:Lcom/coloros/ocs/base/task/m;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/ocs/base/task/Task;->addOnCanceledListener(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/OnCanceledListener;)Lcom/coloros/ocs/base/task/Task;

    return-void

    :catch_0
    move-exception v0

    .line 28
    iget-object v1, p0, Lcom/coloros/ocs/base/task/n;->a:Lcom/coloros/ocs/base/task/m;

    invoke-virtual {v1, v0}, Lcom/coloros/ocs/base/task/m;->onFailure(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    .line 21
    iget-object v1, p0, Lcom/coloros/ocs/base/task/n;->a:Lcom/coloros/ocs/base/task/m;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lcom/coloros/ocs/base/task/m;->onFailure(Ljava/lang/Exception;)V

    return-void

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/coloros/ocs/base/task/n;->a:Lcom/coloros/ocs/base/task/m;

    invoke-virtual {v1, v0}, Lcom/coloros/ocs/base/task/m;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method
