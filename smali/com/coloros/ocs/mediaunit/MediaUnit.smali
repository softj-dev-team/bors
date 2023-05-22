.class public Lcom/coloros/ocs/mediaunit/MediaUnit;
.super Ljava/lang/Object;
.source "MediaUnit.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMediaClient(Landroid/content/Context;)Lcom/coloros/ocs/mediaunit/MediaUnitClient;
    .locals 0

    .line 8
    invoke-static {p0}, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->initialize(Landroid/content/Context;)Lcom/coloros/ocs/mediaunit/MediaUnitClient;

    move-result-object p0

    return-object p0
.end method
