.class final Lcom/coloros/ocs/base/common/api/BaseClient$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/ocs/base/common/api/BaseClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/ocs/base/common/api/BaseClient;


# direct methods
.method constructor <init>(Lcom/coloros/ocs/base/common/api/BaseClient;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/BaseClient$2;->a:Lcom/coloros/ocs/base/common/api/BaseClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 502
    invoke-static {}, Lcom/coloros/ocs/base/common/api/BaseClient;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "binderDied()"

    invoke-static {v0, v1}, Lcom/coloros/ocs/base/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient$2;->a:Lcom/coloros/ocs/base/common/api/BaseClient;

    invoke-static {v0}, Lcom/coloros/ocs/base/common/api/BaseClient;->f(Lcom/coloros/ocs/base/common/api/BaseClient;)Lcom/coloros/ocs/base/common/api/BaseClient$a;

    .line 504
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient$2;->a:Lcom/coloros/ocs/base/common/api/BaseClient;

    invoke-static {v0}, Lcom/coloros/ocs/base/common/api/BaseClient;->c(Lcom/coloros/ocs/base/common/api/BaseClient;)Lcom/coloros/ocs/base/IServiceBroker;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient$2;->a:Lcom/coloros/ocs/base/common/api/BaseClient;

    invoke-static {v0}, Lcom/coloros/ocs/base/common/api/BaseClient;->c(Lcom/coloros/ocs/base/common/api/BaseClient;)Lcom/coloros/ocs/base/IServiceBroker;

    move-result-object v0

    invoke-interface {v0}, Lcom/coloros/ocs/base/IServiceBroker;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient$2;->a:Lcom/coloros/ocs/base/common/api/BaseClient;

    .line 505
    invoke-static {v0}, Lcom/coloros/ocs/base/common/api/BaseClient;->c(Lcom/coloros/ocs/base/common/api/BaseClient;)Lcom/coloros/ocs/base/IServiceBroker;

    move-result-object v0

    invoke-interface {v0}, Lcom/coloros/ocs/base/IServiceBroker;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient$2;->a:Lcom/coloros/ocs/base/common/api/BaseClient;

    invoke-static {v0}, Lcom/coloros/ocs/base/common/api/BaseClient;->c(Lcom/coloros/ocs/base/common/api/BaseClient;)Lcom/coloros/ocs/base/IServiceBroker;

    move-result-object v0

    invoke-interface {v0}, Lcom/coloros/ocs/base/IServiceBroker;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/ocs/base/common/api/BaseClient$2;->a:Lcom/coloros/ocs/base/common/api/BaseClient;

    invoke-static {v1}, Lcom/coloros/ocs/base/common/api/BaseClient;->b(Lcom/coloros/ocs/base/common/api/BaseClient;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 507
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient$2;->a:Lcom/coloros/ocs/base/common/api/BaseClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/ocs/base/common/api/BaseClient;->a(Lcom/coloros/ocs/base/common/api/BaseClient;Lcom/coloros/ocs/base/IServiceBroker;)Lcom/coloros/ocs/base/IServiceBroker;

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient$2;->a:Lcom/coloros/ocs/base/common/api/BaseClient;

    invoke-static {v0}, Lcom/coloros/ocs/base/common/api/BaseClient;->g(Lcom/coloros/ocs/base/common/api/BaseClient;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient$2;->a:Lcom/coloros/ocs/base/common/api/BaseClient;

    invoke-static {v0}, Lcom/coloros/ocs/base/common/api/BaseClient;->d(Lcom/coloros/ocs/base/common/api/BaseClient;)Lcom/coloros/ocs/base/common/CapabilityInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient$2;->a:Lcom/coloros/ocs/base/common/api/BaseClient;

    invoke-static {v0}, Lcom/coloros/ocs/base/common/api/BaseClient;->e(Lcom/coloros/ocs/base/common/api/BaseClient;)I

    .line 511
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/BaseClient$2;->a:Lcom/coloros/ocs/base/common/api/BaseClient;

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/api/BaseClient;->connect()V

    :cond_1
    return-void
.end method
