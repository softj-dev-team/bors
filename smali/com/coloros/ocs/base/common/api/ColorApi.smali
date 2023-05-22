.class public abstract Lcom/coloros/ocs/base/common/api/ColorApi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/coloros/ocs/base/common/api/Api$ApiOptions;",
        "R:",
        "Lcom/coloros/ocs/base/common/api/ColorApi;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/coloros/ocs/base/common/api/Api$ApiOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lcom/coloros/ocs/base/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/common/api/Api<",
            "TO;>;"
        }
    .end annotation
.end field

.field private d:Lcom/coloros/ocs/base/common/api/c;

.field private e:Lcom/coloros/ocs/base/internal/ClientSettings;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/coloros/ocs/base/common/api/Api;Lcom/coloros/ocs/base/common/api/Api$ApiOptions;Lcom/coloros/ocs/base/internal/ClientSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/coloros/ocs/base/common/api/Api<",
            "TO;>;TO;",
            "Lcom/coloros/ocs/base/internal/ClientSettings;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null activity is not permitted."

    .line 49
    invoke-static {p1, v0}, Lcom/coloros/ocs/base/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    .line 50
    invoke-static {p2, v0}, Lcom/coloros/ocs/base/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->b:Landroid/content/Context;

    .line 52
    invoke-static {p1}, Lcom/coloros/ocs/base/a/b;->a(Landroid/content/Context;)V

    .line 53
    iput-object p2, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->c:Lcom/coloros/ocs/base/common/api/Api;

    .line 54
    iput-object p3, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->a:Lcom/coloros/ocs/base/common/api/Api$ApiOptions;

    .line 55
    iput-object p4, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->e:Lcom/coloros/ocs/base/internal/ClientSettings;

    .line 56
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/ocs/base/common/api/c;->a(Landroid/content/Context;)Lcom/coloros/ocs/base/common/api/c;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->d:Lcom/coloros/ocs/base/common/api/c;

    .line 57
    iget-object p2, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->e:Lcom/coloros/ocs/base/internal/ClientSettings;

    invoke-virtual {p1, p0, p2}, Lcom/coloros/ocs/base/common/api/c;->a(Lcom/coloros/ocs/base/common/api/ColorApi;Lcom/coloros/ocs/base/internal/ClientSettings;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/coloros/ocs/base/common/api/Api;Lcom/coloros/ocs/base/common/api/Api$ApiOptions;Lcom/coloros/ocs/base/internal/ClientSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/coloros/ocs/base/common/api/Api<",
            "TO;>;TO;",
            "Lcom/coloros/ocs/base/internal/ClientSettings;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    .line 61
    invoke-static {p1, v0}, Lcom/coloros/ocs/base/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    .line 62
    invoke-static {p2, v0}, Lcom/coloros/ocs/base/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->b:Landroid/content/Context;

    .line 64
    invoke-static {p1}, Lcom/coloros/ocs/base/a/b;->a(Landroid/content/Context;)V

    .line 65
    iput-object p2, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->c:Lcom/coloros/ocs/base/common/api/Api;

    .line 66
    iput-object p3, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->a:Lcom/coloros/ocs/base/common/api/Api$ApiOptions;

    .line 67
    iput-object p4, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->e:Lcom/coloros/ocs/base/internal/ClientSettings;

    .line 68
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/ocs/base/common/api/c;->a(Landroid/content/Context;)Lcom/coloros/ocs/base/common/api/c;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->d:Lcom/coloros/ocs/base/common/api/c;

    .line 69
    iget-object p2, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->e:Lcom/coloros/ocs/base/internal/ClientSettings;

    invoke-virtual {p1, p0, p2}, Lcom/coloros/ocs/base/common/api/c;->a(Lcom/coloros/ocs/base/common/api/ColorApi;Lcom/coloros/ocs/base/internal/ClientSettings;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/coloros/ocs/base/common/api/Api;Lcom/coloros/ocs/base/internal/ClientSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/coloros/ocs/base/common/api/Api<",
            "TO;>;",
            "Lcom/coloros/ocs/base/internal/ClientSettings;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    .line 37
    invoke-static {p1, v0}, Lcom/coloros/ocs/base/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    .line 38
    invoke-static {p2, v0}, Lcom/coloros/ocs/base/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->b:Landroid/content/Context;

    .line 40
    invoke-static {p1}, Lcom/coloros/ocs/base/a/b;->a(Landroid/content/Context;)V

    .line 41
    iput-object p2, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->c:Lcom/coloros/ocs/base/common/api/Api;

    .line 42
    iput-object p3, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->e:Lcom/coloros/ocs/base/internal/ClientSettings;

    .line 43
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/ocs/base/common/api/c;->a(Landroid/content/Context;)Lcom/coloros/ocs/base/common/api/c;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->d:Lcom/coloros/ocs/base/common/api/c;

    .line 44
    iget-object p2, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->e:Lcom/coloros/ocs/base/internal/ClientSettings;

    invoke-virtual {p1, p0, p2}, Lcom/coloros/ocs/base/common/api/c;->a(Lcom/coloros/ocs/base/common/api/ColorApi;Lcom/coloros/ocs/base/internal/ClientSettings;)V

    return-void
.end method


# virtual methods
.method public addOnConnectionFailedListener(Lcom/coloros/ocs/base/common/api/OnConnectionFailedListener;)Lcom/coloros/ocs/base/common/api/ColorApi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/ocs/base/common/api/OnConnectionFailedListener;",
            ")TR;"
        }
    .end annotation

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, p1, v0}, Lcom/coloros/ocs/base/common/api/ColorApi;->addOnConnectionFailedListener(Lcom/coloros/ocs/base/common/api/OnConnectionFailedListener;Landroid/os/Handler;)Lcom/coloros/ocs/base/common/api/ColorApi;

    move-result-object p1

    return-object p1
