.class public Lcom/coloros/ocs/base/task/Tasks;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/ocs/base/task/Tasks$a;,
        Lcom/coloros/ocs/base/task/Tasks$c;,
        Lcom/coloros/ocs/base/task/Tasks$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/coloros/ocs/base/task/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 217
    invoke-virtual {p0}, Lcom/coloros/ocs/base/task/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/coloros/ocs/base/task/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/ocs/base/task/Task;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "Task is already canceled"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 223
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Lcom/coloros/ocs/base/task/Task;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Lcom/coloros/ocs/base/task/Task;Lcom/coloros/ocs/base/task/Tasks$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTResult;>;",
            "Lcom/coloros/ocs/base/task/Tasks$c;",
            ")V"
        }
    .end annotation

    .line 227
    sget-object v0, Lcom/coloros/ocs/base/task/TaskExecutors;->CURRENT_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/coloros/ocs/base/task/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/OnSuccessListener;)Lcom/coloros/ocs/base/task/Task;

    .line 228
    sget-object v0, Lcom/coloros/ocs/base/task/TaskExecutors;->CURRENT_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/coloros/ocs/base/task/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/OnFailureListener;)Lcom/coloros/ocs/base/task/Task;

    .line 229
    sget-object v0, Lcom/coloros/ocs/base/task/TaskExecutors;->CURRENT_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/coloros/ocs/base/task/Task;->addOnCanceledListener(Ljava/util/concurrent/Executor;Lcom/coloros/ocs/base/task/OnCanceledListener;)Lcom/coloros/ocs/base/task/Task;

    return-void
.end method

