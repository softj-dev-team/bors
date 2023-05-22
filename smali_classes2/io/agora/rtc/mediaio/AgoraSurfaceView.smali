.class public Lio/agora/rtc/mediaio/AgoraSurfaceView;
.super Landroid/view/SurfaceView;
.source "AgoraSurfaceView.java"

# interfaces
.implements Lio/agora/rtc/mediaio/IVideoSink;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "AgoraSurfaceView"


# instance fields
.field private mConfigAttributes:[I

.field private mDrawer:Lio/agora/rtc/gl/RendererCommon$GlDrawer;

.field private mEglContext:Lio/agora/rtc/gl/EglBase$Context;

.field private mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance p1, Lio/agora/rtc/mediaio/BaseVideoRenderer;

    sget-object v0, Lio/agora/rtc/mediaio/AgoraSurfaceView;->TAG:Ljava/lang/String;

    invoke-direct {p1, v0}, Lio/agora/rtc/mediaio/BaseVideoRenderer;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraSurfaceView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    .line 41
    invoke-virtual {p1, p0, p0}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->setRenderView(Landroid/view/SurfaceView;Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance p1, Lio/agora/rtc/mediaio/BaseVideoRenderer;

    sget-object p2, Lio/agora/rtc/mediaio/AgoraSurfaceView;->TAG:Ljava/lang/String;

    invoke-direct {p1, p2}, Lio/agora/rtc/mediaio/BaseVideoRenderer;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraSurfaceView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    .line 52
    invoke-virtual {p1, p0, p0}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->setRenderView(Landroid/view/SurfaceView;Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public consumeByteArrayFrame([BIIIIJ)V
    .locals 8
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
            "pixelFormat",
            "width",
            "height",
            "rotation",
            "ts"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraSurfaceView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->consume([BIIIIJ)V

    return-void
.end method

.method public consumeByteBufferFrame(Ljava/nio/ByteBuffer;IIIIJ)V
    .locals 8
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

    .line 112
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraSurfaceView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->consume(Ljava/nio/ByteBuffer;IIIIJ)V

    return-void
.end method

.method public consumeTextureFrame(IIIIIJ[F)V
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
            "pixelFormat",
            "width",
            "height",
            "rotation",
            "ts",
            "matrix"
        }
    .end annotation

    move-object v0, p0

    .line 122
    iget-object v1, v0, Lio/agora/rtc/mediaio/AgoraSurfaceView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->consume(IIIIIJ[F)V

    return-void
.end method

.method public getBufferType()I
    .locals 2

    .line 128
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraSurfaceView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->getBufferType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer type is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEGLContextHandle()J
    .locals 2

    .line 70
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraSurfaceView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->getEGLContextHandle()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPixelFormat()I
    .locals 2

    .line 138
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraSurfaceView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->getPixelFormat()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pixel format is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Lio/agora/rtc/gl/EglBase$Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sharedContext"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraSurfaceView;->mEglContext:Lio/agora/rtc/gl/EglBase$Context;

    return-void
.end method

.method public init(Lio/agora/rtc/gl/EglBase$Context;[ILio/agora/rtc/gl/RendererCommon$GlDrawer;)V
    .locals 0
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

    .line 63
    iput-object p1, p0, Lio/agora/rtc/mediaio/AgoraSurfaceView;->mEglContext:Lio/agora/rtc/gl/EglBase$Context;

    .line 64
    iput-object p2, p0, Lio/agora/rtc/mediaio/AgoraSurfaceView;->mConfigAttributes:[I

    .line 65
    iput-object p3, p0, Lio/agora/rtc/mediaio/AgoraSurfaceView;->mDrawer:Lio/agora/rtc/gl/RendererCommon$GlDrawer;

    return-void
.end method

.method public onDispose()V
    .locals 1

    .line 107
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraSurfaceView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->release()V

    return-void
.end method

.method public onInitialize()Z
    .locals 4

    .line 87
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraSurfaceView;->mConfigAttributes:[I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/agora/rtc/mediaio/AgoraSurfaceView;->mDrawer:Lio/agora/rtc/gl/RendererCommon$GlDrawer;

    if-eqz v1, :cond_0

    .line 88
    iget-object v2, p0, Lio/agora/rtc/mediaio/AgoraSurfaceView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    iget-object v3, p0, Lio/agora/rtc/mediaio/AgoraSurfaceView;->mEglContext:Lio/agora/rtc/gl/EglBase$Context;

    invoke-virtual {v2, v3, v0, v1}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->init(Lio/agora/rtc/gl/EglBase$Context;[ILio/agora/rtc/gl/RendererCommon$GlDrawer;)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraSurfaceView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    iget-object v1, p0, Lio/agora/rtc/mediaio/AgoraSurfaceView;->mEglContext:Lio/agora/rtc/gl/EglBase$Context;

    invoke-virtual {v0, v1}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->init(Lio/agora/rtc/gl/EglBase$Context;)V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
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
            "changed",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 161
    invoke-static {}, Lio/agora/rtc/utils/ThreadUtils;->checkIsOnMainThread()V

    .line 162
    iget-object p1, p0, Lio/agora/rtc/mediaio/AgoraSurfaceView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    invoke-virtual {p1}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->getEglRender()Lio/agora/rtc/gl/EglRenderer;

    move-result-object p1

    sub-int/2addr p4, p2

    int-to-float p2, p4

    sub-int/2addr p5, p3

    int-to-float p3, p5

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lio/agora/rtc/gl/EglRenderer;->setLayoutAspectRatio(F)V

    return-void
.end method

.method public onStart()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraSurfaceView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->start()Z

    move-result v0

    return v0
.end method

.method public onStop()V
    .locals 1

    .line 102
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraSurfaceView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->stop()V

    return-void
.end method

.method public setBufferType(Lio/agora/rtc/mediaio/MediaIO$BufferType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraSurfaceView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    invoke-virtual {v0, p1}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->setBufferType(Lio/agora/rtc/mediaio/MediaIO$BufferType;)V

    return-void
.end method

.method public setMirror(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mirror"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraSurfaceView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->getEglRender()Lio/agora/rtc/gl/EglRenderer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/agora/rtc/gl/EglRenderer;->setMirror(Z)V

    return-void
.end method

.method public setPixelFormat(Lio/agora/rtc/mediaio/MediaIO$PixelFormat;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pixelFormat"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lio/agora/rtc/mediaio/AgoraSurfaceView;->mRender:Lio/agora/rtc/mediaio/BaseVideoRenderer;

    invoke-virtual {v0, p1}, Lio/agora/rtc/mediaio/BaseVideoRenderer;->setPixelFormat(Lio/agora/rtc/mediaio/MediaIO$PixelFormat;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
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

    .line 156
    sget-object p1, Lio/agora/rtc/mediaio/AgoraSurfaceView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceChanged: format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " size: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "x"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "holder"
        }
    .end annotation

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    return-void
.end method
