.class final Lcom/coloros/ocs/base/task/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/util/concurrent/Callable;

.field private b:Lcom/coloros/ocs/base/task/TaskImpl;


# direct methods
.method constructor <init>(Lcom/coloros/ocs/base/task/TaskImpl;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/coloros/ocs/base/task/a;->b:Lcom/coloros/ocs/base/task/TaskImpl;

    .line 12
    iput-object p2, p0, Lcom/coloros/ocs/base/task/a;->a:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/coloros/ocs/base/task/a;->b:Lcom/coloros/ocs/base/task/TaskImpl;

    iget-object v1, p0, Lcom/coloros/ocs/base/task/a;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/ocs/base/task/TaskImpl;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 19
    iget-object v1, p0, Lcom/coloros/ocs/base/task/a;->b:Lcom/coloros/ocs/base/task/TaskImpl;

    invoke-virtual {v1, v0}, Lcom/coloros/ocs/base/task/TaskImpl;->setException(Ljava/lang/Exception;)V

    return-void
.end method