.method public static await(Lcom/coloros/ocs/base/task/Task;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "Must not be called on the main application thread"

    .line 1138
    invoke-static {v0}, Lcom/coloros/ocs/base/a/c;->b(Ljava/lang/String;)V

    const-string v0, "Task must not be null"

    .line 151
    invoke-static {p0, v0}, Lcom/coloros/ocs/base/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {p0}, Lcom/coloros/ocs/base/task/Task;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {p0}, Lcom/coloros/ocs/base/task/Tasks;->a(Lcom/coloros/ocs/base/task/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 155
    :cond_0
    new-instance v0, Lcom/coloros/ocs/base/task/Tasks$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/ocs/base/task/Tasks$b;-><init>(B)V

    .line 156
    invoke-static {p0, v0}, Lcom/coloros/ocs/base/task/Tasks;->a(Lcom/coloros/ocs/base/task/Task;Lcom/coloros/ocs/base/task/Tasks$c;)V

    .line 2041
    iget-object v0, v0, Lcom/coloros/ocs/base/task/Tasks$b;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 158
    invoke-static {p0}, Lcom/coloros/ocs/base/task/Tasks;->a(Lcom/coloros/ocs/base/task/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static await(Lcom/coloros/ocs/base/task/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTResult;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TTResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const-string v0, "Must not be called on the main application thread"

    .line 2138
    invoke-static {v0}, Lcom/coloros/ocs/base/a/c;->b(Ljava/lang/String;)V

    const-string v0, "Task must not be null"

    .line 163
    invoke-static {p0, v0}, Lcom/coloros/ocs/base/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TimeUnit must not be null"

    .line 164
    invoke-static {p3, v0}, Lcom/coloros/ocs/base/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-virtual {p0}, Lcom/coloros/ocs/base/task/Task;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {p0}, Lcom/coloros/ocs/base/task/Tasks;->a(Lcom/coloros/ocs/base/task/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 168
    :cond_0
    new-instance v0, Lcom/coloros/ocs/base/task/Tasks$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/ocs/base/task/Tasks$b;-><init>(B)V

    .line 169
    invoke-static {p0, v0}, Lcom/coloros/ocs/base/task/Tasks;->a(Lcom/coloros/ocs/base/task/Task;Lcom/coloros/ocs/base/task/Tasks$c;)V

    .line 3045
    iget-object v0, v0, Lcom/coloros/ocs/base/task/Tasks$b;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 171
    invoke-static {p0}, Lcom/coloros/ocs/base/task/Tasks;->a(Lcom/coloros/ocs/base/task/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 173
    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string p1, "Timed out waiting for Task"

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static call(Ljava/util/concurrent/Callable;)Lcom/coloros/ocs/base/task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;)",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 138
    sget-object v0, Lcom/coloros/ocs/base/task/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Lcom/coloros/ocs/base/task/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/coloros/ocs/base/task/Task;

    move-result-object p0

    return-object p0
.end method

.method public static call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/coloros/ocs/base/task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;)",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation

    const-string v0, "Executor must not be null"

    .line 142
    invoke-static {p0, v0}, Lcom/coloros/ocs/base/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Callback must not be null"

    .line 143
    invoke-static {p1, v0}, Lcom/coloros/ocs/base/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v0, Lcom/coloros/ocs/base/task/TaskImpl;

    invoke-direct {v0}, Lcom/coloros/ocs/base/task/TaskImpl;-><init>()V

    .line 145
    new-instance v1, Lcom/coloros/ocs/base/task/a;

    invoke-direct {v1, v0, p1}, Lcom/coloros/ocs/base/task/a;-><init>(Lcom/coloros/ocs/base/task/TaskImpl;Ljava/util/concurrent/Callable;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static forCanceled()Lcom/coloros/ocs/base/task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 132
    new-instance v0, Lcom/coloros/ocs/base/task/TaskImpl;

    invoke-direct {v0}, Lcom/coloros/ocs/base/task/TaskImpl;-><init>()V

    .line 133
    invoke-virtual {v0}, Lcom/coloros/ocs/base/task/TaskImpl;->tryCancel()Z

    return-object v0
.end method

.method public static forException(Ljava/lang/Exception;)Lcom/coloros/ocs/base/task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 126
    new-instance v0, Lcom/coloros/ocs/base/task/TaskImpl;

    invoke-direct {v0}, Lcom/coloros/ocs/base/task/TaskImpl;-><init>()V

    .line 127
    invoke-virtual {v0, p0}, Lcom/coloros/ocs/base/task/TaskImpl;->setException(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static forResult(Ljava/lang/Object;)Lcom/coloros/ocs/base/task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 120
    new-instance v0, Lcom/coloros/ocs/base/task/TaskImpl;

    invoke-direct {v0}, Lcom/coloros/ocs/base/task/TaskImpl;-><init>()V

    .line 121
    invoke-virtual {v0, p0}, Lcom/coloros/ocs/base/task/TaskImpl;->setResult(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whenAll(Ljava/util/Collection;)Lcom/coloros/ocs/base/task/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/coloros/ocs/base/task/Task<",
            "*>;>;)",
            "Lcom/coloros/ocs/base/task/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 177
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 178
    invoke-static {p0}, Lcom/coloros/ocs/base/task/Tasks;->forResult(Ljava/lang/Object;)Lcom/coloros/ocs/base/task/Task;

    move-result-object p0

    return-object p0

    .line 180
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/ocs/base/task/Task;

    const-string v2, "null tasks are not accepted"

    .line 182
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 185
    :cond_1
    new-instance v0, Lcom/coloros/ocs/base/task/TaskImpl;

    invoke-direct {v0}, Lcom/coloros/ocs/base/task/TaskImpl;-><init>()V

    .line 186
    new-instance v1, Lcom/coloros/ocs/base/task/Tasks$a;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/coloros/ocs/base/task/Tasks$a;-><init>(ILcom/coloros/ocs/base/task/TaskImpl;)V

    .line 187
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/ocs/base/task/Task;

    .line 188
    invoke-static {v2, v1}, Lcom/coloros/ocs/base/task/Tasks;->a(Lcom/coloros/ocs/base/task/Task;Lcom/coloros/ocs/base/task/Tasks$c;)V

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static varargs whenAll([Lcom/coloros/ocs/base/task/Task;)Lcom/coloros/ocs/base/task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/coloros/ocs/base/task/Task<",
            "*>;)",
            "Lcom/coloros/ocs/base/task/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 194
    array-length v0, p0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 195
    invoke-static {p0}, Lcom/coloros/ocs/base/task/Tasks;->forResult(Ljava/lang/Object;)Lcom/coloros/ocs/base/task/Task;

    move-result-object p0

    return-object p0

    .line 197
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/ocs/base/task/Tasks;->whenAll(Ljava/util/Collection;)Lcom/coloros/ocs/base/task/Task;

    move-result-object p0

    return-object p0
.end method

.method public static whenAllComplete(Ljava/util/Collection;)Lcom/coloros/ocs/base/task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/coloros/ocs/base/task/Task<",
            "*>;>;)",
            "Lcom/coloros/ocs/base/task/Task<",
            "Ljava/util/List<",
            "Lcom/coloros/ocs/base/task/Task<",
            "*>;>;>;"
        }
    .end annotation

    .line 209
    invoke-static {p0}, Lcom/coloros/ocs/base/task/Tasks;->whenAll(Ljava/util/Collection;)Lcom/coloros/ocs/base/task/Task;

    move-result-object v0

    new-instance v1, Lcom/coloros/ocs/base/task/o;

    invoke-direct {v1, p0}, Lcom/coloros/ocs/base/task/o;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/coloros/ocs/base/task/Task;->continueWithTask(Lcom/coloros/ocs/base/task/Continuation;)Lcom/coloros/ocs/base/task/Task;

    move-result-object p0

    return-object p0
.end method

.method public static varargs whenAllComplete([Lcom/coloros/ocs/base/task/Task;)Lcom/coloros/ocs/base/task/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/coloros/ocs/base/task/Task<",
            "*>;)",
            "Lcom/coloros/ocs/base/task/Task<",
            "Ljava/util/List<",
            "Lcom/coloros/ocs/base/task/Task<",
            "*>;>;>;"
        }
    .end annotation

    .line 213
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/ocs/base/task/Tasks;->whenAllComplete(Ljava/util/Collection;)Lcom/coloros/ocs/base/task/Task;

    move-result-object p0

    return-object p0
.end method

.method public static whenAllSuccess(Ljava/util/Collection;)Lcom/coloros/ocs/base/task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/coloros/ocs/base/task/Task<",
            "*>;>;)",
            "Lcom/coloros/ocs/base/task/Task<",
            "Ljava/util/List<",
            "TTResult;>;>;"
        }
    .end annotation

    .line 201
    invoke-static {p0}, Lcom/coloros/ocs/base/task/Tasks;->whenAll(Ljava/util/Collection;)Lcom/coloros/ocs/base/task/Task;

    move-result-object v0

    new-instance v1, Lcom/coloros/ocs/base/task/p;

    invoke-direct {v1, p0}, Lcom/coloros/ocs/base/task/p;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/coloros/ocs/base/task/Task;->continueWith(Lcom/coloros/ocs/base/task/Continuation;)Lcom/coloros/ocs/base/task/Task;

    move-result-object p0

    return-object p0
.end method

.method public static varargs whenAllSuccess([Lcom/coloros/ocs/base/task/Task;)Lcom/coloros/ocs/base/task/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/coloros/ocs/base/task/Task<",
            "*>;)",
            "Lcom/coloros/ocs/base/task/Task<",
            "Ljava/util/List<",
            "TTResult;>;>;"
        }
    .end annotation

    .line 205
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/ocs/base/task/Tasks;->whenAllSuccess(Ljava/util/Collection;)Lcom/coloros/ocs/base/task/Task;

    move-result-object p0

    return-object p0
.end method
