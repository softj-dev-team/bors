.class public Lcom/yalantis/ucrop/task/BitmapCropTask;
.super Landroid/os/AsyncTask;
.source "BitmapCropTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapCropTask"


# instance fields
.field private cropOffsetX:I

.field private cropOffsetY:I

.field private final mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private final mCompressQuality:I

.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mCropCallback:Lcom/yalantis/ucrop/callback/BitmapCropCallback;

.field private final mCropRect:Landroid/graphics/RectF;

.field private mCroppedImageHeight:I

.field private mCroppedImageWidth:I

.field private mCurrentAngle:F

.field private final mCurrentImageRect:Landroid/graphics/RectF;

.field private mCurrentScale:F

.field private final mExifInfo:Lcom/yalantis/ucrop/model/ExifInfo;

.field private final mImageInputPath:Ljava/lang/String;

.field private final mImageOutputPath:Ljava/lang/String;

.field private final mMaxResultImageSizeX:I

.field private final mMaxResultImageSizeY:I

.field private mViewBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/yalantis/ucrop/model/ImageState;Lcom/yalantis/ucrop/model/CropParameters;Lcom/yalantis/ucrop/callback/BitmapCropCallback;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mContext:Ljava/lang/ref/WeakReference;

    .line 66
    iput-object p2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 67
    invoke-virtual {p3}, Lcom/yalantis/ucrop/model/ImageState;->getCropRect()Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    .line 68
    invoke-virtual {p3}, Lcom/yalantis/ucrop/model/ImageState;->getCurrentImageRect()Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    .line 70
    invoke-virtual {p3}, Lcom/yalantis/ucrop/model/ImageState;->getCurrentScale()F

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentScale:F

    .line 71
    invoke-virtual {p3}, Lcom/yalantis/ucrop/model/ImageState;->getCurrentAngle()F

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentAngle:F

    .line 72
    invoke-virtual {p4}, Lcom/yalantis/ucrop/model/CropParameters;->getMaxResultImageSizeX()I

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mMaxResultImageSizeX:I

    .line 73
    invoke-virtual {p4}, Lcom/yalantis/ucrop/model/CropParameters;->getMaxResultImageSizeY()I

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mMaxResultImageSizeY:I

    .line 75
    invoke-virtual {p4}, Lcom/yalantis/ucrop/model/CropParameters;->getCompressFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 76
    invoke-virtual {p4}, Lcom/yalantis/ucrop/model/CropParameters;->getCompressQuality()I

    move-result p1

    iput p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCompressQuality:I

    .line 78
    invoke-virtual {p4}, Lcom/yalantis/ucrop/model/CropParameters;->getImageInputPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mImageInputPath:Ljava/lang/String;

    .line 79
    invoke-virtual {p4}, Lcom/yalantis/ucrop/model/CropParameters;->getImageOutputPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mImageOutputPath:Ljava/lang/String;

    .line 80
    invoke-virtual {p4}, Lcom/yalantis/ucrop/model/CropParameters;->getExifInfo()Lcom/yalantis/ucrop/model/ExifInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mExifInfo:Lcom/yalantis/ucrop/model/ExifInfo;

    .line 82
    iput-object p5, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCropCallback:Lcom/yalantis/ucrop/callback/BitmapCropCallback;

    return-void
.end method

