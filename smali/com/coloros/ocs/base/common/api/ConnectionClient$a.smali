.class final Lcom/coloros/ocs/base/common/api/ConnectionClient$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/ocs/base/common/api/ConnectionClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/ocs/base/common/api/ConnectionClient;


# direct methods
.method private constructor <init>(Lcom/coloros/ocs/base/common/api/ConnectionClient;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/ConnectionClient$a;->a:Lcom/coloros/ocs/base/common/api/ConnectionClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/ocs/base/common/api/ConnectionClient;B)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/coloros/ocs/base/common/api/ConnectionClient$a;-><init>(Lcom/coloros/ocs/base/common/api/ConnectionClient;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 74
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/ConnectionClient$a;->a:Lcom/coloros/ocs/base/common/api/ConnectionClient;

    invoke-static {p1}, Lcom/coloros/ocs/base/common/api/ConnectionClient;->access$100(Lcom/coloros/ocs/base/common/api/ConnectionClient;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Lcom/coloros/ocs/base/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :try_start_0
    invoke-static {p2}, Lcom/coloros/ocs/base/IServiceBroker$Stub;->asInterface(Landroid/os/IBinder;)Lcom/coloros/ocs/base/IServiceBroker;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/ocs/base/common/api/ConnectionClient$a;->a:Lcom/coloros/ocs/base/common/api/ConnectionClient;

    invoke-static {p2}, Lcom/coloros/ocs/base/common/api/ConnectionClient;->access$200(Lcom/coloros/ocs/base/common/api/ConnectionClient;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "1.0.1"

    iget-object v1, p0, Lcom/coloros/ocs/base/common/api/ConnectionClient$a;->a:Lcom/coloros/ocs/base/common/api/ConnectionClient;

    invoke-static {v1}, Lcom/coloros/ocs/base/common/api/ConnectionClient;->access$300(Lcom/coloros/ocs/base/common/api/ConnectionClient;)Lcom/coloros/ocs/base/IAuthenticationListener;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lcom/coloros/ocs/base/IServiceBroker;->handleAuthentication(Ljava/lang/String;Ljava/lang/String;Lcom/coloros/ocs/base/IAuthenticationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 79
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 84
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/ConnectionClient$a;->a:Lcom/coloros/ocs/base/common/api/ConnectionClient;

    invoke-static {p1}, Lcom/coloros/ocs/base/common/api/ConnectionClient;->access$100(Lcom/coloros/ocs/base/common/api/ConnectionClient;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected()"

    invoke-static {p1, v0}, Lcom/coloros/ocs/base/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
