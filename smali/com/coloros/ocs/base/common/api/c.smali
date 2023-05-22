.class Lcom/coloros/ocs/base/common/api/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/coloros/ocs/base/common/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# static fields
.field private static volatile d:Lcom/coloros/ocs/base/common/api/c;

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/coloros/ocs/base/common/api/Api$ClientKey;",
            "Lcom/coloros/ocs/base/common/api/ColorApiClient;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/coloros/ocs/base/common/api/Api$ClientKey;",
            "Lcom/coloros/ocs/base/common/api/ColorApiClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/coloros/ocs/base/common/a;

.field private b:Landroid/content/Context;

.field private c:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/coloros/ocs/base/common/api/c;->e:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/coloros/ocs/base/common/api/c;->f:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/c;->b:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/coloros/ocs/base/common/api/c;->c:Landroid/os/Looper;

    .line 66
    new-instance p1, Lcom/coloros/ocs/base/common/a;

    iget-object p2, p0, Lcom/coloros/ocs/base/common/api/c;->c:Landroid/os/Looper;

    invoke-direct {p1, p2, p0}, Lcom/coloros/ocs/base/common/a;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/c;->a:Lcom/coloros/ocs/base/common/a;

    return-void
.end method

.method private static a(Lcom/coloros/ocs/base/common/api/ColorApiClient;)I
    .locals 1

    .line 149
    invoke-interface {p0}, Lcom/coloros/ocs/base/common/api/ColorApiClient;->getAuthResult()Lcom/coloros/ocs/base/common/AuthResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-interface {p0}, Lcom/coloros/ocs/base/common/api/ColorApiClient;->getAuthResult()Lcom/coloros/ocs/base/common/AuthResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/AuthResult;->getErrrorCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method static a(Lcom/coloros/ocs/base/common/api/ColorApi;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "colorApi not be null"

    .line 157
    invoke-static {p0, v0}, Lcom/coloros/ocs/base/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/coloros/ocs/base/common/api/c;->e:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/ColorApi;->getApi()Lcom/coloros/ocs/base/common/api/Api;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lcom/coloros/ocs/base/common/api/c;->e:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/ColorApi;->getApi()Lcom/coloros/ocs/base/common/api/Api;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/ocs/base/common/api/ColorApiClient;

    if-eqz p0, :cond_0

    .line 161
    invoke-interface {p0}, Lcom/coloros/ocs/base/common/api/ColorApiClient;->getRemoteService()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/coloros/ocs/base/common/api/c;
    .locals 4

    .line 50
    sget-object v0, Lcom/coloros/ocs/base/common/api/c;->d:Lcom/coloros/ocs/base/common/api/c;

    if-nez v0, :cond_1

    .line 51
    const-class v0, Lcom/coloros/ocs/base/common/api/c;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/coloros/ocs/base/common/api/c;->d:Lcom/coloros/ocs/base/common/api/c;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ColorApiManager"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 54
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 55
    new-instance v2, Lcom/coloros/ocs/base/common/api/c;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lcom/coloros/ocs/base/common/api/c;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v2, Lcom/coloros/ocs/base/common/api/c;->d:Lcom/coloros/ocs/base/common/api/c;

    .line 57
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 60
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/ocs/base/common/api/c;->d:Lcom/coloros/ocs/base/common/api/c;

    return-object p0
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    .line 29
    sget-object v0, Lcom/coloros/ocs/base/common/api/c;->f:Ljava/util/Map;

    return-object v0
.end method

.method static a(Lcom/coloros/ocs/base/common/api/Api$ClientKey;)V
    .locals 1

    .line 222
    sget-object v0, Lcom/coloros/ocs/base/common/api/c;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static a(Lcom/coloros/ocs/base/common/api/ColorApi;Lcom/coloros/ocs/base/common/api/OnConnectionFailedListener;Landroid/os/Handler;)V
    .locals 2

    const-string v0, "colorApi not be null"

    .line 129
    invoke-static {p0, v0}, Lcom/coloros/ocs/base/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/coloros/ocs/base/common/api/c;->e:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/ColorApi;->getApi()Lcom/coloros/ocs/base/common/api/Api;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    sget-object v0, Lcom/coloros/ocs/base/common/api/c;->e:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/ColorApi;->getApi()Lcom/coloros/ocs/base/common/api/Api;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/ocs/base/common/api/ColorApiClient;

    if-eqz p0, :cond_0

    .line 133
    invoke-interface {p0, p1, p2}, Lcom/coloros/ocs/base/common/api/ColorApiClient;->setOnConnectionFailedListener(Lcom/coloros/ocs/base/common/api/OnConnectionFailedListener;Landroid/os/Handler;)V

    :cond_0
    return-void

    .line 136
    :cond_1
    sget-object p2, Lcom/coloros/ocs/base/common/api/c;->f:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/ColorApi;->getApi()Lcom/coloros/ocs/base/common/api/Api;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 137
    sget-object p2, Lcom/coloros/ocs/base/common/api/c;->f:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/ColorApi;->getApi()Lcom/coloros/ocs/base/common/api/Api;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/ocs/base/common/api/ColorApiClient;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 140
    new-instance p2, Lcom/coloros/ocs/base/common/ConnectionResult;

    invoke-static {p0}, Lcom/coloros/ocs/base/common/api/c;->a(Lcom/coloros/ocs/base/common/api/ColorApiClient;)I

    move-result p0

    invoke-direct {p2, p0}, Lcom/coloros/ocs/base/common/ConnectionResult;-><init>(I)V

    invoke-interface {p1, p2}, Lcom/coloros/ocs/base/common/api/OnConnectionFailedListener;->onConnectionFailed(Lcom/coloros/ocs/base/common/ConnectionResult;)V

    :cond_2
    return-void
.end method

.method static a(Lcom/coloros/ocs/base/common/api/ColorApi;Lcom/coloros/ocs/base/common/api/TaskListenerHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/coloros/ocs/base/common/api/ColorApi;",
            "Lcom/coloros/ocs/base/common/api/TaskListenerHolder<",
            "TT;>;)V"
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addQueue "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorApiManager"

    invoke-static {v1, v0}, Lcom/coloros/ocs/base/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "colorApi not be null"

    .line 202
    invoke-static {p0, v0}, Lcom/coloros/ocs/base/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/coloros/ocs/base/common/api/c;->e:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/ColorApi;->getApi()Lcom/coloros/ocs/base/common/api/Api;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    sget-object v0, Lcom/coloros/ocs/base/common/api/c;->e:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/ColorApi;->getApi()Lcom/coloros/ocs/base/common/api/Api;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/ocs/base/common/api/ColorApiClient;

    if-eqz p0, :cond_0

    .line 206
    invoke-interface {p0, p1}, Lcom/coloros/ocs/base/common/api/ColorApiClient;->addQueue(Lcom/coloros/ocs/base/common/api/TaskListenerHolder;)V

    :cond_0
    return-void

    .line 209
    :cond_1
    sget-object v0, Lcom/coloros/ocs/base/common/api/c;->f:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/ColorApi;->getApi()Lcom/coloros/ocs/base/common/api/Api;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    sget-object v0, Lcom/coloros/ocs/base/common/api/c;->f:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/ColorApi;->getApi()Lcom/coloros/ocs/base/common/api/Api;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/ocs/base/common/api/ColorApiClient;

    if-eqz p0, :cond_2

    .line 212
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;->getFailureNotifier()Lcom/coloros/ocs/base/common/api/TaskListenerHolder$FailureNotifier;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 213
    invoke-static {p0}, Lcom/coloros/ocs/base/common/api/c;->a(Lcom/coloros/ocs/base/common/api/ColorApiClient;)I

    move-result p0

    .line 214
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;->getFailureNotifier()Lcom/coloros/ocs/base/common/api/TaskListenerHolder$FailureNotifier;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/TaskListenerHolder;->getTask()Lcom/coloros/ocs/base/task/TaskImpl;

    move-result-object p1

    invoke-static {p0}, Lcom/coloros/ocs/base/common/constant/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p0, v1}, Lcom/coloros/ocs/base/common/api/TaskListenerHolder$FailureNotifier;->onNotifyListenerFailed(Lcom/coloros/ocs/base/task/TaskImpl;ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method static b(Lcom/coloros/ocs/base/common/api/ColorApi;)I
    .locals 2

    const-string v0, "colorApi not be null"

    .line 168
    invoke-static {p0, v0}, Lcom/coloros/ocs/base/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/coloros/ocs/base/common/api/c;->e:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/ColorApi;->getApi()Lcom/coloros/ocs/base/common/api/Api;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lcom/coloros/ocs/base/common/api/c;->e:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/ColorApi;->getApi()Lcom/coloros/ocs/base/common/api/Api;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/ocs/base/common/api/ColorApiClient;

    if-eqz p0, :cond_0

    .line 172
    invoke-interface {p0}, Lcom/coloros/ocs/base/common/api/ColorApiClient;->getRemoteVersion()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static b(Lcom/coloros/ocs/base/common/api/Api$ClientKey;)V
    .locals 1

    .line 226
    sget-object v0, Lcom/coloros/ocs/base/common/api/c;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static c(Lcom/coloros/ocs/base/common/api/ColorApi;)Lcom/coloros/ocs/base/common/AuthResult;
    .locals 2

    const-string v0, "colorApi not be null"

    .line 179
    invoke-static {p0, v0}, Lcom/coloros/ocs/base/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/coloros/ocs/base/common/api/c;->e:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/ColorApi;->getApi()Lcom/coloros/ocs/base/common/api/Api;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    sget-object v0, Lcom/coloros/ocs/base/common/api/c;->e:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/ColorApi;->getApi()Lcom/coloros/ocs/base/common/api/Api;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/ocs/base/common/api/ColorApiClient;

    if-eqz p0, :cond_0

    .line 183
    invoke-interface {p0}, Lcom/coloros/ocs/base/common/api/ColorApiClient;->getAuthResult()Lcom/coloros/ocs/base/common/AuthResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static d(Lcom/coloros/ocs/base/common/api/ColorApi;)Z
    .locals 2

    const-string v0, "colorApi not be null"

    .line 190
    invoke-static {p0, v0}, Lcom/coloros/ocs/base/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/coloros/ocs/base/common/api/c;->e:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/ColorApi;->getApi()Lcom/coloros/ocs/base/common/api/Api;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Lcom/coloros/ocs/base/common/api/c;->e:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/ColorApi;->getApi()Lcom/coloros/ocs/base/common/api/Api;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/ocs/base/common/api/ColorApiClient;

    if-eqz p0, :cond_0

    .line 194
    invoke-interface {p0}, Lcom/coloros/ocs/base/common/api/ColorApiClient;->isConnected()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method final a(Lcom/coloros/ocs/base/common/api/ColorApi;Lcom/coloros/ocs/base/common/api/OnConnectionSucceedListener;Landroid/os/Handler;)V
    .locals 2

    const-string v0, "colorApi not be null"

    .line 107
    invoke-static {p1, v0}, Lcom/coloros/ocs/base/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/coloros/ocs/base/common/api/c;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/ColorApi;->getApi()Lcom/coloros/ocs/base/common/api/Api;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    sget-object v0, Lcom/coloros/ocs/base/common/api/c;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/ColorApi;->getApi()Lcom/coloros/ocs/base/common/api/Api;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/ocs/base/common/api/ColorApiClient;

    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/ColorApi;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    .line 112
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 113
    :goto_0
    new-instance p3, Lcom/coloros/ocs/base/common/api/c$2;

    invoke-direct {p3, p0, p1, p2}, Lcom/coloros/ocs/base/common/api/c$2;-><init>(Lcom/coloros/ocs/base/common/api/c;Landroid/os/Looper;Lcom/coloros/ocs/base/common/api/OnConnectionSucceedListener;)V

    const/4 p1, 0x0

    .line 120
    invoke-virtual {p3, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 122
    :cond_1
    invoke-interface {v0, p2, p3}, Lcom/coloros/ocs/base/common/api/ColorApiClient;->setOnConnectionSucceedListener(Lcom/coloros/ocs/base/common/api/OnConnectionSucceedListener;Landroid/os/Handler;)V

    :cond_2
    return-void
.end method

.method final a(Lcom/coloros/ocs/base/common/api/ColorApi;Lcom/coloros/ocs/base/internal/ClientSettings;)V
    .locals 5

    const-string v0, "colorApi not be null"

    .line 86
    invoke-static {p1, v0}, Lcom/coloros/ocs/base/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "clientsettings not be null"

    .line 87
    invoke-static {p2, v0}, Lcom/coloros/ocs/base/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/coloros/ocs/base/common/api/c;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/ColorApi;->getApi()Lcom/coloros/ocs/base/common/api/Api;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ColorApiManager"

    const-string v1, "addColorClient"

    .line 89
    invoke-static {v0, v1}, Lcom/coloros/ocs/base/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v1, Lcom/coloros/ocs/base/common/api/d;

    iget-object v2, p0, Lcom/coloros/ocs/base/common/api/c;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/ColorApi;->getApi()Lcom/coloros/ocs/base/common/api/Api;

    move-result-object v3

    .line 1077
    iget-object v4, p1, Lcom/coloros/ocs/base/common/api/ColorApi;->a:Lcom/coloros/ocs/base/common/api/Api$ApiOptions;

    .line 90
    invoke-direct {v1, v2, v3, v4, p2}, Lcom/coloros/ocs/base/common/api/d;-><init>(Landroid/content/Context;Lcom/coloros/ocs/base/common/api/Api;Lcom/coloros/ocs/base/common/api/Api$ApiOptions;Lcom/coloros/ocs/base/internal/ClientSettings;)V

    .line 91
    new-instance p2, Lcom/coloros/ocs/base/common/api/c$1;

    invoke-direct {p2, p0, p1, v1}, Lcom/coloros/ocs/base/common/api/c$1;-><init>(Lcom/coloros/ocs/base/common/api/c;Lcom/coloros/ocs/base/common/api/ColorApi;Lcom/coloros/ocs/base/common/api/ColorApiClient;)V

    invoke-interface {v1, p2}, Lcom/coloros/ocs/base/common/api/ColorApiClient;->setOnClearListener(Lcom/coloros/ocs/base/common/api/e;)V

    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "getClientKey "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/ColorApi;->getApi()Lcom/coloros/ocs/base/common/api/Api;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "TAG"

    invoke-static {v2, p2}, Lcom/coloros/ocs/base/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object p2, Lcom/coloros/ocs/base/common/api/c;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/ColorApi;->getApi()Lcom/coloros/ocs/base/common/api/Api;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object v2

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "handlerConnect"

    .line 2070
    invoke-static {v0, p2}, Lcom/coloros/ocs/base/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    iget-object p2, p0, Lcom/coloros/ocs/base/common/api/c;->a:Lcom/coloros/ocs/base/common/a;

    invoke-virtual {p2}, Lcom/coloros/ocs/base/common/a;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    const/4 v0, 0x0

    .line 2072
    iput v0, p2, Landroid/os/Message;->what:I

    .line 2073
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2074
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/c;->a:Lcom/coloros/ocs/base/common/a;

    invoke-virtual {p1, p2}, Lcom/coloros/ocs/base/common/a;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handle message "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorApiManager"

    invoke-static {v1, v0}, Lcom/coloros/ocs/base/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/coloros/ocs/base/common/api/ColorApi;

    if-eqz p1, :cond_2

    .line 257
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/ColorApi;->getApi()Lcom/coloros/ocs/base/common/api/Api;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 258
    sget-object v0, Lcom/coloros/ocs/base/common/api/c;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/ColorApi;->getApi()Lcom/coloros/ocs/base/common/api/Api;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/ocs/base/common/api/ColorApiClient;

    if-eqz v0, :cond_2

    const-string v2, "colorApiClient is not null,will disconnect"

    .line 260
    invoke-static {v1, v2}, Lcom/coloros/ocs/base/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-interface {v0}, Lcom/coloros/ocs/base/common/api/ColorApiClient;->disconnect()V

    .line 262
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/ColorApi;->getApi()Lcom/coloros/ocs/base/common/api/Api;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/ocs/base/common/api/c;->a(Lcom/coloros/ocs/base/common/api/Api$ClientKey;)V

    .line 263
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/ColorApi;->getApi()Lcom/coloros/ocs/base/common/api/Api;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/ocs/base/common/api/c;->b(Lcom/coloros/ocs/base/common/api/Api$ClientKey;)V

    goto :goto_0

    :cond_1
    const-string v0, "handle connect"

    .line 243
    invoke-static {v1, v0}, Lcom/coloros/ocs/base/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/coloros/ocs/base/common/api/ColorApi;

    if-eqz p1, :cond_2

    .line 246
    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/ColorApi;->getApi()Lcom/coloros/ocs/base/common/api/Api;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 247
    sget-object v0, Lcom/coloros/ocs/base/common/api/c;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/ColorApi;->getApi()Lcom/coloros/ocs/base/common/api/Api;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/ocs/base/common/api/ColorApiClient;

    if-eqz p1, :cond_2

    const-string v0, "colorApiClient is not null,will connect"

    .line 249
    invoke-static {v1, v0}, Lcom/coloros/ocs/base/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-interface {p1}, Lcom/coloros/ocs/base/common/api/ColorApiClient;->connect()V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
