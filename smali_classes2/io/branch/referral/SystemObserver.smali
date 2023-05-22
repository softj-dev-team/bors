.class abstract Lio/branch/referral/SystemObserver;
.super Ljava/lang/Object;
.source "SystemObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/referral/SystemObserver$UniqueId;,
        Lio/branch/referral/SystemObserver$AdsParamsFetchEvents;
    }
.end annotation


# static fields
.field static final BLANK:Ljava/lang/String; = "bnc_no_value"

.field static final UUID_EMPTY:Ljava/lang/String; = "00000000-0000-0000-0000-000000000000"


# instance fields
.field private AIDInitializationSessionID_:Ljava/lang/String;

.field private GAIDString_:Ljava/lang/String;

.field private LATVal_:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lio/branch/referral/SystemObserver;->GAIDString_:Ljava/lang/String;

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lio/branch/referral/SystemObserver;->LATVal_:I

    return-void
.end method

.method static getAPILevel()I
    .locals 1

    .line 291
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method static getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 102
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 103
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Error obtaining AppVersion"

    .line 105
    invoke-static {v0, p0}, Lio/branch/referral/PrefHelper;->LogException(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    const-string p0, ""

    .line 108
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "bnc_no_value"

    :cond_1
    return-object p0
.end method

.method static getCPUType()Ljava/lang/String;
    .locals 1

    const-string v0, "os.arch"

    .line 304
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getCarrier(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "phone"

    .line 355
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 357
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p0

    .line 358
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method static getConnectionType(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 333
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "connectivity"

    .line 334
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_1

    .line 336
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 337
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "wifi"

    return-object p0

    :cond_0
    const-string p0, "mobile"

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static getDeviceBuildId()Ljava/lang/String;
    .locals 1

    .line 313
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method static getFirstInstallTime(Landroid/content/Context;)J
    .locals 2

    if-eqz p0, :cond_0

    .line 120
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 121
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Error obtaining FirstInstallTime"

    .line 123
    invoke-static {v0, p0}, Lio/branch/referral/PrefHelper;->LogException(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method static getISO2CountryCode()Ljava/lang/String;
    .locals 1

    .line 208
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getISO2LanguageCode()Ljava/lang/String;
    .locals 1

    .line 217
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 644
    invoke-static {p0}, Lio/branch/referral/PrefHelper;->getInstance(Landroid/content/Context;)Lio/branch/referral/PrefHelper;

    move-result-object p0

    sget-object v0, Lio/branch/referral/Defines$ModuleNameKeys;->imei:Lio/branch/referral/Defines$ModuleNameKeys;

    .line 645
    invoke-virtual {v0}, Lio/branch/referral/Defines$ModuleNameKeys;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getSecondaryRequestMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 646
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static getLastUpdateTime(Landroid/content/Context;)J
    .locals 2

    if-eqz p0, :cond_0

    .line 164
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 165
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Error obtaining LastUpdateTime"

    .line 167
    invoke-static {v0, p0}, Lio/branch/referral/PrefHelper;->LogException(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method static getLocalIPAddress()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 471
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 472
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 473
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    .line 474
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 475
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_1

    .line 476
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3a

    .line 477
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    move-object v0, v3

    goto :goto_0

    :catch_0
    :cond_3
    return-object v0
.end method

.method static getLocale()Ljava/lang/String;
    .locals 2

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getOS(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 261
    invoke-static {}, Lio/branch/referral/SystemObserver;->isFireOSDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AMAZON_FIRE_TV"

    const-string v1, "AMAZON_FIRE"

    if-nez p0, :cond_1

    .line 263
    invoke-static {}, Lio/branch/referral/SystemObserver;->getPhoneModel()Ljava/lang/String;

    move-result-object p0

    const-string v2, "AFT"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    .line 264
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "amazon.hardware.fire_tv"

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    :cond_2
    return-object v1

    :cond_3
    const-string p0, "Android"

    return-object p0
.end method

.method static getOSVersion()Ljava/lang/String;
    .locals 1

    .line 295
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 84
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 85
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Error obtaining PackageName"

    .line 87
    invoke-static {v0, p0}, Lio/branch/referral/PrefHelper;->LogException(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method static getPhoneBrand()Ljava/lang/String;
    .locals 1

    .line 183
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method static getPhoneModel()Ljava/lang/String;
    .locals 1

    .line 199
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method static getScreenDisplay(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 4

    .line 375
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 379
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    const-string v2, "display"

    .line 380
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    .line 382
    invoke-virtual {p0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    move-object v1, p0

    goto :goto_0

    :cond_0
    const-string v2, "window"

    .line 386
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-eqz p0, :cond_1

    .line 388
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 394
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :cond_2
    return-object v0
.end method

.method static getUIMode(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "UI_MODE_TYPE_UNDEFINED"

    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "uimode"

    .line 505
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 509
    invoke-virtual {p0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string p0, "UI_MODE_TYPE_WATCH"

    goto :goto_1

    :pswitch_1
    const-string p0, "UI_MODE_TYPE_APPLIANCE"

    goto :goto_1

    :pswitch_2
    const-string p0, "UI_MODE_TYPE_TELEVISION"

    goto :goto_1

    :pswitch_3
    const-string p0, "UI_MODE_TYPE_CAR"

    goto :goto_1

    :pswitch_4
    const-string p0, "UI_MODE_TYPE_DESK"

    goto :goto_1

    :pswitch_5
    const-string p0, "UI_MODE_TYPE_NORMAL"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v0, p0

    :catch_0
    :cond_1
    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getUniqueID(Landroid/content/Context;Z)Lio/branch/referral/SystemObserver$UniqueId;
    .locals 1

    .line 72
    new-instance v0, Lio/branch/referral/SystemObserver$UniqueId;

    invoke-direct {v0, p0, p1}, Lio/branch/referral/SystemObserver$UniqueId;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method static getWifiConnected(Landroid/content/Context;)Z
    .locals 1

    .line 417
    invoke-static {p0}, Lio/branch/referral/SystemObserver;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "wifi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static isFireOSDevice()Z
    .locals 2

    .line 224
    invoke-static {}, Lio/branch/referral/SystemObserver;->getPhoneBrand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isGooglePlayServicesAvailable(Landroid/content/Context;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.google.android.gms.common.GoogleApiAvailability"

    .line 240
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstance"

    new-array v3, v0, [Ljava/lang/Class;

    .line 241
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    .line 242
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "isGooglePlayServicesAvailable"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    .line 245
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v0

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v0

    .line 246
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 247
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method static isHuaweiDevice()Z
    .locals 2

    .line 187
    invoke-static {}, Lio/branch/referral/SystemObserver;->getPhoneBrand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isHuaweiMobileServicesAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 234
    invoke-static {}, Lio/branch/referral/SystemObserver;->isHuaweiDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/branch/referral/SystemObserver;->isGooglePlayServicesAvailable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isPackageInstalled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 139
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/high16 v2, 0x10000

    .line 144
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 146
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Error obtaining PackageInfo"

    .line 148
    invoke-static {v1, p0}, Lio/branch/referral/PrefHelper;->LogException(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return v0
.end method

.method private setFireAdId(Landroid/content/Context;Lio/branch/referral/SystemObserver$AdsParamsFetchEvents;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 446
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "limit_ad_tracking"

    .line 447
    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lio/branch/referral/SystemObserver;->setLAT(I)V

    const-string v0, "advertising_id"

    .line 448
    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/branch/referral/SystemObserver;->setGAID(Ljava/lang/String;)V

    .line 450
    iget-object p1, p0, Lio/branch/referral/SystemObserver;->GAIDString_:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/branch/referral/SystemObserver;->GAIDString_:Ljava/lang/String;

    const-string v0, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lio/branch/referral/SystemObserver;->LATVal_:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 451
    invoke-virtual {p0, p1}, Lio/branch/referral/SystemObserver;->setGAID(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 457
    invoke-interface {p2}, Lio/branch/referral/SystemObserver$AdsParamsFetchEvents;->onAdsParamsFetchFinished()V

    :cond_2
    return-void
.end method


# virtual methods
.method getAID()Ljava/lang/String;
    .locals 1

    .line 625
    iget-object v0, p0, Lio/branch/referral/SystemObserver;->GAIDString_:Ljava/lang/String;

    return-object v0
.end method

.method getAIDInitializationSessionID()Ljava/lang/String;
    .locals 1

    .line 653
    iget-object v0, p0, Lio/branch/referral/SystemObserver;->AIDInitializationSessionID_:Ljava/lang/String;

    return-object v0
.end method

.method getLATVal()I
    .locals 1

    .line 629
    iget v0, p0, Lio/branch/referral/SystemObserver;->LATVal_:I

    return v0
.end method

.method prefetchAdsParams(Landroid/content/Context;Lio/branch/referral/SystemObserver$AdsParamsFetchEvents;)Z
    .locals 3

    .line 428
    invoke-static {p1}, Lio/branch/referral/PrefHelper;->getInstance(Landroid/content/Context;)Lio/branch/referral/PrefHelper;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/referral/PrefHelper;->getSessionID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/SystemObserver;->AIDInitializationSessionID_:Ljava/lang/String;

    .line 430
    invoke-static {}, Lio/branch/referral/SystemObserver;->isFireOSDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 431
    invoke-direct {p0, p1, p2}, Lio/branch/referral/SystemObserver;->setFireAdId(Landroid/content/Context;Lio/branch/referral/SystemObserver$AdsParamsFetchEvents;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 434
    invoke-static {p1}, Lio/branch/referral/SystemObserver;->isHuaweiMobileServicesAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 435
    new-instance v2, Lio/branch/referral/HuaweiOAIDFetchTask;

    invoke-direct {v2, p1, p2}, Lio/branch/referral/HuaweiOAIDFetchTask;-><init>(Landroid/content/Context;Lio/branch/referral/SystemObserver$AdsParamsFetchEvents;)V

    new-array p1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, p1}, Lio/branch/referral/HuaweiOAIDFetchTask;->executeTask([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 437
    :cond_1
    new-instance v2, Lio/branch/referral/GAdsPrefetchTask;

    invoke-direct {v2, p1, p2}, Lio/branch/referral/GAdsPrefetchTask;-><init>(Landroid/content/Context;Lio/branch/referral/SystemObserver$AdsParamsFetchEvents;)V

    new-array p1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, p1}, Lio/branch/referral/GAdsPrefetchTask;->executeTask([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method setGAID(Ljava/lang/String;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lio/branch/referral/SystemObserver;->GAIDString_:Ljava/lang/String;

    return-void
.end method

.method setLAT(I)V
    .locals 0

    .line 637
    iput p1, p0, Lio/branch/referral/SystemObserver;->LATVal_:I

    return-void
.end method
