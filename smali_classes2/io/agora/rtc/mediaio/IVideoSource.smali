.class public interface abstract Lio/agora/rtc/mediaio/IVideoSource;
.super Ljava/lang/Object;
.source "IVideoSource.java"


# virtual methods
.method public abstract getBufferType()I
.end method

.method public abstract getCaptureType()I
.end method

.method public abstract getContentHint()I
.end method

.method public abstract onDispose()V
.end method

.method public abstract onInitialize(Lio/agora/rtc/mediaio/IVideoFrameConsumer;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consumer"
        }
    .end annotation
.end method

.method public abstract onStart()Z
.end method

.method public abstract onStop()V
.end method
