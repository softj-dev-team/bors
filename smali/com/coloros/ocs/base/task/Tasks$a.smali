.class final Lcom/coloros/ocs/base/task/Tasks$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/ocs/base/task/Tasks$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/ocs/base/task/Tasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/coloros/ocs/base/task/TaskImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/task/TaskImpl<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Exception;

.field private volatile d:I

.field private volatile e:I

.field private volatile f:I

.field private volatile g:I

.field private volatile h:Z


# direct methods
.method public constructor <init>(ILcom/coloros/ocs/base/task/TaskImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/coloros/ocs/base/task/TaskImpl<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coloros/ocs/base/task/Tasks$a;->a:Ljava/lang/Object;

    .line 72
    iput p1, p0, Lcom/coloros/ocs/base/task/Tasks$a;->d:I

    .line 73
    iput-object p2, p0, Lcom/coloros/ocs/base/task/Tasks$a;->b:Lcom/coloros/ocs/base/task/TaskImpl;

    return-void
.end method

.method private a()V
    .locals 5

    .line 101
    iget-object v0, p0, Lcom/coloros/ocs/base/task/Tasks$a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    iget v1, p0, Lcom/coloros/ocs/base/task/Tasks$a;->e:I

    iget v2, p0, Lcom/coloros/ocs/base/task/Tasks$a;->f:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/coloros/ocs/base/task/Tasks$a;->g:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/coloros/ocs/base/task/Tasks$a;->d:I

    if-eq v1, v2, :cond_0

    .line 103
    monitor-exit v0

    return-void

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/coloros/ocs/base/task/Tasks$a;->c:Ljava/lang/Exception;

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/coloros/ocs/base/task/Tasks$a;->b:Lcom/coloros/ocs/base/task/TaskImpl;

    .line 108
    iget v2, p0, Lcom/coloros/ocs/base/task/Tasks$a;->f:I

    .line 109
    new-instance v3, Ljava/util/concurrent/ExecutionException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/ocs/base/task/Tasks$a;->d:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " underlying tasks failed"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/coloros/ocs/base/task/Tasks$a;->c:Ljava/lang/Exception;

    invoke-direct {v3, v2, v4}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Lcom/coloros/ocs/base/task/TaskImpl;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 110
    :cond_1
    iget-boolean v1, p0, Lcom/coloros/ocs/base/task/Tasks$a;->h:Z

    if-eqz v1, :cond_2

    .line 111
    iget-object v1, p0, Lcom/coloros/ocs/base/task/Tasks$a;->b:Lcom/coloros/ocs/base/task/TaskImpl;

    invoke-virtual {v1}, Lcom/coloros/ocs/base/task/TaskImpl;->tryCancel()Z

    goto :goto_0

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/coloros/ocs/base/task/Tasks$a;->b:Lcom/coloros/ocs/base/task/TaskImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/coloros/ocs/base/task/TaskImpl;->setResult(Ljava/lang/Object;)V

    .line 115
    :goto_0
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
.method public final onCanceled()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/coloros/ocs/base/task/Tasks$a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    iget v1, p0, Lcom/coloros/ocs/base/task/Tasks$a;->g:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/coloros/ocs/base/task/Tasks$a;->g:I

    .line 94
    iput-boolean v2, p0, Lcom/coloros/ocs/base/task/Tasks$a;->h:Z

    .line 95
    invoke-direct {p0}, Lcom/coloros/ocs/base/task/Tasks$a;->a()V

    .line 96
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/coloros/ocs/base/task/Tasks$a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_0
    iget v1, p0, Lcom/coloros/ocs/base/task/Tasks$a;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/coloros/ocs/base/task/Tasks$a;->f:I

    .line 79
    iput-object p1, p0, Lcom/coloros/ocs/base/task/Tasks$a;->c:Ljava/lang/Exception;

    .line 80
    invoke-direct {p0}, Lcom/coloros/ocs/base/task/Tasks$a;->a()V

    .line 81
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 85
    iget-object p1, p0, Lcom/coloros/ocs/base/task/Tasks$a;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 86
    :try_start_0
    iget v0, p0, Lcom/coloros/ocs/base/task/Tasks$a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coloros/ocs/base/task/Tasks$a;->e:I

    .line 87
    invoke-direct {p0}, Lcom/coloros/ocs/base/task/Tasks$a;->a()V

    .line 88
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
