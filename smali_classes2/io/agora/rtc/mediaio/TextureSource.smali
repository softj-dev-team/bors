.class public abstract Lio/agora/rtc/mediaio/TextureSource;
.super Ljava/lang/Object;
.source "TextureSource.java"

# interfaces
.implements Lio/agora/rtc/mediaio/IVideoSource;
.implements Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;


# instance fields
.field protected mConsumer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/agora/rtc/mediaio/IVideoFrameConsumer;",
            ">;"
        }
    .end annotation
.end field

.field protected mHeight:I

.field protected mPixelFormat:I

.field protected mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

.field protected mWidth:I


# direct methods
.method public constructor <init>(Lio/agora/rtc/gl/EglBase$Context;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sharedContext",
            "width",
            "height"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p2, p0, Lio/agora/rtc/mediaio/TextureSource;->mWidth:I

    .line 39
    iput p3, p0, Lio/agora/rtc/mediaio/TextureSource;->mHeight:I

    const/16 v0, 0xb

    .line 40
    iput v0, p0, Lio/agora/rtc/mediaio/TextureSource;->mPixelFormat:I

    const-string v0, "TexCamThread"

    .line 41
    invoke-static {v0, p1}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->create(Ljava/lang/String;Lio/agora/rtc/gl/EglBase$Context;)Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtc/mediaio/TextureSource;->mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    .line 42
    invoke-virtual {p1}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 43
    iget-object p1, p0, Lio/agora/rtc/mediaio/TextureSource;->mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    invoke-virtual {p1, p0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->startListening(Lio/agora/rtc/mediaio/SurfaceTextureHelper$OnTextureFrameAvailableListener;)V

    return-void
.end method


# virtual methods
.method public getBufferType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getCaptureType()I
    .locals 1

    .line 123
    sget-object v0, Lio/agora/rtc/mediaio/MediaIO$CaptureType;->CAMERA:Lio/agora/rtc/mediaio/MediaIO$CaptureType;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/MediaIO$CaptureType;->intValue()I

    move-result v0

    return v0
.end method

.method public getContentHint()I
    .locals 1

    .line 132
    sget-object v0, Lio/agora/rtc/mediaio/MediaIO$ContentHint;->NONE:Lio/agora/rtc/mediaio/MediaIO$ContentHint;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/MediaIO$ContentHint;->intValue()I

    move-result v0

    return v0
.end method

.method public getEglContext()Lio/agora/rtc/gl/EglBase$Context;
    .locals 1

    .line 167
    iget-object v0, p0, Lio/agora/rtc/mediaio/TextureSource;->mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->getEglContext()Lio/agora/rtc/gl/EglBase$Context;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 156
    iget-object v0, p0, Lio/agora/rtc/mediaio/TextureSource;->mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method protected abstract onCapturerClosed()V
.end method

.method protected abstract onCapturerOpened()Z
.end method

.method protected abstract onCapturerStarted()Z
.end method

.method protected abstract onCapturerStopped()V
.end method

.method public onDispose()V
    .locals 1

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lio/agora/rtc/mediaio/TextureSource;->mConsumer:Ljava/lang/ref/WeakReference;

    .line 100
    invoke-virtual {p0}, Lio/agora/rtc/mediaio/TextureSource;->onCapturerClosed()V

    return-void
.end method

.method public onInitialize(Lio/agora/rtc/mediaio/IVideoFrameConsumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/agora/rtc/mediaio/TextureSource;->mConsumer:Ljava/lang/ref/WeakReference;

    .line 61
    invoke-virtual {p0}, Lio/agora/rtc/mediaio/TextureSource;->onCapturerOpened()Z

    move-result p1

    return p1
.end method

.method public onStart()Z
    .locals 1

    .line 77
    invoke-virtual {p0}, Lio/agora/rtc/mediaio/TextureSource;->onCapturerStarted()Z

    move-result v0

    return v0
.end method

.method public onStop()V
    .locals 0

    .line 88
    invoke-virtual {p0}, Lio/agora/rtc/mediaio/TextureSource;->onCapturerStopped()V

    return-void
.end method

.method public onTextureFrameAvailable(I[FJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "oesTextureId",
            "transformMatrix",
            "timestampNs"
        }
    .end annotation

    .line 143
    iget-object p1, p0, Lio/agora/rtc/mediaio/TextureSource;->mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    invoke-virtual {p1}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->returnTextureFrame()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 176
    iget-object v0, p0, Lio/agora/rtc/mediaio/TextureSource;->mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->stopListening()V

    .line 177
    iget-object v0, p0, Lio/agora/rtc/mediaio/TextureSource;->mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    invoke-virtual {v0}, Lio/agora/rtc/mediaio/SurfaceTextureHelper;->dispose()V

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lio/agora/rtc/mediaio/TextureSource;->mSurfaceTextureHelper:Lio/agora/rtc/mediaio/SurfaceTextureHelper;

    return-void
.end method
