.class public final Lcom/coloros/ocs/base/task/q;
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
.field private a:Ljava/lang/Object;

.field private b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/coloros/ocs/base/task/b<",
            "TTResult;>;>;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coloros/ocs/base/task/q;->a:Ljava/lang/Object;

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

    .line 31
    iget-object v0, p0, Lcom/coloros/ocs/base/task/q;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/coloros/ocs/base/task/q;->b:Ljava/util/Queue;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/coloros/ocs/base/task/q;->c:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 36
    iput-boolean v1, p0, Lcom/coloros/ocs/base/task/q;->c:Z

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    :goto_0
    iget-object v1, p0, Lcom/coloros/ocs/base/task/q;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_1
    iget-object v0, p0, Lcom/coloros/ocs/base/task/q;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/ocs/base/task/b;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/coloros/ocs/base/task/q;->c:Z

    .line 44
    monitor-exit v1

    return-void

    .line 46
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    invoke-interface {v0, p1}, Lcom/coloros/ocs/base/task/b;->a(Lcom/coloros/ocs/base/task/Task;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 46
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 33
    :cond_2
    :goto_1
    :try_start_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    .line 37
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final a(Lcom/coloros/ocs/base/task/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/ocs/base/task/b<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/coloros/ocs/base/task/q;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/coloros/ocs/base/task/q;->b:Ljava/util/Queue;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/coloros/ocs/base/task/q;->b:Ljava/util/Queue;

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/coloros/ocs/base/task/q;->b:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 27
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
