.class public Lcom/lahm/library/NDKUtil;
.super Ljava/lang/Object;
.source "NDKUtil.java"


# static fields
.field private static localLibLoader:Lcom/lahm/library/LibLoader; = null

.field private static volatile mIsLibLoaded:Z = false

.field private static volatile mIsNativeInited:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/lahm/library/NDKUtil$1;

    invoke-direct {v0}, Lcom/lahm/library/NDKUtil$1;-><init>()V

    sput-object v0, Lcom/lahm/library/NDKUtil;->localLibLoader:Lcom/lahm/library/LibLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    sget-object v0, Lcom/lahm/library/NDKUtil;->localLibLoader:Lcom/lahm/library/LibLoader;

    invoke-direct {p0, v0}, Lcom/lahm/library/NDKUtil;-><init>(Lcom/lahm/library/LibLoader;)V

    return-void
.end method

.method public constructor <init>(Lcom/lahm/library/LibLoader;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-direct {p0, p1}, Lcom/lahm/library/NDKUtil;->initNDK(Lcom/lahm/library/LibLoader;)V

    return-void
.end method

.method private initNDK(Lcom/lahm/library/LibLoader;)V
    .locals 0

    .line 57
    invoke-static {p1}, Lcom/lahm/library/NDKUtil;->loadLibrariesOnce(Lcom/lahm/library/LibLoader;)V

    .line 58
    invoke-direct {p0}, Lcom/lahm/library/NDKUtil;->initNativeOnce()V

    return-void
.end method

.method private initNativeOnce()V
    .locals 2

    .line 62
    const-class v0, Lcom/lahm/library/NDKUtil;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-boolean v1, Lcom/lahm/library/NDKUtil;->mIsNativeInited:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 65
    sput-boolean v1, Lcom/lahm/library/NDKUtil;->mIsNativeInited:Z

    .line 67
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static loadLibrariesOnce(Lcom/lahm/library/LibLoader;)V
    .locals 2

    .line 25
    const-class v0, Lcom/lahm/library/NDKUtil;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-boolean v1, Lcom/lahm/library/NDKUtil;->mIsLibLoaded:Z

    if-nez v1, :cond_1

    if-nez p0, :cond_0

    .line 28
    sget-object p0, Lcom/lahm/library/NDKUtil;->localLibLoader:Lcom/lahm/library/LibLoader;

    :cond_0
    const-string v1, "antitrace"

    .line 30
    invoke-interface {p0, v1}, Lcom/lahm/library/LibLoader;->loadLibrary(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 31
    sput-boolean p0, Lcom/lahm/library/NDKUtil;->mIsLibLoaded:Z

    .line 33
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static loadLibraryByName(Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, ""

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    const-class v0, Lcom/lahm/library/NDKUtil;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/lahm/library/NDKUtil;->localLibLoader:Lcom/lahm/library/LibLoader;

    invoke-interface {v1, p0}, Lcom/lahm/library/LibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 45
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
