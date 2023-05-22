.class public Lcom/coloros/ocs/mediaunit/MediaClientBuilder;
.super Lcom/coloros/ocs/base/common/api/Api$AbstractClientBuilder;
.source "MediaClientBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/coloros/ocs/base/common/api/Api$AbstractClientBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/coloros/ocs/base/internal/ClientSettings;Ljava/lang/Object;)Lcom/coloros/ocs/base/common/api/Api$Client;
    .locals 0

    .line 13
    new-instance p3, Lcom/coloros/ocs/mediaunit/MediaClient;

    invoke-direct {p3, p1, p2}, Lcom/coloros/ocs/mediaunit/MediaClient;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-object p3
.end method
