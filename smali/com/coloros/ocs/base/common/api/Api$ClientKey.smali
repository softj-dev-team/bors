.class public Lcom/coloros/ocs/base/common/api/Api$ClientKey;
.super Lcom/coloros/ocs/base/common/api/Api$AnyClientKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/ocs/base/common/api/Api;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/coloros/ocs/base/common/api/Api$Client;",
        ">",
        "Lcom/coloros/ocs/base/common/api/Api$AnyClientKey<",
        "TC;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/coloros/ocs/base/common/api/Api$AnyClientKey;-><init>()V

    return-void
.end method
