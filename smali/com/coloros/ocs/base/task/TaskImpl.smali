.class public Lcom/coloros/ocs/base/task/TaskImpl;
.super Lcom/coloros/ocs/base/task/Task;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/coloros/ocs/base/task/Task<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Exception;

.field private d:Lcom/coloros/ocs/base/task/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/task/q<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field private volatile e:Z

.field private volatile f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/coloros/ocs/base/task/Task;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coloros/ocs/base/task/TaskImpl;->a:Ljava/lang/Object;

    .line 22
    new-instance v0, Lcom/coloros/ocs/base/task/q;

    invoke-direct {v0}, Lcom/coloros/ocs/base/task/q;-><init>()V

    iput-object v0, p0, Lcom/coloros/ocs/base/task/TaskImpl;->d:Lcom/coloros/ocs/base/task/q;

    return-void
.end method

.method private a()V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/coloros/ocs/base/task/TaskImpl;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_0
    iget-boolean v1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->e:Z

    const-string v2, "Task is not yet complete"

    invoke-static {v1, v2}, Lcom/coloros/ocs/base/a/c;->a(ZLjava/lang/Object;)V

    .line 242
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private b()V
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/coloros/ocs/base/task/TaskImpl;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 248
    :try_start_0
    iget-boolean v1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->e:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Task is already complete"

    invoke-static {v1, v2}, Lcom/coloros/ocs/base/a/c;->a(ZLjava/lang/Object;)V

    .line 249
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private c()V
    .locals 2

    .line 254
    iget-boolean v0, p0, Lcom/coloros/ocs/base/task/TaskImpl;->f:Z

    if-nez v0, :cond_0

    return-void

    .line 255
    :cond_0
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task is already canceled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/coloros/ocs/base/task/TaskImpl;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_0
    iget-boolean v1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->e:Z

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->d:Lcom/coloros/ocs/base/task/q;

    invoke-virtual {v1, p0}, Lcom/coloros/ocs/base/task/q;->a(Lcom/coloros/ocs/base/task/Task;)V

    .line 264
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addOnCanceledListener(Lcom/coloros/ocs/base/task/OnCanceledListener;)Lcom/coloros/ocs/base/task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/ocs/base/task/OnCanceledListener;",
            ")",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 145
    sget-object v0, Lcom/coloros/ocs/base/task/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/coloros/ocs/base/task/TaskImpl;->addOnCanceledListener(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/OnCanceledListener;)Lcom/coloros/ocs/base/task/Task;

    move-result-object p1

    return-object p1
.end method

.method public addOnCanceledListener(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/OnCanceledListener;)Lcom/coloros/ocs/base/task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/coloros/ocs/base/task/OnCanceledListener;",
            ")",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/coloros/ocs/base/task/TaskImpl;->d:Lcom/coloros/ocs/base/task/q;

    new-instance v1, Lcom/coloros/ocs/base/task/d;

    invoke-direct {v1, p1, p2}, Lcom/coloros/ocs/base/task/d;-><init>(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/OnCanceledListener;)V

    invoke-virtual {v0, v1}, Lcom/coloros/ocs/base/task/q;->a(Lcom/coloros/ocs/base/task/b;)V

    .line 151
    invoke-direct {p0}, Lcom/coloros/ocs/base/task/TaskImpl;->d()V

    return-object p0
.end method

.method public addOnCompleteListener(Lcom/coloros/ocs/base/task/OnCompleteListener;)Lcom/coloros/ocs/base/task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/ocs/base/task/OnCompleteListener<",
            "TTResult;>;)",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 115
    sget-object v0, Lcom/coloros/ocs/base/task/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/coloros/ocs/base/task/TaskImpl;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/OnCompleteListener;)Lcom/coloros/ocs/base/task/Task;

    move-result-object p1

    return-object p1
.end method

.method public addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/OnCompleteListener;)Lcom/coloros/ocs/base/task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/coloros/ocs/base/task/OnCompleteListener<",
            "TTResult;>;)",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/coloros/ocs/base/task/TaskImpl;->d:Lcom/coloros/ocs/base/task/q;

    new-instance v1, Lcom/coloros/ocs/base/task/f;

    invoke-direct {v1, p1, p2}, Lcom/coloros/ocs/base/task/f;-><init>(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/OnCompleteListener;)V

    invoke-virtual {v0, v1}, Lcom/coloros/ocs/base/task/q;->a(Lcom/coloros/ocs/base/task/b;)V

    .line 121
    invoke-direct {p0}, Lcom/coloros/ocs/base/task/TaskImpl;->d()V

    return-object p0
