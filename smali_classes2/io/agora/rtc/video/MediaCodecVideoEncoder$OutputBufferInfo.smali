.class Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;
.super Ljava/lang/Object;
.source "MediaCodecVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/MediaCodecVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OutputBufferInfo"
.end annotation


# instance fields
.field public final buffer:Ljava/nio/ByteBuffer;

.field public final index:I

.field public final isKeyFrame:Z

.field public final presentationTimestampUs:J

.field public final size:I


# direct methods
.method public constructor <init>(ILjava/nio/ByteBuffer;ZJI)V
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
            "index",
            "buffer",
            "isKeyFrame",
            "presentationTimestampUs",
            "size"
        }
    .end annotation

    .line 1279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1280
    iput p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;->index:I

    .line 1281
    iput-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;->buffer:Ljava/nio/ByteBuffer;

    .line 1282
    iput-boolean p3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;->isKeyFrame:Z

    .line 1283
    iput-wide p4, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;->presentationTimestampUs:J

    .line 1284
    iput p6, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;->size:I

    return-void
.end method
