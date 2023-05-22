.class public Lcom/coloros/ocs/mediaunit/MediaClient;
.super Lcom/coloros/ocs/base/common/api/BaseClient;
.source "MediaClient.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/coloros/ocs/base/common/api/BaseClient;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public getClientName()Ljava/lang/String;
    .locals 1

    const-string v0, "MEDIA_CLIENT"

    return-object v0
.end method

.method public requiresColorService()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