.end method

.method public addOnFailureListener(Lcom/coloros/ocs/base/task/OnFailureListener;)Lcom/coloros/ocs/base/task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/ocs/base/task/OnFailureListener;",
            ")",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 103
    sget-object v0, Lcom/coloros/ocs/base/task/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/coloros/ocs/base/task/TaskImpl;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/OnFailureListener;)Lcom/coloros/ocs/base/task/Task;

    move-result-object p1

    return-object p1
.end method

.method public addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/OnFailureListener;)Lcom/coloros/ocs/base/task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/coloros/ocs/base/task/OnFailureListener;",
            ")",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/coloros/ocs/base/task/TaskImpl;->d:Lcom/coloros/ocs/base/task/q;

    new-instance v1, Lcom/coloros/ocs/base/task/h;

    invoke-direct {v1, p1, p2}, Lcom/coloros/ocs/base/task/h;-><init>(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/OnFailureListener;)V

    invoke-virtual {v0, v1}, Lcom/coloros/ocs/base/task/q;->a(Lcom/coloros/ocs/base/task/b;)V

    .line 109
    invoke-direct {p0}, Lcom/coloros/ocs/base/task/TaskImpl;->d()V

    return-object p0
.end method

.method public addOnSuccessListener(Lcom/coloros/ocs/base/task/OnSuccessListener;)Lcom/coloros/ocs/base/task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/ocs/base/task/OnSuccessListener<",
            "-TTResult;>;)",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 90
    sget-object v0, Lcom/coloros/ocs/base/task/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/coloros/ocs/base/task/TaskImpl;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/OnSuccessListener;)Lcom/coloros/ocs/base/task/Task;

    move-result-object p1

    return-object p1
.end method

.method public addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/OnSuccessListener;)Lcom/coloros/ocs/base/task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/coloros/ocs/base/task/OnSuccessListener<",
            "-TTResult;>;)",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/coloros/ocs/base/task/TaskImpl;->d:Lcom/coloros/ocs/base/task/q;

    new-instance v1, Lcom/coloros/ocs/base/task/j;

    invoke-direct {v1, p1, p2}, Lcom/coloros/ocs/base/task/j;-><init>(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/OnSuccessListener;)V

    invoke-virtual {v0, v1}, Lcom/coloros/ocs/base/task/q;->a(Lcom/coloros/ocs/base/task/b;)V

    .line 97
    invoke-direct {p0}, Lcom/coloros/ocs/base/task/TaskImpl;->d()V

    return-object p0
.end method

.method public continueWith(Lcom/coloros/ocs/base/task/Continuation;)Lcom/coloros/ocs/base/task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/coloros/ocs/base/task/Continuation<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 127
    sget-object v0, Lcom/coloros/ocs/base/task/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/coloros/ocs/base/task/TaskImpl;->continueWith(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/Continuation;)Lcom/coloros/ocs/base/task/Task;

    move-result-object p1

    return-object p1
.end method

.method public continueWith(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/Continuation;)Lcom/coloros/ocs/base/task/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/coloros/ocs/base/task/Continuation<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 132
    new-instance v0, Lcom/coloros/ocs/base/task/TaskImpl;

    invoke-direct {v0}, Lcom/coloros/ocs/base/task/TaskImpl;-><init>()V

    .line 133
    iget-object v1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->d:Lcom/coloros/ocs/base/task/q;

    new-instance v2, Lcom/coloros/ocs/base/task/c;

    invoke-direct {v2, p1, p2, v0}, Lcom/coloros/ocs/base/task/c;-><init>(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/Continuation;Lcom/coloros/ocs/base/task/TaskImpl;)V

    invoke-virtual {v1, v2}, Lcom/coloros/ocs/base/task/q;->a(Lcom/coloros/ocs/base/task/b;)V

    .line 134
    invoke-direct {p0}, Lcom/coloros/ocs/base/task/TaskImpl;->d()V

    return-object v0
