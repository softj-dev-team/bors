.class interface abstract Lio/agora/rtc/internal/AudioRoutingController$ControllerState;
.super Ljava/lang/Object;
.source "AudioRoutingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/AudioRoutingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ControllerState"
.end annotation


# virtual methods
.method public abstract getState()I
.end method

.method public abstract onEvent(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "info"
        }
    .end annotation
.end method

.method public abstract reset()V
.end method

.method public abstract setState(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method
