.class public Lio/agora/rtc/mediaio/BaseVideoRenderer;
.super Ljava/lang/Object;
.source "BaseVideoRenderer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field private static final ERROR_EGL:Ljava/lang/String; = "Only one egl surface allowed"

.field private static final TAG:Ljava/lang/String; = "BaseVideoRenderer"


# instance fields
.field private final eglRenderer:Lio/agora/rtc/gl/EglRenderer;

.field private mBufferType:I

.field private mHasEglSurface:Z

.field private mPixelFormat:I

.field private mStarted:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mSurfaceViewListener:Landroid/view/SurfaceHolder$Callback;

.field private mTextureView:Landroid/view/TextureView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mBufferType:I

    .line 41
    iput v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mPixelFormat:I

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mHasEglSurface:Z

    .line 52
    iput-boolean v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mStarted:Z

    .line 55
    new-instance v0, Lio/agora/rtc/gl/EglRenderer;

    invoke-direct {v0, p1}, Lio/agora/rtc/gl/EglRenderer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    return-void
.end method

.method static synthetic access$000(Lio/agora/rtc/mediaio/BaseVideoRenderer;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->releaseBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private releaseBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    return-void
.end method

.method private rendI420Frame(Ljava/nio/ByteBuffer;IIIIJ)V
    .locals 2
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
            "data",
            "format",
            "width",
            "height",
            "rotation",
            "ts"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 226
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 227
    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 228
    invoke-static {v0, p3, p4}, Lio/agora/rtc/gl/JavaI420Buffer;->createYUV([BII)Lio/agora/rtc/gl/JavaI420Buffer;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 231
    :cond_1
    new-instance p2, Lio/agora/rtc/gl/VideoFrame;

    invoke-direct {p2, p1, p5, p6, p7}, Lio/agora/rtc/gl/VideoFrame;-><init>(Lio/agora/rtc/gl/VideoFrame$Buffer;IJ)V

    .line 232
    iget-object p1, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    invoke-virtual {p1, p2}, Lio/agora/rtc/gl/EglRenderer;->renderFrame(Lio/agora/rtc/gl/VideoFrame;)V

    .line 233
    invoke-virtual {p2}, Lio/agora/rtc/gl/VideoFrame;->release()V

    return-void
.end method

.method private rendI420Frame([BIIIIJ)V
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
            "data",
            "format",
            "width",
            "height",
            "rotation",
            "ts"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 237
    array-length p2, p1

    if-nez p2, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    invoke-static {p1, p3, p4}, Lio/agora/rtc/gl/JavaI420Buffer;->createYUV([BII)Lio/agora/rtc/gl/JavaI420Buffer;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 242
    :cond_1
    new-instance p2, Lio/agora/rtc/gl/VideoFrame;

    invoke-direct {p2, p1, p5, p6, p7}, Lio/agora/rtc/gl/VideoFrame;-><init>(Lio/agora/rtc/gl/VideoFrame$Buffer;IJ)V

    .line 243
    iget-object p1, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    invoke-virtual {p1, p2}, Lio/agora/rtc/gl/EglRenderer;->renderFrame(Lio/agora/rtc/gl/VideoFrame;)V

    .line 244
    invoke-virtual {p2}, Lio/agora/rtc/gl/VideoFrame;->release()V

    :cond_2
    :goto_0
    return-void
.end method

.method private rendRGBAFrame(Ljava/nio/ByteBuffer;IIIIJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "format",
            "width",
            "height",
            "rotation",
            "ts"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 250
    :cond_0
    new-instance p2, Lio/agora/rtc/gl/RgbaBuffer;

    new-instance v0, Lio/agora/rtc/mediaio/BaseVideoRenderer$2;

    invoke-direct {v0, p0, p1}, Lio/agora/rtc/mediaio/BaseVideoRenderer$2;-><init>(Lio/agora/rtc/mediaio/BaseVideoRenderer;Ljava/nio/ByteBuffer;)V

    invoke-direct {p2, p1, p3, p4, v0}, Lio/agora/rtc/gl/RgbaBuffer;-><init>(Ljava/nio/ByteBuffer;IILjava/lang/Runnable;)V

    .line 256
    new-instance p1, Lio/agora/rtc/gl/VideoFrame;

    invoke-direct {p1, p2, p5, p6, p7}, Lio/agora/rtc/gl/VideoFrame;-><init>(Lio/agora/rtc/gl/VideoFrame$Buffer;IJ)V

    .line 257
    iget-object p2, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    invoke-virtual {p2, p1}, Lio/agora/rtc/gl/EglRenderer;->renderFrame(Lio/agora/rtc/gl/VideoFrame;)V

    .line 258
    invoke-virtual {p1}, Lio/agora/rtc/gl/VideoFrame;->release()V

    return-void
.end method

.method private rendRGBAFrame([BIIIIJ)V
    .locals 1
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
            "data",
            "format",
            "width",
            "height",
            "rotation",
            "ts"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 262
    array-length p2, p1

    if-nez p2, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 266
    new-instance p2, Lio/agora/rtc/gl/RgbaBuffer;

    new-instance v0, Lio/agora/rtc/mediaio/BaseVideoRenderer$3;

    invoke-direct {v0, p0, p1}, Lio/agora/rtc/mediaio/BaseVideoRenderer$3;-><init>(Lio/agora/rtc/mediaio/BaseVideoRenderer;Ljava/nio/ByteBuffer;)V

    invoke-direct {p2, p1, p3, p4, v0}, Lio/agora/rtc/gl/RgbaBuffer;-><init>(Ljava/nio/ByteBuffer;IILjava/lang/Runnable;)V

    .line 272
    new-instance p1, Lio/agora/rtc/gl/VideoFrame;

    invoke-direct {p1, p2, p5, p6, p7}, Lio/agora/rtc/gl/VideoFrame;-><init>(Lio/agora/rtc/gl/VideoFrame$Buffer;IJ)V

    .line 273
    iget-object p2, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    invoke-virtual {p2, p1}, Lio/agora/rtc/gl/EglRenderer;->renderFrame(Lio/agora/rtc/gl/VideoFrame;)V

    .line 274
    invoke-virtual {p1}, Lio/agora/rtc/gl/VideoFrame;->release()V

    :cond_1
    :goto_0
    return-void
.end method

.method private rendTextureFrame(ILio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;IIIJ[F)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "texId",
            "type",
            "width",
            "height",
            "rotation",
            "ts",
            "matrix"
        }
    .end annotation

    move-object v0, p0

    .line 209
    invoke-static/range {p8 .. p8}, Lio/agora/rtc/gl/RendererCommon;->convertMatrixToAndroidGraphicsMatrix([F)Landroid/graphics/Matrix;

    move-result-object v6

    .line 210
    new-instance v9, Lio/agora/rtc/gl/TextureBufferImpl;

    new-instance v8, Lio/agora/rtc/mediaio/BaseVideoRenderer$1;

    invoke-direct {v8, p0}, Lio/agora/rtc/mediaio/BaseVideoRenderer$1;-><init>(Lio/agora/rtc/mediaio/BaseVideoRenderer;)V

    const/4 v7, 0x0

    move-object v1, v9

    move v2, p3

    move v3, p4

    move-object v4, p2

    move v5, p1

    invoke-direct/range {v1 .. v8}, Lio/agora/rtc/gl/TextureBufferImpl;-><init>(IILio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Lio/agora/rtc/mediaio/SurfaceTextureHelper;Ljava/lang/Runnable;)V

    .line 218
    new-instance v1, Lio/agora/rtc/gl/VideoFrame;

    move v2, p5

    move-wide/from16 v3, p6

    invoke-direct {v1, v9, p5, v3, v4}, Lio/agora/rtc/gl/VideoFrame;-><init>(Lio/agora/rtc/gl/VideoFrame$Buffer;IJ)V

    .line 219
    iget-object v2, v0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    invoke-virtual {v2, v1}, Lio/agora/rtc/gl/EglRenderer;->renderFrame(Lio/agora/rtc/gl/VideoFrame;)V

    .line 220
    invoke-virtual {v1}, Lio/agora/rtc/gl/VideoFrame;->release()V

    return-void
.end method


# virtual methods
.method public consume(IIIIIJ[F)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "texId",
            "format",
            "width",
            "height",
            "rotation",
            "ts",
            "matrix"
        }
    .end annotation

    move v0, p2

    move-object v9, p0

    .line 156
    iget-boolean v1, v9, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mStarted:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 161
    sget-object v0, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;->OES:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_1
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 163
    sget-object v0, Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;->RGB:Lio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;

    goto :goto_0

    :goto_1
    move-object v0, p0

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    .line 168
    invoke-direct/range {v0 .. v8}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->rendTextureFrame(ILio/agora/rtc/gl/VideoFrame$TextureBuffer$Type;IIIJ[F)V

    :cond_2
    return-void
.end method

.method public consume(Ljava/nio/ByteBuffer;IIIIJ)V
    .locals 1
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
            "buffer",
            "format",
            "width",
            "height",
            "rotation",
            "ts"
        }
    .end annotation

    .line 172
    iget-boolean v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 176
    invoke-direct/range {p0 .. p7}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->rendI420Frame(Ljava/nio/ByteBuffer;IIIIJ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 178
    invoke-direct/range {p0 .. p7}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->rendRGBAFrame(Ljava/nio/ByteBuffer;IIIIJ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public consume([BIIIIJ)V
    .locals 1
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
            "data",
            "format",
            "width",
            "height",
            "rotation",
            "ts"
        }
    .end annotation

    .line 183
    iget-boolean v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 187
    invoke-direct/range {p0 .. p7}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->rendI420Frame([BIIIIJ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 189
    invoke-direct/range {p0 .. p7}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->rendRGBAFrame([BIIIIJ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getBufferType()I
    .locals 2

    .line 195
    iget v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mBufferType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer type is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEGLContextHandle()J
    .locals 2

    .line 63
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    invoke-virtual {v0}, Lio/agora/rtc/gl/EglRenderer;->getEglContext()Lio/agora/rtc/gl/EglBase$Context;

    move-result-object v0

    invoke-interface {v0}, Lio/agora/rtc/gl/EglBase$Context;->getNativeEglContext()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEglRender()Lio/agora/rtc/gl/EglRenderer;
    .locals 1

    .line 59
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    return-object v0
.end method

.method public getPixelFormat()I
    .locals 2

    .line 202
    iget v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mPixelFormat:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pixel format is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Lio/agora/rtc/gl/EglBase$Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sharedContext"
        }
    .end annotation

    .line 71
    sget-object v0, Lio/agora/rtc/gl/EglBase;->CONFIG_PLAIN:[I

    new-instance v1, Lio/agora/rtc/gl/GlRectDrawer;

    invoke-direct {v1}, Lio/agora/rtc/gl/GlRectDrawer;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->init(Lio/agora/rtc/gl/EglBase$Context;[ILio/agora/rtc/gl/RendererCommon$GlDrawer;)V

    return-void
.end method

.method public init(Lio/agora/rtc/gl/EglBase$Context;[ILio/agora/rtc/gl/RendererCommon$GlDrawer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "sharedContext",
            "configAttributes",
            "drawer"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    invoke-virtual {v0, p1, p2, p3}, Lio/agora/rtc/gl/EglRenderer;->init(Lio/agora/rtc/gl/EglBase$Context;[ILio/agora/rtc/gl/RendererCommon$GlDrawer;)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "surface",
            "width",
            "height"
        }
    .end annotation

    .line 319
    invoke-static {}, Lio/agora/rtc/utils/ThreadUtils;->checkIsOnMainThread()V

    .line 320
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    invoke-virtual {v0, p1}, Lio/agora/rtc/gl/EglRenderer;->createEglSurface(Landroid/graphics/SurfaceTexture;)V

    const/4 v0, 0x1

    .line 322
    iput-boolean v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mHasEglSurface:Z

    .line 324
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 325
    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    .line 340
    invoke-static {}, Lio/agora/rtc/utils/ThreadUtils;->checkIsOnMainThread()V

    .line 341
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 342
    iget-object v2, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    new-instance v3, Lio/agora/rtc/mediaio/BaseVideoRenderer$5;

    invoke-direct {v3, p0, v0}, Lio/agora/rtc/mediaio/BaseVideoRenderer$5;-><init>(Lio/agora/rtc/mediaio/BaseVideoRenderer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Lio/agora/rtc/gl/EglRenderer;->releaseEglSurface(Ljava/lang/Runnable;)V

    .line 348
    invoke-static {v0}, Lio/agora/rtc/utils/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    .line 350
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 351
    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    :cond_0
    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "surface",
            "width",
            "height"
        }
    .end annotation

    .line 331
    sget-object v0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureSizeChanged: width- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 334
    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 360
    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 144
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    invoke-virtual {v0}, Lio/agora/rtc/gl/EglRenderer;->release()V

    return-void
.end method

.method public setBufferType(Lio/agora/rtc/mediaio/MediaIO$BufferType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 130
    invoke-virtual {p1}, Lio/agora/rtc/mediaio/MediaIO$BufferType;->intValue()I

    move-result p1

    iput p1, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mBufferType:I

    return-void
.end method

.method public setPixelFormat(Lio/agora/rtc/mediaio/MediaIO$PixelFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fmt"
        }
    .end annotation

    .line 134
    invoke-virtual {p1}, Lio/agora/rtc/mediaio/MediaIO$PixelFormat;->intValue()I

    move-result p1

    iput p1, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mPixelFormat:I

    return-void
.end method

.method public setRenderSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "st"
        }
    .end annotation

    .line 119
    invoke-static {}, Lio/agora/rtc/utils/ThreadUtils;->checkIsOnMainThread()V

    .line 120
    iget-boolean v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mHasEglSurface:Z

    if-nez v0, :cond_0

    .line 124
    iput-object p1, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 125
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    invoke-virtual {v0, p1}, Lio/agora/rtc/gl/EglRenderer;->createEglSurface(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x1

    .line 126
    iput-boolean p1, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mHasEglSurface:Z

    return-void

    .line 121
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Only one egl surface allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRenderSurface(Landroid/view/Surface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    .line 108
    invoke-static {}, Lio/agora/rtc/utils/ThreadUtils;->checkIsOnMainThread()V

    .line 109
    iget-boolean v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mHasEglSurface:Z

    if-nez v0, :cond_0

    .line 113
    iput-object p1, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mSurface:Landroid/view/Surface;

    .line 114
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    invoke-virtual {v0, p1}, Lio/agora/rtc/gl/EglRenderer;->createEglSurface(Landroid/view/Surface;)V

    const/4 p1, 0x1

    .line 115
    iput-boolean p1, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mHasEglSurface:Z

    return-void

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Only one egl surface allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRenderView(Landroid/view/SurfaceView;Landroid/view/SurfaceHolder$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "listener"
        }
    .end annotation

    .line 87
    invoke-static {}, Lio/agora/rtc/utils/ThreadUtils;->checkIsOnMainThread()V

    .line 88
    iget-boolean v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mHasEglSurface:Z

    if-nez v0, :cond_0

    .line 92
    iput-object p1, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 93
    iput-object p2, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mSurfaceViewListener:Landroid/view/SurfaceHolder$Callback;

    .line 94
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Only one egl surface allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRenderView(Landroid/view/TextureView;Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "listener"
        }
    .end annotation

    .line 97
    invoke-static {}, Lio/agora/rtc/utils/ThreadUtils;->checkIsOnMainThread()V

    .line 98
    iget-boolean v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mHasEglSurface:Z

    if-nez v0, :cond_0

    .line 102
    iput-object p1, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mTextureView:Landroid/view/TextureView;

    .line 103
    iput-object p2, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 104
    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Only one egl surface allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public start()Z
    .locals 1

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mStarted:Z

    return v0
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mStarted:Z

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "format",
            "width",
            "height"
        }
    .end annotation

    .line 291
    invoke-static {}, Lio/agora/rtc/utils/ThreadUtils;->checkIsOnMainThread()V

    .line 292
    sget-object v0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged: format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mSurfaceViewListener:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_0

    .line 294
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 280
    invoke-static {}, Lio/agora/rtc/utils/ThreadUtils;->checkIsOnMainThread()V

    .line 281
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/agora/rtc/gl/EglRenderer;->createEglSurface(Landroid/view/Surface;)V

    const/4 v0, 0x1

    .line 283
    iput-boolean v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mHasEglSurface:Z

    .line 284
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mSurfaceViewListener:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_0

    .line 285
    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 300
    invoke-static {}, Lio/agora/rtc/utils/ThreadUtils;->checkIsOnMainThread()V

    .line 301
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 302
    iget-object v1, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->eglRenderer:Lio/agora/rtc/gl/EglRenderer;

    new-instance v2, Lio/agora/rtc/mediaio/BaseVideoRenderer$4;

    invoke-direct {v2, p0, v0}, Lio/agora/rtc/mediaio/BaseVideoRenderer$4;-><init>(Lio/agora/rtc/mediaio/BaseVideoRenderer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Lio/agora/rtc/gl/EglRenderer;->releaseEglSurface(Ljava/lang/Runnable;)V

    .line 308
    invoke-static {v0}, Lio/agora/rtc/utils/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    .line 310
    iget-object v0, p0, Lio/agora/rtc/mediaio/BaseVideoRenderer;->mSurfaceViewListener:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_0

    .line 311
    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method
