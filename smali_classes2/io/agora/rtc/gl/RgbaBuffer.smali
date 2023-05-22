.class public Lio/agora/rtc/gl/RgbaBuffer;
.super Ljava/lang/Object;
.source "RgbaBuffer.java"

# interfaces
.implements Lio/agora/rtc/gl/VideoFrame$Buffer;


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private mHeight:I

.field private mWidth:I

.field private refCount:I

.field private final refCountLock:Ljava/lang/Object;

.field private final releaseCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;IILjava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "width",
            "height",
            "releaseCallback"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/gl/RgbaBuffer;->refCountLock:Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Lio/agora/rtc/gl/RgbaBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    .line 23
    iput p2, p0, Lio/agora/rtc/gl/RgbaBuffer;->mWidth:I

    .line 24
    iput p3, p0, Lio/agora/rtc/gl/RgbaBuffer;->mHeight:I

    .line 25
    iput-object p4, p0, Lio/agora/rtc/gl/RgbaBuffer;->releaseCallback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public cropAndScale(IIIIII)Lio/agora/rtc/gl/VideoFrame$Buffer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cropX",
            "cropY",
            "cropWidth",
            "cropHeight",
            "scaleWidth",
            "scaleHeight"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 29
    iget-object v0, p0, Lio/agora/rtc/gl/RgbaBuffer;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 39
    iget v0, p0, Lio/agora/rtc/gl/RgbaBuffer;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 34
    iget v0, p0, Lio/agora/rtc/gl/RgbaBuffer;->mWidth:I

    return v0
.end method

.method public release()V
    .locals 2

    .line 56
    iget-object v0, p0, Lio/agora/rtc/gl/RgbaBuffer;->refCountLock:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_0
    iget v1, p0, Lio/agora/rtc/gl/RgbaBuffer;->refCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/agora/rtc/gl/RgbaBuffer;->refCount:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/agora/rtc/gl/RgbaBuffer;->releaseCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 58
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 60
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public retain()V
    .locals 2

    .line 49
    iget-object v0, p0, Lio/agora/rtc/gl/RgbaBuffer;->refCountLock:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_0
    iget v1, p0, Lio/agora/rtc/gl/RgbaBuffer;->refCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/agora/rtc/gl/RgbaBuffer;->refCount:I

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toI420()Lio/agora/rtc/gl/VideoFrame$I420Buffer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
