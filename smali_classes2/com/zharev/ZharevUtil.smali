.class public Lcom/zharev/ZharevUtil;
.super Ljava/lang/Object;
.source "ZharevUtil.java"


# static fields
.field private static _instance:Lcom/zharev/ZharevUtil; = null

.field private static _vInstance:Lcom/sdkbox/plugin/SDKBoxActivity; = null

.field public static appLink:Ljava/lang/String; = ""

.field public static currentTopic:Ljava/lang/String; = ""

.field public static integrityToken:Ljava/lang/String; = ""

.field public static isSafeDevice:I = 0x0

.field public static pushToken:Ljava/lang/String; = ""


# instance fields
.field public MY_PERMISSIONS_REQUEST_CALL_PHONE:Ljava/lang/Integer;

.field public REQUEST_CODE_LOCATION_SETTINGS:Ljava/lang/Integer;

.field private lastAccuracy:I

.field private final mRandom:Ljava/util/Random;

.field public myLocation:Lcom/zharev/MyLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    .line 91
    iput v0, p0, Lcom/zharev/ZharevUtil;->lastAccuracy:I

    .line 103
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/zharev/ZharevUtil;->mRandom:Ljava/util/Random;

    const/16 v0, 0xc8

    .line 210
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zharev/ZharevUtil;->MY_PERMISSIONS_REQUEST_CALL_PHONE:Ljava/lang/Integer;

    const v0, 0x75bcd15

    .line 211
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zharev/ZharevUtil;->REQUEST_CODE_LOCATION_SETTINGS:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 268
    iput-object v0, p0, Lcom/zharev/ZharevUtil;->myLocation:Lcom/zharev/MyLocation;

    return-void
.end method

.method static synthetic access$000()Lcom/sdkbox/plugin/SDKBoxActivity;
    .locals 1

    .line 87
    sget-object v0, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    return-object v0
.end method

