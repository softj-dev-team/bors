.class public abstract Lio/agora/rtc/IRtcChannelEventHandler;
.super Ljava/lang/Object;
.source "IRtcChannelEventHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveSpeaker(Lio/agora/rtc/RtcChannel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rtcChannel",
            "uid"
        }
    .end annotation

    return-void
.end method

.method public onAudioPublishStateChanged(Lio/agora/rtc/RtcChannel;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rtcChannel",
            "oldState",
            "newState",
            "elapseSinceLastState"
        }
    .end annotation

    return-void
.end method

.method public onAudioSubscribeStateChanged(Lio/agora/rtc/RtcChannel;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rtcChannel",
            "uid",
            "oldState",
            "newState",
            "elapseSinceLastState"
        }
    .end annotation

    return-void
.end method

.method public onChannelError(Lio/agora/rtc/RtcChannel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rtcChannel",
            "err"
        }
    .end annotation

    return-void
.end method

.method public onChannelMediaRelayEvent(Lio/agora/rtc/RtcChannel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rtcChannel",
            "code"
        }
    .end annotation

    return-void
.end method

.method public onChannelMediaRelayStateChanged(Lio/agora/rtc/RtcChannel;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rtcChannel",
            "state",
            "code"
        }
    .end annotation

    return-void
.end method

.method public onChannelWarning(Lio/agora/rtc/RtcChannel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rtcChannel",
            "warn"
        }
    .end annotation

    return-void
.end method

.method public onClientRoleChanged(Lio/agora/rtc/RtcChannel;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rtcChannel",
            "oldRole",
            "newRole"
        }
    .end annotation

    return-void
.end method

.method public onConnectionLost(Lio/agora/rtc/RtcChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rtcChannel"
        }
    .end annotation

    return-void
.end method

.method public onConnectionStateChanged(Lio/agora/rtc/RtcChannel;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rtcChannel",
            "state",
            "reason"
        }
    .end annotation

    return-void
.end method

.method public onJoinChannelSuccess(Lio/agora/rtc/RtcChannel;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rtcChannel",
            "uid",
            "elapsed"
        }
    .end annotation

    return-void
.end method

.method public onLeaveChannel(Lio/agora/rtc/RtcChannel;Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rtcChannel",
            "stats"
        }
    .end annotation

    return-void
.end method

.method public onLocalPublishFallbackToAudioOnly(Lio/agora/rtc/RtcChannel;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rtcChannel",
            "isFallbackOrRecover"
        }
    .end annotation

    return-void
.end method

.method public onNetworkQuality(Lio/agora/rtc/RtcChannel;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rtcChannel",
            "uid",
            "txQuality",
            "rxQuality"
        }
    .end annotation

    return-void
.end method

.method public onRejoinChannelSuccess(Lio/agora/rtc/RtcChannel;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rtcChannel",
            "uid",
            "elapsed"
        }
    .end annotation

    return-void
.end method

.method public onRemoteAudioStateChanged(Lio/agora/rtc/RtcChannel;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rtcChannel",
            "uid",
            "state",
            "reason",
            "elapsed"
        }
    .end annotation

    return-void
.end method

.method public onRemoteAudioStats(Lio/agora/rtc/RtcChannel;Lio/agora/rtc/IRtcEngineEventHandler$RemoteAudioStats;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rtcChannel",
            "stats"
        }
    .end annotation

    return-void
.end method

.method public onRemoteSubscribeFallbackToAudioOnly(Lio/agora/rtc/RtcChannel;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rtcChannel",
            "uid",
            "isFallbackOrRecover"
        }
    .end annotation

    return-void
.end method

.method public onRemoteVideoStateChanged(Lio/agora/rtc/RtcChannel;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rtcChannel",
            "uid",
            "state",
            "reason",
            "elapsed"
        }
    .end annotation

    return-void
.end method

.method public onRemoteVideoStats(Lio/agora/rtc/RtcChannel;Lio/agora/rtc/IRtcEngineEventHandler$RemoteVideoStats;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rtcChannel",
            "stats"
        }
    .end annotation

    return-void
.end method

.method public onRequestToken(Lio/agora/rtc/RtcChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rtcChannel"
        }
    .end annotation

    return-void
.end method

.method public onRtcStats(Lio/agora/rtc/RtcChannel;Lio/agora/rtc/IRtcEngineEventHandler$RtcStats;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rtcChannel",
            "stats"
        }
    .end annotation

    return-void
.end method

.method public onRtmpStreamingEvent(Lio/agora/rtc/RtcChannel;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rtcChannel",
            "url",
            "errCode"
        }
    .end annotation

    return-void
.end method

.method public onRtmpStreamingStateChanged(Lio/agora/rtc/RtcChannel;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rtcChannel",
            "url",
            "state",
            "errCode"
        }
    .end annotation

    return-void
.end method

.method public onStreamInjectedStatus(Lio/agora/rtc/RtcChannel;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rtcChannel",
            "url",
            "uid",
            "status"
        }
    .end annotation

    return-void
.end method

.method public onStreamMessage(Lio/agora/rtc/RtcChannel;II[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rtcChannel",
            "uid",
            "streamId",
            "data"
        }
    .end annotation

    return-void
.end method

.method public onStreamMessageError(Lio/agora/rtc/RtcChannel;IIIII)V
    .locals 0
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
            "rtcChannel",
            "uid",
            "streamId",
            "error",
            "missed",
            "cached"
        }
    .end annotation

    return-void
.end method

.method public onTokenPrivilegeWillExpire(Lio/agora/rtc/RtcChannel;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rtcChannel",
            "token"
        }
    .end annotation

    return-void
.end method

.method public onTranscodingUpdated(Lio/agora/rtc/RtcChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rtcChannel"
        }
    .end annotation

    return-void
.end method

.method public onUserJoined(Lio/agora/rtc/RtcChannel;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rtcChannel",
            "uid",
            "elapsed"
        }
    .end annotation

    return-void
.end method

.method public onUserOffline(Lio/agora/rtc/RtcChannel;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rtcChannel",
            "uid",
            "reason"
        }
    .end annotation

    return-void
.end method

.method public onVideoPublishStateChanged(Lio/agora/rtc/RtcChannel;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rtcChannel",
            "oldState",
            "newState",
            "elapseSinceLastState"
        }
    .end annotation

    return-void
.end method

.method public onVideoSizeChanged(Lio/agora/rtc/RtcChannel;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rtcChannel",
            "uid",
            "width",
            "height",
            "rotation"
        }
    .end annotation

    return-void
.end method

.method public onVideoSubscribeStateChanged(Lio/agora/rtc/RtcChannel;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rtcChannel",
            "uid",
            "oldState",
            "newState",
            "elapseSinceLastState"
        }
    .end annotation

    return-void
.end method
