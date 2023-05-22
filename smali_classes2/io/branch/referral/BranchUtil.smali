.class public Lio/branch/referral/BranchUtil;
.super Ljava/lang/Object;
.source "BranchUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/referral/BranchUtil$JsonReader;
    }
.end annotation


# static fields
.field private static isTestModeEnabled_:Z = false

.field private static testModeEnabledViaCompileTimeConfiguration:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addSource(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    if-nez p0, :cond_0

    .line 151
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    :try_start_0
    const-string v0, "source"

    const-string v1, "android"

    .line 154
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method static checkTestMode(Landroid/content/Context;)Z
    .locals 2

    .line 49
    sget-boolean v0, Lio/branch/referral/BranchUtil;->isTestModeEnabled_:Z

    if-nez v0, :cond_2

    .line 51
    sget-object v0, Lio/branch/referral/BranchUtil;->testModeEnabledViaCompileTimeConfiguration:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 53
    invoke-static {p0}, Lio/branch/referral/BranchJsonConfig;->getInstance(Landroid/content/Context;)Lio/branch/referral/BranchJsonConfig;

    move-result-object v0

    .line 54
    sget-object v1, Lio/branch/referral/BranchJsonConfig$BranchJsonKey;->useTestInstance:Lio/branch/referral/BranchJsonConfig$BranchJsonKey;

    invoke-virtual {v0, v1}, Lio/branch/referral/BranchJsonConfig;->isValid(Lio/branch/referral/BranchJsonConfig$BranchJsonKey;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-virtual {v0}, Lio/branch/referral/BranchJsonConfig;->getUseTestInstance()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lio/branch/referral/BranchUtil;->isTestModeEnabled_:Z

    goto :goto_1

    .line 60
    :cond_1
    invoke-static {p0}, Lio/branch/referral/BranchUtil;->readTestMode(Landroid/content/Context;)Z

    move-result p0

    sput-boolean p0, Lio/branch/referral/BranchUtil;->isTestModeEnabled_:Z

    .line 63
    :goto_1
    sget-boolean p0, Lio/branch/referral/BranchUtil;->isTestModeEnabled_:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lio/branch/referral/BranchUtil;->testModeEnabledViaCompileTimeConfiguration:Ljava/lang/Boolean;

    .line 66
    :cond_2
    sget-boolean p0, Lio/branch/referral/BranchUtil;->isTestModeEnabled_:Z

    return p0
.end method

.method public static decodeResourceId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 164
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static dpToPx(Landroid/content/Context;I)I
    .locals 1

    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    int-to-float p1, p1

    .line 274
    iget p0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p0, v0

    mul-float p1, p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method static formatLinkParam(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 139
    invoke-static {p0}, Lio/branch/referral/BranchUtil;->addSource(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static getDeepLinkSchemes(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .line 298
    invoke-static {p0}, Lio/branch/referral/BranchUtil;->isLowOnMemory(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 303
    :try_start_0
    new-instance v0, Ljava/util/jar/JarFile;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v2, "AndroidManifest.xml"

    .line 304
    invoke-virtual {v0, v2}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 305
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v3, v3, [B

    .line 307
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    .line 308
    new-instance v4, Lio/branch/referral/ApkParser;

    invoke-direct {v4}, Lio/branch/referral/ApkParser;-><init>()V

    invoke-virtual {v4, v3, p0}, Lio/branch/referral/ApkParser;->decompressXMLForValidator([BLandroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    .line 313
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 318
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_0
    move-object v2, v1

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v0, v1

    :goto_1
    if-eqz v1, :cond_1

    .line 313
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz v0, :cond_2

    .line 318
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 322
    :catch_1
    :cond_2
    throw p0

    :catch_2
    move-object v0, v1

    move-object v2, v0

    :catch_3
    :goto_2
    if-eqz v2, :cond_3

    .line 313
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_0

    :catch_4
    :cond_4
    :goto_3
    return-object v1
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 264
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 268
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static isDebugEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isLowOnMemory(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "activity"

    .line 290
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 291
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 292
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 293
    iget-boolean p0, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    return p0
.end method

.method public static isTestModeEnabled()Z
    .locals 1

    .line 122
    sget-boolean v0, Lio/branch/referral/BranchUtil;->isTestModeEnabled_:Z

    return v0
.end method

.method public static readBranchKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 89
    invoke-static {p0}, Lio/branch/referral/BranchJsonConfig;->getInstance(Landroid/content/Context;)Lio/branch/referral/BranchJsonConfig;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lio/branch/referral/BranchJsonConfig;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lio/branch/referral/BranchJsonConfig;->getBranchKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 93
    :cond_1
    invoke-static {}, Lio/branch/referral/BranchUtil;->isTestModeEnabled()Z

    move-result v1

    const-string v2, "io.branch.sdk.BranchKey"

    if-eqz v1, :cond_2

    const-string v1, "io.branch.sdk.BranchKey.test"

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 96
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 97
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_3

    .line 98
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 99
    invoke-static {}, Lio/branch/referral/BranchUtil;->isTestModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 101
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    return-object v0

    .line 108
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "string"

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static readTestMode(Landroid/content/Context;)Z
    .locals 4

    .line 70
    sget-boolean v0, Lio/branch/referral/BranchUtil;->isTestModeEnabled_:Z

    .line 73
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 74
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "io.branch.sdk.TestMode"

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    iget-object p0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    :goto_0
    move v0, p0

    goto :goto_1

    .line 77
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v3, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :goto_1
    return v0
.end method

.method static setTestMode(Z)V
    .locals 0

    .line 126
    sput-boolean p0, Lio/branch/referral/BranchUtil;->isTestModeEnabled_:Z

    return-void
.end method

.method static shutDown()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    sput-boolean v0, Lio/branch/referral/BranchUtil;->isTestModeEnabled_:Z

    const/4 v0, 0x0

    .line 37
    sput-object v0, Lio/branch/referral/BranchUtil;->testModeEnabledViaCompileTimeConfiguration:Ljava/lang/Boolean;

    return-void
.end method