.method private checkSafetyNet()V
    .locals 3

    .line 155
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 156
    sget-object v1, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    .line 158
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Safety test"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Safety Net Sample: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-direct {p0, v0}, Lcom/zharev/ZharevUtil;->getRequestNonce(Ljava/lang/String;)[B

    move-result-object v0

    .line 161
    sget-object v1, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    invoke-static {v1}, Lcom/google/android/gms/safetynet/SafetyNet;->getClient(Landroid/app/Activity;)Lcom/google/android/gms/safetynet/SafetyNetClient;

    move-result-object v1

    const-string v2, "AIzaSyBXYHIOGtOiLR2dbE9sroYdiH0VKLZS0zI"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/safetynet/SafetyNetClient;->attest([BLjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/zharev/ZharevUtil$3;

    invoke-direct {v1, p0}, Lcom/zharev/ZharevUtil$3;-><init>(Lcom/zharev/ZharevUtil;)V

    .line 162
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/zharev/ZharevUtil$2;

    invoke-direct {v1, p0}, Lcom/zharev/ZharevUtil$2;-><init>(Lcom/zharev/ZharevUtil;)V

    .line 192
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 205
    :cond_0
    sget-object v1, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->makeGooglePlayServicesAvailable(Landroid/app/Activity;)Lcom/google/android/gms/tasks/Task;

    :goto_0
    return-void
.end method

.method public static copyTextToClipboard(Ljava/lang/String;)V
    .locals 2

    .line 576
    sget-object v0, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    new-instance v1, Lcom/zharev/ZharevUtil$9;

    invoke-direct {v1, p0}, Lcom/zharev/ZharevUtil$9;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sdkbox/plugin/SDKBoxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static encryptionMD5([B)Ljava/lang/String;
    .locals 4

    .line 543
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    const-string v1, "MD5"

    .line 545
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 546
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 547
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 548
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/4 v1, 0x0

    .line 549
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 550
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "0"

    .line 551
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 553
    :cond_0
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 557
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 559
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppLink()Ljava/lang/String;
    .locals 2

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAppLink:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/zharev/ZharevUtil;->appLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirebaseMessagingService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    sget-object v0, Lcom/zharev/ZharevUtil;->appLink:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 7

    const-string v0, ""

    if-ne v0, v0, :cond_0

    .line 668
    :try_start_0
    new-instance v1, Landroid/media/MediaDrm;

    new-instance v2, Ljava/util/UUID;

    const-wide v3, -0x121074568629b532L    # -3.563403477674908E221

    const-wide v5, -0x5c37d8232ae2de13L

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v1, v2}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    const-string v2, "deviceUniqueId"

    .line 669
    invoke-virtual {v1, v2}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static getHardwareInfo()Ljava/lang/String;
    .locals 7

    .line 480
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "OS Version"

    .line 482
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "os.version"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Device"

    .line 483
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Model"

    .line 484
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Product"

    .line 485
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "AppID"

    .line 486
    sget-object v2, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    invoke-virtual {v2}, Lcom/sdkbox/plugin/SDKBoxActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DeviceID"

    .line 487
    invoke-static {}, Lcom/zharev/ZharevUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pushISP"

    const/4 v2, 0x1

    .line 488
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 490
    invoke-static {}, Lcom/zharev/ZharevUtil;->isBst()I

    move-result v1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 491
    :goto_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Safety getHardwareInfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zharev/ZharevUtil;->isBst()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",isSafeDevice:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/zharev/ZharevUtil;->isSafeDevice:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez v1, :cond_2

    .line 492
    sget v4, Lcom/zharev/ZharevUtil;->isSafeDevice:I

    if-eqz v4, :cond_2

    const/4 v1, 0x2

    if-ne v4, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_2
    if-nez v1, :cond_3

    .line 496
    sget-object v1, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    new-instance v2, Lcom/zharev/ZharevUtil$8;

    invoke-direct {v2}, Lcom/zharev/ZharevUtil$8;-><init>()V

    invoke-static {v1, v2}, Lcom/lahm/library/EasyProtectorLib;->checkIsRunningInEmulator(Landroid/content/Context;Lcom/lahm/library/EmulatorCheckCallback;)Z

    move-result v1

    :cond_3
    :goto_2
    const-string v2, "Emulator"

    .line 527
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 528
    invoke-static {}, Lcom/lahm/library/EasyProtectorLib;->checkIsRoot()Z

    move-result v1

    const-string v2, "root"

    .line 529
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "sign"

    .line 530
    invoke-static {}, Lcom/zharev/ZharevUtil;->loadSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sign_new"

    .line 531
    sget-object v2, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    invoke-static {v2}, Lcom/zharev/ZharevUtil;->getSignMd5Str(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 533
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "{}"

    return-object v0
.end method

.method public static getInstance()Lcom/zharev/ZharevUtil;
    .locals 1

    .line 97
    sget-object v0, Lcom/zharev/ZharevUtil;->_instance:Lcom/zharev/ZharevUtil;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/zharev/ZharevUtil;

    invoke-direct {v0}, Lcom/zharev/ZharevUtil;-><init>()V

    sput-object v0, Lcom/zharev/ZharevUtil;->_instance:Lcom/zharev/ZharevUtil;

    .line 100
    :cond_0
    sget-object v0, Lcom/zharev/ZharevUtil;->_instance:Lcom/zharev/ZharevUtil;

    return-object v0
.end method

.method public static getIntegrityToken()Ljava/lang/String;
    .locals 1

    .line 717
    sget-object v0, Lcom/zharev/ZharevUtil;->integrityToken:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocation()Ljava/lang/String;
    .locals 1

    .line 349
    invoke-static {}, Lcom/zharev/ZharevUtil;->getInstance()Lcom/zharev/ZharevUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zharev/ZharevUtil;->getGPSLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNotchHeight()I
    .locals 4

    .line 228
    sget-object v0, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    invoke-virtual {v0}, Lcom/sdkbox/plugin/SDKBoxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "notch_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 230
    sget-object v1, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    invoke-virtual {v1}, Lcom/sdkbox/plugin/SDKBoxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getPushToken()Ljava/lang/String;
    .locals 1

    .line 622
    sget-object v0, Lcom/zharev/ZharevUtil;->pushToken:Ljava/lang/String;

    return-object v0
.end method

.method private getRequestNonce(Ljava/lang/String;)[B
    .locals 3

    .line 106
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x18

    new-array v1, v1, [B

    .line 108
    iget-object v2, p0, Lcom/zharev/ZharevUtil;->mRandom:Ljava/util/Random;

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 110
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getShock(I)V
    .locals 1

    .line 255
    invoke-static {}, Lcom/zharev/ZharevUtil;->getInstance()Lcom/zharev/ZharevUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zharev/ZharevUtil;->getShockMove(I)V

    return-void
.end method

.method public static getSignMd5Str(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 564
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x40

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 565
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v0, 0x0

    .line 566
    aget-object p0, p0, v0

    .line 567
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/zharev/ZharevUtil;->encryptionMD5([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 570
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static getStatusBarHeight()I
    .locals 4

    .line 220
    sget-object v0, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    invoke-virtual {v0}, Lcom/sdkbox/plugin/SDKBoxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 222
    sget-object v1, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    invoke-virtual {v1}, Lcom/sdkbox/plugin/SDKBoxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 4

    .line 236
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 238
    :try_start_0
    sget-object v1, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    invoke-virtual {v1}, Lcom/sdkbox/plugin/SDKBoxActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    invoke-virtual {v2}, Lcom/sdkbox/plugin/SDKBoxActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 239
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 240
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "version"

    .line 242
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "shortVersion"

    .line 243
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 245
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 248
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 250
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getViewInstance()Lcom/sdkbox/plugin/SDKBoxActivity;
    .locals 1

    .line 215
    sget-object v0, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    return-object v0
.end method

.method public static native isBst()I
.end method

.method public static isMockLocationOn(Landroid/location/Location;Landroid/content/Context;)Z
    .locals 3

    const-string v0, "0"

    .line 352
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 353
    invoke-virtual {p0}, Landroid/location/Location;->isFromMockProvider()Z

    move-result p0

    return p0

    .line 357
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "mock_location"

    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 359
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v0

    .line 361
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$requestIntegrityToken$0(Lcom/google/android/play/core/integrity/IntegrityTokenResponse;)V
    .locals 1

    .line 738
    invoke-virtual {p0}, Lcom/google/android/play/core/integrity/IntegrityTokenResponse;->token()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/zharev/ZharevUtil;->integrityToken:Ljava/lang/String;

    const-string v0, "integrityToken"

    .line 739
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    sget-object p0, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    new-instance v0, Lcom/zharev/ZharevUtil$13;

    invoke-direct {v0}, Lcom/zharev/ZharevUtil$13;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sdkbox/plugin/SDKBoxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$requestIntegrityToken$1(Ljava/lang/Exception;)V
    .locals 3

    .line 750
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Unknown Error"

    .line 754
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ":(.*)"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/zharev/ZharevUtil;->integrityToken:Ljava/lang/String;

    .line 756
    sget-object p0, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    new-instance v0, Lcom/zharev/ZharevUtil$14;

    invoke-direct {v0}, Lcom/zharev/ZharevUtil$14;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sdkbox/plugin/SDKBoxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static native loadSignature()Ljava/lang/String;
.end method

.method public static native onIntegrityToken()V
.end method

.method public static native onPushTokenUpdate(Ljava/lang/String;)V
.end method

.method public static openGPSSetting()V
    .locals 2

    .line 404
    sget-object v0, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    new-instance v1, Lcom/zharev/ZharevUtil$4;

    invoke-direct {v1}, Lcom/zharev/ZharevUtil$4;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sdkbox/plugin/SDKBoxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static refreshRequestWithRequestId(Ljava/lang/String;)Z
    .locals 2

    .line 712
    sget-object v0, Lzendesk/support/Support;->INSTANCE:Lzendesk/support/Support;

    sget-object v1, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    invoke-virtual {v0, p0, v1}, Lzendesk/support/Support;->refreshRequest(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static requestIntegrityToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 728
    sget-object v0, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    invoke-static {v0}, Lcom/google/android/play/core/integrity/IntegrityManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/integrity/IntegrityManager;

    move-result-object v0

    .line 732
    invoke-static {}, Lcom/google/android/play/core/integrity/IntegrityTokenRequest;->builder()Lcom/google/android/play/core/integrity/IntegrityTokenRequest$Builder;

    move-result-object v1

    .line 733
    invoke-virtual {v1, p0}, Lcom/google/android/play/core/integrity/IntegrityTokenRequest$Builder;->setNonce(Ljava/lang/String;)Lcom/google/android/play/core/integrity/IntegrityTokenRequest$Builder;

    move-result-object p0

    .line 734
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/play/core/integrity/IntegrityTokenRequest$Builder;->setCloudProjectNumber(J)Lcom/google/android/play/core/integrity/IntegrityTokenRequest$Builder;

    move-result-object p0

    .line 735
    invoke-virtual {p0}, Lcom/google/android/play/core/integrity/IntegrityTokenRequest$Builder;->build()Lcom/google/android/play/core/integrity/IntegrityTokenRequest;

    move-result-object p0

    .line 731
    invoke-interface {v0, p0}, Lcom/google/android/play/core/integrity/IntegrityManager;->requestIntegrityToken(Lcom/google/android/play/core/integrity/IntegrityTokenRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 737
    sget-object p1, Lcom/zharev/-$$Lambda$ZharevUtil$iR5xpzzoo5Zg1M3GQ_S4uHCyeAA;->INSTANCE:Lcom/zharev/-$$Lambda$ZharevUtil$iR5xpzzoo5Zg1M3GQ_S4uHCyeAA;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 749
    sget-object p1, Lcom/zharev/-$$Lambda$ZharevUtil$F06yG_B2QA18aSK6eR0nb14hlUo;->INSTANCE:Lcom/zharev/-$$Lambda$ZharevUtil$F06yG_B2QA18aSK6eR0nb14hlUo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static resetAppLink()V
    .locals 2

    const-string v0, "FirebaseMessagingService"

    const-string v1, "resetAppLink"

    .line 594
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 595
    sput-object v0, Lcom/zharev/ZharevUtil;->appLink:Ljava/lang/String;

    return-void
.end method

.method public static setGameMsg(Lorg/json/JSONObject;)V
    .locals 2

    .line 465
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 466
    sget-object v0, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    new-instance v1, Lcom/zharev/ZharevUtil$7;

    invoke-direct {v1, p0}, Lcom/zharev/ZharevUtil$7;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sdkbox/plugin/SDKBoxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showHelpCenter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 678
    sget-object v0, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    new-instance v1, Lcom/zharev/ZharevUtil$11;

    invoke-direct {v1, p0, p1}, Lcom/zharev/ZharevUtil$11;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sdkbox/plugin/SDKBoxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showRequestByID(Ljava/lang/String;)V
    .locals 2

    .line 701
    sget-object v0, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    new-instance v1, Lcom/zharev/ZharevUtil$12;

    invoke-direct {v1, p0}, Lcom/zharev/ZharevUtil$12;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sdkbox/plugin/SDKBoxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static startLocation(I)Ljava/lang/String;
    .locals 3

    .line 325
    invoke-static {}, Lcom/zharev/ZharevUtil;->getInstance()Lcom/zharev/ZharevUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zharev/ZharevUtil;->requirePermission(I)I

    move-result p0

    .line 326
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "jswrapper start GPS back"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 327
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "gpsStat"

    const/16 v2, 0x63

    if-eq p0, v2, :cond_0

    :try_start_0
    const-string v2, "close"

    .line 330
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "errcode"

    .line 331
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "gpsReject"

    const-string v1, "\u672c\u5730gps\u6ca1\u6709\u6253\u5f00"

    .line 332
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 334
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    :try_start_1
    const-string p0, "open"

    .line 338
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 340
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 343
    :goto_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jswrapper start GPS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stopLocation()Ljava/lang/String;
    .locals 1

    .line 414
    invoke-static {}, Lcom/zharev/ZharevUtil;->getInstance()Lcom/zharev/ZharevUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zharev/ZharevUtil;->stopGPSLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static subscribeToTopic(Ljava/lang/String;)V
    .locals 2

    .line 601
    sget-object v0, Lcom/zharev/ZharevUtil;->currentTopic:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    .line 602
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    sget-object v1, Lcom/zharev/ZharevUtil;->currentTopic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->unsubscribeFromTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 605
    :cond_0
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->subscribeToTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/zharev/ZharevUtil$10;

    invoke-direct {v1, p0}, Lcom/zharev/ZharevUtil$10;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static unsubscribeFromTopic(Ljava/lang/String;)V
    .locals 1

    .line 619
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->unsubscribeFromTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public Init(Lcom/sdkbox/plugin/SDKBoxActivity;)V
    .locals 4

    .line 120
    sput-object p1, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    .line 121
    invoke-direct {p0}, Lcom/zharev/ZharevUtil;->checkSafetyNet()V

    const/4 v0, 0x1

    .line 123
    invoke-static {v0}, Lcom/zendesk/logger/Logger;->setLoggable(Z)V

    .line 124
    sget-object v0, Lzendesk/core/Zendesk;->INSTANCE:Lzendesk/core/Zendesk;

    const-string v1, "https://pokerbrosapp.zendesk.com"

    const-string v2, "968d5f72de01563d5f844bb06cca5daa624f535d3da04633"

    const-string v3, "mobile_sdk_client_aafb51f4987eae308252"

    invoke-virtual {v0, p1, v1, v2, v3}, Lzendesk/core/Zendesk;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sget-object p1, Lzendesk/support/Support;->INSTANCE:Lzendesk/support/Support;

    sget-object v0, Lzendesk/core/Zendesk;->INSTANCE:Lzendesk/core/Zendesk;

    invoke-virtual {p1, v0}, Lzendesk/support/Support;->init(Lzendesk/core/Zendesk;)V

    .line 126
    sget-object p1, Lzendesk/answerbot/AnswerBot;->INSTANCE:Lzendesk/answerbot/AnswerBot;

    sget-object v0, Lzendesk/core/Zendesk;->INSTANCE:Lzendesk/core/Zendesk;

    sget-object v1, Lzendesk/support/Guide;->INSTANCE:Lzendesk/support/Guide;

    invoke-virtual {p1, v0, v1}, Lzendesk/answerbot/AnswerBot;->init(Lzendesk/core/Zendesk;Lzendesk/support/Guide;)V

    .line 128
    sget-object p1, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    invoke-static {p1}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    .line 130
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/zharev/ZharevUtil$1;

    invoke-direct {v0, p0}, Lcom/zharev/ZharevUtil$1;-><init>(Lcom/zharev/ZharevUtil;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public getGPSLocation()Ljava/lang/String;
    .locals 6

    .line 366
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "getGPSLocation"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 367
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 368
    invoke-virtual {p0}, Lcom/zharev/ZharevUtil;->getLocInstance()Lcom/zharev/MyLocation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zharev/MyLocation;->getLocation()Landroid/location/Location;

    move-result-object v1

    const-string v2, "gpsLng"

    const-string v3, "gpsLat"

    if-nez v1, :cond_3

    .line 370
    invoke-virtual {p0}, Lcom/zharev/ZharevUtil;->getLocInstance()Lcom/zharev/MyLocation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zharev/MyLocation;->checkEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 372
    :try_start_0
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 373
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 375
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 377
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x2

    .line 381
    :try_start_1
    sget-object v2, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    const-string v2, "gpsStat"

    const-string v3, "close"

    .line 384
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "errcode"

    .line 385
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 387
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 389
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 393
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 394
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 395
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMockLocationOn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    invoke-static {v1, v4}, Lcom/zharev/ZharevUtil;->isMockLocationOn(Landroid/location/Location;Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v2, "isMock"

    .line 396
    sget-object v3, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    invoke-static {v1, v3}, Lcom/zharev/ZharevUtil;->isMockLocationOn(Landroid/location/Location;Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 398
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 400
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocInstance()Lcom/zharev/MyLocation;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/zharev/ZharevUtil;->myLocation:Lcom/zharev/MyLocation;

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Lcom/zharev/MyLocation;

    invoke-direct {v0}, Lcom/zharev/MyLocation;-><init>()V

    iput-object v0, p0, Lcom/zharev/ZharevUtil;->myLocation:Lcom/zharev/MyLocation;

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/zharev/ZharevUtil;->myLocation:Lcom/zharev/MyLocation;

    return-object v0
.end method

.method public getShockMove(I)V
    .locals 3

    .line 261
    sget-object v0, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/sdkbox/plugin/SDKBoxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    int-to-long v1, p1

    .line 262
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 263
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "jswrapper getShockMove"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/zharev/ZharevUtil;->MY_PERMISSIONS_REQUEST_CALL_PHONE:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 299
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 300
    aget v1, p3, v0

    if-eqz v1, :cond_0

    .line 302
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "jswrapper \u6743\u9650\u4e0d\u591f"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 303
    sget-object v1, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 304
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "gpsStat"

    const-string v3, "close"

    .line 306
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "gpsReject"

    const-string v3, "\u672c\u5730gps\u6ca1\u6709\u6253\u5f00"

    .line 307
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 310
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :cond_1
    if-eqz p1, :cond_2

    .line 318
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "jswrapper \u6743\u9650\u7533\u8bf7\u6210\u529f"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public openDialogToOpenGPS()V
    .locals 3

    .line 432
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "jswrapper \u6253\u5f00GPS\u5f39\u7a97"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 433
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "GPS restriction"

    .line 434
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Please turn your GPS on."

    .line 435
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 436
    new-instance v1, Lcom/zharev/ZharevUtil$5;

    invoke-direct {v1, p0}, Lcom/zharev/ZharevUtil$5;-><init>(Lcom/zharev/ZharevUtil;)V

    const-string v2, "OK"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 449
    new-instance v1, Lcom/zharev/ZharevUtil$6;

    invoke-direct {v1, p0}, Lcom/zharev/ZharevUtil$6;-><init>(Lcom/zharev/ZharevUtil;)V

    const-string v2, "Cancel"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 456
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public requirePermission(I)I
    .locals 2

    .line 278
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 279
    iput p1, p0, Lcom/zharev/ZharevUtil;->lastAccuracy:I

    .line 280
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "jswrapper requirePermission 1"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 281
    sget-object p1, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    if-nez p1, :cond_1

    sget-object p1, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "jswrapper requirePermission 3"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/zharev/ZharevUtil;->getLocInstance()Lcom/zharev/MyLocation;

    move-result-object p1

    sget-object v0, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    iget v1, p0, Lcom/zharev/ZharevUtil;->lastAccuracy:I

    invoke-virtual {p1, v0, v1}, Lcom/zharev/MyLocation;->startLocation(Lcom/sdkbox/plugin/SDKBoxActivity;I)I

    move-result p1

    return p1

    .line 282
    :cond_1
    :goto_0
    sget-object p1, Lcom/zharev/ZharevUtil;->_vInstance:Lcom/sdkbox/plugin/SDKBoxActivity;

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zharev/ZharevUtil;->MY_PERMISSIONS_REQUEST_CALL_PHONE:Ljava/lang/Integer;

    .line 284
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 282
    invoke-static {p1, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 285
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "jswrapper requirePermission 2"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public stopGPSLocation()Ljava/lang/String;
    .locals 3

    .line 419
    invoke-virtual {p0}, Lcom/zharev/ZharevUtil;->getLocInstance()Lcom/zharev/MyLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zharev/MyLocation;->stopLocation()V

    .line 420
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "gpsStat"

    const-string v2, "close"

    .line 422
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gpsReject"

    const-string v2, "\u5b9a\u4f4d\u5df2\u5173\u95ed"

    .line 423
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 425
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 427
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
