.class public Lio/agora/rtc/video/VideoCaptureCamera2;
.super Lio/agora/rtc/video/VideoCapture;
.source "VideoCaptureCamera2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;,
        Lio/agora/rtc/video/VideoCaptureCamera2$CaptureSessionListener;,
        Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;,
        Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_VALUE:F = -1.0f

.field private static final TAG:Ljava/lang/String; = "CAMERA2"

.field private static final ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private static final ZOOM_UNSUPPORTED_DEFAULT_VALUE:F = 1.0f

.field private static final kNanoSecondsToFps:D = 1.0E-9


# instance fields
.field private distanceArray:[I

.field private faceDistaneEnabled:Z

.field private mAFAERegions:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private mAfCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field public mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraState:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

.field private final mCameraStateLock:Ljava/lang/Object;

.field private final mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCaptureData:[B

.field private mCaptureFormat:I

.field private mCaptureFps:I

.field private mCaptureHeight:I

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mCaptureWidth:I

.field private mCurZoomRatio:F

.field private mExpectedFrameSize:I

.field private mFaceDetectMode:I

.field private mFaceDetectSupported:Z

.field private mImageReader:Landroid/media/ImageReader;

.field private mIsAutoFaceFocusEnabled:Z

.field private mLastZoomRatio:F

.field private mMainHandler:Landroid/os/Handler;

.field private mManager:Landroid/hardware/camera2/CameraManager;

.field private mMaxZoom:F

.field private mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mPreviewThread:Landroid/os/HandlerThread;

.field private mSensorRect:Landroid/graphics/Rect;

.field private rectArray:[Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 83
    new-instance v7, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    sput-object v0, Lio/agora/rtc/video/VideoCaptureCamera2;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "id",
            "nativeVideoCaptureDeviceAndroid"
        }
    .end annotation

    .line 186
    invoke-direct {p0, p1, p2, p3, p4}, Lio/agora/rtc/video/VideoCapture;-><init>(Landroid/content/Context;IJ)V

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 54
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 55
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 56
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    .line 61
    sget-object p2, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STOPPED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    iput-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraState:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    .line 62
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mManager:Landroid/hardware/camera2/CameraManager;

    .line 63
    new-instance p2, Landroid/os/Handler;

    iget-object p3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mMainHandler:Landroid/os/Handler;

    .line 64
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    .line 66
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 67
    iput p2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mExpectedFrameSize:I

    const/4 p3, -0x1

    .line 68
    iput p3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureWidth:I

    .line 69
    iput p3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureHeight:I

    .line 70
    iput p3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureFps:I

    const/16 p3, 0x23

    .line 71
    iput p3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureFormat:I

    .line 76
    iput-boolean p2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mIsAutoFaceFocusEnabled:Z

    .line 78
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->rectArray:[Landroid/graphics/RectF;

    .line 79
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->distanceArray:[I

    .line 80
    iput-boolean p2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->faceDistaneEnabled:Z

    .line 87
    sget-object p2, Lio/agora/rtc/video/VideoCaptureCamera2;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mAFAERegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    const/high16 p2, -0x40800000    # -1.0f

    .line 92
    iput p2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mLastZoomRatio:F

    const/high16 p3, 0x3f800000    # 1.0f

    .line 93
    iput p3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCurZoomRatio:F

    .line 94
    iput p2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mMaxZoom:F

    .line 95
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mSensorRect:Landroid/graphics/Rect;

    .line 160
    new-instance p1, Lio/agora/rtc/video/VideoCaptureCamera2$1;

    invoke-direct {p1, p0}, Lio/agora/rtc/video/VideoCaptureCamera2$1;-><init>(Lio/agora/rtc/video/VideoCaptureCamera2;)V

    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 192
    new-instance p1, Lio/agora/rtc/video/VideoCaptureCamera2$2;

    invoke-direct {p1, p0}, Lio/agora/rtc/video/VideoCaptureCamera2$2;-><init>(Lio/agora/rtc/video/VideoCaptureCamera2;)V

    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 313
    new-instance p1, Lio/agora/rtc/video/VideoCaptureCamera2$3;

    invoke-direct {p1, p0}, Lio/agora/rtc/video/VideoCaptureCamera2$3;-><init>(Lio/agora/rtc/video/VideoCaptureCamera2;)V

    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mAfCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-void
.end method

.method static synthetic access$000(Lio/agora/rtc/video/VideoCaptureCamera2;)Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;
    .locals 0

    .line 49
    iget-object p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraState:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    return-object p0
.end method

.method static synthetic access$100(Lio/agora/rtc/video/VideoCaptureCamera2;)I
    .locals 0

    .line 49
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera2;->tryOpenCamera()I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 49
    iget-object p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static synthetic access$1002(Lio/agora/rtc/video/VideoCaptureCamera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 49
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$1100(Lio/agora/rtc/video/VideoCaptureCamera2;)I
    .locals 0

    .line 49
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera2;->createCaptureRequest()I

    move-result p0

    return p0
.end method

.method static synthetic access$1200()[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 1

    .line 49
    sget-object v0, Lio/agora/rtc/video/VideoCaptureCamera2;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-object v0
.end method

.method static synthetic access$1300(Lio/agora/rtc/video/VideoCaptureCamera2;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mIsAutoFaceFocusEnabled:Z

    return p0
.end method

.method static synthetic access$1400(Lio/agora/rtc/video/VideoCaptureCamera2;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->faceDistaneEnabled:Z

    return p0
.end method

.method static synthetic access$1500(Lio/agora/rtc/video/VideoCaptureCamera2;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera2;->startNormalPreview()V

    return-void
.end method

.method static synthetic access$1600(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 49
    iget-object p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic access$1602(Lio/agora/rtc/video/VideoCaptureCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 49
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$1700(Lio/agora/rtc/video/VideoCaptureCamera2;)I
    .locals 0

    .line 49
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera2;->doStartCapture()I

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lio/agora/rtc/video/VideoCaptureCamera2;)I
    .locals 0

    .line 49
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera2;->doStopCapture()I

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lio/agora/rtc/video/VideoCaptureCamera2;Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->changeCameraStateAndNotify(Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;)V

    return-void
.end method

.method static synthetic access$200(Lio/agora/rtc/video/VideoCaptureCamera2;)I
    .locals 0

    .line 49
    iget p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureWidth:I

    return p0
.end method

.method static synthetic access$2000(Lio/agora/rtc/video/VideoCaptureCamera2;)Ljava/lang/Object;
    .locals 0

    .line 49
    iget-object p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2100(Lio/agora/rtc/video/VideoCaptureCamera2;)[B
    .locals 0

    .line 49
    iget-object p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureData:[B

    return-object p0
.end method

.method static synthetic access$2200(Landroid/media/Image;[B)V
    .locals 0

    .line 49
    invoke-static {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->readImageIntoBuffer(Landroid/media/Image;[B)V

    return-void
.end method

.method static synthetic access$2300(Lio/agora/rtc/video/VideoCaptureCamera2;)I
    .locals 0

    .line 49
    iget p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mExpectedFrameSize:I

    return p0
.end method

.method static synthetic access$300(Lio/agora/rtc/video/VideoCaptureCamera2;)I
    .locals 0

    .line 49
    iget p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureHeight:I

    return p0
.end method

.method static synthetic access$400(Lio/agora/rtc/video/VideoCaptureCamera2;)[Landroid/graphics/RectF;
    .locals 0

    .line 49
    iget-object p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->rectArray:[Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$402(Lio/agora/rtc/video/VideoCaptureCamera2;[Landroid/graphics/RectF;)[Landroid/graphics/RectF;
    .locals 0

    .line 49
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->rectArray:[Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$500(Lio/agora/rtc/video/VideoCaptureCamera2;)[I
    .locals 0

    .line 49
    iget-object p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->distanceArray:[I

    return-object p0
.end method

.method static synthetic access$502(Lio/agora/rtc/video/VideoCaptureCamera2;[I)[I
    .locals 0

    .line 49
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->distanceArray:[I

    return-object p1
.end method

.method static synthetic access$602(Lio/agora/rtc/video/VideoCaptureCamera2;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 0

    .line 49
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mAFAERegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-object p1
.end method

.method static synthetic access$700(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 49
    iget-object p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic access$800(Lio/agora/rtc/video/VideoCaptureCamera2;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->addRegionsToCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method static synthetic access$900(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 0

    .line 49
    iget-object p0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object p0
.end method

.method private addRegionsToCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 579
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 580
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mAFAERegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 581
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mAFAERegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 582
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 583
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 584
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private changeCameraStateAndNotify(Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 437
    :try_start_0
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraState:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    .line 438
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 439
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static clamp(III)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "val",
            "min",
            "max"
        }
    .end annotation

    .line 1387
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static createCapabilities(ILandroid/content/Context;)I
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "context"
        }
    .end annotation

    .line 1311
    invoke-static {p1, p0}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 1315
    :cond_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-string v2, "CAMERA2"

    if-nez v0, :cond_1

    const-string p0, "Failed to create capabilities"

    .line 1317
    invoke-static {v2, p0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1327
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump configuration map:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1330
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1334
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x23

    .line 1335
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    .line 1334
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1338
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SM-G9300"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 1339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 1340
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 1341
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    const/16 v6, 0x2d0

    if-lt v5, v6, :cond_2

    .line 1342
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 1349
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\"id\":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    move-object v7, v5

    const/4 v6, 0x0

    .line 1352
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_8

    .line 1353
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    .line 1354
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    const/16 v10, 0xf0

    if-lt v8, v10, :cond_7

    if-lt v9, v10, :cond_7

    const/16 v10, 0x140

    if-ge v8, v10, :cond_5

    if-ge v9, v10, :cond_5

    goto :goto_3

    .line 1358
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "{\"w\":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",\"h\":"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "}"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1359
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1360
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_6
    move-object v7, v8

    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1366
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->translateToEngineFormat(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"resolution\":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "],"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\"format\":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"fps\":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "30"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1374
    invoke-static {}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCaptureName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->cacheCapability(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private createCaptureRequest()I
    .locals 6

    const-string v0, "setRepeatingRequest: "

    const-string v1, "CAMERA2"

    .line 500
    :try_start_0
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    .line 511
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capture:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x4

    return v0

    :catch_1
    move-exception v2

    .line 508
    invoke-static {v1, v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x3

    return v0

    :catch_2
    move-exception v2

    .line 505
    invoke-static {v1, v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x2

    return v0

    :catch_3
    move-exception v2

    .line 502
    invoke-static {v1, v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method private cropRegionForZoom(F)Landroid/graphics/Rect;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ratio"
        }
    .end annotation

    .line 1379
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mSensorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1380
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mSensorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1381
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mSensorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    div-float/2addr v2, p1

    float-to-int v2, v2

    .line 1382
    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mSensorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    div-float/2addr v4, p1

    float-to-int p1, v4

    .line 1383
    new-instance v3, Landroid/graphics/Rect;

    sub-int v4, v0, v2

    sub-int v5, v1, p1

    add-int/2addr v0, v2

    add-int/2addr v1, p1

    invoke-direct {v3, v4, v5, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method private doStartCapture()I
    .locals 10

    const-string v0, "createCaptureRequest: "

    const-string v1, "createCaptureSession :"

    const-string v2, "CAMERA2"

    .line 589
    iget v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureWidth:I

    iget v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureHeight:I

    mul-int v3, v3, v4

    iget v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureFormat:I

    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v4

    mul-int v3, v3, v4

    div-int/lit8 v3, v3, 0x8

    .line 592
    iput v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mExpectedFrameSize:I

    .line 593
    new-array v3, v3, [B

    iput-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureData:[B

    .line 594
    iget v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureWidth:I

    iget v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureHeight:I

    iget v5, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureFormat:I

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v3

    iput-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    .line 596
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    if-nez v3, :cond_0

    .line 597
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "CameraPreview"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    .line 598
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 601
    :cond_0
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 602
    new-instance v4, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lio/agora/rtc/video/VideoCaptureCamera2$ImageReaderListener;-><init>(Lio/agora/rtc/video/VideoCaptureCamera2;Lio/agora/rtc/video/VideoCaptureCamera2$1;)V

    .line 604
    iget-object v6, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v6, v4, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    const/4 v3, -0x3

    const/4 v4, -0x2

    const/4 v6, -0x1

    .line 606
    :try_start_0
    iget-object v7, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v7

    iput-object v7, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v7, :cond_1

    const-string v0, "mPreviewBuilder error"

    .line 618
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x4

    return v0

    .line 621
    :cond_1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 624
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 625
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 626
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 628
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget v7, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mFaceDetectMode:I

    invoke-direct {p0, v0, v7}, Lio/agora/rtc/video/VideoCaptureCamera2;->setFaceDetect(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 630
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 631
    iget-object v7, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v7}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    new-instance v7, Lio/agora/rtc/video/VideoCaptureCamera2$CaptureSessionListener;

    invoke-direct {v7, p0, v5}, Lio/agora/rtc/video/VideoCaptureCamera2$CaptureSessionListener;-><init>(Lio/agora/rtc/video/VideoCaptureCamera2;Lio/agora/rtc/video/VideoCaptureCamera2$1;)V

    .line 636
    :try_start_1
    iget-object v8, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v8, v0, v7, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    .line 644
    invoke-static {v2, v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3

    :catch_1
    move-exception v0

    .line 641
    invoke-static {v2, v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v4

    :catch_2
    move-exception v0

    .line 638
    invoke-static {v2, v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v6

    :catch_3
    move-exception v0

    const-string v1, "createCaptureRequest "

    .line 614
    invoke-static {v2, v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3

    :catch_4
    move-exception v1

    .line 611
    invoke-static {v2, v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v4

    :catch_5
    move-exception v1

    .line 608
    invoke-static {v2, v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v6
.end method

.method private doStopCapture()I
    .locals 5

    const-string v0, "abortCaptures: "

    const-string v1, "CAMERA2"

    .line 651
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 652
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 653
    iput-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    .line 655
    :cond_0
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v2, :cond_1

    const/4 v4, -0x1

    .line 657
    :try_start_0
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 658
    iput-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 664
    invoke-static {v1, v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v4

    :catch_1
    move-exception v2

    .line 660
    invoke-static {v1, v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v4

    .line 670
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    .line 671
    invoke-virtual {v0, v3, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 672
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 673
    iput-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    .line 676
    :cond_2
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_3

    .line 677
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 678
    iput-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private static getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appContext",
            "id"
        }
    .end annotation

    const-string v0, "CAMERA2"

    const-string v1, "camera"

    .line 101
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    .line 104
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNumberOfCameras: got exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNumberOfCameras: getCameraIdList(): "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static getCaptureName()Ljava/lang/String;
    .locals 1

    const-string v0, "camera2"

    return-object v0
.end method

.method static getName(ILandroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "appContext"
        }
    .end annotation

    .line 136
    invoke-static {p1, p0}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 140
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "camera2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", facing "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const-string p0, "front"

    goto :goto_0

    :cond_1
    const-string p0, "back"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getNumberOfCameras(Landroid/content/Context;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appContext"
        }
    .end annotation

    const-string v0, "camera"

    .line 125
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    .line 128
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "CAMERA2"

    const-string v1, "getNumberOfCameras: getCameraIdList(): "

    .line 130
    invoke-static {v0, v1, p0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method static getSensorOrientation(ILandroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "appContext"
        }
    .end annotation

    .line 153
    invoke-static {p1, p0}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 157
    :cond_0
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method static isLegacyDevice(Landroid/content/Context;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appContext",
            "id"
        }
    .end annotation

    const/4 v0, 0x1

    .line 115
    :try_start_0
    invoke-static {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 116
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catchall_0
    const-string p0, "CAMERA2"

    const-string p1, "this is a legacy camera device"

    .line 119
    invoke-static {p0, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private isMeteringAreaAFSupported()Z
    .locals 3

    .line 1391
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mContext:Landroid/content/Context;

    iget v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mId:I

    invoke-static {v0, v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "CAMERA2"

    const-string v2, "warning cameraCharacteristics is null"

    .line 1393
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1396
    :cond_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static readImageIntoBuffer(Landroid/media/Image;[B)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "image",
            "data"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 518
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    .line 519
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    .line 520
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 523
    :goto_0
    array-length v7, v3

    if-ge v5, v7, :cond_7

    .line 524
    aget-object v7, v3, v5

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    if-nez v7, :cond_0

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plane "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " buffer is null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAMERA2"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 529
    :cond_0
    aget-object v8, v3, v5

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    .line 530
    aget-object v9, v3, v5

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v9

    if-nez v5, :cond_1

    move v10, v1

    goto :goto_1

    .line 531
    :cond_1
    div-int/lit8 v10, v1, 0x2

    :goto_1
    if-nez v5, :cond_2

    move v11, v2

    goto :goto_2

    .line 532
    :cond_2
    div-int/lit8 v11, v2, 0x2

    :goto_2
    const/4 v12, 0x1

    if-ne v9, v12, :cond_3

    if-ne v8, v10, :cond_3

    mul-int v10, v10, v11

    .line 537
    invoke-virtual {v7, v0, v6, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v6, v10

    goto :goto_6

    .line 541
    :cond_3
    new-array v12, v8, [B

    const/4 v13, 0x0

    :goto_3
    add-int/lit8 v14, v11, -0x1

    if-ge v13, v14, :cond_5

    .line 543
    invoke-virtual {v7, v12, v4, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v10, :cond_4

    add-int/lit8 v15, v6, 0x1

    mul-int v16, v14, v9

    .line 545
    aget-byte v16, v12, v16

    aput-byte v16, v0, v6

    add-int/lit8 v14, v14, 0x1

    move v6, v15

    goto :goto_4

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 550
    :cond_5
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v7, v12, v4, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v10, :cond_6

    add-int/lit8 v8, v6, 0x1

    mul-int v11, v7, v9

    .line 552
    aget-byte v11, v12, v11

    aput-byte v11, v0, v6

    add-int/lit8 v7, v7, 0x1

    move v6, v8

    goto :goto_5

    :cond_6
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_7
    return-void
.end method

.method private setFaceDetect(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestBuilder",
            "faceDetectMode"
        }
    .end annotation

    .line 1304
    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mFaceDetectSupported:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mIsAutoFaceFocusEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->faceDistaneEnabled:Z

    if-eqz v0, :cond_1

    .line 1305
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private startNormalPreview()V
    .locals 4

    .line 340
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 341
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 342
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 344
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {v1, v2, v3, v0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRepeatingRequest failed, error message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAMERA2"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private tryOpenCamera()I
    .locals 6

    const-string v0, "allocate: manager.openCamera: "

    const-string v1, "CAMERA2"

    .line 559
    new-instance v2, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lio/agora/rtc/video/VideoCaptureCamera2$CrStateListener;-><init>(Lio/agora/rtc/video/VideoCaptureCamera2;Lio/agora/rtc/video/VideoCaptureCamera2$1;)V

    .line 561
    :try_start_0
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mManager:Landroid/hardware/camera2/CameraManager;

    iget v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v5}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "unknown error"

    .line 572
    invoke-static {v1, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x4

    return v0

    :catch_1
    move-exception v2

    .line 569
    invoke-static {v1, v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x3

    return v0

    :catch_2
    move-exception v2

    .line 566
    invoke-static {v1, v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x2

    return v0

    :catch_3
    move-exception v2

    .line 563
    invoke-static {v1, v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public UnRegisterNativeHandle()I
    .locals 2

    const-wide/16 v0, 0x0

    .line 685
    iput-wide v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mNativeVideoCaptureDeviceAndroid:J

    const/4 v0, 0x0

    return v0
.end method

.method public allocate()I
    .locals 8

    .line 691
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 692
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraState:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    sget-object v2, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->OPENING:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    const/4 v3, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, "CAMERA2"

    const-string v2, "allocate() invoked while Camera is busy opening/configuring"

    .line 693
    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    monitor-exit v0

    return v3

    .line 696
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mContext:Landroid/content/Context;

    iget v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mId:I

    invoke-static {v0, v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    .line 702
    :cond_1
    iget v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mId:I

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mContext:Landroid/content/Context;

    invoke-static {}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCaptureName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/agora/rtc/video/VideoCapture;->fetchCapability(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 703
    iget v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mId:I

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->createCapabilities(ILandroid/content/Context;)I

    .line 706
    :cond_2
    iget-wide v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 707
    iget-wide v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mNativeVideoCaptureDeviceAndroid:J

    invoke-virtual {p0, v1, v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->isAutoFaceFocusEnabled(J)Z

    move-result v1

    iput-boolean v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mIsAutoFaceFocusEnabled:Z

    .line 708
    iget-wide v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mNativeVideoCaptureDeviceAndroid:J

    invoke-virtual {p0, v1, v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->isFaceDetectionEnabled(J)Z

    move-result v1

    iput-boolean v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->faceDistaneEnabled:Z

    .line 710
    :cond_3
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraNativeOrientation:I

    .line 711
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mContext:Landroid/content/Context;

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    iput-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mManager:Landroid/hardware/camera2/CameraManager;

    .line 714
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 715
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 717
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_6

    if-lez v0, :cond_6

    .line 718
    iput-boolean v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mFaceDetectSupported:Z

    .line 720
    array-length v2, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v2, :cond_4

    aget v7, v1, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    .line 724
    rem-int/2addr v6, v1

    if-eqz v6, :cond_5

    .line 725
    iput v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mFaceDetectMode:I

    goto :goto_1

    .line 727
    :cond_5
    iput v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mFaceDetectMode:I

    :cond_6
    :goto_1
    const-string v1, "CAMERA2"

    .line 731
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allocate() face detection: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mFaceDetectMode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mFaceDetectSupported:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    return v3

    :catchall_0
    move-exception v1

    .line 696
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public deallocate()V
    .locals 2

    .line 1298
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_0

    .line 1299
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    :cond_0
    return-void
.end method

.method public getMaxZoom()F
    .locals 2

    .line 956
    iget v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mMaxZoom:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 957
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mContext:Landroid/content/Context;

    iget v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mId:I

    invoke-static {v0, v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "CAMERA2"

    const-string v1, "warning cameraCharacteristics is null"

    .line 959
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 962
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mMaxZoom:F

    .line 964
    :cond_1
    iget v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mMaxZoom:F

    return v0
.end method

.method public isAutoFaceFocusSupported()Z
    .locals 3

    .line 873
    invoke-virtual {p0}, Lio/agora/rtc/video/VideoCaptureCamera2;->isFocusSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 876
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mContext:Landroid/content/Context;

    iget v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mId:I

    invoke-static {v0, v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "CAMERA2"

    const-string v2, "warning cameraCharacteristics is null"

    .line 878
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 882
    :cond_1
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 883
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public isExposureSupported()Z
    .locals 6

    .line 838
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mContext:Landroid/content/Context;

    iget v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mId:I

    invoke-static {v0, v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    const-string v1, "CAMERA2"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "warning cameraCharacteristics is null"

    .line 840
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 844
    :cond_0
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    .line 846
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 847
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExposureSupported AE mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    if-ne v4, v3, :cond_1

    return v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public isFocusSupported()Z
    .locals 4

    .line 819
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mContext:Landroid/content/Context;

    iget v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mId:I

    invoke-static {v0, v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "CAMERA2"

    const-string v2, "warning cameraCharacteristics is null"

    .line 821
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 825
    :cond_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 827
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_1

    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isTorchSupported()Z
    .locals 3

    .line 807
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mContext:Landroid/content/Context;

    iget v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mId:I

    invoke-static {v0, v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "CAMERA2"

    const-string v2, "warning cameraCharacteristics is null"

    .line 809
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 812
    :cond_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    goto :goto_0

    .line 813
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1
.end method

.method public isZoomSupported()Z
    .locals 3

    .line 858
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mContext:Landroid/content/Context;

    iget v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mId:I

    invoke-static {v0, v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "CAMERA2"

    const-string v2, "warning cameraCharacteristics is null"

    .line 860
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 864
    :cond_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public setAutoFaceFocus(Z)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1226
    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mIsAutoFaceFocusEnabled:Z

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1227
    :goto_0
    iput-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mIsAutoFaceFocusEnabled:Z

    .line 1229
    iget-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mFaceDetectSupported:Z

    const-string v2, "CAMERA2"

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 1230
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz p1, :cond_4

    .line 1231
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1232
    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mIsAutoFaceFocusEnabled:Z

    if-eqz v0, :cond_1

    .line 1233
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mFaceDetectMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 1235
    :cond_1
    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->faceDistaneEnabled:Z

    if-eqz v0, :cond_2

    const-string p1, "face detect did not turn off due to faceDistance on"

    .line 1236
    invoke-static {v2, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1239
    :cond_2
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1242
    :goto_1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_4

    .line 1244
    :try_start_0
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {v0, v2, v3, p1}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 1249
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1247
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_2

    :cond_3
    const-string p1, "face detect no change"

    .line 1254
    invoke-static {v2, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return v1
.end method

.method public setCaptureFormat(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 740
    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->translateToAndroidFormat(I)I

    move-result p1

    .line 741
    iget v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureFormat:I

    if-eq p1, v0, :cond_0

    const-string p1, "CAMERA2"

    const-string v0, "For camera2 api, only YUV_420_888 format are supported"

    .line 742
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setExposure(FFZ)I
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "valX",
            "valY",
            "inPreview"
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v0, p1

    move/from16 v3, p2

    const-string v1, "CAMERA2"

    const-string v2, "setExposure called camera api2"

    .line 1157
    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, -0x1

    cmpg-float v5, v0, v2

    if-ltz v5, :cond_6

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v6, v0, v5

    if-gtz v6, :cond_6

    cmpg-float v2, v3, v2

    if-ltz v2, :cond_6

    cmpl-float v2, v3, v5

    if-lez v2, :cond_0

    goto/16 :goto_2

    .line 1163
    :cond_0
    iget-object v2, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v2, :cond_1

    const-string v0, "setExposure mPreviewBuilder is null"

    .line 1164
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_1
    float-to-double v5, v0

    float-to-double v9, v3

    .line 1173
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-nez v2, :cond_2

    return v4

    .line 1177
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 1178
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 1180
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "crop width = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " crop height = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " capture width = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureWidth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " capture height = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    iget v1, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureHeight:I

    mul-int v11, v7, v1

    iget v12, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureWidth:I

    mul-int v13, v2, v12

    const/high16 v14, 0x40000000    # 2.0f

    if-le v11, v13, :cond_3

    mul-int v12, v12, v2

    .line 1185
    div-int/2addr v12, v1

    sub-int v1, v7, v12

    int-to-float v1, v1

    div-float/2addr v1, v14

    float-to-double v13, v1

    int-to-double v11, v12

    mul-double v5, v5, v11

    add-double/2addr v13, v5

    double-to-int v1, v13

    int-to-double v5, v2

    mul-double v9, v9, v5

    double-to-int v5, v9

    goto :goto_0

    :cond_3
    mul-int v1, v1, v7

    .line 1189
    div-int/2addr v1, v12

    int-to-double v11, v7

    mul-double v5, v5, v11

    double-to-int v5, v5

    sub-int v6, v2, v1

    int-to-float v6, v6

    div-float/2addr v6, v14

    float-to-double v11, v6

    int-to-double v13, v1

    mul-double v9, v9, v13

    add-double/2addr v11, v9

    double-to-int v1, v11

    move/from16 v16, v5

    move v5, v1

    move/from16 v1, v16

    .line 1195
    :goto_0
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    int-to-double v9, v1

    const-wide v11, 0x3fa999999999999aL    # 0.05

    int-to-double v13, v7

    mul-double v13, v13, v11

    sub-double v11, v9, v13

    double-to-int v1, v11

    const/4 v11, 0x0

    .line 1196
    invoke-static {v1, v11, v7}, Lio/agora/rtc/video/VideoCaptureCamera2;->clamp(III)I

    move-result v1

    iput v1, v6, Landroid/graphics/Rect;->left:I

    add-double/2addr v9, v13

    double-to-int v1, v9

    .line 1197
    invoke-static {v1, v11, v7}, Lio/agora/rtc/video/VideoCaptureCamera2;->clamp(III)I

    move-result v1

    iput v1, v6, Landroid/graphics/Rect;->right:I

    int-to-double v9, v5

    int-to-double v12, v2

    const-wide v14, 0x3fa999999999999aL    # 0.05

    mul-double v12, v12, v14

    sub-double v14, v9, v12

    double-to-int v1, v14

    .line 1198
    invoke-static {v1, v11, v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->clamp(III)I

    move-result v1

    iput v1, v6, Landroid/graphics/Rect;->top:I

    add-double/2addr v9, v12

    double-to-int v1, v9

    .line 1199
    invoke-static {v1, v11, v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->clamp(III)I

    move-result v1

    iput v1, v6, Landroid/graphics/Rect;->bottom:I

    .line 1202
    iget-object v1, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x1

    new-array v7, v5, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v9, Landroid/hardware/camera2/params/MeteringRectangle;

    const/16 v10, 0x3e8

    invoke-direct {v9, v6, v10}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v9, v7, v11

    invoke-virtual {v1, v2, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1203
    iget-object v1, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1205
    iget-object v1, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_4

    .line 1207
    :try_start_0
    iget-object v2, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v5}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1212
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    return v4

    :catch_1
    move-exception v0

    .line 1209
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    return v4

    .line 1217
    :cond_4
    :goto_1
    iget-wide v1, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-eqz v6, :cond_5

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1218
    iget-wide v6, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mNativeVideoCaptureDeviceAndroid:J

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v7}, Lio/agora/rtc/video/VideoCaptureCamera2;->NotifyCameraExposureAreaChanged(FFFFJ)V

    :cond_5
    return v11

    :cond_6
    :goto_2
    const-string v0, "set exposure unreasonable inputs"

    .line 1159
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public setFaceDetection(Z)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1262
    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->faceDistaneEnabled:Z

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1263
    :goto_0
    iput-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->faceDistaneEnabled:Z

    .line 1265
    iget-boolean p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mFaceDetectSupported:Z

    const-string v2, "CAMERA2"

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 1266
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz p1, :cond_4

    .line 1267
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1268
    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->faceDistaneEnabled:Z

    if-eqz v0, :cond_1

    .line 1269
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mFaceDetectMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 1271
    :cond_1
    iget-boolean v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mIsAutoFaceFocusEnabled:Z

    if-eqz v0, :cond_2

    const-string p1, "face detect did not turn off due to autoFocus on"

    .line 1272
    invoke-static {v2, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1275
    :cond_2
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1278
    :goto_1
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_4

    .line 1280
    :try_start_0
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {v0, v2, v3, p1}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 1285
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1283
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_2

    :cond_3
    const-string p1, "face detect no change"

    .line 1290
    invoke-static {v2, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return v1
.end method

.method public setFocus(FFZ)I
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "valX",
            "valY",
            "inPreview"
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v0, p1

    move/from16 v3, p2

    const-string v1, "CAMERA2"

    const/4 v2, 0x0

    const/4 v4, -0x1

    cmpg-float v5, v0, v2

    if-ltz v5, :cond_6

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v6, v0, v5

    if-gtz v6, :cond_6

    cmpg-float v2, v3, v2

    if-ltz v2, :cond_6

    cmpl-float v2, v3, v5

    if-lez v2, :cond_0

    goto/16 :goto_3

    .line 1024
    :cond_0
    iget-object v2, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v2, :cond_1

    const-string v0, "setFocus mPreviewBuilder is null"

    .line 1025
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_1
    float-to-double v5, v0

    float-to-double v9, v3

    .line 1076
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-nez v1, :cond_2

    return v4

    .line 1080
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 1081
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 1083
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "crop width = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " crop height = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " capture width = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureWidth:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " capture height = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureHeight:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v11, "test"

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    iget v7, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureHeight:I

    mul-int v11, v2, v7

    iget v12, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureWidth:I

    mul-int v13, v1, v12

    const/high16 v14, 0x40000000    # 2.0f

    if-le v11, v13, :cond_3

    mul-int v12, v12, v1

    .line 1088
    div-int/2addr v12, v7

    sub-int v7, v2, v12

    int-to-float v7, v7

    div-float/2addr v7, v14

    float-to-double v13, v7

    int-to-double v11, v12

    mul-double v5, v5, v11

    add-double/2addr v13, v5

    double-to-int v5, v13

    int-to-double v6, v1

    mul-double v9, v9, v6

    double-to-int v6, v9

    goto :goto_0

    :cond_3
    mul-int v7, v7, v2

    .line 1092
    div-int/2addr v7, v12

    int-to-double v11, v2

    mul-double v5, v5, v11

    double-to-int v5, v5

    sub-int v6, v1, v7

    int-to-float v6, v6

    div-float/2addr v6, v14

    float-to-double v11, v6

    int-to-double v6, v7

    mul-double v9, v9, v6

    add-double/2addr v11, v9

    double-to-int v6, v11

    .line 1098
    :goto_0
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    int-to-double v9, v5

    const-wide v11, 0x3fa999999999999aL    # 0.05

    int-to-double v13, v2

    mul-double v13, v13, v11

    sub-double v4, v9, v13

    double-to-int v4, v4

    const/4 v15, 0x0

    .line 1099
    invoke-static {v4, v15, v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->clamp(III)I

    move-result v4

    iput v4, v7, Landroid/graphics/Rect;->left:I

    add-double/2addr v9, v13

    double-to-int v4, v9

    .line 1100
    invoke-static {v4, v15, v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->clamp(III)I

    move-result v2

    iput v2, v7, Landroid/graphics/Rect;->right:I

    int-to-double v4, v6

    int-to-double v9, v1

    mul-double v11, v11, v9

    sub-double v9, v4, v11

    double-to-int v2, v9

    .line 1101
    invoke-static {v2, v15, v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->clamp(III)I

    move-result v2

    iput v2, v7, Landroid/graphics/Rect;->top:I

    add-double/2addr v4, v11

    double-to-int v2, v4

    .line 1102
    invoke-static {v2, v15, v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->clamp(III)I

    move-result v1

    iput v1, v7, Landroid/graphics/Rect;->bottom:I

    .line 1128
    iget-object v1, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    new-array v5, v4, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v6, Landroid/hardware/camera2/params/MeteringRectangle;

    const/16 v9, 0x3e8

    invoke-direct {v6, v7, v9}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v6, v5, v15

    invoke-virtual {v1, v2, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1129
    iget-object v1, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v5, v4, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v6, Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-direct {v6, v7, v9}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v6, v5, v15

    invoke-virtual {v1, v2, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1130
    iget-object v1, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1131
    iget-object v1, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1132
    iget-object v1, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1134
    iget-object v1, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_5

    .line 1135
    new-instance v1, Landroid/os/Handler;

    iget-object v2, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1136
    iget-object v2, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v2, :cond_4

    .line 1138
    :try_start_0
    iget-object v4, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    iget-object v5, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mAfCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {v2, v4, v5, v1}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1143
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_1
    const/4 v1, -0x1

    return v1

    :catch_1
    move-exception v0

    const/4 v1, -0x1

    .line 1140
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    return v1

    .line 1148
    :cond_4
    :goto_2
    iget-wide v1, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-eqz v6, :cond_5

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1149
    iget-wide v6, v8, Lio/agora/rtc/video/VideoCaptureCamera2;->mNativeVideoCaptureDeviceAndroid:J

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v7}, Lio/agora/rtc/video/VideoCaptureCamera2;->NotifyCameraFocusAreaChanged(FFFFJ)V

    :cond_5
    return v15

    :cond_6
    :goto_3
    const-string v0, "set focus unreasonable inputs"

    .line 1020
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setTorchMode(Z)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isTorchOn"
        }
    .end annotation

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFlashMode isTorchOn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "flash"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mContext:Landroid/content/Context;

    iget v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mId:I

    invoke-static {v0, v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "CAMERA2"

    if-nez v0, :cond_0

    const-string p1, "warning cameraCharacteristics is null"

    .line 984
    invoke-static {v2, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 987
    :cond_0
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 988
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_3

    .line 990
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_4

    .line 991
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    if-eqz p1, :cond_2

    .line 993
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 995
    :cond_2
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 998
    :goto_1
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_4

    .line 1000
    :try_start_0
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    .line 1005
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1003
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_2

    :cond_3
    const-string p1, "flash is not supported"

    .line 1011
    invoke-static {v2, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return v1
.end method

.method public setZoom(F)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomValue"
        }
    .end annotation

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraZoom api2 called zoomValue ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zoom"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v1, -0x1

    const-string v2, "CAMERA2"

    if-nez v0, :cond_0

    const-string p1, "setZoom mPreviewBuilder is null"

    .line 903
    invoke-static {v2, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 908
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mSensorRect:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    .line 909
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mContext:Landroid/content/Context;

    iget v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mId:I

    invoke-static {v0, v3}, Lio/agora/rtc/video/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "warning cameraCharacteristics is null"

    .line 911
    invoke-static {v2, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 914
    :cond_1
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iput-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mSensorRect:Landroid/graphics/Rect;

    .line 915
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mMaxZoom:F

    .line 920
    :cond_2
    iget v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mMaxZoom:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v4, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    .line 921
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Camera "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " does not support camera zoom"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 926
    :cond_3
    iput p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCurZoomRatio:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v3

    if-ltz v1, :cond_4

    .line 927
    iget v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mMaxZoom:F

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_4

    iget v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mLastZoomRatio:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_5

    const/4 p1, -0x2

    return p1

    .line 933
    :cond_5
    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->cropRegionForZoom(F)Landroid/graphics/Rect;

    move-result-object p1

    .line 934
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 935
    iget p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCurZoomRatio:F

    iput p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mLastZoomRatio:F

    .line 937
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    if-eqz p1, :cond_6

    .line 938
    new-instance p1, Landroid/os/Handler;

    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 939
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_6

    .line 941
    :try_start_0
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-virtual {v1, v2, v3, p1}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 946
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 p1, -0x4

    return p1

    :catch_1
    move-exception p1

    .line 943
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 p1, -0x3

    return p1

    :cond_6
    :goto_1
    return v0
.end method

.method public startCapture(III)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "frameRate"
        }
    .end annotation

    const-string v0, "CAMERA2"

    .line 751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCapture, w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    iput p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureWidth:I

    .line 753
    iput p2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureHeight:I

    .line 754
    iput p3, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCaptureFps:I

    .line 756
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 757
    :goto_0
    :try_start_0
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraState:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    sget-object p3, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STARTED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    if-eq p2, p3, :cond_0

    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraState:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    sget-object p3, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->EVICTED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    if-eq p2, p3, :cond_0

    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraState:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    sget-object p3, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STOPPED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p2, p3, :cond_0

    .line 761
    :try_start_1
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    const-string p3, "CAMERA2"

    const-string v0, "CaptureStartedEvent: "

    .line 763
    invoke-static {p3, v0, p2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 766
    :cond_0
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraState:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    sget-object p3, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STARTED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    if-ne p2, p3, :cond_1

    const/4 p2, 0x0

    monitor-exit p1

    return p2

    .line 767
    :cond_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 769
    sget-object p1, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->OPENING:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    invoke-direct {p0, p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->changeCameraStateAndNotify(Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;)V

    .line 770
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera2;->tryOpenCamera()I

    move-result p1

    if-eqz p1, :cond_2

    .line 772
    sget-object p2, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STOPPED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    invoke-direct {p0, p2}, Lio/agora/rtc/video/VideoCaptureCamera2;->changeCameraStateAndNotify(Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;)V

    :cond_2
    return p1

    :catchall_0
    move-exception p2

    .line 767
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2
.end method

.method public stopCapture()I
    .locals 4

    .line 782
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 783
    :goto_0
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraState:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    sget-object v2, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STARTED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraState:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    sget-object v2, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->EVICTED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraState:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    sget-object v2, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STOPPED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_0

    .line 787
    :try_start_1
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "CAMERA2"

    const-string v3, "CaptureStartedEvent: "

    .line 789
    invoke-static {v2, v3, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 792
    :cond_0
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraState:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    sget-object v2, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->EVICTED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    if-ne v1, v2, :cond_1

    .line 793
    sget-object v1, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STOPPED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    iput-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraState:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    .line 794
    :cond_1
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraState:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    sget-object v2, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STOPPED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    monitor-exit v0

    return v3

    .line 796
    :cond_2
    invoke-direct {p0}, Lio/agora/rtc/video/VideoCaptureCamera2;->doStopCapture()I

    .line 797
    sget-object v1, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STOPPED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    iput-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraState:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    .line 798
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2;->mCameraStateLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 799
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
