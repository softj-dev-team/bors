.class public abstract Lio/agora/rtc/IRtcEngineEventHandlerEx;
.super Lio/agora/rtc/IRtcEngineEventHandler;
.source "IRtcEngineEventHandlerEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lio/agora/rtc/IRtcEngineEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioTransportQuality(IISS)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "bitrate",
            "delay",
            "lost"
        }
    .end annotation

    return-void
.end method

.method public onRecap([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recap"
        }
    .end annotation

    return-void
.end method

.method public onVideoTransportQuality(IISS)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "bitrate",
            "delay",
            "lost"
        }
    .end annotation

    return-void
.end method
