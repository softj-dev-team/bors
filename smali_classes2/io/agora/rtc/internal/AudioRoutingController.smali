.class public Lio/agora/rtc/internal/AudioRoutingController;
.super Ljava/lang/Object;
.source "AudioRoutingController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/internal/AudioRoutingController$ControllerErrorState;,
        Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;,
        Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;,
        Lio/agora/rtc/internal/AudioRoutingController$ControllerBaseState;,
        Lio/agora/rtc/internal/AudioRoutingController$ControllerState;,
        Lio/agora/rtc/internal/AudioRoutingController$EventHandler;,
        Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;,
        Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_SCO_TIMEOUT_MS:I = 0xfa0

.field private static final BT_SCO_STATE_CONNECTED:I = 0x1

.field private static final BT_SCO_STATE_CONNECTING:I = 0x0

.field private static final BT_SCO_STATE_DISCONNECTED:I = 0x3

.field private static final BT_SCO_STATE_DISCONNECTING:I = 0x2

.field public static final CMD_FORCE_BT_SCO_OFF:I = 0x10

.field public static final CMD_FORCE_TO_SPEAKER:I = 0xb

.field public static final CMD_MUTE_VIDEO_ALL:I = 0xe

.field public static final CMD_MUTE_VIDEO_LOCAL:I = 0xc

.field public static final CMD_MUTE_VIDEO_REMOTES:I = 0xd

.field public static final CMD_SET_DEFAULT_ROUTING:I = 0xa

.field public static final CMD_START_BT_SCO:I = 0xf

.field private static final ERROR:I = 0x4

.field private static final EVT_BT_HEADSET:I = 0x2

.field private static final EVT_BT_SCO:I = 0x3

.field public static final EVT_CHANNEL_PROFILE:I = 0x14

.field public static final EVT_ENGINE_ROLE_CHANGED:I = 0x15

.field private static final EVT_HEADSET:I = 0x1

.field public static final EVT_PHONE_STATE_CHANGED:I = 0x16

.field public static final EVT_USING_COMM_PARAMETERS:I = 0x70

.field public static final EVT_USING_NORM_PARAMETERS:I = 0x71

.field private static final MAX_SCO_CONNECT_ATTEMPS:I = 0x5

.field public static final OFF:I = 0x0

.field public static final ON:I = 0x1

.field private static final START:I = 0x1

.field private static final STOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AudioRoute"

.field private static final UNINIT:I = 0x0

.field public static final UNSET:I = -0x1


# instance fields
.field private final bluetoothTimeoutRunnable:Ljava/lang/Runnable;

.field private dynamic_timeout:I

.field private mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBTHeadSetProperlySeted:Z

.field private mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBTHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;

.field private mBtScoState:I

.field private mChannelProfile:I

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentRouting:I

.field private mDefaultRouting:I

.field private mEngineRole:I

.field private mErrorState:Lio/agora/rtc/internal/AudioRoutingController$ControllerErrorState;

.field private mEventHandler:Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

.field private mForceSpeakerphone:I

.field private mHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

.field private mHeadsetType:I

.field private mIsBTHeadsetPlugged:Z

.field private mIsBTScoStarted:Z

.field private mIsWiredHeadsetPlugged:Z

.field private mLastNotifiedRouting:I

.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/agora/rtc/internal/AudioRoutingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMuteLocal:Z

.field private mMuteRemotes:Z

.field private mNotifiedRouting:I

.field private mOriginRouting:I

.field private mPhoneInCall:Z

.field private mScoConnectionAttemps:I

.field private mSpeakerCommVolume:I

.field private mStartState:Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;

.field private mState:Lio/agora/rtc/internal/AudioRoutingController$ControllerState;

.field private mStopState:Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;

.field private mUsingCommParameters:Z

