.class Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;
.super Landroid/media/MediaCodec$Callback;
.source "MediaCodecVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/MediaCodecVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaCodecEncoderCallback"
.end annotation


# instance fields
.field stale:Z

.field final synthetic this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;


# direct methods
.method private constructor <init>(Lio/agora/rtc/video/MediaCodecVideoEncoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1412
    iput-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    const/4 p1, 0x0

    .line 1413
    iput-boolean p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->stale:Z

    return-void
.end method

.method synthetic constructor <init>(Lio/agora/rtc/video/MediaCodecVideoEncoder;Lio/agora/rtc/video/MediaCodecVideoEncoder$1;)V
    .locals 0

    .line 1412
    invoke-direct {p0, p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;-><init>(Lio/agora/rtc/video/MediaCodecVideoEncoder;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "codec",
            "e"
        }
    .end annotation

    .line 1470
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaCodecVideoEncoder"

    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "codec",
            "index"
        }
    .end annotation

    .line 1418
    iget-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    invoke-static {p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$900(Lio/agora/rtc/video/MediaCodecVideoEncoder;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1421
    :cond_0
    iget-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    invoke-static {p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$1000(Lio/agora/rtc/video/MediaCodecVideoEncoder;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1422
    :try_start_0
    iget-boolean v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->stale:Z

    if-nez v0, :cond_1

    .line 1423
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    invoke-static {v0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$1100(Lio/agora/rtc/video/MediaCodecVideoEncoder;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1425
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "codec",
            "index",
            "info"
        }
    .end annotation

    .line 1431
    iget-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    invoke-static {p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$900(Lio/agora/rtc/video/MediaCodecVideoEncoder;)Z

    move-result p1

    const-string v0, "MediaCodecVideoEncoder"

    if-nez p1, :cond_0

    const-string p1, "discarding output since encoder is released!"

    .line 1432
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1438
    :cond_0
    :try_start_0
    iget-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    invoke-static {p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$600(Lio/agora/rtc/video/MediaCodecVideoEncoder;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1440
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "failed to get output buffer, index: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 1449
    :try_start_1
    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 1451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[async] Config frame generated. Offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    iget-object v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-static {v2, p3}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$1202(Lio/agora/rtc/video/MediaCodecVideoEncoder;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1454
    iget-object p3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    invoke-static {p3}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$1200(Lio/agora/rtc/video/MediaCodecVideoEncoder;)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 1456
    :cond_3
    iget-object v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    invoke-static {v2, p3, p2, p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$1300(Lio/agora/rtc/video/MediaCodecVideoEncoder;Landroid/media/MediaCodec$BufferInfo;ILjava/nio/ByteBuffer;)Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;

    move-result-object p1

    .line 1457
    iget-object p3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    invoke-static {p3}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$100(Lio/agora/rtc/video/MediaCodecVideoEncoder;)J

    move-result-wide v4

    invoke-static {p3, v4, v5, v3, p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$400(Lio/agora/rtc/video/MediaCodecVideoEncoder;JZLio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p3, "handle output buffer error"

    .line 1460
    invoke-static {v0, p3, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1465
    :goto_1
    iget-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->this$0:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    invoke-static {p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->access$600(Lio/agora/rtc/video/MediaCodecVideoEncoder;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void

    :catch_1
    move-exception p1

    .line 1444
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOutputBuffer exception, index: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "codec",
            "format"
        }
    .end annotation

    .line 1476
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onOutputFormatChanged "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaCodecVideoEncoder"

    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
