.class final Lcom/coloros/ocs/base/task/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/coloros/ocs/base/task/Task;

.field private b:Lcom/coloros/ocs/base/task/c;


# direct methods
.method constructor <init>(Lcom/coloros/ocs/base/task/c;Lcom/coloros/ocs/base/task/Task;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/coloros/ocs/base/task/l;->b:Lcom/coloros/ocs/base/task/c;

    .line 9
    iput-object p2, p0, Lcom/coloros/ocs/base/task/l;->a:Lcom/coloros/ocs/base/task/Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/coloros/ocs/base/task/l;->a:Lcom/coloros/ocs/base/task/Task;

    invoke-virtual {v0}, Lcom/coloros/ocs/base/task/Task;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/coloros/ocs/base/task/l;->b:Lcom/coloros/ocs/base/task/c;

    .line 1031
    iget-object v0, v0, Lcom/coloros/ocs/base/task/c;->b:Lcom/coloros/ocs/base/task/TaskImpl;

    invoke-virtual {v0}, Lcom/coloros/ocs/base/task/TaskImpl;->tryCancel()Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/coloros/ocs/base/task/l;->b:Lcom/coloros/ocs/base/task/c;

    .line 2019
    iget-object v1, v1, Lcom/coloros/ocs/base/task/c;->a:Lcom/coloros/ocs/base/task/Continuation;

    .line 21
    iget-object v2, p0, Lcom/coloros/ocs/base/task/l;->a:Lcom/coloros/ocs/base/task/Task;

    invoke-interface {v1, v2}, Lcom/coloros/ocs/base/task/Continuation;->then(Lcom/coloros/ocs/base/task/Task;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 29
    iget-object v2, p0, Lcom/coloros/ocs/base/task/l;->b:Lcom/coloros/ocs/base/task/c;

    .line 4023
    iget-object v2, v2, Lcom/coloros/ocs/base/task/c;->b:Lcom/coloros/ocs/base/task/TaskImpl;

    .line 29
    invoke-virtual {v2, v1}, Lcom/coloros/ocs/base/task/TaskImpl;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Exception;

    if-eqz v2, :cond_1

    .line 24
    iget-object v2, p0, Lcom/coloros/ocs/base/task/l;->b:Lcom/coloros/ocs/base/task/c;

    .line 2023
    iget-object v2, v2, Lcom/coloros/ocs/base/task/c;->b:Lcom/coloros/ocs/base/task/TaskImpl;

    .line 24
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    invoke-virtual {v2, v1}, Lcom/coloros/ocs/base/task/TaskImpl;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 26
    :cond_1
    iget-object v2, p0, Lcom/coloros/ocs/base/task/l;->b:Lcom/coloros/ocs/base/task/c;

    .line 3023
    iget-object v2, v2, Lcom/coloros/ocs/base/task/c;->b:Lcom/coloros/ocs/base/task/TaskImpl;

    .line 26
    invoke-virtual {v2, v1}, Lcom/coloros/ocs/base/task/TaskImpl;->setException(Ljava/lang/Exception;)V

    .line 32
    :goto_0
    iget-object v1, p0, Lcom/coloros/ocs/base/task/l;->b:Lcom/coloros/ocs/base/task/c;

    .line 5023
    iget-object v1, v1, Lcom/coloros/ocs/base/task/c;->b:Lcom/coloros/ocs/base/task/TaskImpl;

    .line 32
    invoke-virtual {v1, v0}, Lcom/coloros/ocs/base/task/TaskImpl;->setResult(Ljava/lang/Object;)V

    return-void
.end method
