.class public Lio/agora/rtc/internal/RtcEngineImpl;
.super Lio/agora/rtc/RtcEngineEx;
.source "RtcEngineImpl.java"

# interfaces
.implements Lio/agora/rtc/IAudioEffectManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "RtcEngine"

.field public static final VIDEO_SOURCE_TYPE_CUSTOMIZED:I = 0x2

.field public static final VIDEO_SOURCE_TYPE_DEFAULT:I = 0x1

.field private static final VIDEO_SOURCE_TYPE_EXTERNAL_DEPRECATED:I = 0x3

.field public static final VIDEO_SOURCE_TYPE_NULL:I = 0x0

.field private static sLibLoaded:Z = false

.field static sMatrix:[F


# instance fields
.field faceRectArr:[Lio/agora/rtc/IRtcEngineEventHandler$AgoraFacePositionInfo;

.field private lastOrientationTs:J

.field private mChannelProfile:I

.field private mClientRole:I

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultRtcChannel:Lio/agora/rtc/internal/RtcChannelImpl;

.field private mExAudioChannels:I

.field private mExAudioSampleRate:I

.field private mLocalVideoEnabled:Z

.field private mNativeHandle:J

.field private final mRtcChannels:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lio/agora/rtc/internal/RtcChannelImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mRtcHandlers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lio/agora/rtc/IRtcEngineEventHandler;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRtcStats:Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;

.field private mTotalRotation:I

.field private mUseLocalView:Z

.field private mVideoSourceType:I

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 2252
    fill-array-data v0, :array_0

    sput-object v0, Lio/agora/rtc/internal/RtcEngineImpl;->sMatrix:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "appId",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Lio/agora/rtc/RtcEngineEx;-><init>()V

    const/4 v0, 0x1

    .line 86
    iput v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mVideoSourceType:I

    const/4 v1, 0x0

    .line 87
    iput-boolean v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mLocalVideoEnabled:Z

    .line 88
    iput-boolean v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mUseLocalView:Z

    .line 89
    iput v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mExAudioSampleRate:I

    .line 90
    iput v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mExAudioChannels:I

    const-wide/16 v1, 0x0

    .line 91
    iput-wide v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->lastOrientationTs:J

    const/16 v3, 0x3e8

    .line 92
    iput v3, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mTotalRotation:I

    .line 93
    iput-wide v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    .line 97
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mRtcHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    .line 98
    iput-object v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mDefaultRtcChannel:Lio/agora/rtc/internal/RtcChannelImpl;

    .line 99
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mRtcChannels:Ljava/util/LinkedList;

    .line 100
    iput-object v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mRtcStats:Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;

    .line 104
    iput-object v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 105
    iput v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mChannelProfile:I

    const/4 v0, 0x2

    .line 106
    iput v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mClientRole:I

    .line 173
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mContext:Ljava/lang/ref/WeakReference;

    .line 174
    invoke-virtual {p0, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->addHandler(Lio/agora/rtc/IRtcEngineEventHandler;)V

    .line 189
    invoke-static {p1}, Lio/agora/rtc/audio/HardwareEarbackController;->getInstance(Landroid/content/Context;)Lio/agora/rtc/audio/HardwareEarbackController;

    move-result-object p3

    invoke-virtual {p3}, Lio/agora/rtc/audio/HardwareEarbackController;->isHardwareEarbackSupported()Z

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 190
    invoke-direct/range {v0 .. v8}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeObjectInit(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    return-void
.end method

.method public constructor <init>(Lio/agora/rtc/RtcEngineConfig;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 197
    invoke-direct {p0}, Lio/agora/rtc/RtcEngineEx;-><init>()V

    const/4 v0, 0x1

    .line 86
    iput v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mVideoSourceType:I

    const/4 v1, 0x0

    .line 87
    iput-boolean v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mLocalVideoEnabled:Z

    .line 88
    iput-boolean v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mUseLocalView:Z

    .line 89
    iput v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mExAudioSampleRate:I

    .line 90
    iput v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mExAudioChannels:I

    const-wide/16 v1, 0x0

    .line 91
    iput-wide v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->lastOrientationTs:J

    const/16 v3, 0x3e8

    .line 92
    iput v3, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mTotalRotation:I

    .line 93
    iput-wide v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    .line 97
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mRtcHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    .line 98
    iput-object v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mDefaultRtcChannel:Lio/agora/rtc/internal/RtcChannelImpl;

    .line 99
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mRtcChannels:Ljava/util/LinkedList;

    .line 100
    iput-object v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mRtcStats:Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;

    .line 104
    iput-object v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 105
    iput v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mChannelProfile:I

    const/4 v0, 0x2

    .line 106
    iput v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mClientRole:I

    .line 198
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p1, Lio/agora/rtc/RtcEngineConfig;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mContext:Ljava/lang/ref/WeakReference;

    .line 199
    iget-object v0, p1, Lio/agora/rtc/RtcEngineConfig;->mEventHandler:Lio/agora/rtc/IRtcEngineEventHandler;

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->addHandler(Lio/agora/rtc/IRtcEngineEventHandler;)V

    .line 200
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeObjectInitWithConfig(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    return-void
.end method

.method public static checkIfInUIThread(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 163
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "RtcEngine"

    if-ne v0, v1, :cond_0

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in UI Thread"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not in UI Thread"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private declared-synchronized checkStatus()Z
    .locals 5

    monitor-enter p0

    .line 2835
    :try_start_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 2837
    monitor-exit p0

    return v0

    .line 2836
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RtcEngine does not initialize or it may be destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private checkVoipPermissions(Landroid/content/Context;I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "clientRole"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, -0x9

    const-string v2, "RtcEngine"

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    :try_start_0
    const-string p2, "android.permission.INTERNET"

    .line 136
    invoke-direct {p0, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->checkVoipPermissions(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Do not have Internet permission!"

    .line 138
    invoke-static {v2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 127
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->checkVoipPermissions(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    const/4 p1, 0x0

    return p1

    :catch_1
    move-exception p1

    const-string p2, "Do not have enough permission! "

    .line 129
    invoke-static {v2, p2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private checkVoipPermissions(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "android.permission.INTERNET"

    .line 115
    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->checkVoipPermissions(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 116
    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->checkVoipPermissions(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "android.permission.MODIFY_AUDIO_SETTINGS"

    .line 117
    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->checkVoipPermissions(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    iget v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mVideoSourceType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mLocalVideoEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "android.permission.CAMERA"

    .line 119
    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->checkVoipPermissions(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkVoipPermissions(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "perm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 112
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not granted"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private native deliverFrame(J[BIIIIIIIJI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "buf",
            "stride",
            "height",
            "cropLeft",
            "cropTop",
            "cropRight",
            "cropBottom",
            "rotation",
            "ts",
            "format"
        }
    .end annotation
.end method

.method private doCheckPermission(Landroid/content/Context;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 503
    iget v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mChannelProfile:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 504
    iget v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mClientRole:I

    .line 505
    :cond_0
    invoke-direct {p0, p1, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->checkVoipPermissions(Landroid/content/Context;I)I

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "RtcEngine"

    const-string v0, "can\'t join channel because no permission"

    .line 506
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x9

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private doJoinChannelCheck(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 513
    invoke-direct {p0}, Lio/agora/rtc/internal/RtcEngineImpl;->joinChannelFirstTimeOrAllChannelLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->doMonitorSystemEvent(Landroid/content/Context;)V

    .line 516
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->doCheckPermission(Landroid/content/Context;)I

    :cond_0
    return-void
.end method

.method private doLeaveChannelCheck()V
    .locals 1

    .line 521
    invoke-direct {p0}, Lio/agora/rtc/internal/RtcEngineImpl;->joinChannelFirstTimeOrAllChannelLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    invoke-direct {p0}, Lio/agora/rtc/internal/RtcEngineImpl;->doStopMonitorSystemEvent()V

    :cond_0
    return-void
.end method

.method private doMonitorSystemEvent(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 487
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 490
    :cond_1
    invoke-static {p1}, Lio/agora/rtc/internal/Connectivity;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    return-void

    :cond_2
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    .line 492
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 495
    :cond_3
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz p1, :cond_4

    .line 496
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    const-string p1, "RtcEngine"

    const-string v0, "hp connection mode detected"

    .line 497
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private doStopMonitorSystemEvent()V
    .locals 2

    .line 552
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    const-string v0, "RtcEngine"

    const-string v1, "hp connection mode ended"

    .line 554
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static varargs formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "args"
        }
    .end annotation

    .line 1043
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAssetsCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "filePath"
        }
    .end annotation

    .line 338
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wm_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v2, "_"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 343
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :try_start_1
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 349
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v3, 0x0

    .line 350
    invoke-virtual {p2, v0, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 353
    :cond_1
    :try_start_3
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 356
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 358
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p1

    :catchall_0
    move-exception v0

    .line 353
    :try_start_5
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 354
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p2

    .line 356
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 357
    throw p2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    .line 360
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected static getLocalHost()Ljava/lang/String;
    .locals 4

    .line 2478
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2479
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 2480
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "usb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 2482
    :cond_1
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2483
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 2484
    invoke-static {v2}, Lio/agora/rtc/internal/RtcEngineImpl;->inetAddressToIpAddress(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2485
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_2

    return-object v2

    :catch_0
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private getOptionsByVideoProfile(I)Lio/agora/rtc/internal/RtcEngineMessage$PVideoNetOptions;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "profile"
        }
    .end annotation

    .line 2218
    :try_start_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-static {v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetOptionsByVideoProfile(JI)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2220
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PVideoNetOptions;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PVideoNetOptions;-><init>()V

    .line 2221
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PVideoNetOptions;->unmarshall([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static inetAddressToIpAddress(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 2465
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2466
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 2467
    check-cast p0, Ljava/net/Inet4Address;

    .line 2468
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2469
    :cond_0
    instance-of p0, p0, Ljava/net/Inet6Address;

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized initializeNativeLibs()Z
    .locals 2

    const-class v0, Lio/agora/rtc/internal/RtcEngineImpl;

    monitor-enter v0

    .line 154
    :try_start_0
    sget-boolean v1, Lio/agora/rtc/internal/RtcEngineImpl;->sLibLoaded:Z

    if-nez v1, :cond_1

    .line 156
    invoke-static {}, Lio/agora/rtc/internal/RtcEngineImpl;->loadNativeLibrary()V

    .line 157
    invoke-static {}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeClassInit()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lio/agora/rtc/internal/RtcEngineImpl;->sLibLoaded:Z

    .line 159
    :cond_1
    sget-boolean v1, Lio/agora/rtc/internal/RtcEngineImpl;->sLibLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private joinChannelFirstTimeOrAllChannelLeft()Z
    .locals 4

    .line 2796
    monitor-enter p0

    .line 2797
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mDefaultRtcChannel:Lio/agora/rtc/internal/RtcChannelImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 2799
    iget-object v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mRtcChannels:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/agora/rtc/internal/RtcChannelImpl;

    .line 2800
    invoke-virtual {v3}, Lio/agora/rtc/internal/RtcChannelImpl;->hasJoined()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 2806
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 2807
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized loadNativeLibrary()V
    .locals 2

    const-class v0, Lio/agora/rtc/internal/RtcEngineImpl;

    monitor-enter v0

    :try_start_0
    const-string v1, "agora-rtc-sdk"

    .line 150
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private native nativeAddInjectStreamUrl(JLjava/lang/String;[B)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "url",
            "config"
        }
    .end annotation
.end method

.method private native nativeAddLocalVideoRender(JLio/agora/rtc/mediaio/IVideoSink;I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "render",
            "type"
        }
    .end annotation
.end method

.method private native nativeAddPublishStreamUrl(JLjava/lang/String;Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "url",
            "transcodingEnabled"
        }
    .end annotation
.end method

.method private native nativeAddRemoteVideoRender(JILio/agora/rtc/mediaio/IVideoSink;I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "uid",
            "render",
            "type"
        }
    .end annotation
.end method

.method private native nativeAddVideoCapturer(JLio/agora/rtc/mediaio/IVideoSource;I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "capturer",
            "type"
        }
    .end annotation
.end method

.method private native nativeAddVideoWatermark(JLjava/lang/String;ZIIIIIIII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "url",
            "visibleInPreivew",
            "lx",
            "ly",
            "lwidth",
            "lheight",
            "px",
            "py",
            "pwidth",
            "pheight"
        }
    .end annotation
.end method

.method private static native nativeClassInit()I
.end method

.method private native nativeClearVideoWatermarks(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method private native nativeComplain(JLjava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "callId",
            "description"
        }
    .end annotation
.end method

.method private native nativeCreateDataStream(JZZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "reliable",
            "ordered"
        }
    .end annotation
.end method

.method private native nativeCreateRtcChannel(JLjava/lang/String;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "channel"
        }
    .end annotation
.end method

.method private native nativeDestroy(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method private native nativeDisableVideo(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method private native nativeEnableEncryption(JZILjava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "enabled",
            "encryptionMode",
            "encryptionKey"
        }
    .end annotation
.end method

.method private native nativeEnableLocalAudio(JZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "enabled"
        }
    .end annotation
.end method

.method private native nativeEnableVideo(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method private native nativeGetCallId(J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method public static native nativeGetChatEngineVersion()Ljava/lang/String;
.end method

.method private native nativeGetConncetionState(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method private native nativeGetDefaultRtcChannel(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method public static native nativeGetErrorDescription(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "err"
        }
    .end annotation
.end method

.method private native nativeGetHandle(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method private native nativeGetIntParameter(JLjava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "parameter",
            "args"
        }
    .end annotation
.end method

.method private static native nativeGetOptionsByVideoProfile(JI)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "profile"
        }
    .end annotation
.end method

.method private native nativeGetParameter(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "parameter",
            "args"
        }
    .end annotation
.end method

.method private native nativeGetParameters(JLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "parameters"
        }
    .end annotation
.end method

.method private native nativeGetProfile(J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method public static native nativeGetSdkVersion()Ljava/lang/String;
.end method

.method private native nativeGetUserInfoByUid(JILjava/lang/Object;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "userAccount",
            "userInfo"
        }
    .end annotation
.end method

.method private native nativeGetUserInfoByUserAccount(JLjava/lang/String;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "userAccount",
            "userInfo"
        }
    .end annotation
.end method

.method private native nativeIsSpeakerphoneEnabled(J)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method private native nativeJoinChannel(J[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "appContext",
            "token",
            "channelName",
            "info",
            "uid"
        }
    .end annotation
.end method

.method private native nativeJoinChannelWithUserAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "token",
            "channelName",
            "userAccount"
        }
    .end annotation
.end method

.method private native nativeLeaveChannel(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method static native nativeLog(ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "level",
            "msg"
        }
    .end annotation
.end method

.method private native nativeMakeQualityReportUrl(JLjava/lang/String;III)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "channel",
            "listenerUid",
            "speakerUid",
            "format"
        }
    .end annotation
.end method

.method private native nativeMuteAllRemoteVideoStreams(JZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "muted"
        }
    .end annotation
.end method

.method private native nativeMuteLocalVideoStream(JZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "muted"
        }
    .end annotation
.end method

.method private native nativeObjectInit(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "appId",
            "deviceId",
            "deviceInfo",
            "systemInfo",
            "appStorageDir",
            "cacheDir",
            "pluginDir"
        }
    .end annotation
.end method

.method private native nativeObjectInitWithConfig(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation
.end method

.method private native nativePullAudioFrame(J[BI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "data",
            "length"
        }
    .end annotation
.end method

.method private native nativePushExternalAudioFrameRawData(J[BJII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "data",
            "timestamp",
            "frequency",
            "channels"
        }
    .end annotation
.end method

.method private native nativeRate(JLjava/lang/String;ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "callId",
            "rating",
            "description"
        }
    .end annotation
.end method

.method private native nativeRegisterAudioFrameObserver(JLjava/lang/Object;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "observer"
        }
    .end annotation
.end method

.method private native nativeRegisterLocalUserAccount(JLjava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "appId",
            "userAccount"
        }
    .end annotation
.end method

.method private native nativeRegisterMediaMetadataObserver(JLjava/lang/Object;I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "observer",
            "type"
        }
    .end annotation
.end method

.method private native nativeRemoveInjectStreamUrl(JLjava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "url"
        }
    .end annotation
.end method

.method private native nativeRemovePublishStreamUrl(JLjava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "url"
        }
    .end annotation
.end method

.method private native nativeRemoveVideoReceiveTrack(JI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "uid"
        }
    .end annotation
.end method

.method private native nativeRenewChannelKey(JLjava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "channelKey"
        }
    .end annotation
.end method

.method private native nativeRenewToken(JLjava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "token"
        }
    .end annotation
.end method

.method private native nativeRtcChannelRelease(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method private native nativeSendCustomReportMessage(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "id",
            "category",
            "event",
            "label",
            "value"
        }
    .end annotation
.end method

.method private native nativeSendStreamMessage(JI[B)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "streamId",
            "data"
        }
    .end annotation
.end method

.method private native nativeSetApiCallMode(JI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "syncCallTimeout"
        }
    .end annotation
.end method

.method private native nativeSetAppType(JI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "appType"
        }
    .end annotation
.end method

.method private native nativeSetAudioProfile(JII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "profile",
            "scenario"
        }
    .end annotation
.end method

.method private native nativeSetBeautyEffectOptions(JZIFFF)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "enabled",
            "contrastLevel",
            "lighteningLevel",
            "smoothnessLevel",
            "rednessLevel"
        }
    .end annotation
.end method

.method private native nativeSetChannelProfile(JI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "profile"
        }
    .end annotation
.end method

.method private native nativeSetClientRole(JI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "role"
        }
    .end annotation
.end method

.method private native nativeSetDefaultAudioRoutetoSpeakerphone(JZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "defaultToSpeaker"
        }
    .end annotation
.end method

.method private native nativeSetEGL10Context(JLjavax/microedition/khronos/egl/EGLContext;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "sharedContext"
        }
    .end annotation
.end method

.method private native nativeSetEGL10TextureId(JILjavax/microedition/khronos/egl/EGLContext;IIIJ[F)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "id",
            "sharedContext",
            "format",
            "width",
            "height",
            "ts",
            "matrix"
        }
    .end annotation
.end method

.method private native nativeSetEGL14Context(JLandroid/opengl/EGLContext;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "sharedContext"
        }
    .end annotation
.end method

.method private native nativeSetEGL14TextureId(JILandroid/opengl/EGLContext;IIIJ[F)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "id",
            "sharedContext",
            "format",
            "width",
            "height",
            "ts",
            "matrix"
        }
    .end annotation
.end method

.method private native nativeSetEnableSpeakerphone(JZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "speakerOn"
        }
    .end annotation
.end method

.method private native nativeSetEncryptionSecret(JLjava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "secret"
        }
    .end annotation
.end method

.method private native nativeSetLiveTranscoding(J[B)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "transcoding"
        }
    .end annotation
.end method

.method private native nativeSetLocalVideoMirrorMode(JI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "mirrorMode"
        }
    .end annotation
.end method

.method private native nativeSetParameters(JLjava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "parameters"
        }
    .end annotation
.end method

.method private native nativeSetProfile(JLjava/lang/String;Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "profile",
            "merge"
        }
    .end annotation
.end method

.method private native nativeSetRemoteRenderMode(JII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "uid",
            "renderMode"
        }
    .end annotation
.end method

.method private native nativeSetRemoteRenderModeWithMirrorMode(JIII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "uid",
            "renderMode",
            "mirrorMode"
        }
    .end annotation
.end method

.method private native nativeSetRemoteUserPriority(JII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "uid",
            "userPriority"
        }
    .end annotation
.end method

.method private native nativeSetScreenCaptureContentHint(JI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "hint"
        }
    .end annotation
.end method

.method private native nativeSetVideoEncoderConfiguration(JIIIIIIIII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "width",
            "height",
            "frameRate",
            "minFrameRate",
            "bitrate",
            "minBitrate",
            "orientationMode",
            "degradationPrefer",
            "mirrorMode"
        }
    .end annotation
.end method

.method private native nativeSetVideoProfileEx(JIIII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "width",
            "height",
            "frameRate",
            "bitrate"
        }
    .end annotation
.end method

.method private native nativeSetupVideoLocal(JLandroid/view/View;II)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "view",
            "renderMode",
            "mirrorMode"
        }
    .end annotation
.end method

.method private native nativeSetupVideoRemote(JLandroid/view/View;ILjava/lang/String;II)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "view",
            "renderMode",
            "channel",
            "uid",
            "mirrorMode"
        }
    .end annotation
.end method

.method private native nativeStartChannelMediaRelay(J[B)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "channelMediaRelayInfos"
        }
    .end annotation
.end method

.method private native nativeStartDumpVideoReceiveTrack(JILjava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "uid",
            "dumpFile"
        }
    .end annotation
.end method

.method private native nativeStartEchoTest(J[B)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "appContext"
        }
    .end annotation
.end method

.method private native nativeStartEchoTestWithInterval(J[BI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "appContext",
            "intervalInSeconds"
        }
    .end annotation
.end method

.method private native nativeStartLastmileProbeTest(J[BZZII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "appContext",
            "probeUplink",
            "probeDownlink",
            "expectedUplinkBitrate",
            "expectedDownlinkBitrate"
        }
    .end annotation
.end method

.method private native nativeStartPreview(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method private native nativeStopChannelMediaRelay(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method private native nativeStopDumpVideoReceiveTrack(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method private native nativeStopEchoTest(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method private native nativeStopLastmileProbeTest(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method private native nativeSwitchCamera(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method private native nativeSwitchCameraByDirection(JI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "position"
        }
    .end annotation
.end method

.method private native nativeSwitchChannel(JLjava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "token",
            "channelName"
        }
    .end annotation
.end method

.method private native nativeUpdateChannelMediaRelay(J[B)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "channelMediaRelayInfos"
        }
    .end annotation
.end method

.method private onApiCallExecuted([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "evt",
            "handler"
        }
    .end annotation

    .line 1910
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PApiCallExecuted;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PApiCallExecuted;-><init>()V

    .line 1911
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PApiCallExecuted;->unmarshall([B)V

    .line 1912
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PApiCallExecuted;->error:I

    iget-object v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PApiCallExecuted;->api:Ljava/lang/String;

    iget-object v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PApiCallExecuted;->result:Ljava/lang/String;

    invoke-virtual {p2, p1, v1, v0}, Lio/agora/rtc/IRtcEngineEventHandler;->onApiCallExecuted(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onAudioPublishStateChanged([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "evt",
            "handler"
        }
    .end annotation

    .line 2012
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PPublishAudioState;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PPublishAudioState;-><init>()V

    .line 2013
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PPublishAudioState;->unmarshall([B)V

    .line 2014
    iget-object p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PPublishAudioState;->channel:Ljava/lang/String;

    iget v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PPublishAudioState;->oldstate:I

    iget v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$PPublishAudioState;->newstate:I

    iget v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PPublishAudioState;->elapsed:I

    invoke-virtual {p2, p1, v1, v2, v0}, Lio/agora/rtc/IRtcEngineEventHandler;->onAudioPublishStateChanged(Ljava/lang/String;III)V

    return-void
.end method

.method private onAudioSubscribeStateChanged([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "evt",
            "handler"
        }
    .end annotation

    .line 2024
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PSubscribeAudioState;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PSubscribeAudioState;-><init>()V

    .line 2025
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PSubscribeAudioState;->unmarshall([B)V

    .line 2026
    iget-object v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$PSubscribeAudioState;->channel:Ljava/lang/String;

    iget v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$PSubscribeAudioState;->uid:I

    iget v4, v0, Lio/agora/rtc/internal/RtcEngineMessage$PSubscribeAudioState;->oldstate:I

    iget v5, v0, Lio/agora/rtc/internal/RtcEngineMessage$PSubscribeAudioState;->newstate:I

    iget v6, v0, Lio/agora/rtc/internal/RtcEngineMessage$PSubscribeAudioState;->elapsed:I

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lio/agora/rtc/IRtcEngineEventHandler;->onAudioSubscribeStateChanged(Ljava/lang/String;IIII)V

    return-void
.end method

.method private onCameraExposureAreaChanged([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "evt",
            "handler"
        }
    .end annotation

    .line 1928
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PCameraExposureAreaChanged;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PCameraExposureAreaChanged;-><init>()V

    .line 1929
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PCameraExposureAreaChanged;->unmarshall([B)V

    .line 1930
    new-instance p1, Landroid/graphics/Rect;

    iget v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PCameraExposureAreaChanged;->x:I

    iget v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$PCameraExposureAreaChanged;->y:I

    iget v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$PCameraExposureAreaChanged;->x:I

    iget v4, v0, Lio/agora/rtc/internal/RtcEngineMessage$PCameraExposureAreaChanged;->width:I

    add-int/2addr v3, v4

    iget v4, v0, Lio/agora/rtc/internal/RtcEngineMessage$PCameraExposureAreaChanged;->y:I

    iget v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PCameraExposureAreaChanged;->height:I

    add-int/2addr v4, v0

    invoke-direct {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onCameraExposureAreaChanged(Landroid/graphics/Rect;)V

    return-void
.end method

.method private onCameraFocusAreaChanged([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "evt",
            "handler"
        }
    .end annotation

    .line 1922
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PCameraFocusAreaChanged;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PCameraFocusAreaChanged;-><init>()V

    .line 1923
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PCameraFocusAreaChanged;->unmarshall([B)V

    .line 1924
    new-instance p1, Landroid/graphics/Rect;

    iget v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PCameraFocusAreaChanged;->x:I

    iget v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$PCameraFocusAreaChanged;->y:I

    iget v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$PCameraFocusAreaChanged;->x:I

    iget v4, v0, Lio/agora/rtc/internal/RtcEngineMessage$PCameraFocusAreaChanged;->width:I

    add-int/2addr v3, v4

    iget v4, v0, Lio/agora/rtc/internal/RtcEngineMessage$PCameraFocusAreaChanged;->y:I

    iget v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PCameraFocusAreaChanged;->height:I

    add-int/2addr v4, v0

    invoke-direct {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onCameraFocusAreaChanged(Landroid/graphics/Rect;)V

    return-void
.end method

.method private onChannelMediaRelayEvent([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "handler"
        }
    .end annotation

    .line 2164
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PCrossChannelEvent;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PCrossChannelEvent;-><init>()V

    .line 2165
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PCrossChannelEvent;->unmarshall([B)V

    .line 2166
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PCrossChannelEvent;->code:I

    invoke-virtual {p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onChannelMediaRelayEvent(I)V

    return-void
.end method

.method private onChannelMediaRelayStateChanged([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "handler"
        }
    .end annotation

    .line 2152
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PCrossChannelState;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PCrossChannelState;-><init>()V

    .line 2153
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PCrossChannelState;->unmarshall([B)V

    .line 2154
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PCrossChannelState;->state:I

    iget v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PCrossChannelState;->code:I

    invoke-virtual {p2, p1, v0}, Lio/agora/rtc/IRtcEngineEventHandler;->onChannelMediaRelayStateChanged(II)V

    return-void
.end method

.method private onFacePositionChanged([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "evt",
            "handler"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1937
    :cond_0
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;-><init>()V

    .line 1938
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;->unmarshall([B)V

    const/4 p1, 0x0

    .line 1939
    iput-object p1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->faceRectArr:[Lio/agora/rtc/IRtcEngineEventHandler$AgoraFacePositionInfo;

    .line 1941
    iget-object p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;->rectArr:[Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue$FaceRect;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;->rectArr:[Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue$FaceRect;

    array-length p1, p1

    if-lez p1, :cond_1

    .line 1943
    iget-object p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;->rectArr:[Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue$FaceRect;

    array-length p1, p1

    new-array p1, p1, [Lio/agora/rtc/IRtcEngineEventHandler$AgoraFacePositionInfo;

    iput-object p1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->faceRectArr:[Lio/agora/rtc/IRtcEngineEventHandler$AgoraFacePositionInfo;

    .line 1945
    :goto_0
    iget-object p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;->rectArr:[Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue$FaceRect;

    array-length p1, p1

    if-ge v1, p1, :cond_2

    .line 1947
    iget-object p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;->rectArr:[Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue$FaceRect;

    aget-object p1, p1, v1

    .line 1948
    new-instance v2, Lio/agora/rtc/IRtcEngineEventHandler$AgoraFacePositionInfo;

    invoke-direct {v2}, Lio/agora/rtc/IRtcEngineEventHandler$AgoraFacePositionInfo;-><init>()V

    .line 1949
    iget v3, p1, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue$FaceRect;->x:I

    iput v3, v2, Lio/agora/rtc/IRtcEngineEventHandler$AgoraFacePositionInfo;->x:I

    .line 1950
    iget v3, p1, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue$FaceRect;->y:I

    iput v3, v2, Lio/agora/rtc/IRtcEngineEventHandler$AgoraFacePositionInfo;->y:I

    .line 1951
    iget v3, p1, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue$FaceRect;->width:I

    iput v3, v2, Lio/agora/rtc/IRtcEngineEventHandler$AgoraFacePositionInfo;->width:I

    .line 1952
    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue$FaceRect;->height:I

    iput p1, v2, Lio/agora/rtc/IRtcEngineEventHandler$AgoraFacePositionInfo;->height:I

    .line 1953
    iget-object p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;->disArr:[I

    aget p1, p1, v1

    iput p1, v2, Lio/agora/rtc/IRtcEngineEventHandler$AgoraFacePositionInfo;->distance:I

    .line 1955
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->faceRectArr:[Lio/agora/rtc/IRtcEngineEventHandler$AgoraFacePositionInfo;

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v1, [Lio/agora/rtc/IRtcEngineEventHandler$AgoraFacePositionInfo;

    .line 1958
    iput-object p1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->faceRectArr:[Lio/agora/rtc/IRtcEngineEventHandler$AgoraFacePositionInfo;

    .line 1960
    :cond_2
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;->imageWidth:I

    iget v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFaceDetectValue;->imageHeight:I

    iget-object v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->faceRectArr:[Lio/agora/rtc/IRtcEngineEventHandler$AgoraFacePositionInfo;

    invoke-virtual {p2, p1, v0, v1}, Lio/agora/rtc/IRtcEngineEventHandler;->onFacePositionChanged(II[Lio/agora/rtc/IRtcEngineEventHandler$AgoraFacePositionInfo;)V

    return-void
.end method

.method private onFirstLocalAudioFrame([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "handler"
        }
    .end annotation

    .line 2134
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstLocalAudioFrame;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PFirstLocalAudioFrame;-><init>()V

    .line 2135
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PFirstLocalAudioFrame;->unmarshall([B)V

    .line 2136
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstLocalAudioFrame;->elapsed:I

    invoke-virtual {p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onFirstLocalAudioFrame(I)V

    return-void
.end method

.method private onFirstLocalAudioFramePublished([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "handler"
        }
    .end annotation

    .line 2140
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstLocalAudioFramePublished;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PFirstLocalAudioFramePublished;-><init>()V

    .line 2141
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PFirstLocalAudioFramePublished;->unmarshall([B)V

    .line 2142
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstLocalAudioFramePublished;->elapsed:I

    invoke-virtual {p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onFirstLocalAudioFramePublished(I)V

    return-void
.end method

.method private onFirstLocalVideoFrame([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "evt",
            "handler"
        }
    .end annotation

    .line 2072
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstLocalVideoFrame;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PFirstLocalVideoFrame;-><init>()V

    .line 2073
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PFirstLocalVideoFrame;->unmarshall([B)V

    .line 2074
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstLocalVideoFrame;->width:I

    iget v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstLocalVideoFrame;->height:I

    iget v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstLocalVideoFrame;->elapsed:I

    invoke-virtual {p2, p1, v1, v0}, Lio/agora/rtc/IRtcEngineEventHandler;->onFirstLocalVideoFrame(III)V

    return-void
.end method

.method private onFirstLocalVideoFramePublished([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "evt",
            "handler"
        }
    .end annotation

    .line 2078
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstLocalVideoFramePublished;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PFirstLocalVideoFramePublished;-><init>()V

    .line 2079
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PFirstLocalVideoFramePublished;->unmarshall([B)V

    .line 2080
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstLocalVideoFramePublished;->elapsed:I

    invoke-virtual {p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onFirstLocalVideoFramePublished(I)V

    return-void
.end method

.method private onFirstRemoteAudioFrame([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "handler"
        }
    .end annotation

    .line 2146
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteAudioFrame;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteAudioFrame;-><init>()V

    .line 2147
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteAudioFrame;->unmarshall([B)V

    .line 2148
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteAudioFrame;->uid:I

    iget v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteAudioFrame;->elapsed:I

    invoke-virtual {p2, p1, v0}, Lio/agora/rtc/IRtcEngineEventHandler;->onFirstRemoteAudioFrame(II)V

    return-void
.end method

.method private onFirstRemoteVideoDecoded([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "evt",
            "handler"
        }
    .end annotation

    .line 1916
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteVideoDecoded;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteVideoDecoded;-><init>()V

    .line 1917
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteVideoDecoded;->unmarshall([B)V

    .line 1918
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteVideoDecoded;->uid:I

    iget v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteVideoDecoded;->width:I

    iget v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteVideoDecoded;->height:I

    iget v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteVideoDecoded;->elapsed:I

    invoke-virtual {p2, p1, v1, v2, v0}, Lio/agora/rtc/IRtcEngineEventHandler;->onFirstRemoteVideoDecoded(IIII)V

    return-void
.end method

.method private onFirstRemoteVideoFrame([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "handler"
        }
    .end annotation

    .line 2128
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteVideoFrame;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteVideoFrame;-><init>()V

    .line 2129
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteVideoFrame;->unmarshall([B)V

    .line 2130
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteVideoFrame;->uid:I

    iget v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteVideoFrame;->width:I

    iget v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteVideoFrame;->height:I

    iget v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PFirstRemoteVideoFrame;->elapsed:I

    invoke-virtual {p2, p1, v1, v2, v0}, Lio/agora/rtc/IRtcEngineEventHandler;->onFirstRemoteVideoFrame(IIII)V

    return-void
.end method

.method private onLocalAudioStat([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "handler"
        }
    .end annotation

    .line 2116
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalAudioStat;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalAudioStat;-><init>()V

    .line 2117
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalAudioStat;->unmarshall([B)V

    .line 2118
    iget-object p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalAudioStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalAudioStats;

    invoke-virtual {p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onLocalAudioStats(Lio/agora/rtc/IRtcEngineEventHandler$LocalAudioStats;)V

    return-void
.end method

.method private onLocalVideoStat([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "handler"
        }
    .end annotation

    .line 2122
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;-><init>()V

    .line 2123
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->unmarshall([B)V

    .line 2124
    iget-object p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PLocalVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;

    invoke-virtual {p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onLocalVideoStats(Lio/agora/rtc/IRtcEngineEventHandler$LocalVideoStats;)V

    return-void
.end method

.method private onLogEvent(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "level",
            "message"
        }
    .end annotation

    return-void
.end method

.method private onRemoteAudioStat([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "handler"
        }
    .end annotation

    .line 2100
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;-><init>()V

    .line 2101
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->unmarshall([B)V

    .line 2102
    iget-object p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;

    iget p1, p1, Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;->uid:I

    if-nez p1, :cond_0

    return-void

    .line 2104
    :cond_0
    iget-object p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;

    invoke-virtual {p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onRemoteAudioStats(Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;)V

    return-void
.end method

.method private onRemoteAudioStateChanged([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "evt",
            "handler"
        }
    .end annotation

    .line 1976
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioState;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioState;-><init>()V

    .line 1977
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioState;->unmarshall([B)V

    .line 1978
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioState;->uid:I

    iget v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioState;->state:I

    iget v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioState;->reason:I

    iget v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioState;->elapsed:I

    invoke-virtual {p2, p1, v1, v2, v0}, Lio/agora/rtc/IRtcEngineEventHandler;->onRemoteAudioStateChanged(IIII)V

    return-void
.end method

.method private onRemoteVideoStat([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "handler"
        }
    .end annotation

    .line 2084
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStat;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStat;-><init>()V

    .line 2085
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStat;->unmarshall([B)V

    .line 2086
    iget-object p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteVideoStats;

    iget p1, p1, Lio/agora/rtc/IRtcEngineEventHandler$RemoteVideoStats;->uid:I

    if-nez p1, :cond_0

    return-void

    .line 2088
    :cond_0
    iget-object p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteVideoStats;

    invoke-virtual {p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onRemoteVideoStats(Lio/agora/rtc/IRtcEngineEventHandler$RemoteVideoStats;)V

    return-void
.end method

.method private onRemoteVideoStateChangedExt([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "evt",
            "handler"
        }
    .end annotation

    .line 2036
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStateExt;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStateExt;-><init>()V

    .line 2037
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStateExt;->unmarshall([B)V

    .line 2038
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStateExt;->uid:I

    iget v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStateExt;->state:I

    iget v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStateExt;->reason:I

    iget v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStateExt;->elapsed:I

    invoke-virtual {p2, p1, v1, v2, v0}, Lio/agora/rtc/IRtcEngineEventHandler;->onRemoteVideoStateChanged(IIII)V

    return-void
.end method

.method private onRtcChannelAudioPublishStateChanged([BLio/agora/rtc/IRtcChannelEventHandler;Lio/agora/rtc/internal/RtcChannelImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "evt",
            "handler",
            "rtcChannel"
        }
    .end annotation

    .line 1988
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PPublishAudioState;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PPublishAudioState;-><init>()V

    .line 1989
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PPublishAudioState;->unmarshall([B)V

    .line 1990
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PPublishAudioState;->oldstate:I

    iget v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PPublishAudioState;->newstate:I

    iget v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PPublishAudioState;->elapsed:I

    invoke-virtual {p2, p3, p1, v1, v0}, Lio/agora/rtc/IRtcChannelEventHandler;->onAudioPublishStateChanged(Lio/agora/rtc/RtcChannel;III)V

    return-void
.end method

.method private onRtcChannelAudioSubscribeStateChanged([BLio/agora/rtc/IRtcChannelEventHandler;Lio/agora/rtc/internal/RtcChannelImpl;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "evt",
            "handler",
            "rtcChannel"
        }
    .end annotation

    .line 2000
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PSubscribeAudioState;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PSubscribeAudioState;-><init>()V

    .line 2001
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PSubscribeAudioState;->unmarshall([B)V

    .line 2002
    iget v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$PSubscribeAudioState;->uid:I

    iget v4, v0, Lio/agora/rtc/internal/RtcEngineMessage$PSubscribeAudioState;->oldstate:I

    iget v5, v0, Lio/agora/rtc/internal/RtcEngineMessage$PSubscribeAudioState;->newstate:I

    iget v6, v0, Lio/agora/rtc/internal/RtcEngineMessage$PSubscribeAudioState;->elapsed:I

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Lio/agora/rtc/IRtcChannelEventHandler;->onAudioSubscribeStateChanged(Lio/agora/rtc/RtcChannel;IIII)V

    return-void
.end method

.method private onRtcChannelChannelMediaRelayEvent([BLio/agora/rtc/IRtcChannelEventHandler;Lio/agora/rtc/internal/RtcChannelImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "handler",
            "rtcChannel"
        }
    .end annotation

    .line 2170
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PCrossChannelEvent;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PCrossChannelEvent;-><init>()V

    .line 2171
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PCrossChannelEvent;->unmarshall([B)V

    .line 2172
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PCrossChannelEvent;->code:I

    invoke-virtual {p2, p3, p1}, Lio/agora/rtc/IRtcChannelEventHandler;->onChannelMediaRelayEvent(Lio/agora/rtc/RtcChannel;I)V

    return-void
.end method

.method private onRtcChannelChannelMediaRelayStateChanged([BLio/agora/rtc/IRtcChannelEventHandler;Lio/agora/rtc/internal/RtcChannelImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "handler",
            "rtcChannel"
        }
    .end annotation

    .line 2158
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PCrossChannelState;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PCrossChannelState;-><init>()V

    .line 2159
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PCrossChannelState;->unmarshall([B)V

    .line 2160
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PCrossChannelState;->state:I

    iget v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PCrossChannelState;->code:I

    invoke-virtual {p2, p3, p1, v0}, Lio/agora/rtc/IRtcChannelEventHandler;->onChannelMediaRelayStateChanged(Lio/agora/rtc/RtcChannel;II)V

    return-void
.end method

.method private onRtcChannelRemoteAudioStat([BLio/agora/rtc/IRtcChannelEventHandler;Lio/agora/rtc/internal/RtcChannelImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "handler",
            "rtcChannel"
        }
    .end annotation

    .line 2108
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;-><init>()V

    .line 2109
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->unmarshall([B)V

    .line 2110
    iget-object p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;

    iget p1, p1, Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;->uid:I

    if-nez p1, :cond_0

    return-void

    .line 2112
    :cond_0
    iget-object p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;

    invoke-virtual {p2, p3, p1}, Lio/agora/rtc/IRtcChannelEventHandler;->onRemoteAudioStats(Lio/agora/rtc/RtcChannel;Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;)V

    return-void
.end method

.method private onRtcChannelRemoteAudioStateChanged([BLio/agora/rtc/IRtcChannelEventHandler;Lio/agora/rtc/internal/RtcChannelImpl;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "evt",
            "handler",
            "rtcChannel"
        }
    .end annotation

    .line 1982
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioState;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioState;-><init>()V

    .line 1983
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioState;->unmarshall([B)V

    .line 1984
    iget v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioState;->uid:I

    iget v4, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioState;->state:I

    iget v5, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioState;->reason:I

    iget v6, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteAudioState;->elapsed:I

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Lio/agora/rtc/IRtcChannelEventHandler;->onRemoteAudioStateChanged(Lio/agora/rtc/RtcChannel;IIII)V

    return-void
.end method

.method private onRtcChannelRemoteVideoStat([BLio/agora/rtc/IRtcChannelEventHandler;Lio/agora/rtc/internal/RtcChannelImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "handler",
            "rtcChannel"
        }
    .end annotation

    .line 2092
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStat;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStat;-><init>()V

    .line 2093
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStat;->unmarshall([B)V

    .line 2094
    iget-object p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteVideoStats;

    iget p1, p1, Lio/agora/rtc/IRtcEngineEventHandler$RemoteVideoStats;->uid:I

    if-nez p1, :cond_0

    return-void

    .line 2096
    :cond_0
    iget-object p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStat;->stats:Lio/agora/rtc/IRtcEngineEventHandler$RemoteVideoStats;

    invoke-virtual {p2, p3, p1}, Lio/agora/rtc/IRtcChannelEventHandler;->onRemoteVideoStats(Lio/agora/rtc/RtcChannel;Lio/agora/rtc/IRtcEngineEventHandler$RemoteVideoStats;)V

    return-void
.end method

.method private onRtcChannelRemoteVideoStateChangedExt([BLio/agora/rtc/IRtcChannelEventHandler;Lio/agora/rtc/internal/RtcChannelImpl;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "evt",
            "handler",
            "rtcChannel"
        }
    .end annotation

    .line 2042
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStateExt;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStateExt;-><init>()V

    .line 2043
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStateExt;->unmarshall([B)V

    .line 2044
    iget v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStateExt;->uid:I

    iget v4, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStateExt;->state:I

    iget v5, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStateExt;->reason:I

    iget v6, v0, Lio/agora/rtc/internal/RtcEngineMessage$PRemoteVideoStateExt;->elapsed:I

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Lio/agora/rtc/IRtcChannelEventHandler;->onRemoteVideoStateChanged(Lio/agora/rtc/RtcChannel;IIII)V

    return-void
.end method

.method private onRtcChannelStreamMessage([BLio/agora/rtc/IRtcChannelEventHandler;Lio/agora/rtc/internal/RtcChannelImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "evt",
            "handler",
            "rtcChannel"
        }
    .end annotation

    .line 2054
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessage;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessage;-><init>()V

    .line 2055
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessage;->unmarshall([B)V

    .line 2056
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessage;->uid:I

    iget v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessage;->streamId:I

    iget-object v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessage;->payload:[B

    invoke-virtual {p2, p3, p1, v1, v0}, Lio/agora/rtc/IRtcChannelEventHandler;->onStreamMessage(Lio/agora/rtc/RtcChannel;II[B)V

    return-void
.end method

.method private onRtcChannelStreamMessageError([BLio/agora/rtc/IRtcChannelEventHandler;Lio/agora/rtc/internal/RtcChannelImpl;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "evt",
            "handler",
            "rtcChannel"
        }
    .end annotation

    .line 2066
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessageError;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessageError;-><init>()V

    .line 2067
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessageError;->unmarshall([B)V

    .line 2068
    iget v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessageError;->uid:I

    iget v4, v0, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessageError;->streamId:I

    iget v5, v0, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessageError;->error:I

    iget v6, v0, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessageError;->missed:I

    iget v7, v0, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessageError;->cached:I

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v1 .. v7}, Lio/agora/rtc/IRtcChannelEventHandler;->onStreamMessageError(Lio/agora/rtc/RtcChannel;IIIII)V

    return-void
.end method

.method private onRtcChannelVideoPublishStateChanged([BLio/agora/rtc/IRtcChannelEventHandler;Lio/agora/rtc/internal/RtcChannelImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "evt",
            "handler",
            "rtcChannel"
        }
    .end annotation

    .line 1994
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PPublishVideoState;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PPublishVideoState;-><init>()V

    .line 1995
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PPublishVideoState;->unmarshall([B)V

    .line 1996
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PPublishVideoState;->oldstate:I

    iget v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PPublishVideoState;->newstate:I

    iget v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PPublishVideoState;->elapsed:I

    invoke-virtual {p2, p3, p1, v1, v0}, Lio/agora/rtc/IRtcChannelEventHandler;->onVideoPublishStateChanged(Lio/agora/rtc/RtcChannel;III)V

    return-void
.end method

.method private onRtcChannelVideoSizeChanged([BLio/agora/rtc/IRtcChannelEventHandler;Lio/agora/rtc/internal/RtcChannelImpl;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "evt",
            "handler",
            "rtcChannel"
        }
    .end annotation

    .line 1970
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PVideoSizeChanged;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PVideoSizeChanged;-><init>()V

    .line 1971
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PVideoSizeChanged;->unmarshall([B)V

    .line 1972
    iget v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$PVideoSizeChanged;->uid:I

    iget v4, v0, Lio/agora/rtc/internal/RtcEngineMessage$PVideoSizeChanged;->width:I

    iget v5, v0, Lio/agora/rtc/internal/RtcEngineMessage$PVideoSizeChanged;->height:I

    iget v6, v0, Lio/agora/rtc/internal/RtcEngineMessage$PVideoSizeChanged;->rotation:I

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Lio/agora/rtc/IRtcChannelEventHandler;->onVideoSizeChanged(Lio/agora/rtc/RtcChannel;IIII)V

    return-void
.end method

.method private onRtcChannelVideoSubscribeStateChanged([BLio/agora/rtc/IRtcChannelEventHandler;Lio/agora/rtc/internal/RtcChannelImpl;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "evt",
            "handler",
            "rtcChannel"
        }
    .end annotation

    .line 2006
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PSubscribeVideoState;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PSubscribeVideoState;-><init>()V

    .line 2007
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PSubscribeVideoState;->unmarshall([B)V

    .line 2008
    iget v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$PSubscribeVideoState;->uid:I

    iget v4, v0, Lio/agora/rtc/internal/RtcEngineMessage$PSubscribeVideoState;->oldstate:I

    iget v5, v0, Lio/agora/rtc/internal/RtcEngineMessage$PSubscribeVideoState;->newstate:I

    iget v6, v0, Lio/agora/rtc/internal/RtcEngineMessage$PSubscribeVideoState;->elapsed:I

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Lio/agora/rtc/IRtcChannelEventHandler;->onVideoSubscribeStateChanged(Lio/agora/rtc/RtcChannel;IIII)V

    return-void
.end method

.method private onSpeakersReport([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "evt",
            "handler"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 2178
    :cond_0
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport;-><init>()V

    .line 2179
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport;->unmarshall([B)V

    .line 2180
    iget-object p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport;->speakers:[Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport$Speaker;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport;->speakers:[Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport$Speaker;

    array-length p1, p1

    if-ltz p1, :cond_2

    .line 2181
    iget-object p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport;->speakers:[Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport$Speaker;

    array-length p1, p1

    new-array p1, p1, [Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;

    .line 2182
    :goto_0
    iget-object v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport;->speakers:[Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport$Speaker;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 2183
    new-instance v2, Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;

    invoke-direct {v2}, Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;-><init>()V

    aput-object v2, p1, v1

    .line 2184
    aget-object v2, p1, v1

    iget-object v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport;->speakers:[Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport$Speaker;

    aget-object v3, v3, v1

    iget v3, v3, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport$Speaker;->uid:I

    iput v3, v2, Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;->uid:I

    .line 2185
    aget-object v2, p1, v1

    iget-object v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport;->speakers:[Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport$Speaker;

    aget-object v3, v3, v1

    iget v3, v3, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport$Speaker;->volume:I

    iput v3, v2, Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;->volume:I

    .line 2186
    aget-object v2, p1, v1

    iget-object v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport;->speakers:[Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport$Speaker;

    aget-object v3, v3, v1

    iget v3, v3, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport$Speaker;->vad:I

    iput v3, v2, Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;->vad:I

    .line 2187
    aget-object v2, p1, v1

    iget-object v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport;->speakers:[Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport$Speaker;

    aget-object v3, v3, v1

    iget-object v3, v3, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport$Speaker;->channelId:Ljava/lang/String;

    iput-object v3, v2, Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;->channelId:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2189
    :cond_1
    iget v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResSpeakersReport;->mixVolume:I

    invoke-virtual {p2, p1, v0}, Lio/agora/rtc/IRtcEngineEventHandler;->onAudioVolumeIndication([Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;I)V

    goto :goto_1

    :cond_2
    new-array p1, v1, [Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;

    .line 2191
    invoke-virtual {p2, p1, v1}, Lio/agora/rtc/IRtcEngineEventHandler;->onAudioVolumeIndication([Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;I)V

    :goto_1
    return-void
.end method

.method private onStreamMessage([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "evt",
            "handler"
        }
    .end annotation

    .line 2048
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessage;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessage;-><init>()V

    .line 2049
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessage;->unmarshall([B)V

    .line 2050
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessage;->uid:I

    iget v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessage;->streamId:I

    iget-object v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessage;->payload:[B

    invoke-virtual {p2, p1, v1, v0}, Lio/agora/rtc/IRtcEngineEventHandler;->onStreamMessage(II[B)V

    return-void
.end method

.method private onStreamMessageError([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "evt",
            "handler"
        }
    .end annotation

    .line 2060
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessageError;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessageError;-><init>()V

    .line 2061
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessageError;->unmarshall([B)V

    .line 2062
    iget v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessageError;->uid:I

    iget v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessageError;->streamId:I

    iget v4, v0, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessageError;->error:I

    iget v5, v0, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessageError;->missed:I

    iget v6, v0, Lio/agora/rtc/internal/RtcEngineMessage$PStreamMessageError;->cached:I

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lio/agora/rtc/IRtcEngineEventHandler;->onStreamMessageError(IIIII)V

    return-void
.end method

.method private onVideoPublishStateChanged([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "evt",
            "handler"
        }
    .end annotation

    .line 2018
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PPublishVideoState;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PPublishVideoState;-><init>()V

    .line 2019
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PPublishVideoState;->unmarshall([B)V

    .line 2020
    iget-object p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PPublishVideoState;->channel:Ljava/lang/String;

    iget v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PPublishVideoState;->oldstate:I

    iget v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$PPublishVideoState;->newstate:I

    iget v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PPublishVideoState;->elapsed:I

    invoke-virtual {p2, p1, v1, v2, v0}, Lio/agora/rtc/IRtcEngineEventHandler;->onVideoPublishStateChanged(Ljava/lang/String;III)V

    return-void
.end method

.method private onVideoSizeChanged([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "evt",
            "handler"
        }
    .end annotation

    .line 1964
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PVideoSizeChanged;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PVideoSizeChanged;-><init>()V

    .line 1965
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PVideoSizeChanged;->unmarshall([B)V

    .line 1966
    iget p1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PVideoSizeChanged;->uid:I

    iget v1, v0, Lio/agora/rtc/internal/RtcEngineMessage$PVideoSizeChanged;->width:I

    iget v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$PVideoSizeChanged;->height:I

    iget v0, v0, Lio/agora/rtc/internal/RtcEngineMessage$PVideoSizeChanged;->rotation:I

    invoke-virtual {p2, p1, v1, v2, v0}, Lio/agora/rtc/IRtcEngineEventHandler;->onVideoSizeChanged(IIII)V

    return-void
.end method

.method private onVideoSubscribeStateChanged([BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "evt",
            "handler"
        }
    .end annotation

    .line 2030
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PSubscribeVideoState;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PSubscribeVideoState;-><init>()V

    .line 2031
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PSubscribeVideoState;->unmarshall([B)V

    .line 2032
    iget-object v2, v0, Lio/agora/rtc/internal/RtcEngineMessage$PSubscribeVideoState;->channel:Ljava/lang/String;

    iget v3, v0, Lio/agora/rtc/internal/RtcEngineMessage$PSubscribeVideoState;->uid:I

    iget v4, v0, Lio/agora/rtc/internal/RtcEngineMessage$PSubscribeVideoState;->oldstate:I

    iget v5, v0, Lio/agora/rtc/internal/RtcEngineMessage$PSubscribeVideoState;->newstate:I

    iget v6, v0, Lio/agora/rtc/internal/RtcEngineMessage$PSubscribeVideoState;->elapsed:I

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lio/agora/rtc/IRtcEngineEventHandler;->onVideoSubscribeStateChanged(Ljava/lang/String;IIII)V

    return-void
.end method

.method private sendLogEvent([B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "evt"
        }
    .end annotation

    .line 2197
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 p1, 0x0

    .line 2198
    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->onLogEvent(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private setDeviceOrientation(I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 226
    iget-wide v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->lastOrientationTs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    return-void

    :cond_0
    int-to-double v2, p1

    const-wide v4, 0x4056800000000000L    # 90.0

    div-double/2addr v2, v4

    .line 229
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    const-wide/16 v4, 0x5a

    mul-long v2, v2, v4

    long-to-int v3, v2

    rem-int/lit16 v3, v3, 0x168

    sub-int v2, v3, p1

    .line 232
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v5, 0x2

    const/16 v6, 0x28

    const/16 v7, 0x14

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge v4, v7, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    .line 233
    :cond_1
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v6, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v3, :cond_4

    const/16 v4, 0xb4

    if-le p1, v4, :cond_4

    rsub-int p1, p1, 0x168

    if-ge p1, v7, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    if-ge p1, v6, :cond_4

    goto :goto_1

    :cond_4
    move v5, v2

    :goto_1
    if-lez v5, :cond_7

    .line 244
    :try_start_0
    new-instance p1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {p1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 245
    iget p1, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    if-ne v5, v9, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x5

    .line 257
    :goto_2
    iget p1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mTotalRotation:I

    if-eqz p1, :cond_6

    .line 258
    invoke-direct {p0, v8, v3}, Lio/agora/rtc/internal/RtcEngineImpl;->setVideoRotateCapturedFrames(II)I

    .line 260
    :cond_6
    iput v8, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mTotalRotation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string v2, "RtcEngine"

    const-string v3, "Unable to get camera info, "

    .line 262
    invoke-static {v2, v3, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    :cond_7
    :goto_3
    iput-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->lastOrientationTs:J

    return-void
.end method

.method private native setExtVideoSource(JII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "enable",
            "pushMode"
        }
    .end annotation
.end method

.method private setParameter(Ljava/lang/String;D)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2823
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"%s\":%f}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private setParameter(Ljava/lang/String;I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2815
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"%s\":%d}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private setParameter(Ljava/lang/String;J)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2819
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"%s\":%d}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private setParameter(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "{\"%s\":\"%s\"}"

    .line 2827
    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private setParameter(Ljava/lang/String;Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2811
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"%s\":%b}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private setParameterObject(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "{\"%s\":%s}"

    .line 2831
    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private setVideoRotateCapturedFrames(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "degree",
            "rotation"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 270
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"degree\":%d,\"rotation\":%d}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.video.local.rotate_video"

    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private switchCamera(Lio/agora/rtc/video/CameraCapturerConfiguration$CAMERA_DIRECTION;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 951
    iget v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mVideoSourceType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 955
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-virtual {p1}, Lio/agora/rtc/video/CameraCapturerConfiguration$CAMERA_DIRECTION;->getValue()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSwitchCameraByDirection(JI)I

    move-result p1

    return p1
.end method


# virtual methods
.method public addHandler(Lio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mRtcHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addInjectStreamUrl(Ljava/lang/String;Lio/agora/rtc/live/LiveInjectStreamConfig;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "config"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2388
    :cond_0
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PInjectStreamConfig;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PInjectStreamConfig;-><init>()V

    .line 2389
    invoke-virtual {v0, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PInjectStreamConfig;->marshall(Lio/agora/rtc/live/LiveInjectStreamConfig;)[B

    move-result-object p2

    .line 2390
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeAddInjectStreamUrl(JLjava/lang/String;[B)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x2

    return p1
.end method

.method public addPublishStreamUrl(Ljava/lang/String;Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "transcodingEnabled"
        }
    .end annotation

    .line 2365
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeAddPublishStreamUrl(JLjava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public addVideoWatermark(Lio/agora/rtc/video/AgoraImage;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "watermark"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 370
    iget-object v0, p1, Lio/agora/rtc/video/AgoraImage;->url:Ljava/lang/String;

    .line 371
    new-instance v1, Lio/agora/rtc/video/WatermarkOptions;

    invoke-direct {v1}, Lio/agora/rtc/video/WatermarkOptions;-><init>()V

    const/4 v2, 0x0

    .line 372
    iput-boolean v2, v1, Lio/agora/rtc/video/WatermarkOptions;->visibleInPreview:Z

    .line 373
    new-instance v2, Lio/agora/rtc/video/WatermarkOptions$Rectangle;

    iget v3, p1, Lio/agora/rtc/video/AgoraImage;->x:I

    iget v4, p1, Lio/agora/rtc/video/AgoraImage;->y:I

    iget v5, p1, Lio/agora/rtc/video/AgoraImage;->width:I

    iget p1, p1, Lio/agora/rtc/video/AgoraImage;->height:I

    invoke-direct {v2, v3, v4, v5, p1}, Lio/agora/rtc/video/WatermarkOptions$Rectangle;-><init>(IIII)V

    iput-object v2, v1, Lio/agora/rtc/video/WatermarkOptions;->positionInLandscapeMode:Lio/agora/rtc/video/WatermarkOptions$Rectangle;

    .line 374
    iget-object p1, v1, Lio/agora/rtc/video/WatermarkOptions;->positionInLandscapeMode:Lio/agora/rtc/video/WatermarkOptions$Rectangle;

    iput-object p1, v1, Lio/agora/rtc/video/WatermarkOptions;->positionInPortraitMode:Lio/agora/rtc/video/WatermarkOptions$Rectangle;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 376
    :goto_0
    invoke-virtual {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->addVideoWatermark(Ljava/lang/String;Lio/agora/rtc/video/WatermarkOptions;)I

    move-result p1

    return p1
.end method

.method public addVideoWatermark(Ljava/lang/String;Lio/agora/rtc/video/WatermarkOptions;)I
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "watermarkUrl",
            "options"
        }
    .end annotation

    move-object/from16 v0, p2

    if-eqz p1, :cond_3

    .line 381
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_2

    .line 386
    :cond_0
    iget-object v1, v0, Lio/agora/rtc/video/WatermarkOptions;->positionInLandscapeMode:Lio/agora/rtc/video/WatermarkOptions$Rectangle;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 387
    iget-object v1, v0, Lio/agora/rtc/video/WatermarkOptions;->positionInLandscapeMode:Lio/agora/rtc/video/WatermarkOptions$Rectangle;

    iget v1, v1, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->x:I

    .line 388
    iget-object v3, v0, Lio/agora/rtc/video/WatermarkOptions;->positionInLandscapeMode:Lio/agora/rtc/video/WatermarkOptions$Rectangle;

    iget v3, v3, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->y:I

    .line 389
    iget-object v4, v0, Lio/agora/rtc/video/WatermarkOptions;->positionInLandscapeMode:Lio/agora/rtc/video/WatermarkOptions$Rectangle;

    iget v4, v4, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->width:I

    .line 390
    iget-object v5, v0, Lio/agora/rtc/video/WatermarkOptions;->positionInLandscapeMode:Lio/agora/rtc/video/WatermarkOptions$Rectangle;

    iget v5, v5, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->height:I

    move v6, v3

    move v7, v4

    move v8, v5

    move v5, v1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 392
    :goto_0
    iget-object v1, v0, Lio/agora/rtc/video/WatermarkOptions;->positionInPortraitMode:Lio/agora/rtc/video/WatermarkOptions$Rectangle;

    if-eqz v1, :cond_2

    .line 393
    iget-object v1, v0, Lio/agora/rtc/video/WatermarkOptions;->positionInPortraitMode:Lio/agora/rtc/video/WatermarkOptions$Rectangle;

    iget v1, v1, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->x:I

    .line 394
    iget-object v2, v0, Lio/agora/rtc/video/WatermarkOptions;->positionInPortraitMode:Lio/agora/rtc/video/WatermarkOptions$Rectangle;

    iget v2, v2, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->y:I

    .line 395
    iget-object v3, v0, Lio/agora/rtc/video/WatermarkOptions;->positionInPortraitMode:Lio/agora/rtc/video/WatermarkOptions$Rectangle;

    iget v3, v3, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->width:I

    .line 396
    iget-object v4, v0, Lio/agora/rtc/video/WatermarkOptions;->positionInPortraitMode:Lio/agora/rtc/video/WatermarkOptions$Rectangle;

    iget v4, v4, Lio/agora/rtc/video/WatermarkOptions$Rectangle;->height:I

    move-object v13, p0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v13, p0

    .line 398
    :goto_1
    iget-wide v1, v13, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    iget-boolean v4, v0, Lio/agora/rtc/video/WatermarkOptions;->visibleInPreview:Z

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v12}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeAddVideoWatermark(JLjava/lang/String;ZIIIIIIII)I

    move-result v0

    return v0

    :cond_3
    :goto_2
    move-object v13, p0

    const/4 v0, -0x2

    return v0
.end method

.method public adjustAudioMixingPlayoutVolume(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    const-string v0, "che.audio.set_file_as_playout_volume"

    .line 1096
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public adjustAudioMixingPublishVolume(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    const-string v0, "che.audio.set_file_as_playout_publish_volume"

    .line 1100
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public adjustAudioMixingVolume(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    .line 1088
    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->adjustAudioMixingPlayoutVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1090
    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->adjustAudioMixingPublishVolume(I)I

    :cond_0
    return v0
.end method

.method public adjustPlaybackSignalVolume(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    const/16 v0, 0x190

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    const/16 p1, 0x190

    :cond_1
    :goto_0
    const-string v0, "che.audio.playout.signal.volume"

    .line 817
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public adjustRecordingSignalVolume(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    const/16 v0, 0x190

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    const/16 p1, 0x190

    :cond_1
    :goto_0
    const-string v0, "che.audio.record.signal.volume"

    .line 809
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public adjustUserPlaybackSignalVolume(II)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "volume"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    int-to-long v1, p1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 738
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"che.audio.playout.uid.volume\":{\"uid\":%d,\"volume\":%d}}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public clearVideoWatermarks()I
    .locals 2

    .line 404
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeClearVideoWatermarks(J)I

    move-result v0

    return v0
.end method

.method public complain(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callId",
            "description"
        }
    .end annotation

    .line 1233
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeComplain(JLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public createDataStream(ZZ)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reliable",
            "ordered"
        }
    .end annotation

    .line 2231
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeCreateDataStream(JZZ)I

    move-result p1

    return p1
.end method

.method public createRtcChannel(Ljava/lang/String;)Lio/agora/rtc/RtcChannel;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelId"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 2736
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 2738
    :cond_0
    monitor-enter p0

    .line 2739
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mDefaultRtcChannel:Lio/agora/rtc/internal/RtcChannelImpl;

    if-eqz v1, :cond_1

    .line 2740
    invoke-virtual {v1}, Lio/agora/rtc/internal/RtcChannelImpl;->channelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mDefaultRtcChannel:Lio/agora/rtc/internal/RtcChannelImpl;

    .line 2741
    invoke-virtual {v1}, Lio/agora/rtc/internal/RtcChannelImpl;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2742
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mDefaultRtcChannel:Lio/agora/rtc/internal/RtcChannelImpl;

    monitor-exit p0

    return-object p1

    .line 2744
    :cond_1
    iget-object v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mRtcChannels:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/agora/rtc/internal/RtcChannelImpl;

    .line 2745
    invoke-virtual {v2}, Lio/agora/rtc/internal/RtcChannelImpl;->channelId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2746
    invoke-virtual {v2}, Lio/agora/rtc/internal/RtcChannelImpl;->channelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2747
    invoke-virtual {v2}, Lio/agora/rtc/internal/RtcChannelImpl;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2749
    monitor-exit p0

    return-object v2

    .line 2753
    :cond_3
    iget-wide v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v1, v2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeCreateRtcChannel(JLjava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_4

    .line 2755
    new-instance p1, Lio/agora/rtc/internal/RtcChannelImpl;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcChannelImpl;-><init>()V

    .line 2756
    invoke-virtual {p1, p0, v1, v2}, Lio/agora/rtc/internal/RtcChannelImpl;->initialize(Lio/agora/rtc/internal/RtcEngineImpl;J)I

    .line 2757
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mRtcChannels:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2759
    monitor-exit p0

    return-object p1

    .line 2761
    :cond_4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    :goto_0
    return-object v0
.end method

.method public destroyRtcChannel(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelId"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 2768
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2769
    :cond_0
    monitor-enter p0

    .line 2770
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mDefaultRtcChannel:Lio/agora/rtc/internal/RtcChannelImpl;

    if-eqz v0, :cond_1

    .line 2771
    invoke-virtual {v0}, Lio/agora/rtc/internal/RtcChannelImpl;->channelId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x5

    .line 2772
    monitor-exit p0

    return p1

    .line 2774
    :cond_1
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mRtcChannels:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/agora/rtc/internal/RtcChannelImpl;

    .line 2775
    invoke-virtual {v1}, Lio/agora/rtc/internal/RtcChannelImpl;->channelId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2776
    invoke-virtual {v1}, Lio/agora/rtc/internal/RtcChannelImpl;->channelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2777
    invoke-virtual {v1}, Lio/agora/rtc/internal/RtcChannelImpl;->getNativeHandle()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeRtcChannelRelease(J)I

    move-result p1

    .line 2778
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mRtcChannels:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 2779
    monitor-exit p0

    return p1

    .line 2782
    :cond_3
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_0
    const/16 p1, -0x66

    return p1
.end method

.method public disableAudio()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 668
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const-string v1, "{\"rtc.audio.enabled\":%b, \"che.audio.enable.recording.device\":%b}"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableLastmileTest()I
    .locals 2

    const-string v0, "rtc.lastmile_test"

    const/4 v1, 0x0

    .line 603
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public disableVideo()I
    .locals 2

    const/4 v0, 0x0

    .line 630
    iput-boolean v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mLocalVideoEnabled:Z

    .line 631
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeDisableVideo(J)I

    move-result v0

    return v0
.end method

.method public doDestroy()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 204
    invoke-virtual {p0, v0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setExternalVideoSource(ZZZ)V

    .line 205
    invoke-direct {p0}, Lio/agora/rtc/internal/RtcEngineImpl;->doStopMonitorSystemEvent()V

    .line 207
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeDestroy(J)I

    const-wide/16 v0, 0x0

    .line 208
    iput-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    return-void
.end method

.method public enableAudio()I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    .line 657
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    aput-object v2, v0, v1

    const-string v1, "{\"rtc.audio.enabled\":%b, \"che.audio.enable.recording.device\":%b}"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableAudioQualityIndication(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "rtc.audio_quality_indication"

    .line 872
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public enableAudioVolumeIndication(IIZ)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "interval",
            "smooth",
            "report_vad"
        }
    .end annotation

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x3

    const-string v3, "{\"interval\":%d,\"smooth\":%d,\"vad\":%d}"

    const-string v4, "che.audio.volume_indication"

    const/4 v5, 0x1

    if-eqz p3, :cond_1

    new-array p3, v2, [Ljava/lang/Object;

    .line 862
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v1

    invoke-static {v3, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    new-array p3, v2, [Ljava/lang/Object;

    .line 864
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v1

    invoke-static {v3, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public enableDualStreamMode(Z)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 409
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "{\"rtc.dual_stream_mode\":%b,\"che.video.enableLowBitRateStream\":%d}"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public enableEncryption(ZLio/agora/rtc/internal/EncryptionConfig;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enabled",
            "config"
        }
    .end annotation

    .line 1302
    iget-wide v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    iget-object v0, p2, Lio/agora/rtc/internal/EncryptionConfig;->encryptionMode:Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

    invoke-virtual {v0}, Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;->getValue()I

    move-result v4

    iget-object v5, p2, Lio/agora/rtc/internal/EncryptionConfig;->encryptionKey:Ljava/lang/String;

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeEnableEncryption(JZILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public enableFaceDetection(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string v0, "che.video.faceDistance"

    .line 1025
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public enableHighPerfWifiMode(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_2

    const-string p1, "android.permission.WAKE_LOCK"

    .line 429
    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 431
    iput-object v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return v1

    .line 434
    :cond_1
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez p1, :cond_3

    const-string p1, "wifi"

    .line 435
    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    const/4 v0, 0x3

    const-string v1, "agora.voip.lock"

    .line 436
    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    goto :goto_0

    .line 439
    :cond_2
    iput-object v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public enableInEarMonitoring(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    const-string v0, "che.audio.headset.monitoring"

    .line 842
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public enableLastmileTest()I
    .locals 2

    const-string v0, "rtc.lastmile_test"

    const/4 v1, 0x1

    .line 598
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public enableLocalAudio(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 662
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeEnableLocalAudio(JZ)I

    move-result p1

    return p1
.end method

.method public enableLocalVideo(Z)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 636
    iput-boolean p1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mLocalVideoEnabled:Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 637
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const-string p1, "{\"rtc.video.capture\":%b,\"che.video.local.capture\":%b,\"che.video.local.render\":%b,\"che.video.local.send\":%b}"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public enableRecap(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interval"
        }
    .end annotation

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const-string v0, "che.audio.recap.interval"

    .line 890
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public enableRemoteVideo(ZI)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enabled",
            "uid"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1034
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    int-to-long p1, p2

    const-wide v1, 0xffffffffL

    and-long/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"enable\":%b, \"uid\":%d}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.video.peer.receive"

    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public enableSoundPositionIndication(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    const-string v0, "che.audio.enable_sound_position"

    .line 2546
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public enableTransportQualityIndication(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    const-string v0, "rtc.transport_quality_indication"

    .line 878
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public enableVideo()I
    .locals 2

    const/4 v0, 0x1

    .line 624
    iput-boolean v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mLocalVideoEnabled:Z

    .line 625
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeEnableVideo(J)I

    move-result v0

    return v0
.end method

.method public enableWebSdkInteroperability(Z)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 846
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "{\"rtc.video.web_h264_interop_enable\":%b,\"che.video.web_h264_interop_enable\":%b}"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public finalize()V
    .locals 5

    .line 2725
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2726
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeDestroy(J)I

    :cond_0
    return-void
.end method

.method protected getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "activity"

    .line 2212
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    return-object p1
.end method

.method public getAudioEffectManager()Lio/agora/rtc/IAudioEffectManager;
    .locals 0

    return-object p0
.end method

.method protected getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "audio"

    .line 2206
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    return-object p1
.end method

.method public getAudioMixingCurrentPosition()I
    .locals 4

    .line 1120
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const-string v2, "che.audio.get_mixing_file_played_ms"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetIntParameter(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAudioMixingDuration()I
    .locals 4

    .line 1115
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const-string v2, "che.audio.get_mixing_file_length_ms"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetIntParameter(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAudioMixingPlayoutVolume()I
    .locals 4

    .line 1105
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const-string v2, "che.audio.get_file_as_playout_volume"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetIntParameter(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAudioMixingPublishVolume()I
    .locals 4

    .line 1110
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const-string v2, "che.audio.get_file_as_playout_publish_volume"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetIntParameter(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 2

    .line 1223
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetCallId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraMaxZoomFactor()F
    .locals 4

    .line 995
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const-string v2, "che.video.camera.get_max_zoom"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetParameter(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 999
    :cond_0
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    return v0
.end method

.method public getConnectionState()I
    .locals 2

    .line 2720
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetConncetionState(J)I

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 194
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public getEffectsVolume()D
    .locals 5

    .line 2634
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const-string v2, "che.audio.game_get_effects_volume"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetIntParameter(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0
.end method

.method public getNativeHandle()J
    .locals 2

    .line 2461
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetHandle(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameter",
            "args"
        }
    .end annotation

    .line 1213
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetParameter(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 1208
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetParameters(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProfile()Ljava/lang/String;
    .locals 2

    .line 1194
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetProfile(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRtcStats()Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;
    .locals 1

    .line 445
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mRtcStats:Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;

    if-nez v0, :cond_0

    .line 446
    new-instance v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;

    invoke-direct {v0}, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mRtcStats:Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;

    .line 447
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mRtcStats:Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;

    return-object v0
.end method

.method public getUserInfoByUid(ILio/agora/rtc/models/UserInfo;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "userInfo"
        }
    .end annotation

    .line 782
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetUserInfoByUid(JILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getUserInfoByUserAccount(Ljava/lang/String;Lio/agora/rtc/models/UserInfo;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userAccount",
            "userInfo"
        }
    .end annotation

    .line 777
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetUserInfoByUserAccount(JLjava/lang/String;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected handleChannelEvent(I[BLio/agora/rtc/IRtcChannelEventHandler;Lio/agora/rtc/internal/RtcChannelImpl;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventId",
            "evt",
            "handler",
            "rtcChannel"
        }
    .end annotation

    if-eqz p3, :cond_1e

    if-nez p4, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x65

    const-string v1, "che.audio.restart"

    const-string v2, "che.audio.opensl"

    const-string v3, " restart ADM"

    const-string v4, "ADM Error code "

    const-string v5, "RtcEngine"

    const-string v6, "2"

    const-string v7, "[\"che.audio.adm.active\"]"

    const/4 v8, 0x0

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x66

    if-eq p1, v0, :cond_17

    const/16 v0, 0x454

    if-eq p1, v0, :cond_16

    const/16 v0, 0x455

    if-eq p1, v0, :cond_15

    const/16 v0, 0x458

    if-eq p1, v0, :cond_14

    const/16 v0, 0x45f

    if-eq p1, v0, :cond_13

    const/16 v0, 0x32c9

    if-eq p1, v0, :cond_11

    const/16 v0, 0x32d2

    if-eq p1, v0, :cond_10

    const/16 v0, 0x32d5

    if-eq p1, v0, :cond_f

    const/16 v0, 0x36b4

    if-eq p1, v0, :cond_e

    const/16 v0, 0x36c0

    if-eq p1, v0, :cond_d

    const/16 v0, 0x36cc

    if-eq p1, v0, :cond_c

    const/16 v0, 0x36ce

    if-eq p1, v0, :cond_b

    const/16 v0, 0x36d8

    if-eq p1, v0, :cond_a

    const/16 v0, 0x45c

    if-eq p1, v0, :cond_9

    const/16 v0, 0x45d

    if-eq p1, v0, :cond_8

    const/16 v0, 0x36b8

    if-eq p1, v0, :cond_7

    const/16 v0, 0x36b9

    if-eq p1, v0, :cond_6

    const/16 v0, 0x36bc

    if-eq p1, v0, :cond_5

    const/16 v0, 0x36bd

    if-eq p1, v0, :cond_4

    const/16 v0, 0x36c6

    if-eq p1, v0, :cond_3

    const/16 v0, 0x36c7

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    .line 1861
    :pswitch_0
    invoke-direct {p0, p2, p3, p4}, Lio/agora/rtc/internal/RtcEngineImpl;->onRtcChannelVideoSubscribeStateChanged([BLio/agora/rtc/IRtcChannelEventHandler;Lio/agora/rtc/internal/RtcChannelImpl;)V

    goto/16 :goto_0

    .line 1858
    :pswitch_1
    invoke-direct {p0, p2, p3, p4}, Lio/agora/rtc/internal/RtcEngineImpl;->onRtcChannelAudioSubscribeStateChanged([BLio/agora/rtc/IRtcChannelEventHandler;Lio/agora/rtc/internal/RtcChannelImpl;)V

    goto/16 :goto_0

    .line 1855
    :pswitch_2
    invoke-direct {p0, p2, p3, p4}, Lio/agora/rtc/internal/RtcEngineImpl;->onRtcChannelVideoPublishStateChanged([BLio/agora/rtc/IRtcChannelEventHandler;Lio/agora/rtc/internal/RtcChannelImpl;)V

    goto/16 :goto_0

    .line 1852
    :pswitch_3
    invoke-direct {p0, p2, p3, p4}, Lio/agora/rtc/internal/RtcEngineImpl;->onRtcChannelAudioPublishStateChanged([BLio/agora/rtc/IRtcChannelEventHandler;Lio/agora/rtc/internal/RtcChannelImpl;)V

    goto/16 :goto_0

    .line 1900
    :pswitch_4
    invoke-direct {p0, p2, p3, p4}, Lio/agora/rtc/internal/RtcEngineImpl;->onRtcChannelChannelMediaRelayEvent([BLio/agora/rtc/IRtcChannelEventHandler;Lio/agora/rtc/internal/RtcChannelImpl;)V

    goto/16 :goto_0

    .line 1897
    :pswitch_5
    invoke-direct {p0, p2, p3, p4}, Lio/agora/rtc/internal/RtcEngineImpl;->onRtcChannelChannelMediaRelayStateChanged([BLio/agora/rtc/IRtcChannelEventHandler;Lio/agora/rtc/internal/RtcChannelImpl;)V

    goto/16 :goto_0

    .line 1864
    :pswitch_6
    invoke-direct {p0, p2, p3, p4}, Lio/agora/rtc/internal/RtcEngineImpl;->onRtcChannelRemoteVideoStateChangedExt([BLio/agora/rtc/IRtcChannelEventHandler;Lio/agora/rtc/internal/RtcChannelImpl;)V

    goto/16 :goto_0

    .line 1830
    :pswitch_7
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserOfflineEvent;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserOfflineEvent;-><init>()V

    .line 1831
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserOfflineEvent;->unmarshall([B)V

    .line 1832
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserOfflineEvent;->uid:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserOfflineEvent;->reason:I

    invoke-virtual {p3, p4, p2, p1}, Lio/agora/rtc/IRtcChannelEventHandler;->onUserOffline(Lio/agora/rtc/RtcChannel;II)V

    goto/16 :goto_0

    .line 1820
    :pswitch_8
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResNetworkQuality;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResNetworkQuality;-><init>()V

    .line 1821
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResNetworkQuality;->unmarshall([B)V

    .line 1822
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResNetworkQuality;->uid:I

    iget v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResNetworkQuality;->txQuality:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResNetworkQuality;->rxQuality:I

    invoke-virtual {p3, p4, p2, v0, p1}, Lio/agora/rtc/IRtcChannelEventHandler;->onNetworkQuality(Lio/agora/rtc/RtcChannel;III)V

    goto/16 :goto_0

    .line 1811
    :pswitch_9
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 1813
    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/media/AudioManager;->setMode(I)V

    .line 1814
    :cond_1
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;-><init>()V

    .line 1815
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->unmarshall([B)V

    .line 1816
    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->updateRtcStats(Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;)V

    .line 1817
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineImpl;->getRtcStats()Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;

    move-result-object p1

    invoke-virtual {p3, p4, p1}, Lio/agora/rtc/IRtcChannelEventHandler;->onLeaveChannel(Lio/agora/rtc/RtcChannel;Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;)V

    goto/16 :goto_0

    .line 1892
    :cond_2
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;-><init>()V

    .line 1893
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->unmarshall([B)V

    .line 1894
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->uid:I

    iget-boolean p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->state:Z

    invoke-virtual {p3, p4, p2, p1}, Lio/agora/rtc/IRtcChannelEventHandler;->onRemoteSubscribeFallbackToAudioOnly(Lio/agora/rtc/RtcChannel;IZ)V

    goto/16 :goto_0

    .line 1887
    :cond_3
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PLocalFallbackStatus;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalFallbackStatus;-><init>()V

    .line 1888
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalFallbackStatus;->unmarshall([B)V

    .line 1889
    iget-boolean p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PLocalFallbackStatus;->state:Z

    invoke-virtual {p3, p4, p1}, Lio/agora/rtc/IRtcChannelEventHandler;->onLocalPublishFallbackToAudioOnly(Lio/agora/rtc/RtcChannel;Z)V

    goto/16 :goto_0

    .line 1846
    :cond_4
    invoke-direct {p0, p2, p3, p4}, Lio/agora/rtc/internal/RtcEngineImpl;->onRtcChannelVideoSizeChanged([BLio/agora/rtc/IRtcChannelEventHandler;Lio/agora/rtc/internal/RtcChannelImpl;)V

    goto/16 :goto_0

    .line 1884
    :cond_5
    invoke-direct {p0, p2, p3, p4}, Lio/agora/rtc/internal/RtcEngineImpl;->onRtcChannelStreamMessageError([BLio/agora/rtc/IRtcChannelEventHandler;Lio/agora/rtc/internal/RtcChannelImpl;)V

    goto/16 :goto_0

    .line 1881
    :cond_6
    invoke-direct {p0, p2, p3, p4}, Lio/agora/rtc/internal/RtcEngineImpl;->onRtcChannelStreamMessage([BLio/agora/rtc/IRtcChannelEventHandler;Lio/agora/rtc/internal/RtcChannelImpl;)V

    goto/16 :goto_0

    .line 1873
    :cond_7
    invoke-virtual {p3, p4}, Lio/agora/rtc/IRtcChannelEventHandler;->onConnectionLost(Lio/agora/rtc/RtcChannel;)V

    goto/16 :goto_0

    .line 1800
    :cond_8
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PPrivilegeWillExpire;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PPrivilegeWillExpire;-><init>()V

    .line 1801
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PPrivilegeWillExpire;->unmarshall([B)V

    .line 1802
    iget-object p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PPrivilegeWillExpire;->token:Ljava/lang/String;

    invoke-virtual {p3, p4, p1}, Lio/agora/rtc/IRtcChannelEventHandler;->onTokenPrivilegeWillExpire(Lio/agora/rtc/RtcChannel;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1795
    :cond_9
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PStreamInjectedStatus;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PStreamInjectedStatus;-><init>()V

    .line 1796
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PStreamInjectedStatus;->unmarshall([B)V

    .line 1797
    iget-object p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PStreamInjectedStatus;->url:Ljava/lang/String;

    iget v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PStreamInjectedStatus;->uid:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PStreamInjectedStatus;->status:I

    invoke-virtual {p3, p4, p2, v0, p1}, Lio/agora/rtc/IRtcChannelEventHandler;->onStreamInjectedStatus(Lio/agora/rtc/RtcChannel;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 1849
    :cond_a
    invoke-direct {p0, p2, p3, p4}, Lio/agora/rtc/internal/RtcEngineImpl;->onRtcChannelRemoteAudioStateChanged([BLio/agora/rtc/IRtcChannelEventHandler;Lio/agora/rtc/internal/RtcChannelImpl;)V

    goto/16 :goto_0

    .line 1870
    :cond_b
    invoke-direct {p0, p2, p3, p4}, Lio/agora/rtc/internal/RtcEngineImpl;->onRtcChannelRemoteAudioStat([BLio/agora/rtc/IRtcChannelEventHandler;Lio/agora/rtc/internal/RtcChannelImpl;)V

    goto/16 :goto_0

    .line 1876
    :cond_c
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PConnectionState;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PConnectionState;-><init>()V

    .line 1877
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PConnectionState;->unmarshall([B)V

    .line 1878
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PConnectionState;->state:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PConnectionState;->reason:I

    invoke-virtual {p3, p4, p2, p1}, Lio/agora/rtc/IRtcChannelEventHandler;->onConnectionStateChanged(Lio/agora/rtc/RtcChannel;II)V

    goto/16 :goto_0

    .line 1837
    :cond_d
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PActiveSpeaker;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PActiveSpeaker;-><init>()V

    .line 1838
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PActiveSpeaker;->unmarshall([B)V

    .line 1839
    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PActiveSpeaker;->uid:I

    invoke-virtual {p3, p4, p1}, Lio/agora/rtc/IRtcChannelEventHandler;->onActiveSpeaker(Lio/agora/rtc/RtcChannel;I)V

    goto/16 :goto_0

    .line 1867
    :cond_e
    invoke-direct {p0, p2, p3, p4}, Lio/agora/rtc/internal/RtcEngineImpl;->onRtcChannelRemoteVideoStat([BLio/agora/rtc/IRtcChannelEventHandler;Lio/agora/rtc/internal/RtcChannelImpl;)V

    goto/16 :goto_0

    .line 1825
    :cond_f
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserJoinedEvent;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserJoinedEvent;-><init>()V

    .line 1826
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserJoinedEvent;->unmarshall([B)V

    .line 1827
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserJoinedEvent;->uid:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserJoinedEvent;->elapsed:I

    invoke-virtual {p3, p4, p2, p1}, Lio/agora/rtc/IRtcChannelEventHandler;->onUserJoined(Lio/agora/rtc/RtcChannel;II)V

    goto/16 :goto_0

    .line 1805
    :cond_10
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;-><init>()V

    .line 1806
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->unmarshall([B)V

    .line 1807
    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->updateRtcStats(Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;)V

    .line 1808
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineImpl;->getRtcStats()Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;

    move-result-object p1

    invoke-virtual {p3, p4, p1}, Lio/agora/rtc/IRtcChannelEventHandler;->onRtcStats(Lio/agora/rtc/RtcChannel;Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;)V

    goto/16 :goto_0

    .line 1766
    :cond_11
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResJoinMedia;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResJoinMedia;-><init>()V

    .line 1767
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResJoinMedia;->unmarshall([B)V

    .line 1768
    iget-boolean p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResJoinMedia;->firstSuccess:Z

    if-eqz p2, :cond_12

    .line 1769
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResJoinMedia;->uid:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResJoinMedia;->elapsed:I

    invoke-virtual {p3, p4, p2, p1}, Lio/agora/rtc/IRtcChannelEventHandler;->onJoinChannelSuccess(Lio/agora/rtc/RtcChannel;II)V

    goto/16 :goto_0

    .line 1771
    :cond_12
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResJoinMedia;->uid:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResJoinMedia;->elapsed:I

    invoke-virtual {p3, p4, p2, p1}, Lio/agora/rtc/IRtcChannelEventHandler;->onRejoinChannelSuccess(Lio/agora/rtc/RtcChannel;II)V

    goto/16 :goto_0

    .line 1783
    :cond_13
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PRtmpStreamingState;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PRtmpStreamingState;-><init>()V

    .line 1784
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PRtmpStreamingState;->unmarshall([B)V

    .line 1785
    iget-object p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PRtmpStreamingState;->url:Ljava/lang/String;

    iget v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PRtmpStreamingState;->state:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PRtmpStreamingState;->error:I

    invoke-virtual {p3, p4, p2, v0, p1}, Lio/agora/rtc/IRtcChannelEventHandler;->onRtmpStreamingStateChanged(Lio/agora/rtc/RtcChannel;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 1792
    :cond_14
    invoke-virtual {p3, p4}, Lio/agora/rtc/IRtcChannelEventHandler;->onTranscodingUpdated(Lio/agora/rtc/RtcChannel;)V

    goto/16 :goto_0

    .line 1778
    :cond_15
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PClientRoleChanged;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PClientRoleChanged;-><init>()V

    .line 1779
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PClientRoleChanged;->unmarshall([B)V

    .line 1780
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PClientRoleChanged;->oldRole:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PClientRoleChanged;->newRole:I

    invoke-virtual {p3, p4, p2, p1}, Lio/agora/rtc/IRtcChannelEventHandler;->onClientRoleChanged(Lio/agora/rtc/RtcChannel;II)V

    goto/16 :goto_0

    .line 1775
    :cond_16
    invoke-virtual {p3, p4}, Lio/agora/rtc/IRtcChannelEventHandler;->onRequestToken(Lio/agora/rtc/RtcChannel;)V

    goto/16 :goto_0

    .line 1754
    :cond_17
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PError;-><init>()V

    .line 1755
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PError;->unmarshall([B)V

    .line 1756
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;->err:I

    const/16 v0, 0x3fb

    if-eq p2, v0, :cond_18

    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;->err:I

    const/16 v0, 0x41c

    if-ne p2, v0, :cond_19

    :cond_18
    invoke-virtual {p0, v7}, Lio/agora/rtc/internal/RtcEngineImpl;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 1757
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;->err:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    invoke-direct {p0, v2, v8}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    .line 1760
    invoke-virtual {p0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    .line 1762
    :cond_19
    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;->err:I

    invoke-virtual {p3, p4, p1}, Lio/agora/rtc/IRtcChannelEventHandler;->onChannelWarning(Lio/agora/rtc/RtcChannel;I)V

    goto :goto_0

    .line 1742
    :cond_1a
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PError;-><init>()V

    .line 1743
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PError;->unmarshall([B)V

    .line 1744
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;->err:I

    const/16 v0, 0x47f

    if-lt p2, v0, :cond_1b

    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;->err:I

    const/16 v0, 0x48c

    if-le p2, v0, :cond_1c

    :cond_1b
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;->err:I

    const/16 v0, 0x3e9

    if-lt p2, v0, :cond_1d

    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;->err:I

    const/16 v0, 0x409

    if-ge p2, v0, :cond_1d

    invoke-virtual {p0, v7}, Lio/agora/rtc/internal/RtcEngineImpl;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 1745
    :cond_1c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;->err:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    invoke-direct {p0, v2, v8}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    .line 1748
    invoke-virtual {p0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    .line 1750
    :cond_1d
    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;->err:I

    invoke-virtual {p3, p4, p1}, Lio/agora/rtc/IRtcChannelEventHandler;->onChannelError(Lio/agora/rtc/RtcChannel;I)V

    :cond_1e
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x32ce
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36d4
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x36dd
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected handleEvent(I[BLio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventId",
            "evt",
            "handler"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x44d

    if-eq p1, v0, :cond_11

    const/16 v0, 0x44e

    if-eq p1, v0, :cond_10

    const/16 v0, 0x36c3

    if-eq p1, v0, :cond_f

    const/16 v0, 0x36c4

    if-eq p1, v0, :cond_e

    const-string v0, "che.audio.restart"

    const-string v1, "che.audio.opensl"

    const-string v2, " restart ADM"

    const-string v3, "ADM Error code "

    const-string v4, "2"

    const-string v5, "[\"che.audio.adm.active\"]"

    const-string v6, "RtcEngine"

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    packed-switch p1, :pswitch_data_6

    goto/16 :goto_1

    .line 1578
    :pswitch_0
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PActiveSpeaker;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PActiveSpeaker;-><init>()V

    .line 1579
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PActiveSpeaker;->unmarshall([B)V

    .line 1580
    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PActiveSpeaker;->uid:I

    invoke-virtual {p3, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onActiveSpeaker(I)V

    goto/16 :goto_1

    .line 1589
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onFirstRemoteAudioFrame([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1583
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onFirstLocalAudioFrame([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1613
    :pswitch_3
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onVideoSizeChanged([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1660
    :pswitch_4
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onStreamMessageError([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1523
    :pswitch_5
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult;-><init>()V

    .line 1524
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult;->unmarshall([B)V

    .line 1525
    new-instance p2, Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult;

    invoke-direct {p2}, Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult;-><init>()V

    .line 1527
    iget-short v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult;->state:S

    iput-short v0, p2, Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult;->state:S

    .line 1528
    iget v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult;->rtt:I

    iput v0, p2, Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult;->rtt:I

    .line 1529
    iget-object v0, p2, Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult;->uplinkReport:Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult$LastmileProbeOneWayResult;

    iget-object v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult;->uplinkReport:Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult$LastmileProbeOneWayResult;

    iget v1, v1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult$LastmileProbeOneWayResult;->packetLossRate:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult$LastmileProbeOneWayResult;->packetLossRate:I

    .line 1530
    iget-object v0, p2, Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult;->uplinkReport:Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult$LastmileProbeOneWayResult;

    iget-object v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult;->uplinkReport:Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult$LastmileProbeOneWayResult;

    iget v1, v1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult$LastmileProbeOneWayResult;->jitter:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult$LastmileProbeOneWayResult;->jitter:I

    .line 1531
    iget-object v0, p2, Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult;->uplinkReport:Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult$LastmileProbeOneWayResult;

    iget-object v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult;->uplinkReport:Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult$LastmileProbeOneWayResult;

    iget v1, v1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult$LastmileProbeOneWayResult;->availableBandwidth:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult$LastmileProbeOneWayResult;->availableBandwidth:I

    .line 1532
    iget-object v0, p2, Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult;->downlinkReport:Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult$LastmileProbeOneWayResult;

    iget-object v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult;->downlinkReport:Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult$LastmileProbeOneWayResult;

    iget v1, v1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult$LastmileProbeOneWayResult;->packetLossRate:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult$LastmileProbeOneWayResult;->packetLossRate:I

    .line 1533
    iget-object v0, p2, Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult;->downlinkReport:Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult$LastmileProbeOneWayResult;

    iget-object v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult;->downlinkReport:Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult$LastmileProbeOneWayResult;

    iget v1, v1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult$LastmileProbeOneWayResult;->jitter:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult$LastmileProbeOneWayResult;->jitter:I

    .line 1534
    iget-object v0, p2, Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult;->downlinkReport:Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult$LastmileProbeOneWayResult;

    iget-object p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult;->downlinkReport:Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult$LastmileProbeOneWayResult;

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileProbeResult$LastmileProbeOneWayResult;->availableBandwidth:I

    iput p1, v0, Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult$LastmileProbeOneWayResult;->availableBandwidth:I

    .line 1536
    invoke-virtual {p3, p2}, Lio/agora/rtc/IRtcEngineEventHandler;->onLastmileProbeResult(Lio/agora/rtc/IRtcEngineEventHandler$LastmileProbeResult;)V

    goto/16 :goto_1

    .line 1564
    :pswitch_6
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;-><init>()V

    .line 1565
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->unmarshall([B)V

    .line 1566
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->uid:I

    iget-boolean p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->state:Z

    invoke-virtual {p3, p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onUserEnableLocalVideo(IZ)V

    goto/16 :goto_1

    .line 1675
    :pswitch_7
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResAudioEffectFinished;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResAudioEffectFinished;-><init>()V

    .line 1676
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResAudioEffectFinished;->unmarshall([B)V

    .line 1677
    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResAudioEffectFinished;->soundId:I

    invoke-virtual {p3, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onAudioEffectFinished(I)V

    goto/16 :goto_1

    .line 1518
    :pswitch_8
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileQuality;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileQuality;-><init>()V

    .line 1519
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileQuality;->unmarshall([B)V

    .line 1520
    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLastmileQuality;->quality:I

    invoke-virtual {p3, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onLastmileQuality(I)V

    goto/16 :goto_1

    .line 1559
    :pswitch_9
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;-><init>()V

    .line 1560
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->unmarshall([B)V

    .line 1561
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->uid:I

    iget-boolean p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->state:Z

    invoke-virtual {p3, p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onUserEnableVideo(IZ)V

    goto/16 :goto_1

    .line 1554
    :pswitch_a
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;-><init>()V

    .line 1555
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->unmarshall([B)V

    .line 1556
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->uid:I

    iget-boolean p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->state:Z

    invoke-virtual {p3, p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onUserMuteVideo(IZ)V

    goto/16 :goto_1

    .line 1549
    :pswitch_b
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;-><init>()V

    .line 1550
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->unmarshall([B)V

    .line 1551
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->uid:I

    iget-boolean p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->state:Z

    invoke-virtual {p3, p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onUserMuteAudio(IZ)V

    goto/16 :goto_1

    .line 1539
    :pswitch_c
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserJoinedEvent;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserJoinedEvent;-><init>()V

    .line 1540
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserJoinedEvent;->unmarshall([B)V

    .line 1541
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserJoinedEvent;->uid:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserJoinedEvent;->elapsed:I

    invoke-virtual {p3, p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onUserJoined(II)V

    goto/16 :goto_1

    .line 1544
    :pswitch_d
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserOfflineEvent;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserOfflineEvent;-><init>()V

    .line 1545
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserOfflineEvent;->unmarshall([B)V

    .line 1546
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserOfflineEvent;->uid:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserOfflineEvent;->reason:I

    invoke-virtual {p3, p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onUserOffline(II)V

    goto/16 :goto_1

    .line 1513
    :pswitch_e
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResNetworkQuality;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResNetworkQuality;-><init>()V

    .line 1514
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResNetworkQuality;->unmarshall([B)V

    .line 1515
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResNetworkQuality;->uid:I

    iget v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResNetworkQuality;->txQuality:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResNetworkQuality;->rxQuality:I

    invoke-virtual {p3, p2, v0, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onNetworkQuality(III)V

    goto/16 :goto_1

    .line 1504
    :pswitch_f
    iget-object p1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 1506
    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/media/AudioManager;->setMode(I)V

    .line 1507
    :cond_1
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;-><init>()V

    .line 1508
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->unmarshall([B)V

    .line 1509
    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->updateRtcStats(Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;)V

    .line 1510
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineImpl;->getRtcStats()Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onLeaveChannel(Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;)V

    goto/16 :goto_1

    .line 1431
    :pswitch_10
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PStreamEvent;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PStreamEvent;-><init>()V

    .line 1432
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PStreamEvent;->unmarshall([B)V

    .line 1433
    iget-object p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PStreamEvent;->url:Ljava/lang/String;

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PStreamEvent;->error:I

    invoke-virtual {p3, p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onRtmpStreamingEvent(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1413
    :pswitch_11
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PRtmpStreamingState;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PRtmpStreamingState;-><init>()V

    .line 1414
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PRtmpStreamingState;->unmarshall([B)V

    .line 1415
    iget-object p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PRtmpStreamingState;->url:Ljava/lang/String;

    iget v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PRtmpStreamingState;->state:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PRtmpStreamingState;->error:I

    invoke-virtual {p3, p2, v0, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onRtmpStreamingStateChanged(Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 1686
    :pswitch_12
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLocalVideoStateChanged;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLocalVideoStateChanged;-><init>()V

    .line 1687
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLocalVideoStateChanged;->unmarshall([B)V

    .line 1688
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLocalVideoStateChanged;->localVideoState:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLocalVideoStateChanged;->error:I

    invoke-virtual {p3, p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onLocalVideoStateChanged(II)V

    goto/16 :goto_1

    .line 1441
    :pswitch_13
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PPrivilegeWillExpire;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PPrivilegeWillExpire;-><init>()V

    .line 1442
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PPrivilegeWillExpire;->unmarshall([B)V

    .line 1443
    iget-object p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PPrivilegeWillExpire;->token:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onTokenPrivilegeWillExpire(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1436
    :pswitch_14
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PStreamInjectedStatus;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PStreamInjectedStatus;-><init>()V

    .line 1437
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PStreamInjectedStatus;->unmarshall([B)V

    .line 1438
    iget-object p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PStreamInjectedStatus;->url:Ljava/lang/String;

    iget v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PStreamInjectedStatus;->uid:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PStreamInjectedStatus;->status:I

    invoke-virtual {p3, p2, v0, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onStreamInjectedStatus(Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 1428
    :pswitch_15
    invoke-virtual {p3}, Lio/agora/rtc/IRtcEngineEventHandler;->onTranscodingUpdated()V

    goto/16 :goto_1

    .line 1423
    :pswitch_16
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PStreamUnPublished;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PStreamUnPublished;-><init>()V

    .line 1424
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PStreamUnPublished;->unmarshall([B)V

    .line 1425
    iget-object p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PStreamUnPublished;->url:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onStreamUnpublished(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1418
    :pswitch_17
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PStreamPublished;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PStreamPublished;-><init>()V

    .line 1419
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PStreamPublished;->unmarshall([B)V

    .line 1420
    iget-object p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PStreamPublished;->url:Ljava/lang/String;

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PStreamPublished;->error:I

    invoke-virtual {p3, p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onStreamPublished(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1408
    :pswitch_18
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PClientRoleChanged;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PClientRoleChanged;-><init>()V

    .line 1409
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PClientRoleChanged;->unmarshall([B)V

    .line 1410
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PClientRoleChanged;->oldRole:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PClientRoleChanged;->newRole:I

    invoke-virtual {p3, p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onClientRoleChanged(II)V

    goto/16 :goto_1

    .line 1405
    :pswitch_19
    invoke-virtual {p3}, Lio/agora/rtc/IRtcEngineEventHandler;->onRequestToken()V

    goto/16 :goto_1

    .line 1479
    :pswitch_1a
    invoke-virtual {p3}, Lio/agora/rtc/IRtcEngineEventHandler;->onVideoStopped()V

    goto/16 :goto_1

    .line 1386
    :pswitch_1b
    invoke-virtual {p3}, Lio/agora/rtc/IRtcEngineEventHandler;->onMediaEngineStartCallSuccess()V

    goto/16 :goto_1

    .line 1402
    :pswitch_1c
    invoke-virtual {p3}, Lio/agora/rtc/IRtcEngineEventHandler;->onCameraReady()V

    goto/16 :goto_1

    .line 1628
    :sswitch_0
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onVideoSubscribeStateChanged([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1625
    :sswitch_1
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onAudioSubscribeStateChanged([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1622
    :sswitch_2
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onVideoPublishStateChanged([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1619
    :sswitch_3
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onAudioPublishStateChanged([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1586
    :sswitch_4
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onFirstLocalAudioFramePublished([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1610
    :sswitch_5
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onFacePositionChanged([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1691
    :sswitch_6
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLocalAudioStateChanged;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLocalAudioStateChanged;-><init>()V

    .line 1692
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLocalAudioStateChanged;->unmarshall([B)V

    .line 1693
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLocalAudioStateChanged;->state:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResLocalAudioStateChanged;->error:I

    invoke-virtual {p3, p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onLocalAudioStateChanged(II)V

    goto/16 :goto_1

    .line 1640
    :sswitch_7
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onLocalAudioStat([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1616
    :sswitch_8
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onRemoteAudioStateChanged([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1683
    :sswitch_9
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onChannelMediaRelayEvent([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1680
    :sswitch_a
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onChannelMediaRelayStateChanged([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1631
    :sswitch_b
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onRemoteVideoStateChangedExt([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1726
    :sswitch_c
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserAccountInfo;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PUserAccountInfo;-><init>()V

    .line 1727
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PUserAccountInfo;->unmarshall([B)V

    .line 1728
    new-instance p2, Lio/agora/rtc/models/UserInfo;

    invoke-direct {p2}, Lio/agora/rtc/models/UserInfo;-><init>()V

    .line 1729
    iget v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserAccountInfo;->uid:I

    iput v0, p2, Lio/agora/rtc/models/UserInfo;->uid:I

    .line 1730
    iget-object v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserAccountInfo;->userAccount:Ljava/lang/String;

    iput-object v0, p2, Lio/agora/rtc/models/UserInfo;->userAccount:Ljava/lang/String;

    .line 1731
    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserAccountInfo;->uid:I

    invoke-virtual {p3, p1, p2}, Lio/agora/rtc/IRtcEngineEventHandler;->onUserInfoUpdated(ILio/agora/rtc/models/UserInfo;)V

    goto/16 :goto_1

    .line 1721
    :sswitch_d
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserAccountInfo;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PUserAccountInfo;-><init>()V

    .line 1722
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PUserAccountInfo;->unmarshall([B)V

    .line 1723
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserAccountInfo;->uid:I

    iget-object p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserAccountInfo;->userAccount:Ljava/lang/String;

    invoke-virtual {p3, p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onLocalUserRegistered(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 1696
    :sswitch_e
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResFirstRemoteAudioDecoded;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResFirstRemoteAudioDecoded;-><init>()V

    .line 1697
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResFirstRemoteAudioDecoded;->unmarshall([B)V

    .line 1698
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResFirstRemoteAudioDecoded;->uid:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResFirstRemoteAudioDecoded;->elapsed:I

    invoke-virtual {p3, p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onFirstRemoteAudioDecoded(II)V

    goto/16 :goto_1

    .line 1701
    :sswitch_f
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PAudioRoutingChanged;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PAudioRoutingChanged;-><init>()V

    .line 1702
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PAudioRoutingChanged;->unmarshall([B)V

    .line 1703
    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PAudioRoutingChanged;->routing:I

    invoke-virtual {p3, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onAudioRouteChanged(I)V

    goto/16 :goto_1

    .line 1716
    :sswitch_10
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PNetworkTypeChanged;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PNetworkTypeChanged;-><init>()V

    .line 1717
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PNetworkTypeChanged;->unmarshall([B)V

    .line 1718
    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PNetworkTypeChanged;->type:I

    invoke-virtual {p3, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onNetworkTypeChanged(I)V

    goto/16 :goto_1

    .line 1643
    :sswitch_11
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onRemoteAudioStat([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1607
    :sswitch_12
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onCameraExposureAreaChanged([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1652
    :sswitch_13
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PConnectionState;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PConnectionState;-><init>()V

    .line 1653
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PConnectionState;->unmarshall([B)V

    .line 1654
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PConnectionState;->state:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PConnectionState;->reason:I

    invoke-virtual {p3, p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onConnectionStateChanged(II)V

    goto/16 :goto_1

    .line 1706
    :sswitch_14
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserTransportStat;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PUserTransportStat;-><init>()V

    .line 1707
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PUserTransportStat;->unmarshall([B)V

    .line 1708
    iget-boolean p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserTransportStat;->isAudio:Z

    if-eqz p2, :cond_2

    .line 1709
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserTransportStat;->peer_uid:I

    iget v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserTransportStat;->delay:I

    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserTransportStat;->lost:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserTransportStat;->rxKBitRate:I

    invoke-virtual {p3, p2, v0, v1, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onRemoteAudioTransportStats(IIII)V

    goto/16 :goto_1

    .line 1712
    :cond_2
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserTransportStat;->peer_uid:I

    iget v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserTransportStat;->delay:I

    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserTransportStat;->lost:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PUserTransportStat;->rxKBitRate:I

    invoke-virtual {p3, p2, v0, v1, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onRemoteVideoTransportStats(IIII)V

    goto/16 :goto_1

    .line 1668
    :sswitch_15
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;-><init>()V

    .line 1669
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->unmarshall([B)V

    .line 1670
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->uid:I

    iget-boolean p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResUserState;->state:Z

    invoke-virtual {p3, p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onRemoteSubscribeFallbackToAudioOnly(IZ)V

    goto/16 :goto_1

    .line 1663
    :sswitch_16
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PLocalFallbackStatus;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalFallbackStatus;-><init>()V

    .line 1664
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PLocalFallbackStatus;->unmarshall([B)V

    .line 1665
    iget-boolean p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PLocalFallbackStatus;->state:Z

    invoke-virtual {p3, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onLocalPublishFallbackToAudioOnly(Z)V

    goto/16 :goto_1

    .line 1649
    :sswitch_17
    invoke-virtual {p3}, Lio/agora/rtc/IRtcEngineEventHandler;->onConnectionInterrupted()V

    goto/16 :goto_1

    .line 1657
    :sswitch_18
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onStreamMessage([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1646
    :sswitch_19
    invoke-virtual {p3}, Lio/agora/rtc/IRtcEngineEventHandler;->onConnectionLost()V

    goto/16 :goto_1

    .line 1601
    :sswitch_1a
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onFirstRemoteVideoDecoded([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1595
    :sswitch_1b
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onFirstLocalVideoFramePublished([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1592
    :sswitch_1c
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onFirstLocalVideoFrame([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1637
    :sswitch_1d
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onRemoteVideoStat([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1634
    :sswitch_1e
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onLocalVideoStat([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1598
    :sswitch_1f
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onFirstRemoteVideoFrame([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1575
    :sswitch_20
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onSpeakersReport([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1569
    :sswitch_21
    check-cast p3, Lio/agora/rtc/IRtcEngineEventHandlerEx;

    invoke-virtual {p3, p2}, Lio/agora/rtc/IRtcEngineEventHandlerEx;->onRecap([B)V

    goto/16 :goto_1

    .line 1498
    :sswitch_22
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;-><init>()V

    .line 1499
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->unmarshall([B)V

    .line 1500
    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->updateRtcStats(Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;)V

    .line 1501
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineImpl;->getRtcStats()Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onRtcStats(Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;)V

    goto/16 :goto_1

    .line 1393
    :sswitch_23
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResJoinMedia;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResJoinMedia;-><init>()V

    .line 1394
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResJoinMedia;->unmarshall([B)V

    .line 1395
    iget-boolean p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResJoinMedia;->firstSuccess:Z

    if-eqz p2, :cond_3

    .line 1396
    iget-object p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResJoinMedia;->channel:Ljava/lang/String;

    iget v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResJoinMedia;->uid:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResJoinMedia;->elapsed:I

    invoke-virtual {p3, p2, v0, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onJoinChannelSuccess(Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 1398
    :cond_3
    iget-object p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResJoinMedia;->channel:Ljava/lang/String;

    iget v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResJoinMedia;->uid:I

    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResJoinMedia;->elapsed:I

    invoke-virtual {p3, p2, v0, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onRejoinChannelSuccess(Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 1389
    :sswitch_24
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$MediaResSetupTime;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$MediaResSetupTime;-><init>()V

    .line 1390
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$MediaResSetupTime;->unmarshall([B)V

    goto/16 :goto_1

    .line 1495
    :sswitch_25
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onApiCallExecuted([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto/16 :goto_1

    .line 1448
    :sswitch_26
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaEngineEvent;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaEngineEvent;-><init>()V

    .line 1449
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaEngineEvent;->unmarshall([B)V

    .line 1450
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaEngineEvent;->code:I

    const/16 v0, 0xa

    if-eq p2, v0, :cond_8

    const/16 v0, 0xe

    if-eq p2, v0, :cond_7

    const/16 v0, 0xf

    if-eq p2, v0, :cond_6

    packed-switch p2, :pswitch_data_7

    .line 1466
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaEngineEvent;->code:I

    const/16 v0, 0x2bd

    if-lt p2, v0, :cond_13

    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaEngineEvent;->code:I

    const/16 v1, 0x2c9

    if-gt p2, v1, :cond_13

    .line 1467
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaEngineEvent;->code:I

    if-lt p2, v0, :cond_4

    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaEngineEvent;->code:I

    const/16 v0, 0x2bf

    if-gt p2, v0, :cond_4

    const/16 p2, 0x2ca

    .line 1468
    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaEngineEvent;->code:I

    invoke-virtual {p3, p2, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onAudioMixingStateChanged(II)V

    goto/16 :goto_1

    .line 1469
    :cond_4
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaEngineEvent;->code:I

    const/16 v0, 0x2c8

    if-eq p2, v0, :cond_5

    .line 1470
    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaEngineEvent;->code:I

    invoke-virtual {p3, p1, v7}, Lio/agora/rtc/IRtcEngineEventHandler;->onAudioMixingStateChanged(II)V

    goto/16 :goto_1

    :cond_5
    const-string p1, "AudioMixing restart"

    .line 1472
    invoke-static {v6, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1463
    :cond_6
    invoke-virtual {p3, v7}, Lio/agora/rtc/IRtcEngineEventHandler;->onMicrophoneEnabled(Z)V

    goto/16 :goto_1

    :cond_7
    const/4 p1, 0x1

    .line 1460
    invoke-virtual {p3, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onMicrophoneEnabled(Z)V

    goto/16 :goto_1

    .line 1452
    :cond_8
    invoke-virtual {p3}, Lio/agora/rtc/IRtcEngineEventHandler;->onAudioMixingFinished()V

    goto/16 :goto_1

    .line 1445
    :goto_0
    :sswitch_27
    invoke-virtual {p3}, Lio/agora/rtc/IRtcEngineEventHandler;->onMediaEngineLoadSuccess()V

    goto/16 :goto_1

    .line 1374
    :pswitch_1d
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PError;-><init>()V

    .line 1375
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PError;->unmarshall([B)V

    .line 1376
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;->err:I

    const/16 v8, 0x3fb

    if-eq p2, v8, :cond_9

    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;->err:I

    const/16 v8, 0x41c

    if-ne p2, v8, :cond_a

    :cond_9
    invoke-virtual {p0, v5}, Lio/agora/rtc/internal/RtcEngineImpl;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 1377
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;->err:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    invoke-direct {p0, v1, v7}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    .line 1380
    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    .line 1382
    :cond_a
    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;->err:I

    invoke-virtual {p3, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onWarning(I)V

    goto/16 :goto_1

    .line 1362
    :pswitch_1e
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PError;-><init>()V

    .line 1363
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PError;->unmarshall([B)V

    .line 1364
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;->err:I

    const/16 v8, 0x47f

    if-lt p2, v8, :cond_b

    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;->err:I

    const/16 v8, 0x48c

    if-le p2, v8, :cond_c

    :cond_b
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;->err:I

    const/16 v8, 0x3e9

    if-lt p2, v8, :cond_d

    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;->err:I

    const/16 v8, 0x409

    if-ge p2, v8, :cond_d

    invoke-virtual {p0, v5}, Lio/agora/rtc/internal/RtcEngineImpl;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 1365
    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;->err:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    invoke-direct {p0, v1, v7}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    .line 1368
    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    .line 1370
    :cond_d
    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PError;->err:I

    invoke-virtual {p3, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onError(I)V

    goto :goto_1

    .line 1359
    :pswitch_1f
    invoke-direct {p0, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->sendLogEvent([B)V

    goto :goto_1

    .line 1604
    :cond_e
    invoke-direct {p0, p2, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->onCameraFocusAreaChanged([BLio/agora/rtc/IRtcEngineEventHandler;)V

    goto :goto_1

    .line 1572
    :cond_f
    invoke-virtual {p3}, Lio/agora/rtc/IRtcEngineEventHandler;->onConnectionBanned()V

    goto :goto_1

    .line 1490
    :cond_10
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResAudioQuality;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResAudioQuality;-><init>()V

    .line 1491
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResAudioQuality;->unmarshall([B)V

    .line 1492
    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResAudioQuality;->peer_uid:I

    iget v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResAudioQuality;->quality:I

    iget-short v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResAudioQuality;->delay:S

    iget-short p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResAudioQuality;->lost:S

    invoke-virtual {p3, p2, v0, v1, p1}, Lio/agora/rtc/IRtcEngineEventHandler;->onAudioQuality(IISS)V

    goto :goto_1

    .line 1482
    :cond_11
    new-instance p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResTransportQuality;

    invoke-direct {p1}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResTransportQuality;-><init>()V

    .line 1483
    invoke-virtual {p1, p2}, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResTransportQuality;->unmarshall([B)V

    .line 1484
    iget-boolean p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResTransportQuality;->isAudio:Z

    if-eqz p2, :cond_12

    .line 1485
    check-cast p3, Lio/agora/rtc/IRtcEngineEventHandlerEx;

    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResTransportQuality;->peer_uid:I

    iget v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResTransportQuality;->bitrate:I

    iget-short v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResTransportQuality;->delay:S

    iget-short p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResTransportQuality;->lost:S

    invoke-virtual {p3, p2, v0, v1, p1}, Lio/agora/rtc/IRtcEngineEventHandlerEx;->onAudioTransportQuality(IISS)V

    goto :goto_1

    .line 1487
    :cond_12
    check-cast p3, Lio/agora/rtc/IRtcEngineEventHandlerEx;

    iget p2, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResTransportQuality;->peer_uid:I

    iget v0, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResTransportQuality;->bitrate:I

    iget-short v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResTransportQuality;->delay:S

    iget-short p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResTransportQuality;->lost:S

    invoke-virtual {p3, p2, v0, v1, p1}, Lio/agora/rtc/IRtcEngineEventHandlerEx;->onVideoTransportQuality(IISS)V

    :cond_13
    :goto_1
    :pswitch_20
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x3ea -> :sswitch_27
        0x450 -> :sswitch_26
        0x452 -> :sswitch_25
        0x2711 -> :sswitch_24
        0x32c9 -> :sswitch_23
        0x32d2 -> :sswitch_22
        0x36b0 -> :sswitch_21
        0x36b1 -> :sswitch_20
        0x36b2 -> :sswitch_1f
        0x36b3 -> :sswitch_1e
        0x36b4 -> :sswitch_1d
        0x36b5 -> :sswitch_1c
        0x36b6 -> :sswitch_1b
        0x36b7 -> :sswitch_1a
        0x36b8 -> :sswitch_19
        0x36b9 -> :sswitch_18
        0x36ba -> :sswitch_17
        0x36c6 -> :sswitch_16
        0x36c7 -> :sswitch_15
        0x36c8 -> :sswitch_14
        0x36cc -> :sswitch_13
        0x36cd -> :sswitch_12
        0x36ce -> :sswitch_11
        0x36cf -> :sswitch_10
        0x36d0 -> :sswitch_f
        0x36d1 -> :sswitch_e
        0x36d2 -> :sswitch_d
        0x36d3 -> :sswitch_c
        0x36d4 -> :sswitch_b
        0x36d5 -> :sswitch_a
        0x36d6 -> :sswitch_9
        0x36d8 -> :sswitch_8
        0x36d9 -> :sswitch_7
        0x36da -> :sswitch_6
        0x36db -> :sswitch_5
        0x36dc -> :sswitch_4
        0x36dd -> :sswitch_3
        0x36de -> :sswitch_2
        0x36df -> :sswitch_1
        0x36e0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x3ed
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x454
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x45c
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x32ce
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x32d5
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x36bc
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x14
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method public isCameraAutoFocusFaceModeSupported()Z
    .locals 4

    .line 984
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const-string v2, "che.video.camera.face_focus_supported"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetParameter(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 985
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isCameraExposurePositionSupported()Z
    .locals 4

    .line 978
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const-string v2, "che.video.camera.exposure_supported"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetParameter(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 979
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isCameraFocusSupported()Z
    .locals 4

    .line 972
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const-string v2, "che.video.camera.focus_supported"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetParameter(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 973
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isCameraTorchSupported()Z
    .locals 4

    .line 966
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const-string v2, "che.video.camera.torch_supported"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetParameter(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 967
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isCameraZoomSupported()Z
    .locals 4

    .line 960
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const-string v2, "che.video.camera.zoom_supported"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetParameter(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 961
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSpeakerphoneEnabled()Z
    .locals 2

    .line 800
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeIsSpeakerphoneEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isTextureEncodeSupported()Z
    .locals 1

    .line 2296
    invoke-static {}, Lio/agora/rtc/internal/DeviceUtils;->getRecommendedEncoderType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public joinChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "channelName",
            "optionalInfo",
            "optionalUid"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p1, -0x7

    return p1

    .line 532
    :cond_0
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->doJoinChannelCheck(Landroid/content/Context;)V

    .line 533
    iget-wide v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeJoinChannel(J[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 534
    monitor-enter p0

    .line 535
    :try_start_0
    iget-object p2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mDefaultRtcChannel:Lio/agora/rtc/internal/RtcChannelImpl;

    if-nez p2, :cond_1

    new-instance p2, Lio/agora/rtc/internal/RtcChannelImpl;

    invoke-direct {p2}, Lio/agora/rtc/internal/RtcChannelImpl;-><init>()V

    iput-object p2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mDefaultRtcChannel:Lio/agora/rtc/internal/RtcChannelImpl;

    :cond_1
    if-nez p1, :cond_2

    .line 537
    iget-object p2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mDefaultRtcChannel:Lio/agora/rtc/internal/RtcChannelImpl;

    iget-wide p3, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, p3, p4}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetDefaultRtcChannel(J)J

    move-result-wide p3

    invoke-virtual {p2, p0, p3, p4}, Lio/agora/rtc/internal/RtcChannelImpl;->initialize(Lio/agora/rtc/internal/RtcEngineImpl;J)I

    .line 539
    :cond_2
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public joinChannelWithUserAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "token",
            "channelId",
            "userAccount"
        }
    .end annotation

    .line 764
    iget-wide v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeJoinChannelWithUserAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 765
    monitor-enter p0

    .line 766
    :try_start_0
    iget-object p2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mDefaultRtcChannel:Lio/agora/rtc/internal/RtcChannelImpl;

    if-nez p2, :cond_0

    new-instance p2, Lio/agora/rtc/internal/RtcChannelImpl;

    invoke-direct {p2}, Lio/agora/rtc/internal/RtcChannelImpl;-><init>()V

    iput-object p2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mDefaultRtcChannel:Lio/agora/rtc/internal/RtcChannelImpl;

    :cond_0
    if-nez p1, :cond_1

    .line 768
    iget-object p2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mDefaultRtcChannel:Lio/agora/rtc/internal/RtcChannelImpl;

    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeGetDefaultRtcChannel(J)J

    move-result-wide v0

    invoke-virtual {p2, p0, v0, v1}, Lio/agora/rtc/internal/RtcChannelImpl;->initialize(Lio/agora/rtc/internal/RtcEngineImpl;J)I

    .line 770
    :cond_1
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public leaveChannel()I
    .locals 2

    .line 561
    monitor-enter p0

    .line 562
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mDefaultRtcChannel:Lio/agora/rtc/internal/RtcChannelImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mDefaultRtcChannel:Lio/agora/rtc/internal/RtcChannelImpl;

    .line 563
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    invoke-direct {p0}, Lio/agora/rtc/internal/RtcEngineImpl;->doLeaveChannelCheck()V

    .line 565
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeLeaveChannel(J)I

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    .line 563
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public makeQualityReportUrl(Ljava/lang/String;III)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "channelName",
            "listenerUid",
            "speakerUid",
            "format"
        }
    .end annotation

    .line 1218
    iget-wide v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeMakeQualityReportUrl(JLjava/lang/String;III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public monitorAudioRouteChange(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isMonitoring"
        }
    .end annotation

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "API call monitorAudioRouteChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public monitorBluetoothHeadsetEvent(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monitor"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter monitorBluetoothHeadsetEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RtcEngine"

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public monitorHeadsetEvent(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monitor"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter monitorHeadsetEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RtcEngine"

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public muteAllRemoteAudioStreams(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "muted"
        }
    .end annotation

    const-string v0, "rtc.audio.mute_peers"

    .line 693
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public muteAllRemoteVideoStreams(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "muted"
        }
    .end annotation

    .line 703
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeMuteAllRemoteVideoStreams(JZ)I

    move-result p1

    return p1
.end method

.method public muteLocalAudioStream(Z)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "muted"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 683
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "{\"rtc.audio.mute_me\":%b, \"che.audio.mute_me\":%b}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public muteLocalVideoStream(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "muted"
        }
    .end annotation

    .line 688
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeMuteLocalVideoStream(JZ)I

    move-result p1

    return p1
.end method

.method public muteRemoteAudioStream(IZ)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "muted"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    int-to-long v1, p1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 732
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"rtc.audio.mute_peer\":{\"uid\":%d,\"mute\":%b}}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public muteRemoteVideoStream(IZ)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "muted"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    int-to-long v1, p1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 743
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"rtc.video.mute_peer\":{\"uid\":%d,\"mute\":%b}}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected onChannelEvent(Ljava/lang/String;I[B)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "channel",
            "eventId",
            "evt"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 1326
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1329
    monitor-enter p0

    .line 1330
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mRtcChannels:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/agora/rtc/internal/RtcChannelImpl;

    .line 1331
    invoke-virtual {v2}, Lio/agora/rtc/internal/RtcChannelImpl;->channelId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lio/agora/rtc/internal/RtcChannelImpl;->channelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 1347
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    .line 1349
    invoke-virtual {v0}, Lio/agora/rtc/internal/RtcChannelImpl;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 1350
    :cond_3
    invoke-virtual {v0}, Lio/agora/rtc/internal/RtcChannelImpl;->getEventHandler()Lio/agora/rtc/IRtcChannelEventHandler;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    .line 1352
    :cond_4
    invoke-virtual {v0}, Lio/agora/rtc/internal/RtcChannelImpl;->getEventHandler()Lio/agora/rtc/IRtcChannelEventHandler;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->handleChannelEvent(I[BLio/agora/rtc/IRtcChannelEventHandler;Lio/agora/rtc/internal/RtcChannelImpl;)V

    :cond_5
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 1347
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_6
    :goto_1
    return-void
.end method

.method protected onEvent(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventId",
            "evt"
        }
    .end annotation

    .line 1311
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mRtcHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1312
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1313
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/agora/rtc/IRtcEngineEventHandler;

    if-nez v1, :cond_0

    .line 1315
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1318
    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->handleEvent(I[BLio/agora/rtc/IRtcEngineEventHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1321
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onEvent: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RtcEngine"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onRtcChannelJoinChannel()V
    .locals 1

    .line 2788
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->doJoinChannelCheck(Landroid/content/Context;)V

    return-void
.end method

.method public onRtcChannelLeaveChannel()V
    .locals 0

    .line 2792
    invoke-direct {p0}, Lio/agora/rtc/internal/RtcEngineImpl;->doLeaveChannelCheck()V

    return-void
.end method

.method public pauseAllEffects()I
    .locals 2

    const-string v0, "che.audio.game_pause_all_effects"

    const/4 v1, 0x1

    .line 2696
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public pauseAudio()I
    .locals 2

    const-string v0, "rtc.audio.paused"

    const/4 v1, 0x1

    .line 673
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public pauseAudioMixing()I
    .locals 2

    const-string v0, "che.audio.pause_file_as_playout"

    const/4 v1, 0x1

    .line 1080
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public pauseEffect(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "soundId"
        }
    .end annotation

    const-string v0, "che.audio.game_pause_effect"

    .line 2691
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public playEffect(ILjava/lang/String;IDDD)I
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "soundId",
            "filePath",
            "loopCount",
            "pitch",
            "pan",
            "gain"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    .line 2654
    invoke-virtual/range {v0 .. v10}, Lio/agora/rtc/internal/RtcEngineImpl;->playEffect(ILjava/lang/String;IDDDZ)I

    move-result v0

    return v0
.end method

.method public playEffect(ILjava/lang/String;IDDDZ)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "soundId",
            "filePath",
            "loopCount",
            "pitch",
            "pan",
            "gain",
            "publish"
        }
    .end annotation

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 2663
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    invoke-static {p8, p9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x6

    aput-object p1, v0, p2

    const-string p1, "{\"soundId\":%d,\"filePath\":\"%s\",\"loopCount\":%d, \"pitch\":%f,\"pan\":%f,\"gain\":%f, \"send2far\":%d}"

    .line 2661
    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.audio.game_play_effect"

    .line 2660
    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public playRecap()I
    .locals 2

    const-string v0, "che.audio.recap.start_play"

    const/4 v1, 0x1

    .line 883
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public preloadEffect(ILjava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "soundId",
            "filePath"
        }
    .end annotation

    .line 2678
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2681
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "{\"soundId\":%d,\"filePath\":\"%s\"}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.audio.game_preload_effect"

    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public pullPlaybackAudioFrame([BI)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "lengthInBytes"
        }
    .end annotation

    .line 1156
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativePullAudioFrame(J[BI)I

    move-result p1

    return p1
.end method

.method public pushExternalAudioFrame([BJ)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "timestamp"
        }
    .end annotation

    .line 1172
    iget-wide v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    iget v6, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mExAudioSampleRate:I

    iget v7, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mExAudioChannels:I

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v7}, Lio/agora/rtc/internal/RtcEngineImpl;->nativePushExternalAudioFrameRawData(J[BJII)I

    move-result p1

    return p1
.end method

.method public pushExternalVideoFrame(Lio/agora/rtc/video/AgoraVideoFrame;)Z
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v0, p1

    const/4 v15, 0x0

    if-eqz v0, :cond_b

    .line 2320
    iget v1, v0, Lio/agora/rtc/video/AgoraVideoFrame;->format:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    goto/16 :goto_1

    .line 2325
    :cond_0
    iget v1, v14, Lio/agora/rtc/internal/RtcEngineImpl;->mVideoSourceType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const-string v0, "pushExternalVideoFrame failed!! Call setExternalVideoSource to enable enable external video source!!"

    .line 2326
    invoke-static {v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;)V

    return v15

    .line 2330
    :cond_1
    iget v1, v0, Lio/agora/rtc/video/AgoraVideoFrame;->format:I

    const/16 v2, 0xa

    const/16 v16, 0x1

    if-eq v1, v2, :cond_6

    iget v1, v0, Lio/agora/rtc/video/AgoraVideoFrame;->format:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 2354
    :cond_2
    iget v1, v0, Lio/agora/rtc/video/AgoraVideoFrame;->format:I

    if-lez v1, :cond_3

    iget v1, v0, Lio/agora/rtc/video/AgoraVideoFrame;->format:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_4

    :cond_3
    iget v1, v0, Lio/agora/rtc/video/AgoraVideoFrame;->format:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_a

    .line 2356
    :cond_4
    iget-wide v1, v14, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    iget-object v3, v0, Lio/agora/rtc/video/AgoraVideoFrame;->buf:[B

    iget v4, v0, Lio/agora/rtc/video/AgoraVideoFrame;->stride:I

    iget v5, v0, Lio/agora/rtc/video/AgoraVideoFrame;->height:I

    iget v6, v0, Lio/agora/rtc/video/AgoraVideoFrame;->cropLeft:I

    iget v7, v0, Lio/agora/rtc/video/AgoraVideoFrame;->cropTop:I

    iget v8, v0, Lio/agora/rtc/video/AgoraVideoFrame;->cropRight:I

    iget v9, v0, Lio/agora/rtc/video/AgoraVideoFrame;->cropBottom:I

    iget v10, v0, Lio/agora/rtc/video/AgoraVideoFrame;->rotation:I

    iget-wide v11, v0, Lio/agora/rtc/video/AgoraVideoFrame;->timeStamp:J

    iget v13, v0, Lio/agora/rtc/video/AgoraVideoFrame;->format:I

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v13}, Lio/agora/rtc/internal/RtcEngineImpl;->deliverFrame(J[BIIIIIIIJI)I

    move-result v0

    if-nez v0, :cond_5

    const/4 v15, 0x1

    :cond_5
    return v15

    .line 2332
    :cond_6
    :goto_0
    iget v1, v0, Lio/agora/rtc/video/AgoraVideoFrame;->textureID:I

    if-nez v1, :cond_7

    const-string v0, "pushExternalVideoFrame failed!! invalid texture ID."

    .line 2333
    invoke-static {v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;)V

    return v15

    .line 2338
    :cond_7
    iget-object v1, v0, Lio/agora/rtc/video/AgoraVideoFrame;->eglContext14:Landroid/opengl/EGLContext;

    if-eqz v1, :cond_9

    .line 2339
    iget-object v1, v0, Lio/agora/rtc/video/AgoraVideoFrame;->eglContext14:Landroid/opengl/EGLContext;

    invoke-virtual {v14, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->updateSharedContext(Landroid/opengl/EGLContext;)I

    move-result v1

    if-nez v1, :cond_a

    .line 2340
    iget v1, v0, Lio/agora/rtc/video/AgoraVideoFrame;->textureID:I

    iget-object v2, v0, Lio/agora/rtc/video/AgoraVideoFrame;->eglContext14:Landroid/opengl/EGLContext;

    iget v3, v0, Lio/agora/rtc/video/AgoraVideoFrame;->format:I

    iget v4, v0, Lio/agora/rtc/video/AgoraVideoFrame;->stride:I

    iget v5, v0, Lio/agora/rtc/video/AgoraVideoFrame;->height:I

    iget-wide v6, v0, Lio/agora/rtc/video/AgoraVideoFrame;->timeStamp:J

    iget-object v8, v0, Lio/agora/rtc/video/AgoraVideoFrame;->transform:[F

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lio/agora/rtc/internal/RtcEngineImpl;->setTextureIdWithMatrix(ILandroid/opengl/EGLContext;IIIJ[F)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v15, 0x1

    :cond_8
    return v15

    .line 2346
    :cond_9
    iget-object v1, v0, Lio/agora/rtc/video/AgoraVideoFrame;->eglContext11:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_a

    .line 2347
    iget-object v1, v0, Lio/agora/rtc/video/AgoraVideoFrame;->eglContext11:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v14, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->updateSharedContext(Ljavax/microedition/khronos/egl/EGLContext;)I

    move-result v1

    if-nez v1, :cond_a

    .line 2348
    iget v1, v0, Lio/agora/rtc/video/AgoraVideoFrame;->textureID:I

    iget-object v2, v0, Lio/agora/rtc/video/AgoraVideoFrame;->eglContext11:Ljavax/microedition/khronos/egl/EGLContext;

    iget v3, v0, Lio/agora/rtc/video/AgoraVideoFrame;->format:I

    iget v4, v0, Lio/agora/rtc/video/AgoraVideoFrame;->stride:I

    iget v5, v0, Lio/agora/rtc/video/AgoraVideoFrame;->height:I

    iget-wide v6, v0, Lio/agora/rtc/video/AgoraVideoFrame;->timeStamp:J

    iget-object v8, v0, Lio/agora/rtc/video/AgoraVideoFrame;->transform:[F

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Lio/agora/rtc/internal/RtcEngineImpl;->setTextureIdWithMatrix(ILjavax/microedition/khronos/egl/EGLContext;IIIJ[F)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v15, 0x1

    :cond_a
    return v15

    :cond_b
    :goto_1
    const-string v0, "pushExternalVideoFrame failed!! invalid video frame."

    .line 2321
    invoke-static {v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;)V

    return v15
.end method

.method public rate(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "callId",
            "rating",
            "description"
        }
    .end annotation

    .line 1228
    iget-wide v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeRate(JLjava/lang/String;ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public registerAudioFrameObserver(Lio/agora/rtc/IAudioFrameObserver;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 1143
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeRegisterAudioFrameObserver(JLjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public registerLocalUserAccount(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appId",
            "userAccount"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 758
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeRegisterLocalUserAccount(JLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x2

    return p1
.end method

.method public registerMediaMetadataObserver(Lio/agora/rtc/IMetadataObserver;I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "observer",
            "type"
        }
    .end annotation

    .line 2731
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeRegisterMediaMetadataObserver(JLjava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public reinitialize(Landroid/content/Context;Ljava/lang/String;Lio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "appId",
            "handler"
        }
    .end annotation

    .line 212
    invoke-virtual {p0, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->addHandler(Lio/agora/rtc/IRtcEngineEventHandler;)V

    return-void
.end method

.method public removeHandler(Lio/agora/rtc/IRtcEngineEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mRtcHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mRtcHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeInjectStreamUrl(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x2

    return p1

    .line 2398
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeRemoveInjectStreamUrl(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public removePublishStreamUrl(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 2370
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeRemovePublishStreamUrl(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public removeRemoteVideoTrack(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 2533
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeRemoveVideoReceiveTrack(JI)I

    move-result p1

    return p1
.end method

.method public renewToken(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    const-string v0, "rtc.renew_token"

    .line 750
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public resumeAllEffects()I
    .locals 2

    const-string v0, "che.audio.game_resume_all_effects"

    const/4 v1, 0x1

    .line 2706
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public resumeAudio()I
    .locals 2

    const-string v0, "rtc.audio.paused"

    const/4 v1, 0x0

    .line 678
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public resumeAudioMixing()I
    .locals 2

    const-string v0, "che.audio.pause_file_as_playout"

    const/4 v1, 0x0

    .line 1084
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public resumeEffect(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "soundId"
        }
    .end annotation

    const-string v0, "che.audio.game_resume_effect"

    .line 2701
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public sendCustomReportMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "category",
            "event",
            "label",
            "value"
        }
    .end annotation

    .line 289
    iget-wide v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSendCustomReportMessage(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public sendStreamMessage(I[B)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamId",
            "message"
        }
    .end annotation

    .line 2235
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSendStreamMessage(JI[B)I

    move-result p1

    return p1
.end method

.method public setApiCallMode(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "syncCallTimeout"
        }
    .end annotation

    .line 2715
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetApiCallMode(JI)I

    move-result p1

    return p1
.end method

.method public setAppType(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appType"
        }
    .end annotation

    .line 1199
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetAppType(JI)I

    move-result p1

    return p1
.end method

.method public setAudioMixingPitch(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pitch"
        }
    .end annotation

    const/16 v0, 0xc

    if-gt p1, v0, :cond_1

    const/16 v0, -0xc

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "che.audio.set_playout_file_pitch_semitones"

    .line 1133
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x2

    return p1
.end method

.method public setAudioMixingPosition(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    const-string v0, "che.audio.mixing.file.position"

    .line 1125
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setAudioProfile(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "profile",
            "scenario"
        }
    .end annotation

    .line 920
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetAudioProfile(JII)I

    move-result p1

    return p1
.end method

.method public setBeautyEffectOptions(ZLio/agora/rtc/video/BeautyOptions;)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enabled",
            "options"
        }
    .end annotation

    .line 716
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 p1, -0x4

    return p1

    :cond_0
    if-nez p2, :cond_2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    const/4 p1, -0x2

    return p1

    .line 723
    :cond_1
    new-instance p2, Lio/agora/rtc/video/BeautyOptions;

    invoke-direct {p2}, Lio/agora/rtc/video/BeautyOptions;-><init>()V

    .line 726
    :cond_2
    iget-wide v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    iget v4, p2, Lio/agora/rtc/video/BeautyOptions;->lighteningContrastLevel:I

    iget v5, p2, Lio/agora/rtc/video/BeautyOptions;->lighteningLevel:F

    iget v6, p2, Lio/agora/rtc/video/BeautyOptions;->smoothnessLevel:F

    iget v7, p2, Lio/agora/rtc/video/BeautyOptions;->rednessLevel:F

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v7}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetBeautyEffectOptions(JZIFFF)I

    move-result p1

    return p1
.end method

.method public setCameraAutoFocusFaceModeEnabled(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    const-string v0, "che.video.camera.face_detection"

    .line 1020
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public setCameraCapturerConfiguration(Lio/agora/rtc/video/CameraCapturerConfiguration;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 1256
    iget-object v0, p1, Lio/agora/rtc/video/CameraCapturerConfiguration;->preference:Lio/agora/rtc/video/CameraCapturerConfiguration$CAPTURER_OUTPUT_PREFERENCE;

    invoke-virtual {v0}, Lio/agora/rtc/video/CameraCapturerConfiguration$CAPTURER_OUTPUT_PREFERENCE;->getValue()I

    move-result v0

    const-string v1, "che.video.camera_capture_mode"

    invoke-direct {p0, v1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1258
    iget-object p1, p1, Lio/agora/rtc/video/CameraCapturerConfiguration;->cameraDirection:Lio/agora/rtc/video/CameraCapturerConfiguration$CAMERA_DIRECTION;

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->switchCamera(Lio/agora/rtc/video/CameraCapturerConfiguration$CAMERA_DIRECTION;)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public setCameraExposurePosition(FF)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "positionXinView",
            "positionYinView"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1010
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "{\"x\":%f,\"y\":%f,\"preview\":%b}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.video.camera.exposure"

    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setCameraFocusPositionInPreview(FF)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "positionX",
            "positionY"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1005
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "{\"x\":%f,\"y\":%f,\"preview\":%b}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.video.camera.focus"

    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setCameraTorchOn(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    const-string v0, "che.video.camera.flash"

    .line 1015
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public setCameraZoomFactor(F)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "factor"
        }
    .end annotation

    float-to-double v0, p1

    const-string p1, "che.video.camera.zoom"

    .line 990
    invoke-direct {p0, p1, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;D)I

    move-result p1

    return p1
.end method

.method public setChannelProfile(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "profile"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 1239
    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->setClientRole(I)I

    .line 1246
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetChannelProfile(JI)I

    move-result p1

    return p1
.end method

.method public setClientRole(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "role"
        }
    .end annotation

    .line 1251
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetClientRole(JI)I

    move-result p1

    return p1
.end method

.method public setDefaultAudioRoutetoSpeakerphone(Z)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultToSpeaker"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 788
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "API call to setDefaultAudioRoutetoSpeakerphone :%b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;)V

    .line 789
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetDefaultAudioRoutetoSpeakerphone(JZ)I

    move-result p1

    return p1
.end method

.method public setDefaultMuteAllRemoteAudioStreams(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "muted"
        }
    .end annotation

    const-string v0, "rtc.audio.set_default_mute_peers"

    .line 698
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public setDefaultMuteAllRemoteVideoStreams(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "muted"
        }
    .end annotation

    const-string v0, "rtc.video.set_default_mute_peers"

    .line 708
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public setEffectsVolume(D)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    const-string v0, "che.audio.game_set_effects_volume"

    .line 2642
    invoke-direct {p0, v0, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;D)I

    move-result p1

    return p1
.end method

.method public setEnableSpeakerphone(Z)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speakerOn"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 794
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "API call to setEnableSpeakerphone to %b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;)V

    .line 795
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetEnableSpeakerphone(JZ)I

    move-result p1

    return p1
.end method

.method public setEncryptionMode(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encryptionMode"
        }
    .end annotation

    const-string v0, "rtc.encryption.mode"

    .line 1289
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setEncryptionSecret(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secret"
        }
    .end annotation

    .line 1296
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetEncryptionSecret(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setExternalAudioSink(ZII)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enabled",
            "sampleRate",
            "channels"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    .line 1149
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    const/4 p1, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    const-string p1, "{\"che.audio.external_render\":%b,\"che.audio.external_render.pull\":%b,\"che.audio.set_render_raw_audio_format\":{\"sampleRate\":%d,\"channelCnt\":%d,\"mode\":%d}}"

    invoke-static {p1, v4}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    new-array p2, v2, [Ljava/lang/Object;

    .line 1151
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, p2, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "{\"che.audio.external_render\":%b,\"che.audio.external_render\":%b,\"che.audio.external_render.pull\":%b}"

    invoke-static {p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setExternalAudioSource(ZII)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enabled",
            "sampleRate",
            "channels"
        }
    .end annotation

    .line 1162
    iput p2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mExAudioSampleRate:I

    .line 1163
    iput p3, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mExAudioChannels:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    .line 1165
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    const/4 p1, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    const-string p1, "{\"che.audio.external_capture\":%b,\"che.audio.external_capture.push\":%b,\"che.audio.set_capture_raw_audio_format\":{\"sampleRate\":%d,\"channelCnt\":%d,\"mode\":%d}}"

    invoke-static {p1, v4}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    new-array p2, v2, [Ljava/lang/Object;

    .line 1167
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p2, v3

    const-string p1, "{\"che.audio.external_capture\":%b,\"che.audio.external_capture\":%b,\"che.audio.external_capture.push\":%b}"

    invoke-static {p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setExternalVideoSource(ZZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enable",
            "useTexture",
            "pushMode"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    .line 2303
    iput v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mVideoSourceType:I

    goto :goto_0

    .line 2306
    :cond_0
    iput v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mVideoSourceType:I

    :goto_0
    if-eqz p2, :cond_2

    const-string p2, "che.video.enable_external_texture_input"

    if-eqz p1, :cond_1

    .line 2310
    invoke-direct {p0, p2, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 2312
    invoke-direct {p0, p2, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    const-string p2, "setExternalVideoSource: on Android, texture mode cannot be disabled once enabled."

    .line 2313
    invoke-static {p2}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;)V

    .line 2316
    :cond_2
    :goto_1
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p3}, Lio/agora/rtc/internal/RtcEngineImpl;->setExtVideoSource(JII)I

    return-void
.end method

.method public setHighQualityAudioParameters(ZZZ)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fullband",
            "stereo",
            "fullBitrate"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 837
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "{\"fullband\":%b,\"stereo\":%b,\"fullBitrate\":%b}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.audio.codec.hq"

    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setInEarMonitoringVolume(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    const-string v0, "che.audio.headset.monitoring.parameter"

    .line 2629
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setLiveTranscoding(Lio/agora/rtc/live/LiveTranscoding;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transcoding"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x2

    return p1

    .line 2378
    :cond_0
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PLiveTranscoding;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PLiveTranscoding;-><init>()V

    .line 2379
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PLiveTranscoding;->marshall(Lio/agora/rtc/live/LiveTranscoding;)[B

    move-result-object p1

    .line 2380
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetLiveTranscoding(J[B)I

    move-result p1

    return p1
.end method

.method public setLocalPublishFallbackOption(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    const-string v0, "rtc.local_publish_fallback_option"

    .line 1279
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setLocalRenderMode(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderMode"
        }
    .end annotation

    const/4 v0, 0x0

    .line 313
    invoke-virtual {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setRemoteRenderMode(II)I

    move-result p1

    return p1
.end method

.method public setLocalRenderMode(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "renderMode",
            "mirrorMode"
        }
    .end annotation

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p0, v0, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->setRemoteRenderMode(III)I

    move-result p1

    return p1
.end method

.method public setLocalVideoMirrorMode(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 333
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetLocalVideoMirrorMode(JI)I

    move-result p1

    return p1
.end method

.method public setLocalVideoRenderer(Lio/agora/rtc/mediaio/IVideoSink;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "render"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2511
    :cond_0
    instance-of v0, p1, Lio/agora/rtc/mediaio/AgoraDefaultRender;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 2516
    :goto_0
    iget-wide v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v1, v2, p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeAddLocalVideoRender(JLio/agora/rtc/mediaio/IVideoSink;I)I

    move-result p1

    return p1
.end method

.method public setLocalVoiceChanger(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "voiceChanger"
        }
    .end annotation

    const-string v0, "che.audio.morph.voice_changer"

    if-nez p1, :cond_0

    .line 2579
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    const/high16 v1, 0x100000

    if-lez p1, :cond_1

    if-ge p1, v1, :cond_1

    .line 2583
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_1
    const/high16 v2, 0x200000

    if-le p1, v1, :cond_2

    if-ge p1, v2, :cond_2

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x6

    .line 2587
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_2
    if-le p1, v2, :cond_3

    const/high16 v0, 0x300000

    if-ge p1, v0, :cond_3

    sub-int/2addr p1, v2

    const-string v0, "che.audio.morph.beauty_voice"

    .line 2591
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_3
    const/4 p1, -0x7

    return p1
.end method

.method public setLocalVoiceEqualization(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bandFrequency",
            "bandGain"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 2564
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"index\":%d,\"gain\":%d}"

    .line 2563
    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.audio.morph.equalization"

    .line 2561
    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setLocalVoicePitch(D)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pitch"
        }
    .end annotation

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v0

    double-to-int p1, p1

    const-string p2, "che.audio.morph.pitch_shift"

    .line 2556
    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setLocalVoiceReverb(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reverbKey",
            "value"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 2572
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"key\":%d,\"value\":%d}"

    .line 2571
    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.audio.morph.reverb"

    .line 2569
    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setLocalVoiceReverbPreset(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preset"
        }
    .end annotation

    const-string v0, "che.audio.morph.reverb_preset"

    if-nez p1, :cond_0

    .line 2605
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    const/high16 v1, 0x100000

    if-lez p1, :cond_1

    if-ge p1, v1, :cond_1

    add-int/lit8 p1, p1, 0x8

    .line 2609
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_1
    const/high16 v2, 0x200000

    if-le p1, v1, :cond_2

    if-ge p1, v2, :cond_2

    sub-int/2addr p1, v1

    .line 2613
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_2
    if-le p1, v2, :cond_3

    const v0, 0x200002

    if-ge p1, v0, :cond_3

    sub-int/2addr p1, v2

    const-string v0, "che.audio.morph.virtual_stereo"

    .line 2617
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_3
    const/4 p1, -0x7

    return p1
.end method

.method public setLogFile(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    const-string v0, "rtc.log_file"

    .line 1177
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setLogFileSize(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileSizeInKBytes"
        }
    .end annotation

    const-string v0, "rtc.log_size"

    .line 1185
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setLogFilter(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    and-int/lit16 p1, p1, 0x80f

    const-string v0, "rtc.log_filter"

    .line 1181
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setMixedAudioFrameParameters(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sampleRate",
            "samplesPerCall"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 832
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"sampleRate\":%d,\"samplesPerCall\":%d}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.audio.set_mixed_raw_audio_format"

    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setParameters(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 1204
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetParameters(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setPlaybackAudioFrameParameters(IIII)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sampleRate",
            "channel",
            "mode",
            "samplesPerCall"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 827
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "{\"sampleRate\":%d,\"channelCnt\":%d,\"mode\":%d,\"samplesPerCall\":%d}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.audio.set_render_raw_audio_format"

    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setPreferHeadset(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setProfile(Ljava/lang/String;Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "profile",
            "merge"
        }
    .end annotation

    .line 1190
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetProfile(JLjava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public setRecordingAudioFrameParameters(IIII)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sampleRate",
            "channel",
            "mode",
            "samplesPerCall"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 822
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "{\"sampleRate\":%d,\"channelCnt\":%d,\"mode\":%d,\"samplesPerCall\":%d}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.audio.set_capture_raw_audio_format"

    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setRemoteDefaultVideoStreamType(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamType"
        }
    .end annotation

    const-string v0, "rtc.video.set_remote_default_video_stream_type"

    .line 1274
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setRemoteRenderMode(II)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "renderMode"
        }
    .end annotation

    .line 323
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int p1, v2

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetRemoteRenderMode(JII)I

    move-result p1

    return p1
.end method

.method public setRemoteRenderMode(III)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "renderMode",
            "mirrorMode"
        }
    .end annotation

    .line 328
    iget-wide v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    int-to-long v3, p1

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    long-to-int v3, v3

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetRemoteRenderModeWithMirrorMode(JIII)I

    move-result p1

    return p1
.end method

.method public setRemoteSubscribeFallbackOption(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    const-string v0, "rtc.remote_subscribe_fallback_option"

    .line 1284
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setRemoteUserPriority(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "userPriority"
        }
    .end annotation

    .line 1269
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetRemoteUserPriority(JII)I

    move-result p1

    return p1
.end method

.method public setRemoteVideoRenderer(ILio/agora/rtc/mediaio/IVideoSink;)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "render"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 v0, 0x0

    const/4 v6, 0x0

    goto :goto_0

    .line 2524
    :cond_0
    instance-of v0, p2, Lio/agora/rtc/mediaio/AgoraDefaultRender;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    const/4 v6, 0x2

    .line 2529
    :goto_0
    iget-wide v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeAddRemoteVideoRender(JILio/agora/rtc/mediaio/IVideoSink;I)I

    move-result p1

    return p1
.end method

.method public setRemoteVideoStreamType(II)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "streamType"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    int-to-long v1, p1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 1264
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v0, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v0, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "{\"rtc.video.set_remote_video_stream\":{\"uid\":%d,\"stream\":%d},\"che.video.setstream\":{\"uid\":%d,\"stream\":%d}}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setRemoteVoicePosition(IDD)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "pan",
            "gain"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    int-to-long v1, p1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 2551
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "{\"uid\":%d,\"pan\":%f,\"gain\":%f}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.audio.game_place_sound_position"

    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setTextureId(ILandroid/opengl/EGLContext;IIJ)I
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "sharedContext",
            "width",
            "height",
            "ts"
        }
    .end annotation

    move-object v11, p0

    .line 2267
    iget-wide v1, v11, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    sget-object v10, Lio/agora/rtc/internal/RtcEngineImpl;->sMatrix:[F

    const/16 v5, 0xb

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v10}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetEGL14TextureId(JILandroid/opengl/EGLContext;IIIJ[F)I

    move-result v0

    return v0
.end method

.method public setTextureId(ILjavax/microedition/khronos/egl/EGLContext;IIJ)I
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "sharedContext",
            "width",
            "height",
            "ts"
        }
    .end annotation

    move-object v11, p0

    .line 2261
    iget-wide v1, v11, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    sget-object v10, Lio/agora/rtc/internal/RtcEngineImpl;->sMatrix:[F

    const/16 v5, 0xa

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v10}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetEGL10TextureId(JILjavax/microedition/khronos/egl/EGLContext;IIIJ[F)I

    move-result v0

    return v0
.end method

.method public setTextureIdWithMatrix(ILandroid/opengl/EGLContext;IIIJ[F)I
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "sharedContext",
            "format",
            "width",
            "height",
            "ts",
            "matrix"
        }
    .end annotation

    move-object v11, p0

    move-object/from16 v10, p8

    if-nez v10, :cond_0

    .line 2285
    iget-wide v1, v11, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    sget-object v10, Lio/agora/rtc/internal/RtcEngineImpl;->sMatrix:[F

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v0 .. v10}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetEGL14TextureId(JILandroid/opengl/EGLContext;IIIJ[F)I

    move-result v0

    return v0

    .line 2289
    :cond_0
    array-length v0, v10

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    const/4 v0, -0x2

    return v0

    .line 2292
    :cond_1
    iget-wide v1, v11, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetEGL14TextureId(JILandroid/opengl/EGLContext;IIIJ[F)I

    move-result v0

    return v0
.end method

.method public setTextureIdWithMatrix(ILjavax/microedition/khronos/egl/EGLContext;IIIJ[F)I
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "sharedContext",
            "format",
            "width",
            "height",
            "ts",
            "matrix"
        }
    .end annotation

    move-object v11, p0

    move-object/from16 v10, p8

    if-nez v10, :cond_0

    .line 2273
    iget-wide v1, v11, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    sget-object v10, Lio/agora/rtc/internal/RtcEngineImpl;->sMatrix:[F

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v0 .. v10}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetEGL10TextureId(JILjavax/microedition/khronos/egl/EGLContext;IIIJ[F)I

    move-result v0

    return v0

    .line 2277
    :cond_0
    array-length v0, v10

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    const/4 v0, -0x2

    return v0

    .line 2280
    :cond_1
    iget-wide v1, v11, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetEGL10TextureId(JILjavax/microedition/khronos/egl/EGLContext;IIIJ[F)I

    move-result v0

    return v0
.end method

.method public setVideoEncoderConfiguration(Lio/agora/rtc/video/VideoEncoderConfiguration;)I
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 908
    iget-wide v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    iget-object v0, p1, Lio/agora/rtc/video/VideoEncoderConfiguration;->dimensions:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    iget v3, v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;->width:I

    iget-object v0, p1, Lio/agora/rtc/video/VideoEncoderConfiguration;->dimensions:Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;

    iget v4, v0, Lio/agora/rtc/video/VideoEncoderConfiguration$VideoDimensions;->height:I

    iget v5, p1, Lio/agora/rtc/video/VideoEncoderConfiguration;->frameRate:I

    iget v6, p1, Lio/agora/rtc/video/VideoEncoderConfiguration;->minFrameRate:I

    iget v7, p1, Lio/agora/rtc/video/VideoEncoderConfiguration;->bitrate:I

    iget v8, p1, Lio/agora/rtc/video/VideoEncoderConfiguration;->minBitrate:I

    iget-object v0, p1, Lio/agora/rtc/video/VideoEncoderConfiguration;->orientationMode:Lio/agora/rtc/video/VideoEncoderConfiguration$ORIENTATION_MODE;

    .line 911
    invoke-virtual {v0}, Lio/agora/rtc/video/VideoEncoderConfiguration$ORIENTATION_MODE;->getValue()I

    move-result v9

    iget-object v0, p1, Lio/agora/rtc/video/VideoEncoderConfiguration;->degradationPrefer:Lio/agora/rtc/video/VideoEncoderConfiguration$DEGRADATION_PREFERENCE;

    invoke-virtual {v0}, Lio/agora/rtc/video/VideoEncoderConfiguration$DEGRADATION_PREFERENCE;->getValue()I

    move-result v10

    iget v11, p1, Lio/agora/rtc/video/VideoEncoderConfiguration;->mirrorMode:I

    move-object v0, p0

    .line 908
    invoke-direct/range {v0 .. v11}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetVideoEncoderConfiguration(JIIIIIIIII)I

    move-result p1

    return p1
.end method

.method public setVideoProfile(IIII)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "frameRate",
            "bitrate"
        }
    .end annotation

    .line 903
    iget-wide v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetVideoProfileEx(JIIII)I

    move-result p1

    return p1
.end method

.method public setVideoProfile(IZ)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "profile",
            "swapWidthAndHeight"
        }
    .end annotation

    if-gez p1, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 898
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "{\"rtc.video.profile\":[%d,%b]}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setVideoQualityParameters(Z)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preferFrameRateOverImageQuality"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 850
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "{\"rtc.video.prefer_frame_rate\":%b,\"che.video.prefer_frame_rate\":%b}"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setVideoSource(Lio/agora/rtc/mediaio/IVideoSource;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoSource"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 2498
    iput v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mVideoSourceType:I

    goto :goto_0

    .line 2499
    :cond_0
    instance-of v0, p1, Lio/agora/rtc/mediaio/AgoraDefaultSource;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2500
    iput v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mVideoSourceType:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 2502
    iput v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mVideoSourceType:I

    .line 2504
    :goto_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    iget v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mVideoSourceType:I

    invoke-direct {p0, v0, v1, p1, v2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeAddVideoCapturer(JLio/agora/rtc/mediaio/IVideoSource;I)I

    move-result p1

    return p1
.end method

.method public setVolumeOfEffect(ID)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "soundId",
            "volume"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 2648
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"soundId\":%d,\"gain\":%f}"

    .line 2647
    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.audio.game_adjust_effect_volume"

    .line 2646
    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setupLocalVideo(Lio/agora/rtc/video/VideoCanvas;)I
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "local"
        }
    .end annotation

    const-string v0, "setupLocalVideo"

    .line 294
    invoke-static {v0}, Lio/agora/rtc/internal/RtcEngineImpl;->checkIfInUIThread(Ljava/lang/String;)Z

    .line 295
    iget v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mVideoSourceType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 300
    iput-boolean v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mUseLocalView:Z

    .line 302
    iget-wide v3, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    iget-object v5, p1, Lio/agora/rtc/video/VideoCanvas;->view:Landroid/view/View;

    iget v6, p1, Lio/agora/rtc/video/VideoCanvas;->renderMode:I

    iget v7, p1, Lio/agora/rtc/video/VideoCanvas;->mirrorMode:I

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetupVideoLocal(JLandroid/view/View;II)I

    goto :goto_0

    .line 304
    :cond_1
    iput-boolean v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mUseLocalView:Z

    .line 305
    iget-wide v9, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetupVideoLocal(JLandroid/view/View;II)I

    :goto_0
    return v0
.end method

.method public setupRemoteVideo(Lio/agora/rtc/video/VideoCanvas;)I
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remote"
        }
    .end annotation

    const-string v0, "setupRemoteVideo"

    .line 275
    invoke-static {v0}, Lio/agora/rtc/internal/RtcEngineImpl;->checkIfInUIThread(Ljava/lang/String;)Z

    if-eqz p1, :cond_1

    .line 277
    iget-object v0, p1, Lio/agora/rtc/video/VideoCanvas;->channelId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 278
    iget-wide v2, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    iget-object v4, p1, Lio/agora/rtc/video/VideoCanvas;->view:Landroid/view/View;

    iget v5, p1, Lio/agora/rtc/video/VideoCanvas;->renderMode:I

    iget-object v6, p1, Lio/agora/rtc/video/VideoCanvas;->channelId:Ljava/lang/String;

    iget v7, p1, Lio/agora/rtc/video/VideoCanvas;->uid:I

    iget v8, p1, Lio/agora/rtc/video/VideoCanvas;->mirrorMode:I

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetupVideoRemote(JLandroid/view/View;ILjava/lang/String;II)I

    move-result p1

    return p1

    .line 280
    :cond_0
    iget-wide v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    iget-object v3, p1, Lio/agora/rtc/video/VideoCanvas;->view:Landroid/view/View;

    iget v4, p1, Lio/agora/rtc/video/VideoCanvas;->renderMode:I

    iget v6, p1, Lio/agora/rtc/video/VideoCanvas;->uid:I

    iget v7, p1, Lio/agora/rtc/video/VideoCanvas;->mirrorMode:I

    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetupVideoRemote(JLandroid/view/View;ILjava/lang/String;II)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public startAudioMixing(Ljava/lang/String;ZZI)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "filePath",
            "loopback",
            "replace",
            "cycle"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1071
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "{\"filePath\":\"%s\", \"loopback\":%b, \"replace\":%b, \"cycle\":%d}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.audio.start_file_as_playout"

    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startAudioRecording(Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filePath",
            "quality"
        }
    .end annotation

    const/16 v0, 0x7d00

    .line 1052
    invoke-virtual {p0, p1, v0, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->startAudioRecording(Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public startAudioRecording(Ljava/lang/String;II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "filePath",
            "sampeRate",
            "quality"
        }
    .end annotation

    .line 1057
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    .line 1061
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "{\"filePath\":\"%s\", \"sampleRate\":%d, \"quality\":%d}"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "che.audio.start_recording"

    invoke-direct {p0, p2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameterObject(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startChannelMediaRelay(Lio/agora/rtc/video/ChannelMediaRelayConfiguration;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelMediaRelayConfiguration"
        }
    .end annotation

    const/4 v0, -0x2

    if-eqz p1, :cond_4

    .line 2404
    invoke-virtual {p1}, Lio/agora/rtc/video/ChannelMediaRelayConfiguration;->getDestChannelMediaInfos()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 2405
    invoke-virtual {p1}, Lio/agora/rtc/video/ChannelMediaRelayConfiguration;->getSrcChannelMediaInfo()Lio/agora/rtc/video/ChannelMediaInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2406
    invoke-virtual {p1}, Lio/agora/rtc/video/ChannelMediaRelayConfiguration;->getDestChannelMediaInfos()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 2410
    :cond_0
    invoke-virtual {p1}, Lio/agora/rtc/video/ChannelMediaRelayConfiguration;->getDestChannelMediaInfos()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2411
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/agora/rtc/video/ChannelMediaInfo;

    iget-object v3, v3, Lio/agora/rtc/video/ChannelMediaInfo;->channelName:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/agora/rtc/video/ChannelMediaInfo;

    iget-object v2, v2, Lio/agora/rtc/video/ChannelMediaInfo;->channelName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    return v0

    .line 2415
    :cond_3
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PChannelMediaRelayConfiguration;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PChannelMediaRelayConfiguration;-><init>()V

    .line 2416
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PChannelMediaRelayConfiguration;->marshall(Lio/agora/rtc/video/ChannelMediaRelayConfiguration;)[B

    move-result-object p1

    .line 2417
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeStartChannelMediaRelay(J[B)I

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public startDumpVideoReceiveTrack(ILjava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "dumpFile"
        }
    .end annotation

    .line 2451
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeStartDumpVideoReceiveTrack(JILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startEchoTest()I
    .locals 3

    .line 570
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, -0x7

    return v0

    .line 574
    :cond_0
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->doMonitorSystemEvent(Landroid/content/Context;)V

    .line 576
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeStartEchoTest(J[B)I

    move-result v0

    return v0
.end method

.method public startEchoTest(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intervalInSeconds"
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p1, -0x7

    return p1

    .line 585
    :cond_0
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->doMonitorSystemEvent(Landroid/content/Context;)V

    .line 587
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeStartEchoTestWithInterval(J[BI)I

    move-result p1

    return p1
.end method

.method public startLastmileProbeTest(Lio/agora/rtc/internal/LastmileProbeConfig;)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 608
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p1, -0x7

    return p1

    .line 612
    :cond_0
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->doMonitorSystemEvent(Landroid/content/Context;)V

    .line 614
    iget-wide v1, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    const/4 v3, 0x0

    iget-boolean v4, p1, Lio/agora/rtc/internal/LastmileProbeConfig;->probeUplink:Z

    iget-boolean v5, p1, Lio/agora/rtc/internal/LastmileProbeConfig;->probeDownlink:Z

    iget v6, p1, Lio/agora/rtc/internal/LastmileProbeConfig;->expectedUplinkBitrate:I

    iget v7, p1, Lio/agora/rtc/internal/LastmileProbeConfig;->expectedDownlinkBitrate:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeStartLastmileProbeTest(J[BZZII)I

    move-result p1

    return p1
.end method

.method public startPreview()I
    .locals 2

    .line 643
    iget v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mVideoSourceType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, -0x4

    return v0

    .line 646
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeStartPreview(J)I

    move-result v0

    return v0
.end method

.method public stopAllEffects()I
    .locals 2

    const-string v0, "che.audio.game_stop_all_effects"

    const/4 v1, 0x1

    .line 2673
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public stopAllRemoteVideo()I
    .locals 2

    const-string v0, "che.video.peer.stop_all_renders"

    const/4 v1, 0x1

    .line 1047
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public stopAudioMixing()I
    .locals 2

    const-string v0, "che.audio.stop_file_as_playout"

    const/4 v1, 0x1

    .line 1075
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public stopAudioRecording()I
    .locals 2

    const-string v0, "che.audio.stop_recording"

    const/4 v1, 0x1

    .line 1066
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public stopChannelMediaRelay()I
    .locals 2

    .line 2422
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeStopChannelMediaRelay(J)I

    move-result v0

    return v0
.end method

.method public stopDumpVideoReceiveTrack()I
    .locals 2

    .line 2456
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeStopDumpVideoReceiveTrack(J)I

    move-result v0

    return v0
.end method

.method public stopEchoTest()I
    .locals 2

    .line 593
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeStopEchoTest(J)I

    move-result v0

    return v0
.end method

.method public stopEffect(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "soundId"
        }
    .end annotation

    const-string v0, "che.audio.game_stop_effect"

    .line 2668
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public stopLastmileProbeTest()I
    .locals 2

    .line 619
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeStopLastmileProbeTest(J)I

    move-result v0

    return v0
.end method

.method public stopPreview()I
    .locals 2

    const-string v0, "rtc.video.preview"

    const/4 v1, 0x0

    .line 652
    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public stopRemoteVideo(I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-string p1, "che.video.peer.stop_video"

    .line 1039
    invoke-direct {p0, p1, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;J)I

    move-result p1

    return p1
.end method

.method public switchCamera()I
    .locals 2

    .line 932
    iget v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mVideoSourceType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 947
    :cond_0
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSwitchCamera(J)I

    move-result v0

    return v0
.end method

.method public switchChannel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "channelName"
        }
    .end annotation

    .line 546
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSwitchChannel(JLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public unloadEffect(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "soundId"
        }
    .end annotation

    const-string v0, "che.audio.game_unload_effect"

    .line 2686
    invoke-direct {p0, v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public updateChannelMediaRelay(Lio/agora/rtc/video/ChannelMediaRelayConfiguration;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelMediaRelayConfiguration"
        }
    .end annotation

    const/4 v0, -0x2

    if-eqz p1, :cond_4

    .line 2428
    invoke-virtual {p1}, Lio/agora/rtc/video/ChannelMediaRelayConfiguration;->getDestChannelMediaInfos()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 2429
    invoke-virtual {p1}, Lio/agora/rtc/video/ChannelMediaRelayConfiguration;->getSrcChannelMediaInfo()Lio/agora/rtc/video/ChannelMediaInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2430
    invoke-virtual {p1}, Lio/agora/rtc/video/ChannelMediaRelayConfiguration;->getDestChannelMediaInfos()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 2434
    :cond_0
    invoke-virtual {p1}, Lio/agora/rtc/video/ChannelMediaRelayConfiguration;->getDestChannelMediaInfos()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2435
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/agora/rtc/video/ChannelMediaInfo;

    iget-object v3, v3, Lio/agora/rtc/video/ChannelMediaInfo;->channelName:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/agora/rtc/video/ChannelMediaInfo;

    iget-object v2, v2, Lio/agora/rtc/video/ChannelMediaInfo;->channelName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    return v0

    .line 2439
    :cond_3
    new-instance v0, Lio/agora/rtc/internal/RtcEngineMessage$PChannelMediaRelayConfiguration;

    invoke-direct {v0}, Lio/agora/rtc/internal/RtcEngineMessage$PChannelMediaRelayConfiguration;-><init>()V

    .line 2440
    invoke-virtual {v0, p1}, Lio/agora/rtc/internal/RtcEngineMessage$PChannelMediaRelayConfiguration;->marshall(Lio/agora/rtc/video/ChannelMediaRelayConfiguration;)[B

    move-result-object p1

    .line 2441
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeUpdateChannelMediaRelay(J[B)I

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public declared-synchronized updateRtcStats(Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stats"
        }
    .end annotation

    monitor-enter p0

    .line 451
    :try_start_0
    invoke-virtual {p0}, Lio/agora/rtc/internal/RtcEngineImpl;->getRtcStats()Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 453
    monitor-exit p0

    return-void

    .line 454
    :cond_0
    :try_start_1
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->totalDuration:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->totalDuration:I

    .line 455
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->totalTxBytes:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->txBytes:I

    .line 456
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->totalRxBytes:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->rxBytes:I

    .line 458
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->txAudioBytes:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->txAudioBytes:I

    .line 459
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->txVideoBytes:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->txVideoBytes:I

    .line 460
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->rxAudioBytes:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->rxAudioBytes:I

    .line 461
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->rxVideoBytes:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->rxVideoBytes:I

    .line 463
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->txKBitRate:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->txKBitRate:I

    .line 464
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->rxKBitRate:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->rxKBitRate:I

    .line 465
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->txAudioKBitRate:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->txAudioKBitRate:I

    .line 466
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->rxAudioKBitRate:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->rxAudioKBitRate:I

    .line 468
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->txVideoKBitRate:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->txVideoKBitRate:I

    .line 469
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->rxVideoKBitRate:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->rxVideoKBitRate:I

    .line 470
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->lastmileDelay:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->lastmileDelay:I

    .line 471
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->txPacketLossRate:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->txPacketLossRate:I

    .line 472
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->rxPacketLossRate:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->rxPacketLossRate:I

    .line 473
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->users:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->users:I

    .line 474
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->cpuTotalUsage:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    iput-wide v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->cpuTotalUsage:D

    .line 475
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->cpuAppUsage:I

    int-to-double v1, v1

    div-double/2addr v1, v3

    iput-wide v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->cpuAppUsage:D

    .line 476
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->gatewayRtt:I

    iput v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->gatewayRtt:I

    .line 477
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->memoryAppUsageRatio:I

    int-to-double v1, v1

    iput-wide v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->memoryAppUsageRatio:D

    .line 478
    iget v1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->memoryTotalUsageRatio:I

    int-to-double v1, v1

    iput-wide v1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->memoryTotalUsageRatio:D

    .line 479
    iget p1, p1, Lio/agora/rtc/internal/RtcEngineMessage$PMediaResRtcStats;->memoryAppUsageInKbytes:I

    iput p1, v0, Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;->memoryAppUsageInKbytes:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 482
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateSharedContext(Landroid/opengl/EGLContext;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sharedContext"
        }
    .end annotation

    .line 2249
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetEGL14Context(JLandroid/opengl/EGLContext;)I

    move-result p1

    return p1
.end method

.method public updateSharedContext(Ljavax/microedition/khronos/egl/EGLContext;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sharedContext"
        }
    .end annotation

    .line 2245
    iget-wide v0, p0, Lio/agora/rtc/internal/RtcEngineImpl;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->nativeSetEGL10Context(JLjavax/microedition/khronos/egl/EGLContext;)I

    move-result p1

    return p1
.end method

.method public useExternalAudioDevice()I
    .locals 1

    const-string v0, "{\"che.audio.audioSampleRate\":32000, \"che.audio.external_device\":true}"

    .line 1137
    invoke-virtual {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl;->setParameters(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
