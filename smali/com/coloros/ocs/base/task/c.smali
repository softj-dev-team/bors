.class final Lcom/coloros/ocs/base/task/c;
.super Ljava/lang/Object;

# interfaces
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
        "Lcom/coloros/ocs/base/task/b<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field a:Lcom/coloros/ocs/base/task/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/task/Continuation<",
            "TTResult;TTContinuationResult;>;"
        }
    .end annotation
.end field

.field b:Lcom/coloros/ocs/base/task/TaskImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/task/TaskImpl<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/Continuation;Lcom/coloros/ocs/base/task/TaskImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/coloros/ocs/base/task/Continuation<",
            "TTResult;TTContinuationResult;>;",
            "Lcom/coloros/ocs/base/task/TaskImpl<",
            "TTContinuationResult;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/coloros/ocs/base/task/c;->c:Ljava/util/concurrent/Executor;

    .line 14
    iput-object p2, p0, Lcom/coloros/ocs/base/task/c;->a:Lcom/coloros/ocs/base/task/Continuation;

    .line 15
    iput-object p3, p0, Lcom/coloros/ocs/base/task/c;->b:Lcom/coloros/ocs/base/task/TaskImpl;

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
    iget-object v0, p0, Lcom/coloros/ocs/base/task/c;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/coloros/ocs/base/task/l;

    invoke-direct {v1, p0, p1}, Lcom/coloros/ocs/base/task/l;-><init>(Lcom/coloros/ocs/base/task/c;Lcom/coloros/ocs/base/task/Task;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
