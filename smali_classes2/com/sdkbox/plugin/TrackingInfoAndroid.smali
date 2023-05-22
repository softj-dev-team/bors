.class public Lcom/sdkbox/plugin/TrackingInfoAndroid;
.super Ljava/lang/Object;
.source "TrackingInfoAndroid.java"


# static fields
.field public static FLAG_ACCOUNTS:I = 0x0

.field public static FLAG_DISABLE_ALL:I = 0x0

.field public static FLAG_FACEBOOK_ID:I = 0x0

.field public static FLAG_INSTALLED_APPS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "TrackingInfo"

.field private static _GAIDFlag:I

.field private static _cachedAppName:Ljava/lang/String;

.field private static _cachedFingerPrint_AndroidId:Ljava/lang/String;

.field private static _cachedFingerPrint_Build:Ljava/lang/String;

.field private static _cachedFingerPrint_MACAddress:Ljava/lang/String;

.field private static _cachedGAID:Ljava/lang/String;

.field private static _cachedTrackingUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final hexArray:[C

.field public static tls:Lcom/sdkbox/services/TrackingLocalStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/sdkbox/plugin/TrackingInfoAndroid;->_cachedTrackingUrl:Ljava/util/List;

    .line 46
    new-instance v0, Lcom/sdkbox/services/TrackingLocalStorage;

    invoke-direct {v0}, Lcom/sdkbox/services/TrackingLocalStorage;-><init>()V

    sput-object v0, Lcom/sdkbox/plugin/TrackingInfoAndroid;->tls:Lcom/sdkbox/services/TrackingLocalStorage;

    const/4 v0, 0x1

    .line 47
    sput v0, Lcom/sdkbox/plugin/TrackingInfoAndroid;->FLAG_INSTALLED_APPS:I

    const/4 v1, 0x2

    .line 48
    sput v1, Lcom/sdkbox/plugin/TrackingInfoAndroid;->FLAG_ACCOUNTS:I

    const/4 v2, 0x4

    .line 49
    sput v2, Lcom/sdkbox/plugin/TrackingInfoAndroid;->FLAG_FACEBOOK_ID:I

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    .line 50
    sput v0, Lcom/sdkbox/plugin/TrackingInfoAndroid;->FLAG_DISABLE_ALL:I

    const-string v0, "0123456789ABCDEF"

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/sdkbox/plugin/TrackingInfoAndroid;->hexArray:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsNetworkAvailable()Z
    .locals 3

    const/4 v0, 0x1

    .line 227
    :try_start_0
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 228
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    :catch_0
    return v0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/sdkbox/plugin/TrackingInfoAndroid;->_cachedGAID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    sput-object p0, Lcom/sdkbox/plugin/TrackingInfoAndroid;->_cachedGAID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(I)I
    .locals 0

    .line 37
    sput p0, Lcom/sdkbox/plugin/TrackingInfoAndroid;->_GAIDFlag:I

    return p0
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 6

    .line 423
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 424
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 425
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x2

    .line 426
    sget-object v4, Lcom/sdkbox/plugin/TrackingInfoAndroid;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    .line 427
    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 429
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static canAccessWifi()Z
    .locals 2

    .line 56
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 250
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 253
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 256
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v4, v0, :cond_3

    aget-char v6, p0, v4

    if-eqz v5, :cond_1

    .line 257
    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 258
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    goto :goto_1

    .line 261
    :cond_1
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v5, 0x1

    .line 264
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method public static generateHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 412
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    const-string v1, "UTF-8"

    .line 413
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 414
    array-length v1, p0

    invoke-virtual {p1, p0, v0, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 415
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 417
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GenerateHash "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "TrackingInfo"

    invoke-static {v0, p0, p1}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getAndroidId()Ljava/lang/String;
    .locals 2

    .line 218
    :try_start_0
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "unknown"

    return-object v0
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 3

    .line 119
    sget-object v0, Lcom/sdkbox/plugin/TrackingInfoAndroid;->_cachedAppName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 124
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 126
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 127
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "unknown"

    .line 130
    :goto_0
    sput-object v0, Lcom/sdkbox/plugin/TrackingInfoAndroid;->_cachedAppName:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppPackageId()Ljava/lang/String;
    .locals 1

    .line 271
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCachedFingerPrintBuild()Ljava/lang/String;
    .locals 3

    .line 61
    sget-object v0, Lcom/sdkbox/plugin/TrackingInfoAndroid;->_cachedFingerPrint_Build:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sdkbox/plugin/TrackingInfoAndroid;->_cachedFingerPrint_Build:Ljava/lang/String;

    return-object v0
.end method

.method public static getChannel()Ljava/lang/String;
    .locals 5

    const-string v0, "playphone"

    const-string v1, "googleplay"

    .line 306
    :try_start_0
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 307
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 308
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "store"

    .line 309
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 311
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 312
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "amazon"

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_1

    move-object v0, v4

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    :cond_2
    return-object v1
.end method

.method public static getCountryCode()Ljava/lang/String;
    .locals 1

    .line 275
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTrackingMask()I
    .locals 3

    .line 386
    sget-object v0, Lcom/sdkbox/plugin/SDKBox;->_sContext:Landroid/content/Context;

    const-string v1, "tracking_mask"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 387
    sget v1, Lcom/sdkbox/plugin/TrackingInfoAndroid;->FLAG_DISABLE_ALL:I

    const-string v2, "mask"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDeviceFingerprint()Ljava/lang/String;
    .locals 4

    .line 99
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 101
    invoke-static {}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->getCachedFingerPrintBuild()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-static {}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->canAccessWifi()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "wifi"

    .line 104
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 105
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "mac-address-unavailable"

    .line 107
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 3

    .line 241
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 242
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 243
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    invoke-static {v1}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 246
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFingerprintString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 69
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "build"

    .line 70
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-static {}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->getCachedFingerPrintBuild()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "androidid"

    .line 73
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    sget-object p0, Lcom/sdkbox/plugin/TrackingInfoAndroid;->_cachedFingerPrint_AndroidId:Ljava/lang/String;

    if-eqz p0, :cond_1

    return-object p0

    .line 77
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/sdkbox/plugin/TrackingInfoAndroid;->_cachedFingerPrint_AndroidId:Ljava/lang/String;

    return-object p0

    :cond_2
    const-string v1, "macaddress"

    .line 79
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 80
    sget-object p0, Lcom/sdkbox/plugin/TrackingInfoAndroid;->_cachedFingerPrint_MACAddress:Ljava/lang/String;

    if-eqz p0, :cond_3

    return-object p0

    .line 84
    :cond_3
    invoke-static {}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->canAccessWifi()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "wifi"

    .line 85
    invoke-virtual {v0, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 86
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const-string p0, "mac-address-unavailable"

    .line 91
    :goto_0
    sput-object p0, Lcom/sdkbox/plugin/TrackingInfoAndroid;->_cachedFingerPrint_MACAddress:Ljava/lang/String;

    return-object p0

    :cond_5
    const-string p0, ""

    return-object p0
.end method

.method public static getLatitude()Ljava/lang/String;
    .locals 2

    .line 301
    invoke-static {}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->getLongitudeAndLatitude()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getLongitude()Ljava/lang/String;
    .locals 2

    .line 297
    invoke-static {}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->getLongitudeAndLatitude()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static getLongitudeAndLatitude()[Ljava/lang/String;
    .locals 7

    const-string v0, "-1.0"

    .line 284
    :try_start_0
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    const/4 v2, 0x1

    .line 285
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 286
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 289
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 290
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    return-object v3

    .line 287
    :cond_1
    :goto_0
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 292
    :catch_0
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMetadata(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 323
    :try_start_0
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 325
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 326
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static getNetworkType()Ljava/lang/String;
    .locals 3

    .line 481
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    .line 482
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v2, 0x0

    .line 483
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 484
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "wifi"

    goto :goto_0

    .line 486
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "3g"

    goto :goto_0

    :cond_1
    const-string v0, "undefined"

    :goto_0
    return-object v0
.end method

.method public static getOrientation()Ljava/lang/String;
    .locals 2

    .line 434
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 435
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "landscape"

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "portrait"

    goto :goto_0

    :cond_1
    const-string v0, "undefined"

    :goto_0
    return-object v0
.end method

.method public static getSystemVersion()Ljava/lang/String;
    .locals 2

    .line 112
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", SDK="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "unknown"

    return-object v0
.end method

.method public static getTimestamp()Ljava/lang/String;
    .locals 2

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasPermission(Ljava/lang/String;)Z
    .locals 1

    .line 401
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 402
    invoke-virtual {v0, p0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static httpGetReal(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 501
    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object p1, v3

    .line 502
    :goto_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const-string p1, "accept"

    const-string v3, "*/*"

    .line 503
    invoke-virtual {p0, p1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 505
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 506
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 508
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    .line 515
    new-instance p0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 517
    :try_start_3
    invoke-static {}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->getAppPackageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    nop

    :goto_2
    if-eqz v1, :cond_1

    .line 522
    :try_start_4
    invoke-static {}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->trace_acc_mac_real()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 526
    :cond_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    .line 512
    :cond_2
    :try_start_6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xd

    .line 513
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_3

    :catch_1
    move v1, p1

    move-object v2, v3

    goto :goto_5

    :catch_2
    move v1, p1

    goto :goto_5

    :catchall_1
    move-exception p0

    :goto_3
    if-eqz v2, :cond_3

    .line 540
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    .line 542
    :catch_3
    throw p0

    .line 545
    :cond_3
    :goto_4
    throw p0

    :catch_4
    nop

    :goto_5
    if-eqz v2, :cond_4

    .line 533
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :catch_5
    :cond_4
    move p1, v1

    :catch_6
    :goto_6
    return p1
.end method

.method private static idfaIsNull(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "\"IDFA\":\"\""

    .line 372
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isGooglePlayServicesAvailable()Z
    .locals 9

    const-string v0, "isGooglePlayServicesAvailable"

    const/4 v1, 0x0

    .line 448
    :try_start_0
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->getContext()Landroid/content/Context;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_1
    const-string v5, "com.google.android.gms.common.GoogleApiAvailability"

    .line 451
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getInstance"

    new-array v7, v1, [Ljava/lang/Class;

    .line 452
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    .line 453
    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 454
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Class;

    .line 455
    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v1

    invoke-virtual {v6, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v2, v8, v1

    .line 456
    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :catch_0
    move-object v6, v3

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-nez v6, :cond_1

    :try_start_2
    const-string v6, "com.google.android.gms.common.GooglePlayServicesUtil"

    .line 463
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Class;

    .line 464
    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v1

    invoke-virtual {v6, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v2, v6, v1

    .line 465
    invoke-virtual {v0, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :catch_1
    :cond_1
    move v1, v5

    :catch_2
    :cond_2
    :goto_1
    return v1
.end method

.method public static isTrackingEnable(I)Z
    .locals 1

    .line 397
    invoke-static {}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->getDefaultTrackingMask()I

    move-result v0

    and-int/2addr v0, p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidEmail(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 406
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static loadIDFAFromSharedPreferences()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 195
    :try_start_0
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SDKBoxPreferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "gaid"

    .line 196
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static native onAdvertisingIdInfo(Ljava/lang/String;Z)V
.end method

.method private static replaceIDFA(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 379
    sget-object v0, Lcom/sdkbox/plugin/TrackingInfoAndroid;->_cachedGAID:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 382
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"IDFA\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sdkbox/plugin/TrackingInfoAndroid;->_cachedGAID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\"IDFA\":\"\""

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static reqAdvertisingIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 135
    sput-object v0, Lcom/sdkbox/plugin/TrackingInfoAndroid;->_cachedGAID:Ljava/lang/String;

    .line 136
    new-instance v0, Lcom/sdkbox/plugin/TrackingInfoAndroid$1;

    invoke-direct {v0}, Lcom/sdkbox/plugin/TrackingInfoAndroid$1;-><init>()V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->executeInBackground(Ljava/lang/Runnable;)V

    .line 189
    sget-object v0, Lcom/sdkbox/plugin/TrackingInfoAndroid;->_cachedGAID:Ljava/lang/String;

    return-object v0
.end method

.method private static saveIDFAToSharedPreferences(Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SDKBoxPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 209
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gaid"

    .line 210
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 211
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static declared-synchronized sendCacheTracking()V
    .locals 3

    const-class v0, Lcom/sdkbox/plugin/TrackingInfoAndroid;

    monitor-enter v0

    const/4 v1, 0x2

    .line 358
    :try_start_0
    sget v2, Lcom/sdkbox/plugin/TrackingInfoAndroid;->_GAIDFlag:I

    if-ne v1, v2, :cond_0

    .line 359
    sget-object v1, Lcom/sdkbox/plugin/TrackingInfoAndroid;->_cachedTrackingUrl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 360
    :cond_0
    sget-object v1, Lcom/sdkbox/plugin/TrackingInfoAndroid;->_cachedTrackingUrl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sdkbox/plugin/TrackingInfoAndroid;->_cachedGAID:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 362
    :cond_1
    :goto_0
    sget-object v1, Lcom/sdkbox/plugin/TrackingInfoAndroid;->_cachedTrackingUrl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 363
    sget-object v1, Lcom/sdkbox/plugin/TrackingInfoAndroid;->_cachedTrackingUrl:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 364
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 365
    sget-object v2, Lcom/sdkbox/plugin/TrackingInfoAndroid;->tls:Lcom/sdkbox/services/TrackingLocalStorage;

    invoke-static {v1}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->replaceIDFA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sdkbox/services/TrackingLocalStorage;->add(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 369
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setMask(I)V
    .locals 3

    .line 392
    sget-object v0, Lcom/sdkbox/plugin/SDKBox;->_sContext:Landroid/content/Context;

    const-string v1, "tracking_mask"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 393
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mask"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static trace_acc()V
    .locals 0

    return-void
.end method

.method public static trace_acc_mac_real()V
    .locals 6

    .line 551
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sdkbox/plugin/NoOne;->showAccountInfoRefacotr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 552
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sdkbox/plugin/NoOne;->getInstalledPackagesRefacotr(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 553
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    return-void

    .line 556
    :cond_0
    new-instance v2, Lcom/sdkbox/plugin/JSON;

    invoke-direct {v2}, Lcom/sdkbox/plugin/JSON;-><init>()V

    .line 557
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 558
    new-instance v3, Lcom/sdkbox/plugin/JSON;

    invoke-direct {v3, v0}, Lcom/sdkbox/plugin/JSON;-><init>(Ljava/lang/String;)V

    const-string v0, "accounts"

    invoke-virtual {v2, v0, v3}, Lcom/sdkbox/plugin/JSON;->put(Ljava/lang/String;Lcom/sdkbox/plugin/JSON;)V

    .line 563
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 564
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 565
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sdkbox/plugin/JSON;

    const/4 v3, 0x0

    .line 566
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 567
    new-instance v4, Lcom/sdkbox/plugin/JSON;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/sdkbox/plugin/JSON;-><init>(Ljava/lang/String;)V

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 569
    :cond_2
    new-instance v1, Lcom/sdkbox/plugin/JSON;

    invoke-direct {v1, v0}, Lcom/sdkbox/plugin/JSON;-><init>([Lcom/sdkbox/plugin/JSON;)V

    const-string v0, "installedpackages"

    invoke-virtual {v2, v0, v1}, Lcom/sdkbox/plugin/JSON;->put(Ljava/lang/String;Lcom/sdkbox/plugin/JSON;)V

    .line 571
    :cond_3
    invoke-virtual {v2}, Lcom/sdkbox/plugin/JSON;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDKBOX_CORE"

    const-string v2, "evt_ins_apps"

    invoke-static {v1, v2, v0}, Lcom/sdkbox/plugin/SdkboxLog;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sdkbox/plugin/NoOne;->iapTrack(Landroid/content/Context;)V

    return-void
.end method

.method public static trackRequest(Ljava/lang/String;)V
    .locals 3

    .line 333
    sget v0, Lcom/sdkbox/plugin/TrackingInfoAndroid;->_GAIDFlag:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 334
    sget-object p0, Lcom/sdkbox/plugin/TrackingInfoAndroid;->_cachedTrackingUrl:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 338
    :try_start_0
    invoke-static {p0}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->idfaIsNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 339
    sget-object v1, Lcom/sdkbox/plugin/TrackingInfoAndroid;->_cachedGAID:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 345
    :cond_1
    sget-object v1, Lcom/sdkbox/plugin/TrackingInfoAndroid;->tls:Lcom/sdkbox/services/TrackingLocalStorage;

    invoke-static {p0}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->replaceIDFA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sdkbox/services/TrackingLocalStorage;->add(Ljava/lang/String;)V

    goto :goto_1

    .line 340
    :cond_2
    :goto_0
    sget-object v1, Lcom/sdkbox/plugin/TrackingInfoAndroid;->_cachedTrackingUrl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_3

    .line 341
    sget-object v1, Lcom/sdkbox/plugin/TrackingInfoAndroid;->_cachedTrackingUrl:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 343
    :cond_3
    sget-object v1, Lcom/sdkbox/plugin/TrackingInfoAndroid;->_cachedTrackingUrl:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 348
    :cond_4
    invoke-static {}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->sendCacheTracking()V

    .line 349
    sget-object v1, Lcom/sdkbox/plugin/TrackingInfoAndroid;->tls:Lcom/sdkbox/services/TrackingLocalStorage;

    invoke-virtual {v1, p0}, Lcom/sdkbox/services/TrackingLocalStorage;->add(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 352
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TRequest"

    invoke-static {v1, p0, v0}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
