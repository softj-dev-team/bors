.class public interface abstract Lio/agora/rtc/IAudioFrameObserver;
.super Ljava/lang/Object;
.source "IAudioFrameObserver.java"


# virtual methods
.method public abstract onPlaybackFrame([BIIII)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "samples",
            "numOfSamples",
            "bytesPerSample",
            "channels",
            "samplesPerSec"
        }
    .end annotation
.end method

.method public abstract onRecordFrame([BIIII)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "samples",
            "numOfSamples",
            "bytesPerSample",
            "channels",
            "samplesPerSec"
        }
    .end annotation
.end method
