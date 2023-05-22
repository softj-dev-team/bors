.class public final Lcom/coloros/ocs/mediaunit/MediaUnitClient;
.super Lcom/coloros/ocs/base/common/api/ColorApi;
.source "MediaUnitClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/ocs/base/common/api/ColorApi<",
        "Lcom/coloros/ocs/base/common/api/Api$ApiOptions$NoOptions;",
        "Lcom/coloros/ocs/mediaunit/MediaUnitClient;",
        ">;"
    }
.end annotation


# static fields
.field private static final API:Lcom/coloros/ocs/base/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/common/api/Api<",
            "Lcom/coloros/ocs/base/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final BIND_SERVICE_ACTION:Ljava/lang/String; = "com.coloros.opencapabilityservice"

.field private static final BIND_SERVICE_NAME:Ljava/lang/String; = "com.coloros.ocs.opencapabilityservice.capability.karaoke.KaraokeService"

.field private static final BIND_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.coloros.ocs.opencapabilityservice"

.field private static final CLIENT_BUILDER:Lcom/coloros/ocs/base/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/common/api/Api$AbstractClientBuilder<",
            "Lcom/coloros/ocs/mediaunit/MediaClient;",
            "Lcom/coloros/ocs/base/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final CLIENT_KEY:Lcom/coloros/ocs/base/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/common/api/Api$ClientKey<",
            "Lcom/coloros/ocs/mediaunit/MediaClient;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MediaUnitClientImpl"

.field private static sMediaUnitClient:Lcom/coloros/ocs/mediaunit/MediaUnitClient;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private final mICallBack:Landroid/os/IBinder;

.field private mService:Lcom/coloros/ocs/mediaunit/IKaraokeService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    new-instance v0, Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/coloros/ocs/base/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->CLIENT_KEY:Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    .line 32
    new-instance v1, Lcom/coloros/ocs/mediaunit/MediaClientBuilder;

    invoke-direct {v1}, Lcom/coloros/ocs/mediaunit/MediaClientBuilder;-><init>()V

    sput-object v1, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->CLIENT_BUILDER:Lcom/coloros/ocs/base/common/api/Api$AbstractClientBuilder;

    .line 34
    new-instance v2, Lcom/coloros/ocs/base/common/api/Api;

    const-string v3, "MediaClient.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/coloros/ocs/base/common/api/Api;-><init>(Ljava/lang/String;Lcom/coloros/ocs/base/common/api/Api$AbstractClientBuilder;Lcom/coloros/ocs/base/common/api/Api$ClientKey;)V

    sput-object v2, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->API:Lcom/coloros/ocs/base/common/api/Api;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 42
    sget-object v0, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->API:Lcom/coloros/ocs/base/common/api/Api;

    new-instance v1, Lcom/coloros/ocs/base/internal/ClientSettings;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/coloros/ocs/base/internal/ClientSettings;-><init>(Ljava/lang/String;ILjava/util/List;)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/coloros/ocs/base/common/api/ColorApi;-><init>(Landroid/content/Context;Lcom/coloros/ocs/base/common/api/Api;Lcom/coloros/ocs/base/common/api/Api$ApiOptions;Lcom/coloros/ocs/base/internal/ClientSettings;)V

    .line 36
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->mICallBack:Landroid/os/IBinder;

    .line 44
    iput-object p1, p0, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p0}, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/ocs/mediaunit/MediaUnitClient;)Lcom/coloros/ocs/mediaunit/IKaraokeService;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->mService:Lcom/coloros/ocs/mediaunit/IKaraokeService;

    return-object p0
.end method

.method static synthetic access$002(Lcom/coloros/ocs/mediaunit/MediaUnitClient;Lcom/coloros/ocs/mediaunit/IKaraokeService;)Lcom/coloros/ocs/mediaunit/IKaraokeService;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->mService:Lcom/coloros/ocs/mediaunit/IKaraokeService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/coloros/ocs/mediaunit/MediaUnitClient;)Landroid/os/IBinder;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->mICallBack:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/ocs/mediaunit/MediaUnitClient;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/ocs/mediaunit/MediaUnitClient;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->bindService()V

    return-void
.end method

