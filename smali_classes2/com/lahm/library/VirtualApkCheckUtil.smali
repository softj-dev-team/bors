.class public Lcom/lahm/library/VirtualApkCheckUtil;
.super Ljava/lang/Object;
.source "VirtualApkCheckUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lahm/library/VirtualApkCheckUtil$ClientThread;,
        Lcom/lahm/library/VirtualApkCheckUtil$ReadThread;,
        Lcom/lahm/library/VirtualApkCheckUtil$ServerThread;
    }
.end annotation


# static fields
.field private static volatile singleInstance:Lcom/lahm/library/VirtualApkCheckUtil;


# instance fields
.field private TAG:Ljava/lang/String;

.field private volatile localServerSocket:Landroid/net/LocalServerSocket;

.field private virtualPkgs:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 7

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "test"

    .line 38
    iput-object v0, p0, Lcom/lahm/library/VirtualApkCheckUtil;->TAG:Ljava/lang/String;

    const-string v1, "com.bly.dkplat"

    const-string v2, "com.by.chaos"

    const-string v3, "com.lbe.parallel"

    const-string v4, "com.excelliance.dualaid"

    const-string v5, "com.lody.virtual"

    const-string v6, "com.qihoo.magic"

    .line 58
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lahm/library/VirtualApkCheckUtil;->virtualPkgs:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/lahm/library/VirtualApkCheckUtil;Ljava/lang/String;Lcom/lahm/library/VirtualCheckCallback;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/lahm/library/VirtualApkCheckUtil;->startServer(Ljava/lang/String;Lcom/lahm/library/VirtualCheckCallback;)V

    return-void
.end method

