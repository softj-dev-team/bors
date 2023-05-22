.class Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;
.super Ljava/lang/Object;
.source "MediaCodecVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/MediaCodecVideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeStamps"
.end annotation


# instance fields
.field private final decodeStartTimeMs:J

.field private final ntpTimeStampMs:J

.field private final timeStampMs:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "decodeStartTimeMs",
            "timeStampMs",
            "ntpTimeStampMs"
        }
    .end annotation

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    iput-wide p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;->decodeStartTimeMs:J

    .line 548
    iput-wide p3, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;->timeStampMs:J

    .line 549
    iput-wide p5, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;->ntpTimeStampMs:J

    return-void
.end method

.method static synthetic access$100(Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;)J
    .locals 2

    .line 545
    iget-wide v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;->decodeStartTimeMs:J

    return-wide v0
.end method

.method static synthetic access$200(Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;)J
    .locals 2

    .line 545
    iget-wide v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;->timeStampMs:J

    return-wide v0
.end method

.method static synthetic access$300(Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;)J
    .locals 2

    .line 545
    iget-wide v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;->ntpTimeStampMs:J

    return-wide v0
.end method