.end method

.method public continueWithTask(Lcom/coloros/ocs/base/task/Continuation;)Lcom/coloros/ocs/base/task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/coloros/ocs/base/task/Continuation<",
            "TTResult;",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTContinuationResult;>;>;)",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 140
    sget-object v0, Lcom/coloros/ocs/base/task/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/coloros/ocs/base/task/TaskImpl;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/Continuation;)Lcom/coloros/ocs/base/task/Task;

    move-result-object p1

    return-object p1
.end method

.method public continueWithTask(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/Continuation;)Lcom/coloros/ocs/base/task/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/coloros/ocs/base/task/Continuation<",
            "TTResult;",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTContinuationResult;>;>;)",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 157
    new-instance v0, Lcom/coloros/ocs/base/task/TaskImpl;

    invoke-direct {v0}, Lcom/coloros/ocs/base/task/TaskImpl;-><init>()V

    .line 158
    iget-object v1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->d:Lcom/coloros/ocs/base/task/q;

    new-instance v2, Lcom/coloros/ocs/base/task/c;

    invoke-direct {v2, p1, p2, v0}, Lcom/coloros/ocs/base/task/c;-><init>(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/Continuation;Lcom/coloros/ocs/base/task/TaskImpl;)V

    invoke-virtual {v1, v2}, Lcom/coloros/ocs/base/task/q;->a(Lcom/coloros/ocs/base/task/b;)V

    .line 159
    invoke-direct {p0}, Lcom/coloros/ocs/base/task/TaskImpl;->d()V

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/coloros/ocs/base/task/TaskImpl;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->c:Ljava/lang/Exception;

    .line 84
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getResult()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/coloros/ocs/base/task/TaskImpl;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    invoke-direct {p0}, Lcom/coloros/ocs/base/task/TaskImpl;->a()V

    .line 54
    invoke-direct {p0}, Lcom/coloros/ocs/base/task/TaskImpl;->c()V

    .line 55
    iget-object v1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->c:Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->b:Ljava/lang/Object;

    .line 59
    monitor-exit v0

    return-object v1

    .line 56
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    iget-object v2, p0, Lcom/coloros/ocs/base/task/TaskImpl;->c:Ljava/lang/Exception;

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getResult(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;)TTResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/coloros/ocs/base/task/TaskImpl;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_0
    invoke-direct {p0}, Lcom/coloros/ocs/base/task/TaskImpl;->a()V

    .line 67
    invoke-direct {p0}, Lcom/coloros/ocs/base/task/TaskImpl;->c()V

    .line 68
    iget-object v1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->c:Ljava/lang/Exception;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    iget-object p1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->c:Ljava/lang/Exception;

    if-nez p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->b:Ljava/lang/Object;

    .line 75
    monitor-exit v0

    return-object p1

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->c:Ljava/lang/Exception;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->c:Ljava/lang/Exception;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :catchall_0
    move-exception p1

    .line 75
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isCanceled()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/coloros/ocs/base/task/TaskImpl;->f:Z

    return v0
.end method

.method public isComplete()Z
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/coloros/ocs/base/task/TaskImpl;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 33
    :try_start_0
    iget-boolean v1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->e:Z

    .line 34
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSuccessful()Z
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/coloros/ocs/base/task/TaskImpl;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_0
    iget-boolean v1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->e:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->f:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->c:Ljava/lang/Exception;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 46
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSuccessTask(Lcom/coloros/ocs/base/task/SuccessContinuation;)Lcom/coloros/ocs/base/task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/coloros/ocs/base/task/SuccessContinuation<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 173
    sget-object v0, Lcom/coloros/ocs/base/task/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/coloros/ocs/base/task/TaskImpl;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/SuccessContinuation;)Lcom/coloros/ocs/base/task/Task;

    move-result-object p1

    return-object p1
.end method

