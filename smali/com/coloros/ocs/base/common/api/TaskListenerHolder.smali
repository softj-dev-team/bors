.class public Lcom/coloros/ocs/base/common/api/TaskListenerHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/ocs/base/common/api/TaskListenerHolder$FailureNotifier;,
        Lcom/coloros/ocs/base/common/api/TaskListenerHolder$SuccessNotifier;,
        Lcom/coloros/ocs/base/common/api/TaskListenerHolder$TaskListenerHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/os/Looper;

.field private c:Lcom/coloros/ocs/base/task/TaskImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/task/TaskImpl<",
            "TT;>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Lcom/coloros/ocs/base/common/api/TaskListenerHolder$SuccessNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/common/api/TaskListenerHolder$SuccessNotifier<",
            "TT;>;"
        }
    .end annotation
.end field

.field private f:Lcom/coloros/ocs/base/common/api/TaskListenerHolder$FailureNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/common/api/TaskListenerHolder$FailureNotifier<",
            "TT;>;"
        }
    .end annotation
.end field

.field private g:Lcom/coloros/ocs/base/common/api/TaskListenerHolder$TaskListenerHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/common/api/TaskListenerHolder<",
            "TT;>.Task",
            "ListenerHandler;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/coloros/ocs/base/task/TaskImpl;Lcom/coloros/ocs/base/common/api/TaskListenerHolder$SuccessNotifier;Lcom/coloros/ocs/base/common/api/TaskListenerHolder$FailureNotifier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/coloros/ocs/base/task/TaskImpl<",
            "TT;>;",
            "Lcom/coloros/ocs/base/common/api/TaskListenerHolder$SuccessNotifier<",
            "TT;>;",
            "Lcom/coloros/ocs/base/common/api/TaskListenerHolder$FailureNotifier<",
            "TT;>;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-class v0, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;->a:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;->b:Landroid/os/Looper;

    .line 36
    iput-object p2, p0, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;->c:Lcom/coloros/ocs/base/task/TaskImpl;

    .line 37
    iput-object p3, p0, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;->e:Lcom/coloros/ocs/base/common/api/TaskListenerHolder$SuccessNotifier;

    .line 38
    iput-object p4, p0, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;->f:Lcom/coloros/ocs/base/common/api/TaskListenerHolder$FailureNotifier;

    .line 39
    new-instance p1, Lcom/coloros/ocs/base/common/api/TaskListenerHolder$TaskListenerHandler;

    iget-object p2, p0, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;->b:Landroid/os/Looper;

    invoke-direct {p1, p0, p2}, Lcom/coloros/ocs/base/common/api/TaskListenerHolder$TaskListenerHandler;-><init>(Lcom/coloros/ocs/base/common/api/TaskListenerHolder;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;->g:Lcom/coloros/ocs/base/common/api/TaskListenerHolder$TaskListenerHandler;

    return-void
.end method

.method static synthetic a(Lcom/coloros/ocs/base/common/api/TaskListenerHolder;I)V
    .locals 3

    .line 1067
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "errorCode "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/ocs/base/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1069
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;->e:Lcom/coloros/ocs/base/common/api/TaskListenerHolder$SuccessNotifier;

    if-eqz p1, :cond_1

    .line 1070
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;->a:Ljava/lang/String;

    const-string v0, "notifier is not null "

    invoke-static {p1, v0}, Lcom/coloros/ocs/base/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;->e:Lcom/coloros/ocs/base/common/api/TaskListenerHolder$SuccessNotifier;

    iget-object p0, p0, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;->c:Lcom/coloros/ocs/base/task/TaskImpl;

    invoke-interface {p1, p0}, Lcom/coloros/ocs/base/common/api/TaskListenerHolder$SuccessNotifier;->notifyListener(Lcom/coloros/ocs/base/task/TaskImpl;)V

    return-void

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;->f:Lcom/coloros/ocs/base/common/api/TaskListenerHolder$FailureNotifier;

    if-eqz v0, :cond_1

    .line 1075
    iget-object p0, p0, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;->c:Lcom/coloros/ocs/base/task/TaskImpl;

    invoke-static {p1}, Lcom/coloros/ocs/base/common/constant/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, p1, v1}, Lcom/coloros/ocs/base/common/api/TaskListenerHolder$FailureNotifier;->onNotifyListenerFailed(Lcom/coloros/ocs/base/task/TaskImpl;ILjava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getFailureNotifier()Lcom/coloros/ocs/base/common/api/TaskListenerHolder$FailureNotifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/ocs/base/common/api/TaskListenerHolder$FailureNotifier<",
            "TT;>;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;->f:Lcom/coloros/ocs/base/common/api/TaskListenerHolder$FailureNotifier;

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;->b:Landroid/os/Looper;

    return-object v0
.end method

.method public getOnTaskSuccessListener()Lcom/coloros/ocs/base/common/api/TaskListenerHolder$SuccessNotifier;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;->e:Lcom/coloros/ocs/base/common/api/TaskListenerHolder$SuccessNotifier;

    return-object v0
.end method

.method public getTask()Lcom/coloros/ocs/base/task/TaskImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/ocs/base/task/TaskImpl<",
            "TT;>;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;->c:Lcom/coloros/ocs/base/task/TaskImpl;

    return-object v0
.end method

.method public setErrorCode(I)V
    .locals 1

    .line 59
    iput p1, p0, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;->d:I

    .line 60
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x1

    .line 61
    iput v0, p1, Landroid/os/Message;->what:I

    .line 62
    iget v0, p0, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;->d:I

    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 63
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;->g:Lcom/coloros/ocs/base/common/api/TaskListenerHolder$TaskListenerHandler;

    invoke-virtual {v0, p1}, Lcom/coloros/ocs/base/common/api/TaskListenerHolder$TaskListenerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
