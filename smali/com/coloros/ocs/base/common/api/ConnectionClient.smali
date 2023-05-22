.class public Lcom/coloros/ocs/base/common/api/ConnectionClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/ocs/base/common/api/ConnectionClient$a;
    }
.end annotation


# static fields
.field private static final BIND_SERVICE_INTENT_STRING:Ljava/lang/String; = "com.coloros.opencapabilityservice"

.field private static final BIND_SERVICE_NAME:Ljava/lang/String; = "com.coloros.ocs.opencapabilityservice.service.ColorOcsService"

.field private static final BIND_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.coloros.ocs.opencapabilityservice"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mClientName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/coloros/ocs/base/IAuthenticationListener;

.field private mServiceConnectionImpl:Lcom/coloros/ocs/base/common/api/ConnectionClient$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-class v0, Lcom/coloros/ocs/base/common/api/ConnectionClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/ocs/base/common/api/ConnectionClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/ocs/base/common/api/ConnectionClient;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/coloros/ocs/base/common/api/ConnectionClient;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/ocs/base/common/api/ConnectionClient;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/coloros/ocs/base/common/api/ConnectionClient;->mClientName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/ocs/base/common/api/ConnectionClient;)Lcom/coloros/ocs/base/IAuthenticationListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/coloros/ocs/base/common/api/ConnectionClient;->mListener:Lcom/coloros/ocs/base/IAuthenticationListener;

    return-object p0
.end method

.method private getServiceIntent()Landroid/content/Intent;
    .locals 4

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.coloros.opencapabilityservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/coloros/ocs/base/common/api/ConnectionClient;->TAG:Ljava/lang/String;

    const-string v2, "packageName = "

    const-string v3, "com.coloros.ocs.opencapabilityservice"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/ocs/base/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.coloros.ocs.opencapabilityservice.service.ColorOcsService"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public bind(Landroid/content/Context;Ljava/lang/String;Lcom/coloros/ocs/base/IAuthenticationListener;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/ConnectionClient;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 47
    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/ConnectionClient;->mContext:Landroid/content/Context;

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/ConnectionClient;->mClientName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 50
    iput-object p2, p0, Lcom/coloros/ocs/base/common/api/ConnectionClient;->mClientName:Ljava/lang/String;

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/ConnectionClient;->mListener:Lcom/coloros/ocs/base/IAuthenticationListener;

    if-nez p1, :cond_2

    .line 53
    iput-object p3, p0, Lcom/coloros/ocs/base/common/api/ConnectionClient;->mListener:Lcom/coloros/ocs/base/IAuthenticationListener;

    .line 56
    :cond_2
    new-instance p1, Lcom/coloros/ocs/base/common/api/ConnectionClient$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/coloros/ocs/base/common/api/ConnectionClient$a;-><init>(Lcom/coloros/ocs/base/common/api/ConnectionClient;B)V

    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/ConnectionClient;->mServiceConnectionImpl:Lcom/coloros/ocs/base/common/api/ConnectionClient$a;

    .line 57
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/ConnectionClient;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0}, Lcom/coloros/ocs/base/common/api/ConnectionClient;->getServiceIntent()Landroid/content/Intent;

    move-result-object p2

    iget-object p3, p0, Lcom/coloros/ocs/base/common/api/ConnectionClient;->mServiceConnectionImpl:Lcom/coloros/ocs/base/common/api/ConnectionClient$a;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 60
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/ConnectionClient;->TAG:Ljava/lang/String;

    const-string p2, "connection client bindService failed"

    invoke-static {p1, p2}, Lcom/coloros/ocs/base/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public unBind()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/ConnectionClient;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coloros/ocs/base/common/api/ConnectionClient;->mServiceConnectionImpl:Lcom/coloros/ocs/base/common/api/ConnectionClient$a;

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/ocs/base/common/api/ConnectionClient;->mServiceConnectionImpl:Lcom/coloros/ocs/base/common/api/ConnectionClient$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/coloros/ocs/base/common/api/ConnectionClient;->mServiceConnectionImpl:Lcom/coloros/ocs/base/common/api/ConnectionClient$a;

    :cond_0
    return-void
.end method
