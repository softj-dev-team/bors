.class final Lcom/coloros/ocs/base/common/api/BaseClient$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/ocs/base/common/api/BaseClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/ocs/base/common/api/BaseClient;


# direct methods
.method private constructor <init>(Lcom/coloros/ocs/base/common/api/BaseClient;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/BaseClient$a;->a:Lcom/coloros/ocs/base/common/api/BaseClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/ocs/base/common/api/BaseClient;B)V
    .locals 0

    .line 469
    invoke-direct {p0, p1}, Lcom/coloros/ocs/base/common/api/BaseClient$a;-><init>(Lcom/coloros/ocs/base/common/api/BaseClient;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 472
    invoke-static {}, Lcom/coloros/ocs/base/common/api/BaseClient;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Lcom/coloros/ocs/base/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/BaseClient$a;->a:Lcom/coloros/ocs/base/common/api/BaseClient;

    invoke-static {p2}, Lcom/coloros/ocs/base/IServiceBroker$Stub;->asInterface(Landroid/os/IBinder;)Lcom/coloros/ocs/base/IServiceBroker;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/ocs/base/common/api/BaseClient;->a(Lcom/coloros/ocs/base/common/api/BaseClient;Lcom/coloros/ocs/base/IServiceBroker;)Lcom/coloros/ocs/base/IServiceBroker;

    .line 475
    :try_start_0
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/BaseClient$a;->a:Lcom/coloros/ocs/base/common/api/BaseClient;

    invoke-static {p1}, Lcom/coloros/ocs/base/common/api/BaseClient;->c(Lcom/coloros/ocs/base/common/api/BaseClient;)Lcom/coloros/ocs/base/IServiceBroker;

    move-result-object p1

    invoke-interface {p1}, Lcom/coloros/ocs/base/IServiceBroker;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/ocs/base/common/api/BaseClient$a;->a:Lcom/coloros/ocs/base/common/api/BaseClient;

    invoke-static {p2}, Lcom/coloros/ocs/base/common/api/BaseClient;->b(Lcom/coloros/ocs/base/common/api/BaseClient;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 477
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 479
    :goto_0
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/BaseClient$a;->a:Lcom/coloros/ocs/base/common/api/BaseClient;

    invoke-static {p1}, Lcom/coloros/ocs/base/common/api/BaseClient;->d(Lcom/coloros/ocs/base/common/api/BaseClient;)Lcom/coloros/ocs/base/common/CapabilityInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 480
    invoke-static {}, Lcom/coloros/ocs/base/common/api/BaseClient;->d()Ljava/lang/String;

    move-result-object p1

    const-string p2, "handle authenticate"

    invoke-static {p1, p2}, Lcom/coloros/ocs/base/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/BaseClient$a;->a:Lcom/coloros/ocs/base/common/api/BaseClient;

    invoke-static {p1}, Lcom/coloros/ocs/base/common/api/BaseClient;->a(Lcom/coloros/ocs/base/common/api/BaseClient;)Lcom/coloros/ocs/base/common/api/a;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/coloros/ocs/base/common/api/a;->sendEmptyMessage(I)Z

    return-void

    .line 483
    :cond_0
    invoke-static {}, Lcom/coloros/ocs/base/common/api/BaseClient;->d()Ljava/lang/String;

    move-result-object p1

    const-string p2, "handle reconnect"

    invoke-static {p1, p2}, Lcom/coloros/ocs/base/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x4

    .line 485
    iput p2, p1, Landroid/os/Message;->what:I

    .line 486
    iget-object p2, p0, Lcom/coloros/ocs/base/common/api/BaseClient$a;->a:Lcom/coloros/ocs/base/common/api/BaseClient;

    invoke-static {p2}, Lcom/coloros/ocs/base/common/api/BaseClient;->a(Lcom/coloros/ocs/base/common/api/BaseClient;)Lcom/coloros/ocs/base/common/api/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/coloros/ocs/base/common/api/a;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 491
    invoke-static {}, Lcom/coloros/ocs/base/common/api/BaseClient;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected()"

    invoke-static {p1, v0}, Lcom/coloros/ocs/base/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/BaseClient$a;->a:Lcom/coloros/ocs/base/common/api/BaseClient;

    invoke-static {p1}, Lcom/coloros/ocs/base/common/api/BaseClient;->e(Lcom/coloros/ocs/base/common/api/BaseClient;)I

    .line 494
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/BaseClient$a;->a:Lcom/coloros/ocs/base/common/api/BaseClient;

    invoke-static {p1}, Lcom/coloros/ocs/base/common/api/BaseClient;->f(Lcom/coloros/ocs/base/common/api/BaseClient;)Lcom/coloros/ocs/base/common/api/BaseClient$a;

    .line 495
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/BaseClient$a;->a:Lcom/coloros/ocs/base/common/api/BaseClient;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/ocs/base/common/api/BaseClient;->a(Lcom/coloros/ocs/base/common/api/BaseClient;Lcom/coloros/ocs/base/IServiceBroker;)Lcom/coloros/ocs/base/IServiceBroker;

    return-void
.end method
