.class public Lio/agora/rtc/audio/OppoHardwareEarback;
.super Ljava/lang/Object;
.source "OppoHardwareEarback.java"

# interfaces
.implements Lio/agora/rtc/audio/IHardwareEarback;


# static fields
.field private static TAG:Ljava/lang/String; = "AG-OPPO"


# instance fields
.field private isConnected:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->isConnected:Z

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->mContext:Landroid/content/Context;

    .line 19
    iput-object p1, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {p0}, Lio/agora/rtc/audio/OppoHardwareEarback;->initialize()V

    return-void
.end method

.method static synthetic access$002(Lio/agora/rtc/audio/OppoHardwareEarback;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->isConnected:Z

    return p1
.end method

.method static synthetic access$100(Lio/agora/rtc/audio/OppoHardwareEarback;)Landroid/content/Context;
    .locals 0

    .line 11
    iget-object p0, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 89
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 90
    invoke-static {v0}, Lcom/coloros/ocs/mediaunit/MediaUnit;->getMediaClient(Landroid/content/Context;)Lcom/coloros/ocs/mediaunit/MediaUnitClient;

    invoke-static {}, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableEarbackFeature(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 51
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 52
    iget-boolean v1, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->isConnected:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 54
    invoke-static {v0}, Lcom/coloros/ocs/mediaunit/MediaUnit;->getMediaClient(Landroid/content/Context;)Lcom/coloros/ocs/mediaunit/MediaUnitClient;

    move-result-object p1

    new-instance v0, Lio/agora/rtc/audio/OppoHardwareEarback$2;

    invoke-direct {v0, p0}, Lio/agora/rtc/audio/OppoHardwareEarback$2;-><init>(Lio/agora/rtc/audio/OppoHardwareEarback;)V

    invoke-virtual {p1, v0}, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->addOnConnectionSucceedListener(Lcom/coloros/ocs/base/common/api/OnConnectionSucceedListener;)Lcom/coloros/ocs/base/common/api/ColorApi;

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {v0}, Lcom/coloros/ocs/mediaunit/MediaUnit;->getMediaClient(Landroid/content/Context;)Lcom/coloros/ocs/mediaunit/MediaUnitClient;

    move-result-object p1

    new-instance v0, Lio/agora/rtc/audio/OppoHardwareEarback$3;

    invoke-direct {v0, p0}, Lio/agora/rtc/audio/OppoHardwareEarback$3;-><init>(Lio/agora/rtc/audio/OppoHardwareEarback;)V

    invoke-virtual {p1, v0}, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->addOnConnectionSucceedListener(Lcom/coloros/ocs/base/common/api/OnConnectionSucceedListener;)Lcom/coloros/ocs/base/common/api/ColorApi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;)V

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public initialize()V
    .locals 2

    .line 25
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 26
    invoke-static {v0}, Lcom/coloros/ocs/mediaunit/MediaUnit;->getMediaClient(Landroid/content/Context;)Lcom/coloros/ocs/mediaunit/MediaUnitClient;

    move-result-object v0

    new-instance v1, Lio/agora/rtc/audio/OppoHardwareEarback$1;

    invoke-direct {v1, p0}, Lio/agora/rtc/audio/OppoHardwareEarback$1;-><init>(Lio/agora/rtc/audio/OppoHardwareEarback;)V

    invoke-virtual {v0, v1}, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->addOnConnectionSucceedListener(Lcom/coloros/ocs/base/common/api/OnConnectionSucceedListener;)Lcom/coloros/ocs/base/common/api/ColorApi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public isHardwareEarbackSupported()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lio/agora/rtc/audio/OppoHardwareEarback;->isConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setHardwareEarbackVolume(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vol"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