.method static synthetic access$400(Lcom/lahm/library/VirtualApkCheckUtil;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/lahm/library/VirtualApkCheckUtil;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static getSingleInstance()Lcom/lahm/library/VirtualApkCheckUtil;
    .locals 2

    .line 45
    sget-object v0, Lcom/lahm/library/VirtualApkCheckUtil;->singleInstance:Lcom/lahm/library/VirtualApkCheckUtil;

    if-nez v0, :cond_1

    .line 46
    const-class v0, Lcom/lahm/library/VirtualApkCheckUtil;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/lahm/library/VirtualApkCheckUtil;->singleInstance:Lcom/lahm/library/VirtualApkCheckUtil;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/lahm/library/VirtualApkCheckUtil;

    invoke-direct {v1}, Lcom/lahm/library/VirtualApkCheckUtil;-><init>()V

    sput-object v1, Lcom/lahm/library/VirtualApkCheckUtil;->singleInstance:Lcom/lahm/library/VirtualApkCheckUtil;

    .line 50
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 52
    :cond_1
    :goto_0
    sget-object v0, Lcom/lahm/library/VirtualApkCheckUtil;->singleInstance:Lcom/lahm/library/VirtualApkCheckUtil;

    return-object v0
.end method

.method private getUidStrFormat()Ljava/lang/String;
    .locals 5

    .line 183
    invoke-static {}, Lcom/lahm/library/CommandUtil;->getSingleInstance()Lcom/lahm/library/CommandUtil;

    move-result-object v0

    const-string v1, "cat /proc/self/cgroup"

    invoke-virtual {v0, v1}, Lcom/lahm/library/CommandUtil;->exec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 184
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "uid"

    .line 188
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "/pid"

    .line 189
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v2, :cond_1

    return-object v1

    :cond_1
    if-gtz v3, :cond_2

    .line 194
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    :cond_2
    add-int/lit8 v2, v2, 0x4

    .line 197
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v2, "\n"

    const-string v3, ""

    .line 199
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-direct {p0, v0}, Lcom/lahm/library/VirtualApkCheckUtil;->isNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 201
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "u0_a%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit16 v0, v0, -0x2710

    .line 202
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_3
    return-object v1

    :catch_0
    move-exception v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-object v1
.end method

.method private isNumber(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 216
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 217
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method private startClient(Ljava/lang/String;)V
    .locals 7

    .line 302
    invoke-static {}, Lcom/lahm/library/CommandUtil;->getSingleInstance()Lcom/lahm/library/CommandUtil;

    move-result-object v0

    const-string v1, "cat /proc/net/tcp6"

    invoke-virtual {v0, v1}, Lcom/lahm/library/CommandUtil;->exec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "\n"

    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 305
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 306
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 307
    aget-object v4, v0, v2

    const-string v5, "0100007F:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1

    goto :goto_1

    .line 309
    :cond_1
    aget-object v5, v0, v2

    add-int/lit8 v6, v4, 0x9

    add-int/lit8 v4, v4, 0xd

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    .line 310
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 311
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 313
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 314
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 315
    new-instance v2, Lcom/lahm/library/VirtualApkCheckUtil$ClientThread;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v1, v3}, Lcom/lahm/library/VirtualApkCheckUtil$ClientThread;-><init>(Lcom/lahm/library/VirtualApkCheckUtil;Ljava/lang/String;ILcom/lahm/library/VirtualApkCheckUtil$1;)V

    invoke-virtual {v2}, Lcom/lahm/library/VirtualApkCheckUtil$ClientThread;->start()V

    goto :goto_2

    :cond_4
    return-void
.end method

.method private startServer(Ljava/lang/String;Lcom/lahm/library/VirtualCheckCallback;)V
    .locals 10

    .line 260
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 263
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1}, Ljava/net/ServerSocket;-><init>()V

    .line 264
    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v3, "127.0.0.1"

    const v4, 0xd8ee

    .line 265
    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    invoke-direct {v2, v3, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 264
    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 267
    :goto_0
    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v7

    .line 268
    new-instance v0, Lcom/lahm/library/VirtualApkCheckUtil$ReadThread;

    const/4 v9, 0x0

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/lahm/library/VirtualApkCheckUtil$ReadThread;-><init>(Lcom/lahm/library/VirtualApkCheckUtil;Ljava/lang/String;Ljava/net/Socket;Lcom/lahm/library/VirtualCheckCallback;Lcom/lahm/library/VirtualApkCheckUtil$1;)V

    .line 269
    invoke-virtual {v0}, Lcom/lahm/library/VirtualApkCheckUtil$ReadThread;->start()V
    :try_end_0
    .catch Ljava/net/BindException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 275
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 273
    :catch_1
    invoke-direct {p0, p1, p2}, Lcom/lahm/library/VirtualApkCheckUtil;->startServer(Ljava/lang/String;Lcom/lahm/library/VirtualCheckCallback;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public checkByCreateLocalServerSocket(Ljava/lang/String;Lcom/lahm/library/VirtualCheckCallback;)Z
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/lahm/library/VirtualApkCheckUtil;->localServerSocket:Landroid/net/LocalServerSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 378
    :cond_0
    :try_start_0
    new-instance v0, Landroid/net/LocalServerSocket;

    invoke-direct {v0, p1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lahm/library/VirtualApkCheckUtil;->localServerSocket:Landroid/net/LocalServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    nop

    if-eqz p2, :cond_1

    .line 381
    invoke-interface {p2}, Lcom/lahm/library/VirtualCheckCallback;->findSuspect()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public checkByHasSameUid(Lcom/lahm/library/VirtualCheckCallback;)Z
    .locals 9

    .line 156
    invoke-direct {p0}, Lcom/lahm/library/VirtualApkCheckUtil;->getUidStrFormat()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 159
    :cond_0
    invoke-static {}, Lcom/lahm/library/CommandUtil;->getSingleInstance()Lcom/lahm/library/CommandUtil;

    move-result-object v1

    const-string v3, "ps"

    invoke-virtual {v1, v3}, Lcom/lahm/library/CommandUtil;->exec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    const-string v3, "\n"

    .line 162
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 163
    array-length v3, v1

    if-gtz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 167
    :goto_0
    array-length v5, v1

    const/4 v6, 0x1

    if-ge v3, v5, :cond_5

    .line 168
    aget-object v5, v1, v3

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 169
    aget-object v5, v1, v3

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 170
    aget-object v7, v1, v3

    if-gtz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    :goto_1
    aget-object v8, v1, v3

    .line 171
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    .line 170
    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 172
    new-instance v7, Ljava/io/File;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v2

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    aput-object v5, v8, v6

    const-string v5, "/data/data/%s"

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v4, v4, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-le v4, v6, :cond_6

    if-eqz p1, :cond_6

    .line 178
    invoke-interface {p1}, Lcom/lahm/library/VirtualCheckCallback;->findSuspect()V

    :cond_6
    if-le v4, v6, :cond_7

    const/4 v2, 0x1

    :cond_7
    :goto_2
    return v2
.end method

.method public checkByMultiApkPackageName(Lcom/lahm/library/VirtualCheckCallback;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 124
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/self/maps"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 127
    iget-object v3, p0, Lcom/lahm/library/VirtualApkCheckUtil;->virtualPkgs:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 128
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz p1, :cond_1

    .line 129
    invoke-interface {p1}, Lcom/lahm/library/VirtualCheckCallback;->findSuspect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 144
    :catch_2
    :cond_4
    throw p1

    :catch_3
    nop

    :goto_2
    if-eqz v1, :cond_5

    .line 139
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_5
    :goto_3
    return v0
.end method

.method public checkByOriginApkPackageName(Landroid/content/Context;Lcom/lahm/library/VirtualCheckCallback;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 99
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 101
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p1

    .line 102
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 103
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-le v2, p1, :cond_2

    if-eqz p2, :cond_2

    .line 107
    invoke-interface {p2}, Lcom/lahm/library/VirtualCheckCallback;->findSuspect()V

    :cond_2
    if-le v2, p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    .line 97
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "you have to set context first"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method public checkByPortListening(Ljava/lang/String;Lcom/lahm/library/VirtualCheckCallback;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 236
    invoke-direct {p0, p1}, Lcom/lahm/library/VirtualApkCheckUtil;->startClient(Ljava/lang/String;)V

    .line 237
    new-instance v0, Lcom/lahm/library/VirtualApkCheckUtil$ServerThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/lahm/library/VirtualApkCheckUtil$ServerThread;-><init>(Lcom/lahm/library/VirtualApkCheckUtil;Ljava/lang/String;Lcom/lahm/library/VirtualCheckCallback;Lcom/lahm/library/VirtualApkCheckUtil$1;)V

    invoke-virtual {v0}, Lcom/lahm/library/VirtualApkCheckUtil$ServerThread;->start()V

    return-void
.end method

.method public checkByPrivateFilePath(Landroid/content/Context;Lcom/lahm/library/VirtualCheckCallback;)Z
    .locals 5

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 77
    iget-object v0, p0, Lcom/lahm/library/VirtualApkCheckUtil;->virtualPkgs:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 78
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p2, :cond_0

    .line 79
    invoke-interface {p2}, Lcom/lahm/library/VirtualCheckCallback;->findSuspect()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public checkByTopActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "activity"

    .line 402
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    .line 403
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 404
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public checkByTopTask(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "activity"

    .line 396
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    .line 397
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 398
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
