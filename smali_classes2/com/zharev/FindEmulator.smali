.class public Lcom/zharev/FindEmulator;
.super Ljava/lang/Object;
.source "FindEmulator.java"


# static fields
.field private static MIN_PROPERTIES_THRESHOLD:I

.field private static known_device_ids:[Ljava/lang/String;

.field private static known_files:[Ljava/lang/String;

.field private static known_geny_files:[Ljava/lang/String;

.field private static known_imsi_ids:[Ljava/lang/String;

.field private static known_numbers:[Ljava/lang/String;

.field private static known_pipes:[Ljava/lang/String;

.field private static known_props:[Lcom/zharev/common/Property;

.field private static known_qemu_drivers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "15555215554"

    const-string v1, "15555215556"

    const-string v2, "15555215558"

    const-string v3, "15555215560"

    const-string v4, "15555215562"

    const-string v5, "15555215564"

    const-string v6, "15555215566"

    const-string v7, "15555215568"

    const-string v8, "15555215570"

    const-string v9, "15555215572"

    const-string v10, "15555215574"

    const-string v11, "15555215576"

    const-string v12, "15555215578"

    const-string v13, "15555215580"

    const-string v14, "15555215582"

    const-string v15, "15555215584"

    .line 28
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zharev/FindEmulator;->known_numbers:[Ljava/lang/String;

    const-string v0, "000000000000000"

    const-string v1, "e21833235b6eef10"

    const-string v2, "012345678912345"

    .line 33
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zharev/FindEmulator;->known_device_ids:[Ljava/lang/String;

    const-string v0, "310260000000000"

    .line 36
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zharev/FindEmulator;->known_imsi_ids:[Ljava/lang/String;

    const-string v0, "/dev/socket/qemud"

    const-string v1, "/dev/qemu_pipe"

    .line 38
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zharev/FindEmulator;->known_pipes:[Ljava/lang/String;

    const-string v0, "/system/lib/libc_malloc_debug_qemu.so"

    const-string v1, "/sys/qemu_trace"

    const-string v2, "/system/bin/qemu-props"

    .line 39
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zharev/FindEmulator;->known_files:[Ljava/lang/String;

    const-string v0, "/dev/socket/genyd"

    const-string v1, "/dev/socket/baseband_genyd"

    .line 41
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zharev/FindEmulator;->known_geny_files:[Ljava/lang/String;

    const-string v0, "goldfish"

    .line 42
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zharev/FindEmulator;->known_qemu_drivers:[Ljava/lang/String;

    const/16 v1, 0xf

    new-array v1, v1, [Lcom/zharev/common/Property;

    .line 47
    new-instance v2, Lcom/zharev/common/Property;

    const-string v3, "init.svc.qemud"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/zharev/common/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/zharev/common/Property;

    const-string v3, "init.svc.qemu-props"

    invoke-direct {v2, v3, v4}, Lcom/zharev/common/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/zharev/common/Property;

    const-string v3, "qemu.hw.mainkeys"

    invoke-direct {v2, v3, v4}, Lcom/zharev/common/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lcom/zharev/common/Property;

    const-string v3, "qemu.sf.fake_camera"

    invoke-direct {v2, v3, v4}, Lcom/zharev/common/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lcom/zharev/common/Property;

    const-string v3, "qemu.sf.lcd_density"

    invoke-direct {v2, v3, v4}, Lcom/zharev/common/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lcom/zharev/common/Property;

    const-string v3, "ro.bootloader"

    const-string v5, "unknown"

    invoke-direct {v2, v3, v5}, Lcom/zharev/common/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lcom/zharev/common/Property;

    const-string v6, "ro.bootmode"

    invoke-direct {v2, v6, v5}, Lcom/zharev/common/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x6

    aput-object v2, v1, v5

    new-instance v2, Lcom/zharev/common/Property;

    const-string v5, "ro.hardware"

    invoke-direct {v2, v5, v0}, Lcom/zharev/common/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x7

    aput-object v2, v1, v0

    new-instance v0, Lcom/zharev/common/Property;

    const-string v2, "ro.kernel.android.qemud"

    invoke-direct {v0, v2, v4}, Lcom/zharev/common/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v0, v1, v2

    new-instance v0, Lcom/zharev/common/Property;

    const-string v2, "ro.kernel.qemu.gles"

    invoke-direct {v0, v2, v4}, Lcom/zharev/common/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x9

    aput-object v0, v1, v2

    new-instance v0, Lcom/zharev/common/Property;

    const-string v2, "ro.kernel.qemu"

    const-string v5, "1"

    invoke-direct {v0, v2, v5}, Lcom/zharev/common/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa

    aput-object v0, v1, v2

    new-instance v0, Lcom/zharev/common/Property;

    const-string v2, "ro.product.device"

    const-string v5, "generic"

    invoke-direct {v0, v2, v5}, Lcom/zharev/common/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb

    aput-object v0, v1, v2

    new-instance v0, Lcom/zharev/common/Property;

    const-string v2, "ro.product.model"

    const-string v5, "sdk"

    invoke-direct {v0, v2, v5}, Lcom/zharev/common/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc

    aput-object v0, v1, v2

    new-instance v0, Lcom/zharev/common/Property;

    const-string v2, "ro.product.name"

    invoke-direct {v0, v2, v5}, Lcom/zharev/common/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xd

    aput-object v0, v1, v2

    new-instance v0, Lcom/zharev/common/Property;

    const-string v2, "ro.serialno"

    invoke-direct {v0, v2, v4}, Lcom/zharev/common/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xe

    aput-object v0, v1, v2

    sput-object v1, Lcom/zharev/FindEmulator;->known_props:[Lcom/zharev/common/Property;

    .line 61
    sput v3, Lcom/zharev/FindEmulator;->MIN_PROPERTIES_THRESHOLD:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkQemuBreakpoint()Z
    .locals 1

    .line 227
    invoke-static {}, Lcom/zharev/FindEmulator;->qemuBkpt()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasEmulatorAdb()Z
    .locals 1

    .line 238
    :try_start_0
    invoke-static {}, Lcom/zharev/FindDebugger;->hasAdbInEmulator()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public static hasEmulatorBuild(Landroid/content/Context;)Z
    .locals 6

    .line 196
    sget-object p0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 199
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 201
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 202
    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 204
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 205
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v5, "unknown"

    .line 206
    invoke-virtual {p0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "generic"

    .line 207
    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "sdk"

    .line 208
    invoke-virtual {v3, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "goldfish"

    .line 209
    invoke-virtual {v2, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static hasGenyFiles()Z
    .locals 6

    .line 102
    sget-object v0, Lcom/zharev/FindEmulator;->known_geny_files:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 103
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static hasKnownDeviceId(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "phone"

    .line 161
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    .line 164
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    .line 165
    sget-object v1, Lcom/zharev/FindEmulator;->known_device_ids:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 166
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to request getDeviceId, failing open :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zharev/FindEmulator;->log(Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public static hasKnownImsi(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "phone"

    .line 178
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    .line 181
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    .line 183
    sget-object v1, Lcom/zharev/FindEmulator;->known_imsi_ids:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 184
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to request getSubscriberId, failing open :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zharev/FindEmulator;->log(Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public static hasKnownPhoneNumber(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "phone"

    .line 143
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    .line 146
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p0

    .line 147
    sget-object v1, Lcom/zharev/FindEmulator;->known_numbers:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 148
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to request getLine1Number, failing open :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zharev/FindEmulator;->log(Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public static hasPipes()Z
    .locals 6

    .line 70
    sget-object v0, Lcom/zharev/FindEmulator;->known_pipes:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 71
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static hasQEmuDrivers()Z
    .locals 11

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/io/File;

    .line 118
    new-instance v2, Ljava/io/File;

    const-string v3, "/proc/tty/drivers"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/io/File;

    const-string v4, "/proc/cpuinfo"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v5, v1, v2

    .line 119
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x400

    new-array v6, v6, [B

    .line 123
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 124
    invoke-virtual {v7, v6}, Ljava/io/InputStream;->read([B)I

    .line 125
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 127
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    :goto_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 131
    sget-object v6, Lcom/zharev/FindEmulator;->known_qemu_drivers:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 132
    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    return v4

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static hasQEmuFiles()Z
    .locals 6

    .line 86
    sget-object v0, Lcom/zharev/FindEmulator;->known_files:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 87
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static isOperatorNameAndroid(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "phone"

    .line 216
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android"

    .line 217
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "AntiEmu:FindEmulator"

    .line 277
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static native qemuBkpt()I
.end method


# virtual methods
.method public hasQEmuProps(Landroid/content/Context;)Z
    .locals 8

    .line 255
    sget-object v0, Lcom/zharev/FindEmulator;->known_props:[Lcom/zharev/common/Property;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 256
    iget-object v6, v5, Lcom/zharev/common/Property;->name:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/zharev/common/Utilities;->getProp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 258
    iget-object v7, v5, Lcom/zharev/common/Property;->seek_value:Ljava/lang/String;

    if-nez v7, :cond_0

    if-eqz v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 262
    :cond_0
    iget-object v7, v5, Lcom/zharev/common/Property;->seek_value:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v5, v5, Lcom/zharev/common/Property;->seek_value:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 268
    :cond_2
    sget p1, Lcom/zharev/FindEmulator;->MIN_PROPERTIES_THRESHOLD:I

    if-lt v4, p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v2
.end method
