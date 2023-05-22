.class public Lorg/cocos2dx/javascript/ImagePicker;
.super Ljava/lang/Object;
.source "ImagePicker.java"


# static fields
.field public static final IMAGE_UNSPECIFIED:Ljava/lang/String; = "image/*"

.field public static final NONE:I = 0x0

.field public static final PHOTOHRAPH:I = 0x1

.field public static final PHOTORESOULT:I = 0x3

.field public static final PHOTOZOOM:I = 0x2

.field private static activity:Lorg/cocos2dx/lib/Cocos2dxActivity;

.field private static allowsEditing:Z

.field private static corpPath:Ljava/lang/String;

.field private static fromCamera:Ljava/lang/Boolean;

.field private static height:I

.field private static instance:Lorg/cocos2dx/javascript/ImagePicker;

.field private static width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/javascript/ImagePicker;->fromCamera:Ljava/lang/Boolean;

    const-string v0, ""

    .line 74
    sput-object v0, Lorg/cocos2dx/javascript/ImagePicker;->corpPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 63
    sget-object v0, Lorg/cocos2dx/javascript/ImagePicker;->corpPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lorg/cocos2dx/javascript/ImagePicker;
    .locals 1

    .line 83
    sget-object v0, Lorg/cocos2dx/javascript/ImagePicker;->instance:Lorg/cocos2dx/javascript/ImagePicker;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lorg/cocos2dx/javascript/ImagePicker;

    invoke-direct {v0}, Lorg/cocos2dx/javascript/ImagePicker;-><init>()V

    sput-object v0, Lorg/cocos2dx/javascript/ImagePicker;->instance:Lorg/cocos2dx/javascript/ImagePicker;

    .line 86
    :cond_0
    sget-object v0, Lorg/cocos2dx/javascript/ImagePicker;->instance:Lorg/cocos2dx/javascript/ImagePicker;

    return-object v0
.end method

.method public static getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10

    :try_start_0
    const-string v0, ""

    .line 329
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    .line 332
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v3, "_data"

    .line 334
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v7, "_id=?"

    .line 339
    sget-object v4, Lorg/cocos2dx/javascript/ImagePicker;->activity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v4}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v8, v2

    const/4 v9, 0x0

    move-object v6, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 342
    aget-object v2, v3, v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 344
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 345
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 347
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 350
    :catch_0
    invoke-static {p0}, Lorg/cocos2dx/javascript/ImagePicker;->getRealPathInMediaStoreFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRealPathInMediaStoreFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    .line 312
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "_data"

    .line 316
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    .line 317
    sget-object v2, Lorg/cocos2dx/javascript/ImagePicker;->activity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 318
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 319
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 320
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 322
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public static native onImageSaved(Ljava/lang/String;)V
.end method

