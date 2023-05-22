.class Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;
.super Ljava/lang/Object;
.source "MediaCodecVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/MediaCodecVideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecodedOutputBuffer"
.end annotation


# instance fields
.field public final buffer:Ljava/nio/ByteBuffer;

.field private final decodeTimeMs:J

.field private final endDecodeTimeMs:J

.field private final index:I

.field private final ntpTimeStampMs:J

.field private final offset:I

.field private final presentationTimeStampMs:J

.field private final size:I

.field private final timeStampMs:J


# direct methods
.method public constructor <init>(ILjava/nio/ByteBuffer;IIJJJJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "buffer",
            "offset",
            "size",
            "presentationTimeStampMs",
            "timeStampMs",
            "ntpTimeStampMs",
            "decodeTime",
            "endDecodeTime"
        }
    .end annotation

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    iput p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;->index:I

    .line 564
    iput p3, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;->offset:I

    .line 565
    iput p4, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;->size:I

    .line 566
    iput-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;->buffer:Ljava/nio/ByteBuffer;

    .line 567
    iput-wide p5, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;->presentationTimeStampMs:J

    .line 568
    iput-wide p7, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;->timeStampMs:J

    .line 569
    iput-wide p9, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;->ntpTimeStampMs:J

    .line 570
    iput-wide p11, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;->decodeTimeMs:J

    .line 571
    iput-wide p13, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;->endDecodeTimeMs:J

    return-void
.end method
