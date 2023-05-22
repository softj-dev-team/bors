.class Lcom/coloros/ocs/base/common/api/a;
.super Lcom/coloros/ocs/base/common/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/coloros/ocs/base/common/api/BaseClient;


# direct methods
.method private constructor <init>(Landroid/os/Looper;Lcom/coloros/ocs/base/common/api/BaseClient;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/coloros/ocs/base/common/a;-><init>(Landroid/os/Looper;)V

    .line 19
    const-class p1, Lcom/coloros/ocs/base/common/api/a;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/a;->a:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/coloros/ocs/base/common/api/a;->b:Lcom/coloros/ocs/base/common/api/BaseClient;

    return-void
.end method

.method static a(Lcom/coloros/ocs/base/common/api/BaseClient;)Lcom/coloros/ocs/base/common/api/a;
    .locals 2

    .line 24
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "base_client"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 26
    new-instance v1, Lcom/coloros/ocs/base/common/api/a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/coloros/ocs/base/common/api/a;-><init>(Landroid/os/Looper;Lcom/coloros/ocs/base/common/api/BaseClient;)V

    return-object v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 36
    iget v0, p1, Landroid/os/Message;->what:I

    .line 37
    iget-object v1, p0, Lcom/coloros/ocs/base/common/api/a;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "base client handler what "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/ocs/base/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eq v0, v2, :cond_4

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/a;->b:Lcom/coloros/ocs/base/common/api/BaseClient;

    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/BaseClient;->b()V

    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/a;->b:Lcom/coloros/ocs/base/common/api/BaseClient;

    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/BaseClient;->c()V

    return-void

    .line 46
    :cond_2
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/a;->b:Lcom/coloros/ocs/base/common/api/BaseClient;

    .line 2360
    iget-object v0, p1, Lcom/coloros/ocs/base/common/api/BaseClient;->h:Lcom/coloros/ocs/base/IServiceBroker;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/coloros/ocs/base/common/api/BaseClient;->h:Lcom/coloros/ocs/base/IServiceBroker;

    .line 2361
    invoke-interface {v0}, Lcom/coloros/ocs/base/IServiceBroker;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/coloros/ocs/base/common/api/BaseClient;->h:Lcom/coloros/ocs/base/IServiceBroker;

    .line 2362
    invoke-interface {v0}, Lcom/coloros/ocs/base/IServiceBroker;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2364
    :try_start_0
    sget-object v0, Lcom/coloros/ocs/base/common/api/BaseClient;->a:Ljava/lang/String;

    const-string v1, "thread handle authenticate"

    invoke-static {v0, v1}, Lcom/coloros/ocs/base/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2365
    iget-object v0, p1, Lcom/coloros/ocs/base/common/api/BaseClient;->h:Lcom/coloros/ocs/base/IServiceBroker;

    invoke-virtual {p1}, Lcom/coloros/ocs/base/common/api/BaseClient;->getClientName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1.0.1"

    new-instance v3, Lcom/coloros/ocs/base/common/api/BaseClient$1;

    invoke-direct {v3, p1}, Lcom/coloros/ocs/base/common/api/BaseClient$1;-><init>(Lcom/coloros/ocs/base/common/api/BaseClient;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/coloros/ocs/base/IServiceBroker;->handleAuthentication(Ljava/lang/String;Ljava/lang/String;Lcom/coloros/ocs/base/IAuthenticationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2387
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2388
    sget-object v0, Lcom/coloros/ocs/base/common/api/BaseClient;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the exception that service broker authenticates is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/ocs/base/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 43
    :cond_4
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/a;->b:Lcom/coloros/ocs/base/common/api/BaseClient;

    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1440
    sget-object v2, Lcom/coloros/ocs/base/common/api/BaseClient;->a:Ljava/lang/String;

    const-string v4, "onFailed time"

    invoke-static {v2, v4}, Lcom/coloros/ocs/base/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    iget-object v2, v0, Lcom/coloros/ocs/base/common/api/BaseClient;->e:Lcom/coloros/ocs/base/common/api/BaseClient$a;

    if-eqz v2, :cond_5

    .line 1442
    iget-object v2, v0, Lcom/coloros/ocs/base/common/api/BaseClient;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, v0, Lcom/coloros/ocs/base/common/api/BaseClient;->e:Lcom/coloros/ocs/base/common/api/BaseClient$a;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1443
    iput-object v1, v0, Lcom/coloros/ocs/base/common/api/BaseClient;->h:Lcom/coloros/ocs/base/IServiceBroker;

    .line 1445
    :cond_5
    iput v3, v0, Lcom/coloros/ocs/base/common/api/BaseClient;->b:I

    .line 1446
    invoke-static {p1}, Lcom/coloros/ocs/base/common/api/BaseClient;->b(I)Lcom/coloros/ocs/base/common/CapabilityInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/coloros/ocs/base/common/api/BaseClient;->d:Lcom/coloros/ocs/base/common/CapabilityInfo;

    .line 1447
    sget-object v1, Lcom/coloros/ocs/base/common/api/BaseClient;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "connect failed , error code is "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/ocs/base/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3ea

    if-eq p1, v1, :cond_6

    const/16 v1, 0x3eb

    if-eq p1, v1, :cond_6

    const/16 v1, 0x3ec

    if-eq p1, v1, :cond_6

    const/16 v1, 0x3ed

    if-eq p1, v1, :cond_6

    const/16 v1, 0x3ee

    if-eq p1, v1, :cond_6

    const/16 v1, 0x3ef

    if-eq p1, v1, :cond_6

    const/16 v1, 0x3f0

    if-ne p1, v1, :cond_7

    .line 1455
    :cond_6
    invoke-virtual {v0, p1}, Lcom/coloros/ocs/base/common/api/BaseClient;->a(I)V

    .line 1456
    iget-object p1, v0, Lcom/coloros/ocs/base/common/api/BaseClient;->f:Lcom/coloros/ocs/base/common/api/e;

    if-eqz p1, :cond_7

    .line 1457
    iget-object p1, v0, Lcom/coloros/ocs/base/common/api/BaseClient;->f:Lcom/coloros/ocs/base/common/api/e;

    invoke-interface {p1}, Lcom/coloros/ocs/base/common/api/e;->a()V

    :cond_7
    return-void

    .line 40
    :cond_8
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/a;->b:Lcom/coloros/ocs/base/common/api/BaseClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/coloros/ocs/base/common/CapabilityInfo;

    .line 1394
    sget-object v3, Lcom/coloros/ocs/base/common/api/BaseClient;->a:Ljava/lang/String;

    const-string v4, "onAuthenticateSucceed"

    invoke-static {v3, v4}, Lcom/coloros/ocs/base/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    iput v2, v0, Lcom/coloros/ocs/base/common/api/BaseClient;->b:I

    .line 1396
    iput-object p1, v0, Lcom/coloros/ocs/base/common/api/BaseClient;->d:Lcom/coloros/ocs/base/common/CapabilityInfo;

    .line 1404
    sget-object p1, Lcom/coloros/ocs/base/common/api/BaseClient;->a:Ljava/lang/String;

    const-string v2, "handleAuthenticateSuccess"

    invoke-static {p1, v2}, Lcom/coloros/ocs/base/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    iget-object p1, v0, Lcom/coloros/ocs/base/common/api/BaseClient;->g:Lcom/coloros/ocs/base/common/api/b;

    if-nez p1, :cond_9

    .line 1406
    invoke-virtual {v0, v1}, Lcom/coloros/ocs/base/common/api/BaseClient;->a(Landroid/os/Handler;)V

    .line 1408
    :cond_9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v1, 0x64

    .line 1409
    iput v1, p1, Landroid/os/Message;->what:I

    .line 1410
    iget-object v1, v0, Lcom/coloros/ocs/base/common/api/BaseClient;->g:Lcom/coloros/ocs/base/common/api/b;

    invoke-virtual {v1, p1}, Lcom/coloros/ocs/base/common/api/b;->sendMessage(Landroid/os/Message;)Z

    .line 1400
    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/api/BaseClient;->a()V

    return-void
.end method
