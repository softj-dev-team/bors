.class Lio/agora/rtc/video/VideoCaptureCamera2$1;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "VideoCaptureCamera2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/VideoCaptureCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/video/VideoCaptureCamera2;


# direct methods
.method constructor <init>(Lio/agora/rtc/video/VideoCaptureCamera2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$1;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onCameraAvailable(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    monitor-enter p0

    .line 163
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraAvailable(Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$1;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$000(Lio/agora/rtc/video/VideoCaptureCamera2;)Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    move-result-object p1

    sget-object v0, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->EVICTED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    if-ne p1, v0, :cond_1

    .line 166
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$1;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$100(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result p1

    if-nez p1, :cond_0

    .line 168
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$1;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    iget-wide v0, p1, Lio/agora/rtc/video/VideoCaptureCamera2;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    .line 169
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$1;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    iget-wide v0, p1, Lio/agora/rtc/video/VideoCaptureCamera2;->mNativeVideoCaptureDeviceAndroid:J

    const-string v2, "no error"

    invoke-virtual {p1, v0, v1, v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->onCameraError(JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "CAMERA2"

    const-string v0, "start capture failed"

    .line 172
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onCameraUnavailable(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    monitor-enter p0

    .line 179
    :try_start_0
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraUnavailable(Ljava/lang/String;)V

    const-string v0, "CAMERA2"

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " unavailable"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