.field private mVideoDisabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/agora/rtc/internal/AudioRoutingListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsWiredHeadsetPlugged:Z

    const/4 v1, -0x1

    .line 51
    iput v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetType:I

    .line 52
    iput-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTHeadsetPlugged:Z

    .line 54
    iput v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mForceSpeakerphone:I

    .line 55
    iput v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mCurrentRouting:I

    .line 56
    iput v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mDefaultRouting:I

    .line 57
    iput v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mOriginRouting:I

    const/4 v2, 0x1

    .line 58
    iput v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mChannelProfile:I

    .line 59
    iput-boolean v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mVideoDisabled:Z

    .line 60
    iput-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mMuteLocal:Z

    .line 61
    iput-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mMuteRemotes:Z

    .line 62
    iput v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEngineRole:I

    .line 63
    iput-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mPhoneInCall:Z

    .line 64
    iput v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mSpeakerCommVolume:I

    .line 65
    iput-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadSetProperlySeted:Z

    const/4 v2, 0x3

    .line 71
    iput v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    .line 72
    iput-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTScoStarted:Z

    const/16 v2, 0xfa0

    .line 75
    iput v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->dynamic_timeout:I

    .line 77
    iput v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mLastNotifiedRouting:I

    const/4 v2, 0x0

    .line 79
    iput-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mStopState:Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;

    .line 80
    iput-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mStartState:Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;

    .line 81
    iput-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mErrorState:Lio/agora/rtc/internal/AudioRoutingController$ControllerErrorState;

    .line 83
    iput v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mNotifiedRouting:I

    .line 85
    iput-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mUsingCommParameters:Z

    .line 86
    new-instance v0, Lio/agora/rtc/internal/AudioRoutingController$1;

    invoke-direct {v0, p0}, Lio/agora/rtc/internal/AudioRoutingController$1;-><init>(Lio/agora/rtc/internal/AudioRoutingController;)V

    iput-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->bluetoothTimeoutRunnable:Ljava/lang/Runnable;

    .line 657
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mContext:Ljava/lang/ref/WeakReference;

    .line 658
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->bluetoothTimeout()V

    return-void
.end method