.method public static openCamera(ZII)V
    .locals 4

    .line 135
    sput-boolean p0, Lorg/cocos2dx/javascript/ImagePicker;->allowsEditing:Z

    .line 136
    sput p1, Lorg/cocos2dx/javascript/ImagePicker;->width:I

    .line 137
    sput p2, Lorg/cocos2dx/javascript/ImagePicker;->height:I

    const/4 v0, 0x1

    .line 138
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lorg/cocos2dx/javascript/ImagePicker;->fromCamera:Ljava/lang/Boolean;

    .line 140
    sget-object v1, Lorg/cocos2dx/javascript/ImagePicker;->activity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "android.permission.CAMERA"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/github/dfqin/grantor/PermissionsUtil;->hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    sget-object v0, Lorg/cocos2dx/javascript/ImagePicker;->activity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lorg/cocos2dx/javascript/ImagePicker$2;

    invoke-direct {v1, p0, p1, p2}, Lorg/cocos2dx/javascript/ImagePicker$2;-><init>(ZII)V

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/github/dfqin/grantor/PermissionsUtil;->requestPermission(Landroid/content/Context;Lcom/github/dfqin/grantor/PermissionListener;[Ljava/lang/String;)V

    return-void

    .line 155
    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    new-instance p1, Ljava/io/File;

    sget-object p2, Lorg/cocos2dx/javascript/ImagePicker;->activity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getCacheDir()Ljava/io/File;

    move-result-object p2

    const-string v1, "cc_cameraCache.jpg"

    invoke-direct {p1, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 159
    sget-object p2, Lorg/cocos2dx/javascript/ImagePicker;->activity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    const-string v1, "org.cocos2dx.javascript.fileprovider"

    invoke-static {p2, v1, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "output"

    .line 160
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 161
    sget-object p1, Lorg/cocos2dx/javascript/ImagePicker;->activity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {p1, p0, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static openPhoto(ZII)V
    .locals 3

    .line 96
    sput-boolean p0, Lorg/cocos2dx/javascript/ImagePicker;->allowsEditing:Z

    .line 97
    sput p1, Lorg/cocos2dx/javascript/ImagePicker;->width:I

    .line 98
    sput p2, Lorg/cocos2dx/javascript/ImagePicker;->height:I

    const/4 v0, 0x0

    .line 99
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/javascript/ImagePicker;->fromCamera:Ljava/lang/Boolean;

    .line 100
    sget-object v0, Lorg/cocos2dx/javascript/ImagePicker;->activity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/github/dfqin/grantor/PermissionsUtil;->hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    sget-object v0, Lorg/cocos2dx/javascript/ImagePicker;->activity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v2, Lorg/cocos2dx/javascript/ImagePicker$1;

    invoke-direct {v2, p0, p1, p2}, Lorg/cocos2dx/javascript/ImagePicker$1;-><init>(ZII)V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v2, p0}, Lcom/github/dfqin/grantor/PermissionsUtil;->requestPermission(Landroid/content/Context;Lcom/github/dfqin/grantor/PermissionListener;[Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "image/*"

    if-eqz p0, :cond_1

    .line 117
    new-instance p0, Landroid/content/Intent;

    const/4 p2, 0x0

    const-string v0, "android.intent.action.PICK"

    invoke-direct {p0, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 118
    sget-object p2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    sget-object p1, Lorg/cocos2dx/javascript/ImagePicker;->activity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const/4 p2, 0x2

    invoke-virtual {p1, p0, p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const-string p0, ""

    .line 121
    sput-object p0, Lorg/cocos2dx/javascript/ImagePicker;->corpPath:Ljava/lang/String;

    .line 122
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.intent.action.GET_CONTENT"

    .line 123
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.category.OPENABLE"

    .line 125
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    sget-object p2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    sget-object p1, Lorg/cocos2dx/javascript/ImagePicker;->activity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const/4 p2, 0x3

    invoke-virtual {p1, p0, p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public createDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 249
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 252
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 254
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2dx/javascript/ImagePicker;->createDir(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 258
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method public getRealFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 290
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 293
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v2, "file"

    .line 294
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 295
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v2, "content"

    .line 296
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 297
    sget-object v1, Lorg/cocos2dx/javascript/ImagePicker;->activity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v1, "_data"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 299
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 300
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_3

    .line 302
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_0
    return-object v0
.end method

.method public init(Lorg/cocos2dx/lib/Cocos2dxActivity;)V
    .locals 0

    .line 91
    sput-object p1, Lorg/cocos2dx/javascript/ImagePicker;->activity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 171
    new-instance p2, Ljava/io/File;

    sget-object v0, Lorg/cocos2dx/javascript/ImagePicker;->activity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "cc_cameraCache.jpg"

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    sget-object v0, Lorg/cocos2dx/javascript/ImagePicker;->activity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "org.cocos2dx.javascript.fileprovider"

    invoke-static {v0, v1, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 173
    invoke-virtual {p0, p2}, Lorg/cocos2dx/javascript/ImagePicker;->startPhotoZoom(Landroid/net/Uri;)V

    :cond_1
    if-nez p3, :cond_2

    return-void

    :cond_2
    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    .line 181
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "@ci_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".png"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 182
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    sget-object v2, Lorg/cocos2dx/javascript/ImagePicker;->activity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/yalantis/ucrop/UCrop;->of(Landroid/net/Uri;Landroid/net/Uri;)Lcom/yalantis/ucrop/UCrop;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 183
    invoke-virtual {p2, v0, v0}, Lcom/yalantis/ucrop/UCrop;->withAspectRatio(FF)Lcom/yalantis/ucrop/UCrop;

    move-result-object p2

    sget v0, Lorg/cocos2dx/javascript/ImagePicker;->width:I

    sget v1, Lorg/cocos2dx/javascript/ImagePicker;->height:I

    .line 184
    invoke-virtual {p2, v0, v1}, Lcom/yalantis/ucrop/UCrop;->withMaxResultSize(II)Lcom/yalantis/ucrop/UCrop;

    move-result-object p2

    sget-object v0, Lorg/cocos2dx/javascript/ImagePicker;->activity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 186
    invoke-virtual {p2, v0}, Lcom/yalantis/ucrop/UCrop;->start(Landroid/app/Activity;)V

    :cond_3
    const/4 p2, 0x3

    const/16 v0, 0x45

    if-eq p1, p2, :cond_4

    if-ne p1, v0, :cond_7

    :cond_4
    if-ne p1, v0, :cond_5

    .line 194
    invoke-static {p3}, Lcom/yalantis/ucrop/UCrop;->getOutput(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lorg/cocos2dx/javascript/ImagePicker;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lorg/cocos2dx/javascript/ImagePicker;->corpPath:Ljava/lang/String;

    goto :goto_0

    .line 195
    :cond_5
    sget-object p1, Lorg/cocos2dx/javascript/ImagePicker;->corpPath:Ljava/lang/String;

    const-string p2, ""

    if-ne p1, p2, :cond_6

    .line 196
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lorg/cocos2dx/javascript/ImagePicker;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lorg/cocos2dx/javascript/ImagePicker;->corpPath:Ljava/lang/String;

    .line 199
    :cond_6
    :goto_0
    sget-object p1, Lorg/cocos2dx/javascript/ImagePicker;->activity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance p2, Lorg/cocos2dx/javascript/ImagePicker$3;

    invoke-direct {p2, p0}, Lorg/cocos2dx/javascript/ImagePicker$3;-><init>(Lorg/cocos2dx/javascript/ImagePicker;)V

    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method public saveMyBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 264
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    .line 271
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 273
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 275
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x46

    invoke-virtual {p2, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 277
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p2

    .line 279
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 282
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 284
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public startPhotoZoom(Landroid/net/Uri;)V
    .locals 5

    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x1d

    if-gt v1, v3, :cond_0

    .line 213
    sget-object v1, Lorg/cocos2dx/javascript/ImagePicker;->activity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/cocos2dx/javascript/ImagePicker;->corpPath:Ljava/lang/String;

    goto :goto_0

    .line 215
    :cond_0
    sget-object v1, Lorg/cocos2dx/javascript/ImagePicker;->activity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 216
    array-length v3, v1

    if-lez v3, :cond_1

    .line 217
    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/cocos2dx/javascript/ImagePicker;->corpPath:Ljava/lang/String;

    goto :goto_0

    .line 219
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Android/media/temp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/cocos2dx/javascript/ImagePicker;->corpPath:Ljava/lang/String;

    .line 222
    :goto_0
    sget-object v1, Lorg/cocos2dx/javascript/ImagePicker;->corpPath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/cocos2dx/javascript/ImagePicker;->createDir(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/cocos2dx/javascript/ImagePicker;->corpPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/@ci_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/cocos2dx/javascript/ImagePicker;->corpPath:Ljava/lang/String;

    .line 225
    new-instance v1, Ljava/io/File;

    sget-object v3, Lorg/cocos2dx/javascript/ImagePicker;->corpPath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "image/*"

    .line 227
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "crop"

    const-string v3, "true"

    .line 228
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "aspectX"

    const/4 v3, 0x1

    .line 229
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "aspectY"

    .line 230
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "outputX"

    const/16 v4, 0x12c

    .line 231
    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "outputY"

    .line 232
    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "return-data"

    .line 233
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "scale"

    .line 234
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "output"

    .line 235
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 237
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 238
    sget-object p1, Lorg/cocos2dx/javascript/ImagePicker;->fromCamera:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    .line 239
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 242
    :cond_2
    sget-object p1, Lorg/cocos2dx/javascript/ImagePicker;->activity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
