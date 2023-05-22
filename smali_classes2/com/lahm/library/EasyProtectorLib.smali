.class public Lcom/lahm/library/EasyProtectorLib;
.super Ljava/lang/Object;
.source "EasyProtectorLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lahm/library/EasyProtectorLib$tcp;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkHasLoadSO(Ljava/lang/String;)Z
    .locals 1

    .line 55
    invoke-static {}, Lcom/lahm/library/SecurityCheckUtil;->getSingleInstance()Lcom/lahm/library/SecurityCheckUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lahm/library/SecurityCheckUtil;->hasReadProcMaps(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static checkIsBeingTracedByC()V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-static {v0}, Lcom/lahm/library/NDKUtil;->loadLibrariesOnce(Lcom/lahm/library/LibLoader;)V

    return-void
.end method

.method public static checkIsBeingTracedByJava()Z
    .locals 1

    .line 59
    invoke-static {}, Lcom/lahm/library/SecurityCheckUtil;->getSingleInstance()Lcom/lahm/library/SecurityCheckUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lahm/library/SecurityCheckUtil;->readProcStatus()Z

    move-result v0

    return v0
.end method

.method public static checkIsDebug(Landroid/content/Context;)Z
    .locals 1

    .line 29
    invoke-static {}, Lcom/lahm/library/SecurityCheckUtil;->getSingleInstance()Lcom/lahm/library/SecurityCheckUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lahm/library/SecurityCheckUtil;->checkIsDebugVersion(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 30
    invoke-static {}, Lcom/lahm/library/SecurityCheckUtil;->getSingleInstance()Lcom/lahm/library/SecurityCheckUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lahm/library/SecurityCheckUtil;->checkIsDebuggerConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static checkIsPortUsing(Ljava/lang/String;I)Z
    .locals 1

    .line 35
    :try_start_0
    invoke-static {}, Lcom/lahm/library/SecurityCheckUtil;->getSingleInstance()Lcom/lahm/library/SecurityCheckUtil;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lahm/library/SecurityCheckUtil;->isPortUsing(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/net/UnknownHostException;->printStackTrace()V

    const/4 p0, 0x1

    return p0
.end method

.method public static checkIsRoot()Z
    .locals 1

    .line 43
    invoke-static {}, Lcom/lahm/library/SecurityCheckUtil;->getSingleInstance()Lcom/lahm/library/SecurityCheckUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lahm/library/SecurityCheckUtil;->isRoot()Z

    move-result v0

    return v0
.end method

.method public static checkIsRunningInEmulator(Landroid/content/Context;Lcom/lahm/library/EmulatorCheckCallback;)Z
    .locals 1

    .line 68
    invoke-static {}, Lcom/lahm/library/EmulatorCheckUtil;->getSingleInstance()Lcom/lahm/library/EmulatorCheckUtil;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lahm/library/EmulatorCheckUtil;->readSysProperty(Landroid/content/Context;Lcom/lahm/library/EmulatorCheckCallback;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/lahm/library/EasyProtectorLib;->hasAdbInEmulator()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/lahm/library/EasyProtectorLib;->isEmulatorFromCpu()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/lahm/library/EasyProtectorLib;->checkIsRoot()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static checkIsRunningInVirtualApk(Ljava/lang/String;Lcom/lahm/library/VirtualCheckCallback;)Z
    .locals 1

    .line 73
    invoke-static {}, Lcom/lahm/library/VirtualApkCheckUtil;->getSingleInstance()Lcom/lahm/library/VirtualApkCheckUtil;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lahm/library/VirtualApkCheckUtil;->checkByCreateLocalServerSocket(Ljava/lang/String;Lcom/lahm/library/VirtualCheckCallback;)Z

    move-result p0

    return p0
.end method

.method public static checkIsXposedExist()Z
    .locals 1

    .line 47
    invoke-static {}, Lcom/lahm/library/SecurityCheckUtil;->getSingleInstance()Lcom/lahm/library/SecurityCheckUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lahm/library/SecurityCheckUtil;->isXposedExistByThrow()Z

    move-result v0

    return v0
.end method

.method public static checkSignature(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 25
    invoke-static {}, Lcom/lahm/library/SecurityCheckUtil;->getSingleInstance()Lcom/lahm/library/SecurityCheckUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lahm/library/SecurityCheckUtil;->getSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkXposedExistAndDisableIt()Z
    .locals 1

    .line 51
    invoke-static {}, Lcom/lahm/library/SecurityCheckUtil;->getSingleInstance()Lcom/lahm/library/SecurityCheckUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lahm/library/SecurityCheckUtil;->tryShutdownXposed()Z

    move-result v0

    return v0
.end method

.method public static hasAdbInEmulator()Z
    .locals 10

    const/4 v0, 0x0

    .line 102
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/proc/net/tcp"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x3e8

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 105
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 109
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "\\W+"

    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lahm/library/EasyProtectorLib$tcp;->create([Ljava/lang/String;)Lcom/lahm/library/EasyProtectorLib$tcp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 118
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, -0x1

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lahm/library/EasyProtectorLib$tcp;

    .line 119
    iget-wide v7, v3, Lcom/lahm/library/EasyProtectorLib$tcp;->localIp:J

    cmp-long v9, v7, v4

    if-nez v9, :cond_1

    .line 120
    iget v1, v3, Lcom/lahm/library/EasyProtectorLib$tcp;->localPort:I

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    if-eq v1, v6, :cond_4

    .line 126
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lahm/library/EasyProtectorLib$tcp;

    .line 127
    iget-wide v6, v3, Lcom/lahm/library/EasyProtectorLib$tcp;->localIp:J

    cmp-long v8, v6, v4

    if-eqz v8, :cond_3

    iget v3, v3, Lcom/lahm/library/EasyProtectorLib$tcp;->localPort:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 133
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return v0
.end method

.method public static isEmulatorFromCpu()Z
    .locals 4

    const-string v0, "cat /proc/cpuinfo"

    const/4 v1, 0x0

    .line 140
    invoke-static {v0, v1}, Lcom/lahm/library/ShellAdbUtils;->execCommand(Ljava/lang/String;Z)Lcom/lahm/library/ShellAdbUtils$CommandResult;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, v0, Lcom/lahm/library/ShellAdbUtils$CommandResult;->successMsg:Ljava/lang/String;

    .line 142
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "intel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "amd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0000000000000000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method