.method static synthetic access$1000(Lio/agora/rtc/internal/AudioRoutingController;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsWiredHeadsetPlugged:Z

    return p0
.end method

.method static synthetic access$1002(Lio/agora/rtc/internal/AudioRoutingController;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsWiredHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$102(Lio/agora/rtc/internal/AudioRoutingController;I)I
    .locals 0

    .line 29
    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mScoConnectionAttemps:I

    return p1
.end method

.method static synthetic access$1102(Lio/agora/rtc/internal/AudioRoutingController;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mVideoDisabled:Z

    return p1
.end method

.method static synthetic access$1202(Lio/agora/rtc/internal/AudioRoutingController;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mMuteLocal:Z

    return p1
.end method

.method static synthetic access$1302(Lio/agora/rtc/internal/AudioRoutingController;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mMuteRemotes:Z

    return p1
.end method

.method static synthetic access$1402(Lio/agora/rtc/internal/AudioRoutingController;I)I
    .locals 0

    .line 29
    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEngineRole:I

    return p1
.end method

.method static synthetic access$1500(Lio/agora/rtc/internal/AudioRoutingController;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mPhoneInCall:Z

    return p0
.end method

.method static synthetic access$1502(Lio/agora/rtc/internal/AudioRoutingController;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mPhoneInCall:Z

    return p1
.end method

.method static synthetic access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mUsingCommParameters:Z

    return p0
.end method

.method static synthetic access$1602(Lio/agora/rtc/internal/AudioRoutingController;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mUsingCommParameters:Z

    return p1
.end method

.method static synthetic access$1800(Lio/agora/rtc/internal/AudioRoutingController;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTScoStarted:Z

    return p0
.end method

.method static synthetic access$1802(Lio/agora/rtc/internal/AudioRoutingController;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTScoStarted:Z

    return p1
.end method

.method static synthetic access$1900(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->stopBtSco()V

    return-void
.end method

.method static synthetic access$200(Lio/agora/rtc/internal/AudioRoutingController;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTHeadsetPlugged:Z

    return p0
.end method

.method static synthetic access$2000(Lio/agora/rtc/internal/AudioRoutingController;)I
    .locals 0

    .line 29
    iget p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mForceSpeakerphone:I

    return p0
.end method

.method static synthetic access$2002(Lio/agora/rtc/internal/AudioRoutingController;I)I
    .locals 0

    .line 29
    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mForceSpeakerphone:I

    return p1
.end method

.method static synthetic access$202(Lio/agora/rtc/internal/AudioRoutingController;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$2100(Lio/agora/rtc/internal/AudioRoutingController;)I
    .locals 0

    .line 29
    iget p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mCurrentRouting:I

    return p0
.end method

.method static synthetic access$2102(Lio/agora/rtc/internal/AudioRoutingController;I)I
    .locals 0

    .line 29
    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mCurrentRouting:I

    return p1
.end method

.method static synthetic access$2200(Lio/agora/rtc/internal/AudioRoutingController;)I
    .locals 0

    .line 29
    iget p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mDefaultRouting:I

    return p0
.end method

.method static synthetic access$2202(Lio/agora/rtc/internal/AudioRoutingController;I)I
    .locals 0

    .line 29
    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mDefaultRouting:I

    return p1
.end method

.method static synthetic access$2300(Lio/agora/rtc/internal/AudioRoutingController;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadSetProperlySeted:Z

    return p0
.end method

.method static synthetic access$2302(Lio/agora/rtc/internal/AudioRoutingController;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadSetProperlySeted:Z

    return p1
.end method

.method static synthetic access$2400(Lio/agora/rtc/internal/AudioRoutingController;)Landroid/media/AudioManager;
    .locals 0

    .line 29
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lio/agora/rtc/internal/AudioRoutingController;)I
    .locals 0

    .line 29
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->queryCurrentAudioRouting()I

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lio/agora/rtc/internal/AudioRoutingController;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->notifyAudioRoutingChanged(I)V

    return-void
.end method

.method static synthetic access$2700(Lio/agora/rtc/internal/AudioRoutingController;)I
    .locals 0

    .line 29
    iget p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mChannelProfile:I

    return p0
.end method

.method static synthetic access$2800(Lio/agora/rtc/internal/AudioRoutingController;)Z
    .locals 0

    .line 29
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->isAudioOnly()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lio/agora/rtc/internal/AudioRoutingController;I)Ljava/lang/String;
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lio/agora/rtc/internal/AudioRoutingController;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 29
    iget-object p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$3000(Lio/agora/rtc/internal/AudioRoutingController;)I
    .locals 0

    .line 29
    iget p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mOriginRouting:I

    return p0
.end method

.method static synthetic access$3002(Lio/agora/rtc/internal/AudioRoutingController;I)I
    .locals 0

    .line 29
    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mOriginRouting:I

    return p1
.end method

.method static synthetic access$3100(Lio/agora/rtc/internal/AudioRoutingController;I)I
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->doSetAudioOutputRouting(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lio/agora/rtc/internal/AudioRoutingController;Landroid/media/AudioManager;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->doStopBTSco(Landroid/media/AudioManager;)V

    return-void
.end method

.method static synthetic access$3300(Lio/agora/rtc/internal/AudioRoutingController;Landroid/media/AudioManager;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->doStartBTSco(Landroid/media/AudioManager;)V

    return-void
.end method

.method static synthetic access$3400(Lio/agora/rtc/internal/AudioRoutingController;I)I
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->updateBluetoothSco(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3502(Lio/agora/rtc/internal/AudioRoutingController;I)I
    .locals 0

    .line 29
    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    return p1
.end method

.method static synthetic access$3600(Lio/agora/rtc/internal/AudioRoutingController;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->checkBtScoState(Z)V

    return-void
.end method

.method static synthetic access$3700(Lio/agora/rtc/internal/AudioRoutingController;)I
    .locals 0

    .line 29
    iget p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mNotifiedRouting:I

    return p0
.end method

.method static synthetic access$3800(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->startTimer()V

    return-void
.end method

.method static synthetic access$400(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->cancelTimer()V

    return-void
.end method

.method static synthetic access$4002(Lio/agora/rtc/internal/AudioRoutingController;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .line 29
    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$500(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$ControllerState;
    .locals 0

    .line 29
    iget-object p0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mState:Lio/agora/rtc/internal/AudioRoutingController$ControllerState;

    return-object p0
.end method

.method static synthetic access$502(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$ControllerState;)Lio/agora/rtc/internal/AudioRoutingController$ControllerState;
    .locals 0

    .line 29
    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mState:Lio/agora/rtc/internal/AudioRoutingController$ControllerState;

    return-object p1
.end method

.method static synthetic access$700(Lio/agora/rtc/internal/AudioRoutingController;I)Lio/agora/rtc/internal/AudioRoutingController$ControllerState;
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->changeState(I)Lio/agora/rtc/internal/AudioRoutingController$ControllerState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->resetAudioRouting()V

    return-void
.end method

.method static synthetic access$902(Lio/agora/rtc/internal/AudioRoutingController;I)I
    .locals 0

    .line 29
    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetType:I

    return p1
.end method

.method private bluetoothTimeout()V
    .locals 9

    .line 1088
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 1091
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    const-string v2, "AudioRoute"

    if-nez v1, :cond_0

    const-string v0, "no bluetooth profile connected"

    .line 1092
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1095
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 1096
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_4

    .line 1097
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x0

    .line 1103
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-gt v6, v7, :cond_1

    .line 1105
    :try_start_0
    iget-object v6, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "isAudioOn"

    new-array v8, v5, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 1106
    iget-object v7, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 1112
    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v6

    .line 1110
    invoke-virtual {v6}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v6

    .line 1108
    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 1116
    :cond_1
    :goto_0
    iget-object v6, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v6, v1}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v3, :cond_2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 1120
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SCO is not connected with "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1117
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SCO connected with "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const-string v1, "no bluetooth device connected."

    .line 1123
    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 v1, 0x0

    .line 1126
    :goto_3
    iget v3, p0, Lio/agora/rtc/internal/AudioRoutingController;->mScoConnectionAttemps:I

    const/4 v6, 0x5

    if-ge v3, v6, :cond_5

    .line 1127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attemps trying, bt sco started: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTScoStarted:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " sco connected: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lio/agora/rtc/internal/AudioRoutingController;->mScoConnectionAttemps:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " times "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    invoke-direct {p0, v5}, Lio/agora/rtc/internal/AudioRoutingController;->btStateAsString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    iget-boolean v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTScoStarted:Z

    if-eqz v2, :cond_7

    if-nez v1, :cond_7

    .line 1131
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->startTimer()V

    .line 1133
    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mScoConnectionAttemps:I

    add-int/2addr v1, v4

    iput v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mScoConnectionAttemps:I

    .line 1134
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->stopBtSco()V

    .line 1135
    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 1136
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/AudioRoutingController;->doStartBTSco(Landroid/media/AudioManager;)V

    goto :goto_4

    .line 1140
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start bluetooth sco timeout, actual routing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->queryCurrentAudioRouting()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    iput v5, p0, Lio/agora/rtc/internal/AudioRoutingController;->mScoConnectionAttemps:I

    .line 1142
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1143
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtc/internal/AudioRoutingListener;

    const/16 v1, 0x406

    invoke-interface {v0, v1}, Lio/agora/rtc/internal/AudioRoutingListener;->onAudioRoutingError(I)V

    .line 1145
    :cond_6
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->resetAudioRouting()V

    :cond_7
    :goto_4
    return-void
.end method

.method private btStateAsString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "SCO_DISCONNECTED"

    goto :goto_0

    :cond_1
    const-string p1, "SCO_DISCONNECTING"

    goto :goto_0

    :cond_2
    const-string p1, "SCO_CONNECTED"

    goto :goto_0

    :cond_3
    const-string p1, "SCO_CONNECTING"

    :goto_0
    return-object p1
.end method

.method private cancelTimer()V
    .locals 2

    const-string v0, "AudioRoute"

    const-string v1, "cancel bluetooth timer"

    .line 100
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->bluetoothTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private changeState(I)Lio/agora/rtc/internal/AudioRoutingController$ControllerState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 307
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mStopState:Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;

    if-nez p1, :cond_0

    .line 308
    new-instance p1, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;

    invoke-direct {p1, p0}, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;-><init>(Lio/agora/rtc/internal/AudioRoutingController;)V

    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mStopState:Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;

    .line 310
    :cond_0
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mStopState:Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;

    if-eqz p1, :cond_1

    .line 311
    invoke-virtual {p1}, Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;->reset()V

    .line 313
    :cond_1
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mStopState:Lio/agora/rtc/internal/AudioRoutingController$ControllerStopState;

    return-object p1

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 315
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mStartState:Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;

    if-nez p1, :cond_3

    .line 316
    new-instance p1, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;

    invoke-direct {p1, p0}, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;-><init>(Lio/agora/rtc/internal/AudioRoutingController;)V

    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mStartState:Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;

    .line 318
    :cond_3
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mStartState:Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;

    if-eqz p1, :cond_4

    .line 319
    invoke-virtual {p1}, Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;->reset()V

    .line 321
    :cond_4
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mStartState:Lio/agora/rtc/internal/AudioRoutingController$ControllerStartState;

    return-object p1

    .line 323
    :cond_5
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mErrorState:Lio/agora/rtc/internal/AudioRoutingController$ControllerErrorState;

    if-nez p1, :cond_6

    .line 324
    new-instance p1, Lio/agora/rtc/internal/AudioRoutingController$ControllerErrorState;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lio/agora/rtc/internal/AudioRoutingController$ControllerErrorState;-><init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V

    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mErrorState:Lio/agora/rtc/internal/AudioRoutingController$ControllerErrorState;

    .line 326
    :cond_6
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mErrorState:Lio/agora/rtc/internal/AudioRoutingController$ControllerErrorState;

    if-eqz p1, :cond_7

    .line 327
    invoke-virtual {p1}, Lio/agora/rtc/internal/AudioRoutingController$ControllerErrorState;->reset()V

    .line 329
    :cond_7
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mErrorState:Lio/agora/rtc/internal/AudioRoutingController$ControllerErrorState;

    return-object p1
.end method

.method private checkBtScoState(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isBtScoOn"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1084
    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mScoConnectionAttemps:I

    return-void
.end method

.method private clearBTResource()V
    .locals 4

    .line 791
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 792
    iget-object v3, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 793
    iput-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 795
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    if-eqz v0, :cond_1

    .line 796
    iput-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    :cond_1
    return-void
.end method

.method private doSetAudioOutputRouting(I)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routing"
        }
    .end annotation

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set audio output routing from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mCurrentRouting:I

    invoke-direct {p0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRoute"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 884
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    .line 886
    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 887
    :goto_0
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 892
    :cond_1
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->queryCurrentAudioRouting()I

    move-result v2

    if-eq v2, p1, :cond_2

    .line 893
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->queryCurrentAudioRouting()I

    move-result v2

    .line 894
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "different audio routing from target "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", actual routing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    :cond_2
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->updateBluetoothSco(I)I

    .line 897
    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mCurrentRouting:I

    .line 898
    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mNotifiedRouting:I

    .line 899
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->notifyAudioRoutingChanged(I)V

    .line 900
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio routing changed to "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mCurrentRouting:I

    invoke-direct {p0, v2}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v2, "set audio output routing failed:"

    .line 902
    invoke-static {v1, v2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return v0
.end method

.method private doStartBTSco(Landroid/media/AudioManager;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "am"
        }
    .end annotation

    const-string v0, "]"

    const-string v1, "["

    const-string v2, " "

    const-string v3, "AudioRoute"

    .line 1000
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result v4

    .line 1001
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doStartBTSco "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " sco on: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Lio/agora/rtc/internal/AudioRoutingController;->modeAsString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x16

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ge v4, v5, :cond_0

    .line 1004
    invoke-virtual {p1, v7, v6}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 1014
    :cond_0
    invoke-virtual {p1, v7}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 1015
    invoke-virtual {p1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 1016
    invoke-virtual {p1}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 1017
    invoke-virtual {p1, v6}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 1019
    iget-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v4, :cond_1

    .line 1023
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "connectAudio"

    new-array v6, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1024
    iget-object v5, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_0
    move-exception v4

    .line 1030
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v4

    .line 1028
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v4

    .line 1026
    invoke-virtual {v4}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :catch_3
    move-exception v4

    const-string v5, "doStartBTSco fail "

    .line 1036
    invoke-static {v3, v5, v4}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1038
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doStartBTSco done sco on: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result p1

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->modeAsString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private doStopBTSco(Landroid/media/AudioManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "am"
        }
    .end annotation

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doStopBTSco "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sco on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRoute"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1044
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 1045
    invoke-virtual {p1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 1047
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz p1, :cond_0

    .line 1051
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "disconnectAudio"

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1052
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1058
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1056
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 1054
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 1062
    :cond_0
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    return-void
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .line 861
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "audio"

    .line 865
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method private getAudioRouteDesc(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "route"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const-string p1, "Unknown"

    return-object p1

    :pswitch_0
    const-string p1, "HeadsetBluetooth"

    return-object p1

    :pswitch_1
    const-string p1, "Loudspeaker"

    return-object p1

    :pswitch_2
    const-string p1, "Speakerphone"

    return-object p1

    :pswitch_3
    const-string p1, "HeadsetOnly"

    return-object p1

    :pswitch_4
    const-string p1, "Earpiece"

    return-object p1

    :pswitch_5
    const-string p1, "Headset"

    return-object p1

    :pswitch_6
    const-string p1, "Default"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isAudioOnly()Z
    .locals 1

    .line 857
    iget-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mVideoDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mMuteLocal:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mMuteRemotes:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private modeAsString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "MODE_IN_COMMUNICATION"

    goto :goto_0

    :cond_1
    const-string p1, "MODE_IN_CALL"

    goto :goto_0

    :cond_2
    const-string p1, "MODE_RINGTONE"

    goto :goto_0

    :cond_3
    const-string p1, "MODE_NORMAL"

    :goto_0
    return-object p1
.end method

.method private notifyAudioRoutingChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routing"
        }
    .end annotation

    .line 870
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtc/internal/AudioRoutingListener;

    if-eqz v0, :cond_0

    .line 872
    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mLastNotifiedRouting:I

    if-eq v1, p1, :cond_1

    .line 873
    invoke-interface {v0, p1}, Lio/agora/rtc/internal/AudioRoutingListener;->onAudioRoutingChanged(I)V

    .line 874
    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mLastNotifiedRouting:I

    goto :goto_0

    :cond_0
    const-string p1, "AudioRoute"

    const-string v0, "failed to get audio routing listener"

    .line 877
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private queryCurrentAudioRouting()I
    .locals 3

    .line 1209
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 1210
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    .line 1211
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1214
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    return v0

    .line 1216
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x5

    return v0

    .line 1218
    :cond_3
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "AudioRoute"

    const-string v2, "fatal error @queryCurrentAudioRouting"

    .line 1224
    invoke-static {v1, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method private resetAudioRouting()V
    .locals 7

    .line 1150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default routing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mDefaultRouting:I

    invoke-direct {p0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bluetooth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTHeadsetPlugged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", current routing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mCurrentRouting:I

    .line 1151
    invoke-direct {p0, v2}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", actual system routing: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->queryCurrentAudioRouting()I

    move-result v3

    invoke-direct {p0, v3}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AudioRoute"

    .line 1150
    invoke-static {v3, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    iget v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mForceSpeakerphone:I

    const-string v4, ", target routing: "

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset(force) audio routing, default routing: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mDefaultRouting:I

    invoke-direct {p0, v2}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mCurrentRouting:I

    .line 1157
    invoke-direct {p0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    .line 1158
    invoke-direct {p0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", actual system routing:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->queryCurrentAudioRouting()I

    move-result v2

    invoke-direct {p0, v2}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1156
    invoke-static {v3, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    iget v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mCurrentRouting:I

    if-ne v0, v1, :cond_0

    .line 1161
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->queryCurrentAudioRouting()I

    move-result v0

    if-eq v0, v1, :cond_7

    .line 1162
    :cond_0
    invoke-direct {p0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->doSetAudioOutputRouting(I)I

    goto :goto_1

    .line 1165
    :cond_1
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->queryCurrentAudioRouting()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v6, 0x2

    if-ne v0, v6, :cond_3

    .line 1167
    :cond_2
    iput-boolean v5, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsWiredHeadsetPlugged:Z

    .line 1169
    :cond_3
    iget-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTHeadsetPlugged:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    .line 1171
    :cond_4
    iget-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsWiredHeadsetPlugged:Z

    if-eqz v0, :cond_5

    .line 1172
    iget v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetType:I

    goto :goto_0

    .line 1174
    :cond_5
    iget v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mOriginRouting:I

    .line 1177
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reset audio routing, default routing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lio/agora/rtc/internal/AudioRoutingController;->mDefaultRouting:I

    invoke-direct {p0, v6}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mCurrentRouting:I

    .line 1178
    invoke-direct {p0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->queryCurrentAudioRouting()I

    move-result v1

    invoke-direct {p0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1177
    invoke-static {v3, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mCurrentRouting:I

    if-ne v1, v0, :cond_6

    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->queryCurrentAudioRouting()I

    move-result v1

    iget v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mCurrentRouting:I

    if-eq v1, v2, :cond_7

    .line 1182
    :cond_6
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/AudioRoutingController;->doSetAudioOutputRouting(I)I

    :cond_7
    :goto_1
    return-void
.end method

.method private startBtSco()V
    .locals 4

    .line 944
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 946
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 947
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try to opening bt sco "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/agora/rtc/internal/AudioRoutingController;->mScoConnectionAttemps:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->modeAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    invoke-direct {p0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->btStateAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] sco on: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioRoute"

    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Off call sco support = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 949
    iput v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    .line 950
    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mScoConnectionAttemps:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mScoConnectionAttemps:I

    .line 951
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/AudioRoutingController;->doStartBTSco(Landroid/media/AudioManager;)V

    return-void
.end method

.method private startTimer()V
    .locals 4

    .line 94
    iget v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->dynamic_timeout:I

    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mScoConnectionAttemps:I

    mul-int/lit16 v1, v1, 0xfa0

    add-int/2addr v0, v1

    iput v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->dynamic_timeout:I

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start bluetooth timer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->dynamic_timeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRoute"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->bluetoothTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopBtSco()V
    .locals 4

    .line 1070
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 1071
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 1072
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try to stopping bt sco "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->modeAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    invoke-direct {p0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->btStateAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] sco on: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioRoute"

    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    .line 1075
    iput v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 1077
    iput v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    .line 1080
    :goto_0
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/AudioRoutingController;->doStopBTSco(Landroid/media/AudioManager;)V

    return-void
.end method

.method private updateBluetoothSco(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetRouting"
        }
    .end annotation

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBluetoothSco sco started: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTScoStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", audio route target: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] current: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mCurrentRouting:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mCurrentRouting:I

    .line 909
    invoke-direct {p0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], engine role: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEngineRole:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mUsing  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mUsingCommParameters:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mBTHeadSetProperlySeted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadSetProperlySeted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRoute"

    .line 908
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 912
    iput-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadSetProperlySeted:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 935
    iput-boolean v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadSetProperlySeted:Z

    .line 937
    :goto_0
    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mNotifiedRouting:I

    .line 938
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController;->notifyAudioRoutingChanged(I)V

    return v0
.end method


# virtual methods
.method public clearListenerNativeHandle()V
    .locals 2

    const-string v0, "AudioRoute"

    const-string v1, "clearListenerNativeHandle"

    .line 847
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/agora/rtc/internal/AudioRoutingListener;

    if-eqz v1, :cond_0

    .line 850
    invoke-interface {v1}, Lio/agora/rtc/internal/AudioRoutingListener;->onAudioRoutingDestroyed()V

    goto :goto_0

    :cond_0
    const-string v1, "failed to get audio routing listener"

    .line 852
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "permission"
        }
    .end annotation

    .line 1230
    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public initialize()I
    .locals 11

    const-string v0, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    const-string v1, "AudioRoute"

    const-string v2, "initialize +"

    .line 662
    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    iget-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const/4 v3, -0x1

    if-nez v2, :cond_0

    const-string v0, "context has been GCed"

    .line 666
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 670
    :cond_0
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v0, "invalid context: can\'t get AudioManager"

    .line 672
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 677
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 678
    new-instance v6, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    invoke-direct {v6, p0, v3}, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;-><init>(Lio/agora/rtc/internal/AudioRoutingController;Landroid/os/Looper;)V

    iput-object v6, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    goto :goto_0

    .line 679
    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 680
    new-instance v6, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    invoke-direct {v6, p0, v3}, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;-><init>(Lio/agora/rtc/internal/AudioRoutingController;Landroid/os/Looper;)V

    iput-object v6, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    goto :goto_0

    .line 682
    :cond_3
    iput-object v5, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    .line 685
    :goto_0
    iget-object v3, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

    if-nez v3, :cond_4

    .line 686
    new-instance v3, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

    invoke-direct {v3, p0, v5}, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;-><init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V

    iput-object v3, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

    .line 689
    :cond_4
    invoke-virtual {v4}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v3

    iput-boolean v3, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsWiredHeadsetPlugged:Z

    const/4 v3, 0x2

    .line 692
    invoke-direct {p0, v3}, Lio/agora/rtc/internal/AudioRoutingController;->changeState(I)Lio/agora/rtc/internal/AudioRoutingController$ControllerState;

    move-result-object v4

    iput-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mState:Lio/agora/rtc/internal/AudioRoutingController$ControllerState;

    .line 693
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Headset setup: Plugged = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsWiredHeadsetPlugged:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    iget-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

    invoke-virtual {v4}, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;->getRegistered()Z

    move-result v4

    const/4 v6, 0x1

    if-nez v4, :cond_5

    .line 695
    iget-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 696
    iget-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

    invoke-virtual {v4, v6}, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;->setRegistered(Z)V

    .line 699
    :cond_5
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    const-string v8, "android.permission.BLUETOOTH"

    const/4 v9, 0x0

    if-ge v4, v7, :cond_6

    .line 700
    invoke-virtual {v2, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_6

    const-string v0, "do not support BT monitoring on this device"

    .line 701
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    .line 705
    :cond_6
    iget-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    if-eqz v4, :cond_7

    const-string v4, "Bluetooth service Listener already been initialized"

    .line 706
    invoke-static {v1, v4}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 709
    :cond_7
    :try_start_0
    new-instance v4, Lio/agora/rtc/internal/AudioRoutingController$2;

    invoke-direct {v4, p0}, Lio/agora/rtc/internal/AudioRoutingController$2;-><init>(Lio/agora/rtc/internal/AudioRoutingController;)V

    iput-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 731
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initialize failed: unable to create BluetoothProfile.ServiceListener, err="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :goto_1
    invoke-virtual {p0, v2, v8}, Lio/agora/rtc/internal/AudioRoutingController;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v0, "lacks BLUETOOTH permission"

    .line 737
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    .line 742
    :cond_8
    :try_start_1
    iget-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;

    if-nez v4, :cond_9

    .line 743
    new-instance v4, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;

    invoke-direct {v4, p0, v5}, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;-><init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V

    iput-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;

    .line 747
    :cond_9
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    iput-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v4, :cond_c

    .line 749
    iget-object v5, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    if-eqz v5, :cond_c

    .line 750
    invoke-virtual {v4, v2, v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 755
    iget-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v4

    if-ne v3, v4, :cond_a

    .line 756
    iput-boolean v6, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTHeadsetPlugged:Z

    .line 758
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BT headset setup: BTHeadsetPlugged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mIsBTHeadsetPlugged:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    .line 761
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 762
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 763
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 764
    iget-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;

    invoke-virtual {v4}, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;->getRegistered()Z

    move-result v4

    if-nez v4, :cond_d

    .line 765
    iget-object v4, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 766
    iget-object v3, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;

    invoke-virtual {v3, v6}, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;->setRegistered(Z)V

    if-eqz v2, :cond_d

    .line 767
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "android.media.extra.SCO_AUDIO_STATE"

    .line 768
    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v6, :cond_b

    const-string v0, "initial Bluetooth SCO device unconnected"

    .line 775
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 776
    iput v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    goto :goto_2

    :cond_b
    const-string v0, "initial Bluetooth SCO device connected"

    .line 771
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    iput v6, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBtScoState:I

    goto :goto_2

    :cond_c
    const-string v0, "initialize: failed to get bluetooth adapter!!"

    .line 752
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v9

    :catch_1
    move-exception v0

    .line 783
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to create BluetoothHeadsetBroadcastReceiver, err:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_2
    const-string v0, "initialize -"

    .line 785
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v9
.end method

.method public sendEvent(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "arg"
        }
    .end annotation

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendEvent: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], extra arg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRoute"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 841
    invoke-virtual {v0, p1, p2, v1}, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 842
    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc/internal/AudioRoutingController$EventHandler;

    invoke-virtual {p2, p1}, Lio/agora/rtc/internal/AudioRoutingController$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public startMonitoring(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultRouting",
            "channelProfile"
        }
    .end annotation

    .line 823
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mState:Lio/agora/rtc/internal/AudioRoutingController$ControllerState;

    invoke-interface {v0}, Lio/agora/rtc/internal/AudioRoutingController$ControllerState;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const-string p1, "AudioRoute"

    const-string p2, "state not changed!"

    .line 824
    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 828
    :cond_0
    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mDefaultRouting:I

    .line 829
    iput p2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mChannelProfile:I

    .line 830
    iput p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mOriginRouting:I

    .line 831
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mState:Lio/agora/rtc/internal/AudioRoutingController$ControllerState;

    invoke-interface {p1, v1}, Lio/agora/rtc/internal/AudioRoutingController$ControllerState;->setState(I)V

    return-void
.end method

.method public stopMonitoring()V
    .locals 2

    .line 835
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController;->mState:Lio/agora/rtc/internal/AudioRoutingController$ControllerState;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lio/agora/rtc/internal/AudioRoutingController$ControllerState;->setState(I)V

    return-void
.end method

.method public uninitialize()V
    .locals 4

    const-string v0, "AudioRoute"

    const-string v1, "uninitialize"

    .line 801
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtc/internal/AudioRoutingController;->clearBTResource()V

    .line 804
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 806
    iget-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;->getRegistered()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 807
    iget-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 808
    iget-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

    invoke-virtual {v2, v3}, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;->setRegistered(Z)V

    .line 810
    :cond_0
    iget-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;->getRegistered()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 811
    iget-object v2, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 812
    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;

    invoke-virtual {v1, v3}, Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;->setRegistered(Z)V

    :cond_1
    const/4 v1, 0x0

    .line 815
    iput-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;

    .line 816
    iput-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController;->mBTHeadsetReceiver:Lio/agora/rtc/internal/AudioRoutingController$BTHeadsetBroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AudioRoutingController uninitialize fail: "

    .line 818
    invoke-static {v0, v2, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
