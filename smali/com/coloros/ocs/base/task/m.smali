.class final Lcom/coloros/ocs/base/task/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/ocs/base/task/OnCanceledListener;
.implements Lcom/coloros/ocs/base/task/OnFailureListener;
.implements Lcom/coloros/ocs/base/task/OnSuccessListener;
.implements Lcom/coloros/ocs/base/task/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/coloros/ocs/base/task/OnCanceledListener;",
        "Lcom/coloros/ocs/base/task/OnFailureListener;",
        "Lcom/coloros/ocs/base/task/OnSuccessListener<",
        "TTContinuationResult;>;",
        "Lcom/coloros/ocs/base/task/b<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field a:Lcom/coloros/ocs/base/task/SuccessContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/task/SuccessContinuation<",
            "TTResult;TTContinuationResult;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/Executor;

.field private c:Lcom/coloros/ocs/base/task/TaskImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/task/TaskImpl<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/SuccessContinuation;Lcom/coloros/ocs/base/task/TaskImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/coloros/ocs/base/task/SuccessContinuation<",
            "TTResult;TTContinuationResult;>;",
            "Lcom/coloros/ocs/base/task/TaskImpl<",
            "TTContinuationResult;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/coloros/ocs/base/task/m;->b:Ljava/util/concurrent/Executor;

    .line 14
    iput-object p2, p0, Lcom/coloros/ocs/base/task/m;->a:Lcom/coloros/ocs/base/task/SuccessContinuation;

    .line 15
    iput-object p3, p0, Lcom/coloros/ocs/base/task/m;->c:Lcom/coloros/ocs/base/task/TaskImpl;

    return-void
.end method


# virtual methods
.method public final a(Lcom/coloros/ocs/base/task/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/coloros/ocs/base/task/m;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/coloros/ocs/base/task/n;

    invoke-direct {v1, p0, p1}, Lcom/coloros/ocs/base/task/n;-><init>(Lcom/coloros/ocs/base/task/m;Lcom/coloros/ocs/base/task/Task;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCanceled()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/coloros/ocs/base/task/m;->c:Lcom/coloros/ocs/base/task/TaskImpl;

    invoke-virtual {v0}, Lcom/coloros/ocs/base/task/TaskImpl;->tryCancel()Z

    return-void
.end method

.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/coloros/ocs/base/task/m;->c:Lcom/coloros/ocs/base/task/TaskImpl;

    invoke-virtual {v0, p1}, Lcom/coloros/ocs/base/task/TaskImpl;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTContinuationResult;)V"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/coloros/ocs/base/task/m;->c:Lcom/coloros/ocs/base/task/TaskImpl;

    invoke-virtual {v0, p1}, Lcom/coloros/ocs/base/task/TaskImpl;->setResult(Ljava/lang/Object;)V

    return-void
.end method