.method public onSuccessTask(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/SuccessContinuation;)Lcom/coloros/ocs/base/task/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/coloros/ocs/base/task/SuccessContinuation<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 165
    new-instance v0, Lcom/coloros/ocs/base/task/TaskImpl;

    invoke-direct {v0}, Lcom/coloros/ocs/base/task/TaskImpl;-><init>()V

    .line 166
    iget-object v1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->d:Lcom/coloros/ocs/base/task/q;

    new-instance v2, Lcom/coloros/ocs/base/task/m;

    invoke-direct {v2, p1, p2, v0}, Lcom/coloros/ocs/base/task/m;-><init>(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/SuccessContinuation;Lcom/coloros/ocs/base/task/TaskImpl;)V

    invoke-virtual {v1, v2}, Lcom/coloros/ocs/base/task/q;->a(Lcom/coloros/ocs/base/task/b;)V

    .line 167
    invoke-direct {p0}, Lcom/coloros/ocs/base/task/TaskImpl;->d()V

    return-object v0
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Exception must not be null"

    .line 200
    invoke-static {p1, v0}, Lcom/coloros/ocs/base/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lcom/coloros/ocs/base/task/TaskImpl;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    invoke-direct {p0}, Lcom/coloros/ocs/base/task/TaskImpl;->b()V

    const/4 v1, 0x1

    .line 203
    iput-boolean v1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->e:Z

    .line 204
    iput-object p1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->c:Ljava/lang/Exception;

    .line 205
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    iget-object p1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->d:Lcom/coloros/ocs/base/task/q;

    invoke-virtual {p1, p0}, Lcom/coloros/ocs/base/task/q;->a(Lcom/coloros/ocs/base/task/Task;)V

    return-void

    :catchall_0
    move-exception p1

    .line 205
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/coloros/ocs/base/task/TaskImpl;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    invoke-direct {p0}, Lcom/coloros/ocs/base/task/TaskImpl;->b()V

    const/4 v1, 0x1

    .line 179
    iput-boolean v1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->e:Z

    .line 180
    iput-object p1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->b:Ljava/lang/Object;

    .line 181
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    iget-object p1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->d:Lcom/coloros/ocs/base/task/q;

    invoke-virtual {p1, p0}, Lcom/coloros/ocs/base/task/q;->a(Lcom/coloros/ocs/base/task/Task;)V

    return-void

    :catchall_0
    move-exception p1

    .line 181
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public tryCancel()Z
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/coloros/ocs/base/task/TaskImpl;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_0
    iget-boolean v1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->e:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 230
    :cond_0
    iput-boolean v2, p0, Lcom/coloros/ocs/base/task/TaskImpl;->e:Z

    .line 231
    iput-boolean v2, p0, Lcom/coloros/ocs/base/task/TaskImpl;->f:Z

    .line 232
    iget-object v1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->d:Lcom/coloros/ocs/base/task/q;

    invoke-virtual {v1, p0}, Lcom/coloros/ocs/base/task/q;->a(Lcom/coloros/ocs/base/task/Task;)V

    .line 234
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public trySetException(Ljava/lang/Exception;)Z
    .locals 3

    const-string v0, "Exception must not be null"

    .line 211
    invoke-static {p1, v0}, Lcom/coloros/ocs/base/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lcom/coloros/ocs/base/task/TaskImpl;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_0
    iget-boolean v1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->e:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 216
    :cond_0
    iput-boolean v2, p0, Lcom/coloros/ocs/base/task/TaskImpl;->e:Z

    .line 217
    iput-object p1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->c:Ljava/lang/Exception;

    .line 218
    iget-object p1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->d:Lcom/coloros/ocs/base/task/q;

    invoke-virtual {p1, p0}, Lcom/coloros/ocs/base/task/q;->a(Lcom/coloros/ocs/base/task/Task;)V

    .line 220
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public trySetResult(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/coloros/ocs/base/task/TaskImpl;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_0
    iget-boolean v1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->e:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 191
    :cond_0
    iput-boolean v2, p0, Lcom/coloros/ocs/base/task/TaskImpl;->e:Z

    .line 192
    iput-object p1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->b:Ljava/lang/Object;

    .line 193
    iget-object p1, p0, Lcom/coloros/ocs/base/task/TaskImpl;->d:Lcom/coloros/ocs/base/task/q;

    invoke-virtual {p1, p0}, Lcom/coloros/ocs/base/task/q;->a(Lcom/coloros/ocs/base/task/Task;)V

    .line 195
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