.end method

.method public addOnConnectionFailedListener(Lcom/coloros/ocs/base/common/api/OnConnectionFailedListener;Landroid/os/Handler;)Lcom/coloros/ocs/base/common/api/ColorApi;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/ocs/base/common/api/OnConnectionFailedListener;",
            "Landroid/os/Handler;",
            ")TR;"
        }
    .end annotation

    .line 168
    invoke-static {p0, p1, p2}, Lcom/coloros/ocs/base/common/api/c;->a(Lcom/coloros/ocs/base/common/api/ColorApi;Lcom/coloros/ocs/base/common/api/OnConnectionFailedListener;Landroid/os/Handler;)V

    return-object p0
.end method

.method public addOnConnectionSucceedListener(Lcom/coloros/ocs/base/common/api/OnConnectionSucceedListener;)Lcom/coloros/ocs/base/common/api/ColorApi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/ocs/base/common/api/OnConnectionSucceedListener;",
            ")TR;"
        }
    .end annotation

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, p1, v0}, Lcom/coloros/ocs/base/common/api/ColorApi;->addOnConnectionSucceedListener(Lcom/coloros/ocs/base/common/api/OnConnectionSucceedListener;Landroid/os/Handler;)Lcom/coloros/ocs/base/common/api/ColorApi;

    move-result-object p1

    return-object p1
.end method

.method public addOnConnectionSucceedListener(Lcom/coloros/ocs/base/common/api/OnConnectionSucceedListener;Landroid/os/Handler;)Lcom/coloros/ocs/base/common/api/ColorApi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/ocs/base/common/api/OnConnectionSucceedListener;",
            "Landroid/os/Handler;",
            ")TR;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->d:Lcom/coloros/ocs/base/common/api/c;

    invoke-virtual {v0, p0, p1, p2}, Lcom/coloros/ocs/base/common/api/c;->a(Lcom/coloros/ocs/base/common/api/ColorApi;Lcom/coloros/ocs/base/common/api/OnConnectionSucceedListener;Landroid/os/Handler;)V

    return-object p0
.end method

