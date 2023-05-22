.class public Lcom/lahm/library/EmulatorCheckUtil;
.super Ljava/lang/Object;
.source "EmulatorCheckUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lahm/library/EmulatorCheckUtil$SingletonHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lahm/library/EmulatorCheckUtil$1;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/lahm/library/EmulatorCheckUtil;-><init>()V

    return-void
.end method

.method private checkFeaturesByBaseBand()Lcom/lahm/library/CheckResult;
    .locals 3

    const-string v0, "gsm.version.baseband"

    .line 290
    invoke-direct {p0, v0}, Lcom/lahm/library/EmulatorCheckUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Lcom/lahm/library/CheckResult;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lahm/library/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_0
    const-string v2, "null"

    .line 293
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "1.0.0.0"

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    .line 296
    :goto_0
    new-instance v2, Lcom/lahm/library/CheckResult;

    invoke-direct {v2, v1, v0}, Lcom/lahm/library/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method private checkFeaturesByBoard()Lcom/lahm/library/CheckResult;
    .locals 4

    const-string v0, "ro.product.board"

    .line 259
    invoke-direct {p0, v0}, Lcom/lahm/library/EmulatorCheckUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Lcom/lahm/library/CheckResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lahm/library/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 262
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    .line 263
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "goldfish"

    .line 264
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    .line 266
    :goto_0
    new-instance v1, Lcom/lahm/library/CheckResult;

    invoke-direct {v1, v3, v0}, Lcom/lahm/library/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method private checkFeaturesByCgroup()Lcom/lahm/library/CheckResult;
    .locals 3

    .line 353
    invoke-static {}, Lcom/lahm/library/CommandUtil;->getSingleInstance()Lcom/lahm/library/CommandUtil;

    move-result-object v0

    const-string v1, "cat /proc/self/cgroup"

    invoke-virtual {v0, v1}, Lcom/lahm/library/CommandUtil;->exec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Lcom/lahm/library/CheckResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lahm/library/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 355
    :cond_0
    new-instance v1, Lcom/lahm/library/CheckResult;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lcom/lahm/library/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method private checkFeaturesByFlavor()Lcom/lahm/library/CheckResult;
    .locals 5

    const-string v0, "ro.build.flavor"

    .line 209
    invoke-direct {p0, v0}, Lcom/lahm/library/EmulatorCheckUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lcom/lahm/library/CheckResult;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lahm/library/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 212
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "vbox"

    .line 213
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const-string v3, "aosp-user"

    .line 214
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "sdk_gphone"

    .line 215
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    .line 217
    :goto_1
    new-instance v2, Lcom/lahm/library/CheckResult;

    invoke-direct {v2, v1, v0}, Lcom/lahm/library/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method private checkFeaturesByHardware()Lcom/lahm/library/CheckResult;
    .locals 7

    const-string v0, "ro.hardware"

    .line 182
    invoke-direct {p0, v0}, Lcom/lahm/library/EmulatorCheckUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/lahm/library/CheckResult;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lahm/library/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 185
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v4, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v1, "android_x86"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_1
    const-string v1, "intel"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v1, "vbox"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v1, "ttvm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "nox"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_5
    const-string v1, "vbox86"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_6
    const-string v4, "cancro"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/4 v5, 0x1

    .line 200
    :goto_2
    new-instance v1, Lcom/lahm/library/CheckResult;

    invoke-direct {v1, v5, v0}, Lcom/lahm/library/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5185cff0 -> :sswitch_6
        -0x310ae8ad -> :sswitch_5
        0x1aad7 -> :sswitch_4
        0x367d37 -> :sswitch_3
        0x372195 -> :sswitch_2
        0x5fb64d6 -> :sswitch_1
        0x37e65fa6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private checkFeaturesByManufacturer()Lcom/lahm/library/CheckResult;
    .locals 4

    const-string v0, "ro.product.manufacturer"

    .line 243
    invoke-direct {p0, v0}, Lcom/lahm/library/EmulatorCheckUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Lcom/lahm/library/CheckResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lahm/library/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 246
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "genymotion"

    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "netease"

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    .line 250
    :goto_0
    new-instance v1, Lcom/lahm/library/CheckResult;

    invoke-direct {v1, v3, v0}, Lcom/lahm/library/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method private checkFeaturesByModel()Lcom/lahm/library/CheckResult;
    .locals 4

    const-string v0, "ro.product.model"

    .line 226
    invoke-direct {p0, v0}, Lcom/lahm/library/EmulatorCheckUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Lcom/lahm/library/CheckResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lahm/library/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 229
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "google_sdk"

    .line 230
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "emulator"

    .line 231
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "android sdk built for x86"

    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    .line 234
    :goto_0
    new-instance v1, Lcom/lahm/library/CheckResult;

    invoke-direct {v1, v3, v0}, Lcom/lahm/library/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method private checkFeaturesByPlatform()Lcom/lahm/library/CheckResult;
    .locals 3

    const-string v0, "ro.board.platform"

    .line 275
    invoke-direct {p0, v0}, Lcom/lahm/library/EmulatorCheckUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Lcom/lahm/library/CheckResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lahm/library/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 278
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 281
    :goto_0
    new-instance v2, Lcom/lahm/library/CheckResult;

    invoke-direct {v2, v1, v0}, Lcom/lahm/library/CheckResult;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method private getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 172
    invoke-static {}, Lcom/lahm/library/CommandUtil;->getSingleInstance()Lcom/lahm/library/CommandUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lahm/library/CommandUtil;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 173
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method private getSensorNumber(Landroid/content/Context;)I
    .locals 1

    const-string v0, "sensor"

    .line 303
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    const/4 v0, -0x1

    .line 304
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public static final getSingleInstance()Lcom/lahm/library/EmulatorCheckUtil;
    .locals 1

    .line 29
    invoke-static {}, Lcom/lahm/library/EmulatorCheckUtil$SingletonHolder;->access$100()Lcom/lahm/library/EmulatorCheckUtil;

    move-result-object v0

    return-object v0
