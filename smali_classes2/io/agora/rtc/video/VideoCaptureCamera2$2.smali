.class Lio/agora/rtc/video/VideoCaptureCamera2$2;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
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
.field private mLastFocusedTs:J

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

    .line 192
    iput-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method

.method private notifyCameraFocusAreaChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cropRegion",
            "faceRect"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$200(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v0

    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$300(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v1

    invoke-static {p2, v0, v1, p1}, Lio/agora/rtc/video/CoordinatesTransform;->sensorToNormalizedPreview(Landroid/graphics/Rect;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "face bound = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CAMERA2"

    invoke-static {v0, p2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rect (-1000, 1000) = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object p2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    iget p2, p2, Lio/agora/rtc/video/VideoCaptureCamera2;->mId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 207
    :goto_0
    invoke-static {p1, v2, v1}, Lio/agora/rtc/video/CoordinatesTransform;->normalizedFaceRect(Landroid/graphics/Rect;IZ)Landroid/graphics/RectF;

    move-result-object p1

    .line 208
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preview size width = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$200(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$300(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto face focus left ="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " top = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " right = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " bottom = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "isMirror ="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget v2, p1, Landroid/graphics/RectF;->left:F

    .line 213
    iget v3, p1, Landroid/graphics/RectF;->top:F

    .line 214
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 215
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    .line 216
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    iget-wide p1, p1, Lio/agora/rtc/video/VideoCaptureCamera2;->mNativeVideoCaptureDeviceAndroid:J

    const-wide/16 v0, 0x0

    cmp-long v6, p1, v0

    if-eqz v6, :cond_1

    .line 217
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    iget-wide v6, v1, Lio/agora/rtc/video/VideoCaptureCamera2;->mNativeVideoCaptureDeviceAndroid:J

    invoke-virtual/range {v1 .. v7}, Lio/agora/rtc/video/VideoCaptureCamera2;->NotifyCameraFocusAreaChanged(FFFFJ)V

    :cond_1
    return-void
.end method

.method private notifyFaceDetection(Landroid/graphics/Rect;[Landroid/hardware/camera2/params/Face;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cropRegion",
            "faces"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$402(Lio/agora/rtc/video/VideoCaptureCamera2;[Landroid/graphics/RectF;)[Landroid/graphics/RectF;

    .line 225
    iget-object v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    iget v0, v0, Lio/agora/rtc/video/VideoCaptureCamera2;->mId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 229
    array-length v0, p2

    if-lez v0, :cond_2

    .line 230
    array-length v0, p2

    .line 231
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    new-array v4, v0, [Landroid/graphics/RectF;

    invoke-static {v3, v4}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$402(Lio/agora/rtc/video/VideoCaptureCamera2;[Landroid/graphics/RectF;)[Landroid/graphics/RectF;

    .line 232
    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    new-array v4, v0, [I

    invoke-static {v3, v4}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$502(Lio/agora/rtc/video/VideoCaptureCamera2;[I)[I

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 236
    aget-object v4, p2, v3

    invoke-virtual {v4}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v5}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$200(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v5

    iget-object v6, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v6}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$300(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v6

    invoke-static {v4, v5, v6, p1}, Lio/agora/rtc/video/CoordinatesTransform;->sensorToNormalizedPreview(Landroid/graphics/Rect;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 237
    iget-object v5, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v5}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$400(Lio/agora/rtc/video/VideoCaptureCamera2;)[Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v4, v2, v1}, Lio/agora/rtc/video/CoordinatesTransform;->normalizedFaceRect(Landroid/graphics/Rect;IZ)Landroid/graphics/RectF;

    move-result-object v4

    aput-object v4, v5, v3

    .line 238
    iget-object v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v4}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$500(Lio/agora/rtc/video/VideoCaptureCamera2;)[I

    move-result-object v4

    const/4 v5, 0x5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string p1, "CAMERA2"

    const-string p2, "before notify face"

    .line 243
    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$200(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v2

    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$300(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v3

    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$400(Lio/agora/rtc/video/VideoCaptureCamera2;)[Landroid/graphics/RectF;

    move-result-object v4

    int-to-long v5, v0

    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    iget-wide v7, p1, Lio/agora/rtc/video/VideoCaptureCamera2;->mNativeVideoCaptureDeviceAndroid:J

    invoke-virtual/range {v1 .. v8}, Lio/agora/rtc/video/VideoCaptureCamera2;->NotifyFaceDetection(II[Landroid/graphics/RectF;JJ)V

    :cond_2
    return-void
.end method

.method private process(Landroid/hardware/camera2/CaptureResult;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    const-string v0, "CAMERA2"

    .line 251
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/Face;

    if-eqz v1, :cond_4

    .line 252
    array-length v2, v1

    if-lez v2, :cond_4

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->mLastFocusedTs:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-gez v7, :cond_1

    .line 254
    aget-object v0, v1, v6

    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_0

    .line 255
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 256
    aget-object v0, v1, v6

    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/agora/rtc/video/VideoCaptureCamera2$2;->notifyCameraFocusAreaChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_0
    return-void

    .line 261
    :cond_1
    aget-object v2, v1, v6

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v2

    const/16 v3, 0x32

    if-gt v2, v3, :cond_2

    return-void

    .line 265
    :cond_2
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v4, Landroid/hardware/camera2/params/MeteringRectangle;

    aget-object v5, v1, v6

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    const/16 v7, 0x3e8

    invoke-direct {v4, v5, v7}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$602(Lio/agora/rtc/video/VideoCaptureCamera2;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 267
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$700(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    invoke-static {v2, v3}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$800(Lio/agora/rtc/video/VideoCaptureCamera2;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 273
    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$000(Lio/agora/rtc/video/VideoCaptureCamera2;)Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    move-result-object v2

    sget-object v3, Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;->STARTED:Lio/agora/rtc/video/VideoCaptureCamera2$CameraState;

    if-eq v2, v3, :cond_3

    return-void

    .line 278
    :cond_3
    :try_start_0
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cropRegion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capture size wxh = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v3}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$200(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v3}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$300(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    aget-object v1, v1, v6

    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lio/agora/rtc/video/VideoCaptureCamera2$2;->notifyCameraFocusAreaChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 282
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1000(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    iget-object v1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$700(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {v2}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$900(Lio/agora/rtc/video/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1100(Lio/agora/rtc/video/VideoCaptureCamera2;)I

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->mLastFocusedTs:J

    goto :goto_0

    :catch_0
    move-exception p1

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 292
    :cond_4
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1200()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    invoke-static {p1, v0}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$602(Lio/agora/rtc/video/VideoCaptureCamera2;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;

    :goto_0
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "session",
            "request",
            "result"
        }
    .end annotation

    .line 303
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1300(Lio/agora/rtc/video/VideoCaptureCamera2;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-virtual {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->isAutoFaceFocusSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 304
    invoke-direct {p0, p3}, Lio/agora/rtc/video/VideoCaptureCamera2$2;->process(Landroid/hardware/camera2/CaptureResult;)V

    .line 306
    :cond_0
    iget-object p1, p0, Lio/agora/rtc/video/VideoCaptureCamera2$2;->this$0:Lio/agora/rtc/video/VideoCaptureCamera2;

    invoke-static {p1}, Lio/agora/rtc/video/VideoCaptureCamera2;->access$1400(Lio/agora/rtc/video/VideoCaptureCamera2;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 307
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    sget-object p2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/hardware/camera2/params/Face;

    invoke-direct {p0, p1, p2}, Lio/agora/rtc/video/VideoCaptureCamera2$2;->notifyFaceDetection(Landroid/graphics/Rect;[Landroid/hardware/camera2/params/Face;)V

    :cond_1
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "session",
            "request",
            "partialResult"
        }
    .end annotation

    return-void
.end method