.method private crop()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mMaxResultImageSizeX:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mMaxResultImageSizeY:I

    if-lez v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentScale:F

    div-float/2addr v0, v2

    .line 110
    iget-object v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentScale:F

    div-float/2addr v2, v3

    .line 112
    iget v3, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mMaxResultImageSizeX:I

    int-to-float v4, v3

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_0

    iget v4, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mMaxResultImageSizeY:I

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    :cond_0
    int-to-float v3, v3

    div-float/2addr v3, v0

    .line 115
    iget v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mMaxResultImageSizeY:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 116
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 118
    iget-object v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 119
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 120
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 118
    invoke-static {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 121
    iget-object v3, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    if-eq v3, v2, :cond_1

    .line 122
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 124
    :cond_1
    iput-object v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 126
    iget v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentScale:F

    div-float/2addr v2, v0

    iput v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentScale:F

    .line 131
    :cond_2
    iget v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentAngle:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    .line 132
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 133
    iget v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentAngle:F

    iget-object v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v7, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 135
    iget-object v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 137
    iget-object v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    if-eq v2, v0, :cond_3

    .line 138
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 140
    :cond_3
    iput-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentScale:F

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->cropOffsetX:I

    .line 144
    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentScale:F

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->cropOffsetY:I

    .line 145
    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentScale:F

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCroppedImageWidth:I

    .line 146
    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentScale:F

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCroppedImageHeight:I

    .line 148
    iget v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCroppedImageWidth:I

    invoke-direct {p0, v2, v0}, Lcom/yalantis/ucrop/task/BitmapCropTask;->shouldCrop(II)Z

    move-result v0

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Should crop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BitmapCropTask"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6

    .line 152
    new-instance v0, Landroidx/exifinterface/media/ExifInterface;

    iget-object v1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mImageInputPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->cropOffsetX:I

    iget v3, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->cropOffsetY:I

    iget v4, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCroppedImageWidth:I

    iget v5, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCroppedImageHeight:I

    invoke-static {v1, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yalantis/ucrop/task/BitmapCropTask;->saveImage(Landroid/graphics/Bitmap;)V

    .line 154
    iget-object v1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap$CompressFormat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 155
    iget v1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCroppedImageWidth:I

    iget v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCroppedImageHeight:I

    iget-object v3, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mImageOutputPath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/yalantis/ucrop/util/ImageHeaderParser;->copyExif(Landroidx/exifinterface/media/ExifInterface;IILjava/lang/String;)V

    :cond_5
    const/4 v0, 0x1

    return v0

    .line 159
    :cond_6
    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mImageInputPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mImageOutputPath:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/yalantis/ucrop/util/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private saveImage(Landroid/graphics/Bitmap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 173
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mImageOutputPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 174
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 175
    :try_start_2
    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v3, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCompressQuality:I

    invoke-virtual {p1, v0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 176
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 177
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    invoke-static {v1}, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v2, v0

    :goto_0
    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v2, v0

    :goto_1
    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v2, v0

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v2, v0

    :goto_2
    :try_start_3
    const-string v1, "BitmapCropTask"

    .line 179
    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 181
    invoke-static {v0}, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V

    .line 182
    :goto_3
    invoke-static {v2}, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V

    return-void

    :catchall_3
    move-exception p1

    .line 181
    :goto_4
    invoke-static {v0}, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V

    .line 182
    invoke-static {v2}, Lcom/yalantis/ucrop/util/BitmapLoadUtils;->close(Ljava/io/Closeable;)V

    .line 183
    throw p1
.end method

.method private shouldCrop(II)Z
    .locals 2

    .line 196
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    .line 197
    iget v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mMaxResultImageSizeX:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mMaxResultImageSizeY:I

    if-gtz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    .line 198
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    .line 199
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, p1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    .line 200
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, p1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    .line 201
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p1, v0, p1

    if-gtz p1, :cond_2

    iget p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentAngle:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_0
    return p2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/task/BitmapCropTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;
    .locals 1

    .line 88
    iget-object p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 89
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "ViewBitmap is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 90
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 91
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "ViewBitmap is recycled"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 92
    :cond_1
    iget-object p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 93
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "CurrentImageRect is empty"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 97
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/yalantis/ucrop/task/BitmapCropTask;->crop()Z

    const/4 p1, 0x0

    .line 98
    iput-object p1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/task/BitmapCropTask;->onPostExecute(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Throwable;)V
    .locals 7

    .line 207
    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCropCallback:Lcom/yalantis/ucrop/callback/BitmapCropCallback;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 209
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mImageOutputPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 210
    iget-object v1, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCropCallback:Lcom/yalantis/ucrop/callback/BitmapCropCallback;

    iget v3, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->cropOffsetX:I

    iget v4, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->cropOffsetY:I

    iget v5, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCroppedImageWidth:I

    iget v6, p0, Lcom/yalantis/ucrop/task/BitmapCropTask;->mCroppedImageHeight:I

    invoke-interface/range {v1 .. v6}, Lcom/yalantis/ucrop/callback/BitmapCropCallback;->onBitmapCropped(Landroid/net/Uri;IIII)V

    goto :goto_0

    .line 212
    :cond_0
    invoke-interface {v0, p1}, Lcom/yalantis/ucrop/callback/BitmapCropCallback;->onCropFailure(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
