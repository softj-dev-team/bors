.class Lio/agora/rtc/video/MediaCodecVideoEncoder$InputBufferInfo;
.super Ljava/lang/Object;
.source "MediaCodecVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/MediaCodecVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputBufferInfo"
.end annotation


# instance fields
.field public final buffer:Ljava/nio/ByteBuffer;

.field public final index:I


# direct methods
.method public constructor <init>(ILjava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "buffer"
        }
    .end annotation

    .line 1226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1227
    iput p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$InputBufferInfo;->index:I

    .line 1228
    iput-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$InputBufferInfo;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method
