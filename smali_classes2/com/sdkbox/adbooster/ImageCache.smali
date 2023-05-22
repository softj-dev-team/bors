.class public Lcom/sdkbox/adbooster/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdkbox/adbooster/ImageCache$BitmapTask;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "sdkbox - imagecache"

.field private static _maxCacheSize:I = 0xa00000


# instance fields
.field private _context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/sdkbox/adbooster/ImageCache;->_context:Landroid/content/Context;

    .line 66
    iput-object p1, p0, Lcom/sdkbox/adbooster/ImageCache;->_context:Landroid/content/Context;

    .line 67
    invoke-direct {p0}, Lcom/sdkbox/adbooster/ImageCache;->createCacheDirectory()V

    return-void
.end method

.method private convertUrlToFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 216
    invoke-static {p1}, Lcom/sdkbox/adbooster/MD5Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createCacheDirectory()V
    .locals 2

    .line 140
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/sdkbox/adbooster/ImageCache;->getCacheDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/sdkbox/adbooster/ImageCache;->_context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method private getCacheDirectory()Ljava/lang/String;
    .locals 2

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sdkbox/adbooster/ImageCache;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/com.sdkbox/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFolderSize(Ljava/io/File;)J
    .locals 5

    const-wide/16 v0, 0x0

    .line 189
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const/4 v2, 0x0

    .line 190
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 191
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lcom/sdkbox/adbooster/ImageCache;->getFolderSize(Ljava/io/File;)J

    move-result-wide v3

    goto :goto_1

    .line 194
    :cond_0
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 198
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-wide v0
.end method

.method private getFolderSize(Ljava/lang/String;)J
    .locals 2

    .line 178
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-direct {p0, v0}, Lcom/sdkbox/adbooster/ImageCache;->getFolderSize(Ljava/io/File;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 181
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private isFileExist(Ljava/lang/String;)Z
    .locals 1

    .line 83
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/sdkbox/adbooster/ImageCache;->generateFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 85
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method private removeCache(Ljava/lang/String;)V
    .locals 4

    .line 122
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-wide v0, 0x3fc999999999999aL    # 0.2

    .line 127
    array-length v2, p1

    int-to-double v2, v2

    mul-double v2, v2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v0

    double-to-int v0, v2

    .line 128
    new-instance v1, Lcom/sdkbox/adbooster/ImageCache$1;

    invoke-direct {v1, p0}, Lcom/sdkbox/adbooster/ImageCache$1;-><init>(Lcom/sdkbox/adbooster/ImageCache;)V

    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 135
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public cache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 71
    invoke-direct {p0, p2}, Lcom/sdkbox/adbooster/ImageCache;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/sdkbox/adbooster/ImageCache$BitmapTask;

    invoke-direct {v0, p0}, Lcom/sdkbox/adbooster/ImageCache$BitmapTask;-><init>(Lcom/sdkbox/adbooster/ImageCache;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-virtual {v0, v1}, Lcom/sdkbox/adbooster/ImageCache$BitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 74
    :cond_0
    new-instance p2, Lcom/sdkbox/adbooster/AdBoosterEvent;

    invoke-direct {p2, p1, p3}, Lcom/sdkbox/adbooster/AdBoosterEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AdBooster"

    invoke-static {p1, p2}, Lcom/sdkbox/jnibridge/NativeBridge;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public downloadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    .line 151
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x1388

    .line 152
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 153
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "GET"

    .line 154
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 157
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 158
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 159
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    .line 162
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_1

    :catch_1
    move-exception v1

    move-object p1, v0

    .line 165
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 166
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    .line 170
    :goto_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 171
    throw v0
.end method

.method public generateFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sdkbox/adbooster/ImageCache;->getCacheDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCachedSizeInKb()J
    .locals 4

    .line 79
    invoke-direct {p0}, Lcom/sdkbox/adbooster/ImageCache;->getCacheDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sdkbox/adbooster/ImageCache;->getFolderSize(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public saveBmpToSd(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/sdkbox/adbooster/ImageCache;->getCachedSizeInKb()J

    move-result-wide v1

    sget v3, Lcom/sdkbox/adbooster/ImageCache;->_maxCacheSize:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 95
    invoke-direct {p0}, Lcom/sdkbox/adbooster/ImageCache;->getCacheDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sdkbox/adbooster/ImageCache;->removeCache(Ljava/lang/String;)V

    .line 97
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p2}, Lcom/sdkbox/adbooster/ImageCache;->generateFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_3

    .line 100
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 101
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v1, ".png"

    .line 102
    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    const/16 v1, 0x64

    if-eqz p3, :cond_2

    .line 103
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p3, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 105
    :cond_2
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p3, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 107
    :goto_0
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 108
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 116
    :catch_0
    sget-object p1, Lcom/sdkbox/adbooster/ImageCache;->TAG:Ljava/lang/String;

    const-string p2, "IOException"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 114
    :catch_1
    sget-object p1, Lcom/sdkbox/adbooster/ImageCache;->TAG:Ljava/lang/String;

    const-string p2, "File Not Found Exception"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0
.end method

.method public setMaxCacheSize(I)V
    .locals 0

    .line 212
    sput p1, Lcom/sdkbox/adbooster/ImageCache;->_maxCacheSize:I

    return-void
.end method
