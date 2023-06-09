.class Lio/agora/rtc/audio/AudioManagerAndroid;
.super Ljava/lang/Object;
.source "AudioManagerAndroid.java"


# static fields
.field private static final DEFAULT_FRAMES_PER_BUFFER:I = 0x100

.field private static final DEFAULT_SAMPLING_RATE:I = 0xac44


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private mAudioLowLatencyOutputFrameSize:I

.field private mAudioLowLatencySupported:Z

.field private mNativeOutputSampleRate:I

.field private mcontext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->mcontext:Landroid/content/Context;

    const-string v0, "audio"

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    const v0, 0xac44

    .line 42
    iput v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->mNativeOutputSampleRate:I

    const/16 v0, 0x100

    .line 43
    iput v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->mAudioLowLatencyOutputFrameSize:I

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 47
    iget-object v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    const-string v1, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->mNativeOutputSampleRate:I

    .line 53
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    const-string v1, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->mAudioLowLatencyOutputFrameSize:I

    .line 60
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.audio.low_latency"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->mAudioLowLatencySupported:Z

    return-void
.end method

.method private GetAudioMode(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 117
    iget-object p1, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result p1

    return p1
.end method

.method private QuerySpeakerStatus()I
    .locals 1

    .line 82
    iget-object v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    return v0

    .line 84
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 86
    :cond_1
    iget-object v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private SetAudioMode(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 109
    iget-object p1, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object p1, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0

    .line 103
    :cond_2
    iget-object p1, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0

    .line 101
    :cond_3
    iget-object p1, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    :goto_0
    return v0
.end method

.method private SetPlayoutSpeaker(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loudspeakerOn"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    const/4 p1, 0x0

    return p1
.end method

.method private enableHardwareEarback(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->mcontext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 133
    invoke-static {v0}, Lio/agora/rtc/audio/HardwareEarbackController;->getInstance(Landroid/content/Context;)Lio/agora/rtc/audio/HardwareEarbackController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/agora/rtc/audio/HardwareEarbackController;->enableHardwareEarback(Z)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method private getAudioLowLatencyOutputFrameSize()I
    .locals 1

    .line 77
    iget v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->mAudioLowLatencyOutputFrameSize:I

    return v0
.end method

.method private getNativeOutputSampleRate()I
    .locals 1

    .line 67
    iget v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->mNativeOutputSampleRate:I

    return v0
.end method

.method private isAudioLowLatencySupported()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->mAudioLowLatencySupported:Z

    return v0
.end method

.method private isHardwareEarbackSupported()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->mcontext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 124
    invoke-static {v0}, Lio/agora/rtc/audio/HardwareEarbackController;->getInstance(Landroid/content/Context;)Lio/agora/rtc/audio/HardwareEarbackController;

    move-result-object v0

    invoke-virtual {v0}, Lio/agora/rtc/audio/HardwareEarbackController;->isHardwareEarbackSupported()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setHardwareEarbackVolume(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lio/agora/rtc/audio/AudioManagerAndroid;->mcontext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 142
    invoke-static {v0}, Lio/agora/rtc/audio/HardwareEarbackController;->getInstance(Landroid/content/Context;)Lio/agora/rtc/audio/HardwareEarbackController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/agora/rtc/audio/HardwareEarbackController;->setHardwareEarbackVolume(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method
