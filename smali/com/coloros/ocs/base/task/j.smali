.class final Lcom/coloros/ocs/base/task/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/ocs/base/task/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/coloros/ocs/base/task/b<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/lang/Object;

.field private volatile c:Lcom/coloros/ocs/base/task/OnSuccessListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/task/OnSuccessListener<",
            "-TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/OnSuccessListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/coloros/ocs/base/task/OnSuccessListener<",
            "-TTResult;>;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coloros/ocs/base/task/j;->b:Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Lcom/coloros/ocs/base/task/j;->a:Ljava/util/concurrent/Executor;

    .line 16
    iput-object p2, p0, Lcom/coloros/ocs/base/task/j;->c:Lcom/coloros/ocs/base/task/OnSuccessListener;

    return-void
.end method


# virtual methods
.method public final a()Lcom/coloros/ocs/base/task/OnSuccessListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/ocs/base/task/OnSuccessListener<",
            "-TTResult;>;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/coloros/ocs/base/task/j;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/coloros/ocs/base/task/j;->c:Lcom/coloros/ocs/base/task/OnSuccessListener;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(Lcom/coloros/ocs/base/task/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 30
    invoke-virtual {p1}, Lcom/coloros/ocs/base/task/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/coloros/ocs/base/task/j;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/coloros/ocs/base/task/j;->c:Lcom/coloros/ocs/base/task/OnSuccessListener;

    if-nez v1, :cond_0

    .line 33
    monitor-exit v0

    return-void

    .line 35
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    iget-object v0, p0, Lcom/coloros/ocs/base/task/j;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/coloros/ocs/base/task/k;

    invoke-direct {v1, p0, p1}, Lcom/coloros/ocs/base/task/k;-><init>(Lcom/coloros/ocs/base/task/j;Lcom/coloros/ocs/base/task/Task;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 35
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
