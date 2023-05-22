.class public Lorg/cocos2dx/lib/Cocos2dxRenderer;
.super Ljava/lang/Object;
.source "Cocos2dxRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final NANOSECONDSPERMICROSECOND:J = 0xf4240L

.field private static final NANOSECONDSPERSECOND:J = 0x3b9aca00L

.field private static sAnimationInterval:J = 0xfe502aL


# instance fields
.field private mLastTickInNanoSeconds:J

.field private mNativeInitCompleted:Z

.field private mScreenHeight:I

.field private mScreenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mNativeInitCompleted:Z

    return-void
.end method

.method private static native nativeDeleteBackward()V
.end method

.method private static native nativeGetContentText()Ljava/lang/String;
.end method

.method private static native nativeInit(II)V
.end method

.method private static native nativeInsertText(Ljava/lang/String;)V
.end method

.method private static native nativeKeyEvent(IZ)Z
.end method

.method private static native nativeOnPause()V
.end method

.method private static native nativeOnResume()V
.end method

.method private static native nativeOnSurfaceChanged(II)V
.end method

.method private static native nativeRender()V
.end method

.method private static native nativeTouchesBegin(IFF)V
.end method

.method private static native nativeTouchesCancel([I[F[F)V
.end method

.method private static native nativeTouchesEnd(IFF)V
.end method

.method private static native nativeTouchesMove([I[F[F)V
.end method

.method public static setAnimationInterval(F)V
    .locals 2

    const v0, 0x4e6e6b28    # 1.0E9f

    mul-float p0, p0, v0

    float-to-long v0, p0

    .line 60
    sput-wide v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sAnimationInterval:J

    return-void
.end method


# virtual methods
.method public getContentText()Ljava/lang/String;
    .locals 1

    .line 181
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeGetContentText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleActionCancel([I[F[F)V
    .locals 0

    .line 134
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesCancel([I[F[F)V

    return-void
.end method

.method public handleActionDown(IFF)V
    .locals 0

    .line 126
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesBegin(IFF)V

    return-void
.end method

.method public handleActionMove([I[F[F)V
    .locals 0

    .line 138
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesMove([I[F[F)V

    return-void
.end method

.method public handleActionUp(IFF)V
    .locals 0

    .line 130
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesEnd(IFF)V

    return-void
.end method

.method public handleDeleteBackward()V
    .locals 0

    .line 177
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeDeleteBackward()V

    return-void
.end method

.method public handleInsertText(Ljava/lang/String;)V
    .locals 0

    .line 173
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeInsertText(Ljava/lang/String;)V

    return-void
.end method

.method public handleKeyDown(I)V
    .locals 1

    const/4 v0, 0x1

    .line 142
    invoke-static {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeKeyEvent(IZ)Z

    return-void
.end method

.method public handleKeyUp(I)V
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-static {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeKeyEvent(IZ)Z

    return-void
.end method

.method public handleOnPause()V
    .locals 1

    .line 156
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mNativeInitCompleted:Z

    if-nez v0, :cond_0

    return-void

    .line 159
    :cond_0
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onEnterBackground()V

    .line 160
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeOnPause()V

    return-void
.end method

.method public handleOnResume()V
    .locals 0

    .line 164
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onEnterForeground()V

    .line 165
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeOnResume()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    .line 90
    sget-wide v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sAnimationInterval:J

    long-to-double v0, v0

    const-wide v2, 0x416fca0555555555L    # 1.6666666666666666E7

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    .line 91
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeRender()V

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 94
    iget-wide v2, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mLastTickInNanoSeconds:J

    sub-long/2addr v0, v2

    .line 96
    sget-wide v2, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sAnimationInterval:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    sub-long/2addr v2, v0

    const-wide/32 v0, 0xf4240

    .line 98
    :try_start_0
    div-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :catch_0
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mLastTickInNanoSeconds:J

    .line 106
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeRender()V

    :goto_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .line 81
    invoke-static {p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeOnSurfaceChanged(II)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .line 74
    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mScreenWidth:I

    iget p2, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mScreenHeight:I

    invoke-static {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeInit(II)V

    .line 75
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mLastTickInNanoSeconds:J

    const/4 p1, 0x1

    .line 76
    iput-boolean p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mNativeInitCompleted:Z

    return-void
.end method

.method public setScreenWidthAndHeight(II)V
    .locals 0

    .line 64
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mScreenWidth:I

    .line 65
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mScreenHeight:I

    return-void
.end method
