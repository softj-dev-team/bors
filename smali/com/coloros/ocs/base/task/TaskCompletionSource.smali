.class public Lcom/coloros/ocs/base/task/TaskCompletionSource;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/coloros/ocs/base/task/TaskImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/task/TaskImpl<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/coloros/ocs/base/task/TaskImpl;

    invoke-direct {v0}, Lcom/coloros/ocs/base/task/TaskImpl;-><init>()V

    iput-object v0, p0, Lcom/coloros/ocs/base/task/TaskCompletionSource;->a:Lcom/coloros/ocs/base/task/TaskImpl;

    return-void
.end method


# virtual methods
.method public getTask()Lcom/coloros/ocs/base/task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/coloros/ocs/base/task/TaskCompletionSource;->a:Lcom/coloros/ocs/base/task/TaskImpl;

    return-object v0
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/coloros/ocs/base/task/TaskCompletionSource;->a:Lcom/coloros/ocs/base/task/TaskImpl;

    invoke-virtual {v0, p1}, Lcom/coloros/ocs/base/task/TaskImpl;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/coloros/ocs/base/task/TaskCompletionSource;->a:Lcom/coloros/ocs/base/task/TaskImpl;

    invoke-virtual {v0, p1}, Lcom/coloros/ocs/base/task/TaskImpl;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public trySetException(Ljava/lang/Exception;)Z
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/coloros/ocs/base/task/TaskCompletionSource;->a:Lcom/coloros/ocs/base/task/TaskImpl;

    invoke-virtual {v0, p1}, Lcom/coloros/ocs/base/task/TaskImpl;->trySetException(Ljava/lang/Exception;)Z

    move-result p1

    return p1
.end method

.method public trySetResult(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/coloros/ocs/base/task/TaskCompletionSource;->a:Lcom/coloros/ocs/base/task/TaskImpl;

    invoke-virtual {v0, p1}, Lcom/coloros/ocs/base/task/TaskImpl;->trySetResult(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