.end method

.method private getUserAppNum(Ljava/lang/String;)I
    .locals 1

    .line 166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "package:"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 168
    array-length p1, p1

    return p1
.end method

.method private getUserAppNumber()I
    .locals 2

    .line 311
    invoke-static {}, Lcom/lahm/library/CommandUtil;->getSingleInstance()Lcom/lahm/library/CommandUtil;

    move-result-object v0

    const-string v1, "pm list package -3"

    invoke-virtual {v0, v1}, Lcom/lahm/library/CommandUtil;->exec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-direct {p0, v0}, Lcom/lahm/library/EmulatorCheckUtil;->getUserAppNum(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private hasLightSensor(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "sensor"

    .line 343
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    const/4 v0, 0x5

    .line 344
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private supportBluetooth(Landroid/content/Context;)Z
    .locals 1

    .line 333
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private supportCamera(Landroid/content/Context;)Z
    .locals 1

    .line 319
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.camera"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private supportCameraFlash(Landroid/content/Context;)Z
    .locals 1

    .line 326
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.camera.flash"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public readSysProperty(Landroid/content/Context;Lcom/lahm/library/EmulatorCheckCallback;)Z
    .locals 23

    move-object/from16 v0, p2

    if-eqz p1, :cond_1c

    .line 39
    invoke-direct/range {p0 .. p0}, Lcom/lahm/library/EmulatorCheckUtil;->checkFeaturesByHardware()Lcom/lahm/library/CheckResult;

    move-result-object v1

    .line 40
    iget v2, v1, Lcom/lahm/library/CheckResult;->result:I

    const-string v3, "hardware = "

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/lahm/library/CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lahm/library/EmulatorCheckCallback;->findEmulator(Ljava/lang/String;)V

    :cond_1
    return v5

    :cond_2
    const/4 v2, 0x1

    .line 50
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/lahm/library/EmulatorCheckUtil;->checkFeaturesByFlavor()Lcom/lahm/library/CheckResult;

    move-result-object v6

    .line 51
    iget v7, v6, Lcom/lahm/library/CheckResult;->result:I

    const-string v8, "flavor = "

    if-eqz v7, :cond_5

    if-eq v7, v5, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/lahm/library/CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lahm/library/EmulatorCheckCallback;->findEmulator(Ljava/lang/String;)V

    :cond_4
    return v5

    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 61
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/lahm/library/EmulatorCheckUtil;->checkFeaturesByModel()Lcom/lahm/library/CheckResult;

    move-result-object v7

    .line 62
    iget v9, v7, Lcom/lahm/library/CheckResult;->result:I

    const-string v10, "model = "

    if-eq v9, v5, :cond_1a

    .line 72
    invoke-direct/range {p0 .. p0}, Lcom/lahm/library/EmulatorCheckUtil;->checkFeaturesByManufacturer()Lcom/lahm/library/CheckResult;

    move-result-object v9

    .line 73
    iget v11, v9, Lcom/lahm/library/CheckResult;->result:I

    const-string v12, "manufacturer = "

    if-eqz v11, :cond_8

    if-eq v11, v5, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/lahm/library/CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lahm/library/EmulatorCheckCallback;->findEmulator(Ljava/lang/String;)V

    :cond_7
    return v5

    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 84
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/lahm/library/EmulatorCheckUtil;->checkFeaturesByBoard()Lcom/lahm/library/CheckResult;

    move-result-object v11

    .line 85
    iget v13, v11, Lcom/lahm/library/CheckResult;->result:I

    const-string v14, "board = "

    if-eq v13, v5, :cond_18

    .line 95
    invoke-direct/range {p0 .. p0}, Lcom/lahm/library/EmulatorCheckUtil;->checkFeaturesByPlatform()Lcom/lahm/library/CheckResult;

    move-result-object v13

    .line 96
    iget v15, v13, Lcom/lahm/library/CheckResult;->result:I

    const-string v4, "platform = "

    if-eqz v15, :cond_b

    if-eq v15, v5, :cond_9

    goto :goto_3

    :cond_9
    if-eqz v0, :cond_a

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/lahm/library/CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lahm/library/EmulatorCheckCallback;->findEmulator(Ljava/lang/String;)V

    :cond_a
    return v5

    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 106
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/lahm/library/EmulatorCheckUtil;->checkFeaturesByBaseBand()Lcom/lahm/library/CheckResult;

    move-result-object v15

    .line 107
    iget v5, v15, Lcom/lahm/library/CheckResult;->result:I

    move-object/from16 v16, v13

    const-string v13, "baseBand = "

    if-eqz v5, :cond_e

    move-object/from16 v17, v4

    const/4 v4, 0x1

    if-eq v5, v4, :cond_c

    goto :goto_4

    :cond_c
    if-eqz v0, :cond_d

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/lahm/library/CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lahm/library/EmulatorCheckCallback;->findEmulator(Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x1

    return v0

    :cond_e
    move-object/from16 v17, v4

    add-int/lit8 v2, v2, 0x1

    .line 117
    :goto_4
    invoke-direct/range {p0 .. p1}, Lcom/lahm/library/EmulatorCheckUtil;->getSensorNumber(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x7

    if-gt v4, v5, :cond_f

    add-int/lit8 v2, v2, 0x1

    .line 121
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/lahm/library/EmulatorCheckUtil;->getUserAppNumber()I

    move-result v5

    move/from16 v18, v4

    const/4 v4, 0x5

    if-gt v5, v4, :cond_10

    add-int/lit8 v2, v2, 0x1

    .line 125
    :cond_10
    invoke-direct/range {p0 .. p1}, Lcom/lahm/library/EmulatorCheckUtil;->supportCameraFlash(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_11

    add-int/lit8 v2, v2, 0x1

    :cond_11
    move/from16 v19, v4

    .line 128
    invoke-direct/range {p0 .. p1}, Lcom/lahm/library/EmulatorCheckUtil;->supportCamera(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_12

    add-int/lit8 v2, v2, 0x1

    :cond_12
    move/from16 v20, v4

    .line 131
    invoke-direct/range {p0 .. p1}, Lcom/lahm/library/EmulatorCheckUtil;->supportBluetooth(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_13

    add-int/lit8 v2, v2, 0x1

    :cond_13
    move/from16 v21, v4

    .line 135
    invoke-direct/range {p0 .. p1}, Lcom/lahm/library/EmulatorCheckUtil;->hasLightSensor(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_14

    add-int/lit8 v2, v2, 0x1

    :cond_14
    move/from16 p1, v4

    .line 139
    invoke-direct/range {p0 .. p0}, Lcom/lahm/library/EmulatorCheckUtil;->checkFeaturesByCgroup()Lcom/lahm/library/CheckResult;

    move-result-object v4

    move/from16 v22, v5

    .line 140
    iget v5, v4, Lcom/lahm/library/CheckResult;->result:I

    if-nez v5, :cond_15

    add-int/lit8 v2, v2, 0x1

    :cond_15
    if-eqz v0, :cond_16

    .line 143
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v0, "Test start"

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, "\r\n"

    .line 144
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v1, Lcom/lahm/library/CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v6, Lcom/lahm/library/CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v7, Lcom/lahm/library/CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v9, Lcom/lahm/library/CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v11, Lcom/lahm/library/CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v1, v17

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v1, v16

    iget-object v1, v1, Lcom/lahm/library/CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v15, Lcom/lahm/library/CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "sensorNumber = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move/from16 v1, v18

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 152
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "userAppNumber = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move/from16 v1, v22

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "supportCamera = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move/from16 v1, v20

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 154
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "supportCameraFlash = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move/from16 v1, v19

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 155
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "supportBluetooth = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move/from16 v1, v21

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 156
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "hasLightSensor = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move/from16 v1, p1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 157
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "cgroupResult = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v4, Lcom/lahm/library/CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "suspectCount = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 159
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Lcom/lahm/library/EmulatorCheckCallback;->findEmulator(Ljava/lang/String;)V

    :cond_16
    const/4 v0, 0x3

    if-le v2, v0, :cond_17

    const/4 v4, 0x1

    goto :goto_5

    :cond_17
    const/4 v4, 0x0

    :goto_5
    return v4

    :cond_18
    move-object v1, v0

    if-eqz v1, :cond_19

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/lahm/library/CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/lahm/library/EmulatorCheckCallback;->findEmulator(Ljava/lang/String;)V

    :cond_19
    const/4 v0, 0x1

    return v0

    :cond_1a
    move-object v1, v0

    const/4 v0, 0x1

    if-eqz v1, :cond_1b

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/lahm/library/CheckResult;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lahm/library/EmulatorCheckCallback;->findEmulator(Ljava/lang/String;)V

    :cond_1b
    return v0

    .line 34
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
