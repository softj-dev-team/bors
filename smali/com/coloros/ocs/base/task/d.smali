.class final Lcom/coloros/ocs/base/task/d;
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

.field private volatile c:Lcom/coloros/ocs/base/task/OnCanceledListener;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/OnCanceledListener;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coloros/ocs/base/task/d;->b:Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Lcom/coloros/ocs/base/task/d;->a:Ljava/util/concurrent/Executor;

    .line 16
    iput-object p2, p0, Lcom/coloros/ocs/base/task/d;->c:Lcom/coloros/ocs/base/task/OnCanceledListener;

    return-void
.end method


# virtual methods
.method public final a()Lcom/coloros/ocs/base/task/OnCanceledListener;
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/coloros/ocs/base/task/d;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/coloros/ocs/base/task/d;->c:Lcom/coloros/ocs/base/task/OnCanceledListener;

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
    .locals 1

    .line 30
    invoke-virtual {p1}, Lcom/coloros/ocs/base/task/Task;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 31
    iget-object p1, p0, Lcom/coloros/ocs/base/task/d;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/coloros/ocs/base/task/d;->c:Lcom/coloros/ocs/base/task/OnCanceledListener;

    if-nez v0, :cond_0

    .line 33
    monitor-exit p1

    return-void

    .line 35
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    iget-object p1, p0, Lcom/coloros/ocs/base/task/d;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/coloros/ocs/base/task/e;

    invoke-direct {v0, p0}, Lcom/coloros/ocs/base/task/e;-><init>(Lcom/coloros/ocs/base/task/d;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 35
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
