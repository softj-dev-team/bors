.class public Lio/agora/rtc/live/LiveInjectStreamConfig;
.super Ljava/lang/Object;
.source "LiveInjectStreamConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;
    }
.end annotation


# instance fields
.field public audioBitrate:I

.field public audioChannels:I

.field public audioSampleRate:Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;

.field public height:I

.field public videoBitrate:I

.field public videoFramerate:I

.field public videoGop:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lio/agora/rtc/live/LiveInjectStreamConfig;->width:I

    .line 78
    iput v0, p0, Lio/agora/rtc/live/LiveInjectStreamConfig;->height:I

    const/16 v0, 0x1e

    .line 79
    iput v0, p0, Lio/agora/rtc/live/LiveInjectStreamConfig;->videoGop:I

    const/16 v0, 0xf

    .line 80
    iput v0, p0, Lio/agora/rtc/live/LiveInjectStreamConfig;->videoFramerate:I

    const/16 v0, 0x190

    .line 81
    iput v0, p0, Lio/agora/rtc/live/LiveInjectStreamConfig;->videoBitrate:I

    .line 82
    sget-object v0, Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;->TYPE_44100:Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;

    iput-object v0, p0, Lio/agora/rtc/live/LiveInjectStreamConfig;->audioSampleRate:Lio/agora/rtc/live/LiveInjectStreamConfig$AudioSampleRateType;

    const/16 v0, 0x30

    .line 83
    iput v0, p0, Lio/agora/rtc/live/LiveInjectStreamConfig;->audioBitrate:I

    const/4 v0, 0x1

    .line 84
    iput v0, p0, Lio/agora/rtc/live/LiveInjectStreamConfig;->audioChannels:I

    return-void
.end method