.method protected addThis2Cache()V
    .locals 2

    const-string v0, "color api add to cache"

    .line 106
    invoke-static {v0}, Lcom/coloros/ocs/base/a/b;->a(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->d:Lcom/coloros/ocs/base/common/api/c;

    iget-object v1, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->e:Lcom/coloros/ocs/base/internal/ClientSettings;

    invoke-virtual {v0, p0, v1}, Lcom/coloros/ocs/base/common/api/c;->a(Lcom/coloros/ocs/base/common/api/ColorApi;Lcom/coloros/ocs/base/internal/ClientSettings;)V

    return-void
.end method

.method protected checkExist()Z
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->b:Landroid/content/Context;

    const-string v1, "com.coloros.ocs.opencapabilityservice"

    invoke-static {v0, v1}, Lcom/coloros/ocs/base/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected disconnect()V
    .locals 3

    const-string v0, "color api disconnect"

    .line 111
    invoke-static {v0}, Lcom/coloros/ocs/base/a/b;->a(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->d:Lcom/coloros/ocs/base/common/api/c;

    const-string v1, "ColorApiManager"

    const-string v2, "handleDisconnect"

    .line 1078
    invoke-static {v1, v2}, Lcom/coloros/ocs/base/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    iget-object v1, v0, Lcom/coloros/ocs/base/common/api/c;->a:Lcom/coloros/ocs/base/common/a;

    invoke-virtual {v1}, Lcom/coloros/ocs/base/common/a;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    .line 1080
    iput v2, v1, Landroid/os/Message;->what:I

    .line 1081
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1082
    iget-object v0, v0, Lcom/coloros/ocs/base/common/api/c;->a:Lcom/coloros/ocs/base/common/a;

    invoke-virtual {v0, v1}, Lcom/coloros/ocs/base/common/a;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected doRegisterListener(Landroid/os/Looper;Lcom/coloros/ocs/base/common/api/TaskListenerHolder$SuccessNotifier;Lcom/coloros/ocs/base/common/api/TaskListenerHolder$FailureNotifier;)Lcom/coloros/ocs/base/task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Looper;",
            "Lcom/coloros/ocs/base/common/api/TaskListenerHolder$SuccessNotifier<",
            "TTResult;>;",
            "Lcom/coloros/ocs/base/common/api/TaskListenerHolder$FailureNotifier<",
            "TTResult;>;)",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation

    const-string v0, "color doRegisterListener"

    .line 189
    invoke-static {v0}, Lcom/coloros/ocs/base/a/b;->a(Ljava/lang/String;)V

    .line 190
    new-instance v0, Lcom/coloros/ocs/base/task/TaskImpl;

    invoke-direct {v0}, Lcom/coloros/ocs/base/task/TaskImpl;-><init>()V

    .line 191
    new-instance v1, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;

    invoke-direct {v1, p1, v0, p2, p3}, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;-><init>(Landroid/os/Looper;Lcom/coloros/ocs/base/task/TaskImpl;Lcom/coloros/ocs/base/common/api/TaskListenerHolder$SuccessNotifier;Lcom/coloros/ocs/base/common/api/TaskListenerHolder$FailureNotifier;)V

    .line 1090
    invoke-static {p0, v1}, Lcom/coloros/ocs/base/common/api/c;->a(Lcom/coloros/ocs/base/common/api/ColorApi;Lcom/coloros/ocs/base/common/api/TaskListenerHolder;)V

    return-object v0
.end method

.method protected doRegisterListener(Lcom/coloros/ocs/base/common/api/TaskListenerHolder$SuccessNotifier;Lcom/coloros/ocs/base/common/api/TaskListenerHolder$FailureNotifier;)Lcom/coloros/ocs/base/task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/coloros/ocs/base/common/api/TaskListenerHolder$SuccessNotifier<",
            "TTResult;>;",
            "Lcom/coloros/ocs/base/common/api/TaskListenerHolder$FailureNotifier<",
            "TTResult;>;)",
            "Lcom/coloros/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 174
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/coloros/ocs/base/common/api/ColorApi;->doRegisterListener(Landroid/os/Looper;Lcom/coloros/ocs/base/common/api/TaskListenerHolder$SuccessNotifier;Lcom/coloros/ocs/base/common/api/TaskListenerHolder$FailureNotifier;)Lcom/coloros/ocs/base/task/Task;

    move-result-object p1

    return-object p1
.end method

.method protected getApi()Lcom/coloros/ocs/base/common/api/Api;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/ocs/base/common/api/Api<",
            "TO;>;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->c:Lcom/coloros/ocs/base/common/api/Api;

    return-object v0
.end method

.method protected getAuthResult()Lcom/coloros/ocs/base/common/AuthResult;
    .locals 1

    .line 135
    invoke-static {p0}, Lcom/coloros/ocs/base/common/api/c;->c(Lcom/coloros/ocs/base/common/api/ColorApi;)Lcom/coloros/ocs/base/common/AuthResult;

    move-result-object v0

    return-object v0
.end method

.method protected getRemoteService()Landroid/os/IBinder;
    .locals 1

    const-string v0, "getRemoteService"

    .line 81
    invoke-static {v0}, Lcom/coloros/ocs/base/a/b;->a(Ljava/lang/String;)V

    .line 82
    invoke-static {p0}, Lcom/coloros/ocs/base/common/api/c;->a(Lcom/coloros/ocs/base/common/api/ColorApi;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method protected getRemoteVersion()I
    .locals 1

    .line 99
    invoke-static {p0}, Lcom/coloros/ocs/base/common/api/c;->b(Lcom/coloros/ocs/base/common/api/ColorApi;)I

    move-result v0

    return v0
.end method

.method public abstract getVersion()I
.end method

.method public abstract hasFeature(Ljava/lang/String;)Z
.end method

.method protected abstract init()V
.end method

.method protected isConnected()Z
    .locals 1

    .line 86
    invoke-static {p0}, Lcom/coloros/ocs/base/common/api/c;->d(Lcom/coloros/ocs/base/common/api/ColorApi;)Z

    move-result v0

    return v0
.end method

.method protected releaseClientKey()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->c:Lcom/coloros/ocs/base/common/api/Api;

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/ocs/base/common/api/c;->a(Lcom/coloros/ocs/base/common/api/Api$ClientKey;)V

    .line 95
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/ColorApi;->c:Lcom/coloros/ocs/base/common/api/Api;

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/ocs/base/common/api/c;->b(Lcom/coloros/ocs/base/common/api/Api$ClientKey;)V

    return-void
.end method
