.class Lio/agora/rtc/audio/HuaweiHardwareEarback;
.super Ljava/lang/Object;
.source "HuaweiHardwareEarback.java"

# interfaces
.implements Lio/agora/rtc/audio/IHardwareEarback;


# static fields
.field private static final TAG:Ljava/lang/String; = "HuaweiHardwareEarback"


# instance fields
.field private latency:I

.field private mContext:Landroid/content/Context;

.field private mEarbackEnabled:Z

.field private mHwAudioKaraokeFeatureKit:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

.field private mHwAudioKit:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;

.field private mInited:Z

.field private volume:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mContext:Landroid/content/Context;

    .line 21
    iput-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKit:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;

    .line 22
    iput-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mInited:Z

    .line 24
    iput-boolean v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mEarbackEnabled:Z

    .line 25
    iput v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->latency:I

    .line 26
    iput v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->volume:I

    const-string v0, "HuaweiHardwareEarback"

    const-string v1, ">>ctor"

    .line 30
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {p0}, Lio/agora/rtc/audio/HuaweiHardwareEarback;->initialize()V

    return-void
.end method

.method static synthetic access$002(Lio/agora/rtc/audio/HuaweiHardwareEarback;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mInited:Z

    return p1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const-string v0, "HuaweiHardwareEarback"

    const-string v1, ">>destroy"

    .line 139
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    invoke-virtual {v0}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->destroy()V

    .line 141
    iget-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKit:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;

    invoke-virtual {v0}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->destroy()V

    return-void
.end method

.method public declared-synchronized enableEarbackFeature(Z)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    monitor-enter p0

    .line 110
    :try_start_0
    iget-boolean v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, -0x7

    .line 111
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string v0, "HuaweiHardwareEarback"

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>enableEarbackFeature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    invoke-virtual {v0}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->isKaraokeFeatureSupport()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    const-string p1, "HuaweiHardwareEarback"

    const-string v0, "karaoke not supported"

    .line 117
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    monitor-exit p0

    return v1

    .line 121
    :cond_1
    :try_start_2
    iget-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    invoke-virtual {v0, p1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->enableKaraokeFeature(Z)I

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "HuaweiHardwareEarback"

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableKaraokeFeature failed ret "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    monitor-exit p0

    return v1

    .line 128
    :cond_2
    :try_start_3
    iput-boolean p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mEarbackEnabled:Z

    if-eqz p1, :cond_3

    .line 131
    iget-object p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    invoke-virtual {p1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->getKaraokeLatency()I

    move-result p1

    iput p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->latency:I

    const-string p1, "HuaweiHardwareEarback"

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "latency "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->latency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    const/4 p1, 0x0

    .line 134
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "HuaweiHardwareEarback"

    const-string v1, ">>finalize"

    .line 146
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lio/agora/rtc/audio/HuaweiHardwareEarback;->destroy()V

    .line 148
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public initialize()V
    .locals 3

    .line 37
    iget-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mContext:Landroid/content/Context;

    const-string v1, "HuaweiHardwareEarback"

    if-nez v0, :cond_0

    const-string v0, "mContext is null!"

    .line 39
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, ">>initialize"

    .line 43
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;

    iget-object v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mContext:Landroid/content/Context;

    new-instance v2, Lio/agora/rtc/audio/HuaweiHardwareEarback$1;

    invoke-direct {v2, p0}, Lio/agora/rtc/audio/HuaweiHardwareEarback$1;-><init>(Lio/agora/rtc/audio/HuaweiHardwareEarback;)V

    invoke-direct {v0, v1, v2}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;-><init>(Landroid/content/Context;Lcom/huawei/multimedia/audiokit/interfaces/IAudioKitCallback;)V

    iput-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKit:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;

    .line 69
    invoke-virtual {v0}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->initialize()V

    .line 70
    iget-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKit:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;

    sget-object v1, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;->HWAUDIO_FEATURE_KARAOKE:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;

    invoke-virtual {v0, v1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit;->createFeature(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKit$FeatureType;)Lcom/huawei/multimedia/audiokit/interfaces/AudioFeaturesKit;

    move-result-object v0

    check-cast v0, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    iput-object v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    return-void
.end method

.method public isHardwareEarbackSupported()Z
    .locals 4

    .line 75
    iget-boolean v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mInited:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "HuaweiHardwareEarback"

    const-string v1, ">>isHardwareEarbackSupported"

    .line 78
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    invoke-virtual {v1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->isKaraokeFeatureSupport()Z

    move-result v1

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public declared-synchronized setHardwareEarbackVolume(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vol"
        }
    .end annotation

    monitor-enter p0

    .line 87
    :try_start_0
    iget-boolean v0, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, -0x7

    .line 88
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    const-string v0, "HuaweiHardwareEarback"

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>setHardwareEarbackVolume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-gez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    if-le p1, v1, :cond_2

    const/16 p1, 0x64

    .line 97
    :cond_2
    :goto_0
    iget-object v1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->mHwAudioKaraokeFeatureKit:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    sget-object v2, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;->CMD_SET_VOCAL_VOLUME_BASE:Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

    invoke-virtual {v1, v2, p1}, Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit;->setParameter(Lcom/huawei/multimedia/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;I)I

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "HuaweiHardwareEarback"

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParameter error number "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, -0x1

    .line 101
    monitor-exit p0

    return p1

    .line 104
    :cond_3
    :try_start_2
    iput p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback;->volume:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