.method private bindService()V
    .locals 4

    .line 78
    new-instance v0, Lcom/coloros/ocs/mediaunit/MediaUnitClient$1;

    invoke-direct {v0, p0}, Lcom/coloros/ocs/mediaunit/MediaUnitClient$1;-><init>(Lcom/coloros/ocs/mediaunit/MediaUnitClient;)V

    iput-object v0, p0, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->mConnection:Landroid/content/ServiceConnection;

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.coloros.opencapabilityservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.coloros.ocs.opencapabilityservice"

    const-string v3, "com.coloros.ocs.opencapabilityservice.capability.karaoke.KaraokeService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 95
    iget-object v1, p0, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private static checkRuntimeEnvironment(Landroid/content/Context;)V
    .locals 1

    .line 58
    new-instance v0, Lcom/coloros/ocs/mediaunit/MediaUnitClient;

    invoke-direct {v0, p0}, Lcom/coloros/ocs/mediaunit/MediaUnitClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->sMediaUnitClient:Lcom/coloros/ocs/mediaunit/MediaUnitClient;

    return-void
.end method

.method private destroy()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method protected static declared-synchronized initialize(Landroid/content/Context;)Lcom/coloros/ocs/mediaunit/MediaUnitClient;
    .locals 2

    const-class v0, Lcom/coloros/ocs/mediaunit/MediaUnitClient;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->sMediaUnitClient:Lcom/coloros/ocs/mediaunit/MediaUnitClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 50
    monitor-exit v0

    return-object v1

    .line 52
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->checkRuntimeEnvironment(Landroid/content/Context;)V

    .line 53
    sget-object p0, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->sMediaUnitClient:Lcom/coloros/ocs/mediaunit/MediaUnitClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static release()V
    .locals 1

    .line 155
    sget-object v0, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->sMediaUnitClient:Lcom/coloros/ocs/mediaunit/MediaUnitClient;

    invoke-direct {v0}, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->destroy()V

    return-void
.end method


# virtual methods
.method public abandonAudioLoopback()I
    .locals 3

    .line 126
    new-instance v0, Lcom/coloros/ocs/mediaunit/MediaUnitClient$4;

    invoke-direct {v0, p0}, Lcom/coloros/ocs/mediaunit/MediaUnitClient$4;-><init>(Lcom/coloros/ocs/mediaunit/MediaUnitClient;)V

    .line 139
    new-instance v1, Lcom/coloros/ocs/mediaunit/MediaUnitClient$5;

    invoke-direct {v1, p0}, Lcom/coloros/ocs/mediaunit/MediaUnitClient$5;-><init>(Lcom/coloros/ocs/mediaunit/MediaUnitClient;)V

    .line 146
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->doRegisterListener(Landroid/os/Looper;Lcom/coloros/ocs/base/common/api/TaskListenerHolder$SuccessNotifier;Lcom/coloros/ocs/base/common/api/TaskListenerHolder$FailureNotifier;)Lcom/coloros/ocs/base/task/Task;

    const/4 v0, 0x0

    return v0
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasFeature(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected init()V
    .locals 0

    return-void
.end method

.method public requestAudioLoopback()I
    .locals 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestAudioLoopback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->mICallBack:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaUnitClientImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v0, Lcom/coloros/ocs/mediaunit/MediaUnitClient$2;

    invoke-direct {v0, p0}, Lcom/coloros/ocs/mediaunit/MediaUnitClient$2;-><init>(Lcom/coloros/ocs/mediaunit/MediaUnitClient;)V

    .line 114
    new-instance v1, Lcom/coloros/ocs/mediaunit/MediaUnitClient$3;

    invoke-direct {v1, p0}, Lcom/coloros/ocs/mediaunit/MediaUnitClient$3;-><init>(Lcom/coloros/ocs/mediaunit/MediaUnitClient;)V

    .line 121
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->doRegisterListener(Landroid/os/Looper;Lcom/coloros/ocs/base/common/api/TaskListenerHolder$SuccessNotifier;Lcom/coloros/ocs/base/common/api/TaskListenerHolder$FailureNotifier;)Lcom/coloros/ocs/base/task/Task;

    const/4 v0, 0x0

    return v0
.end method
