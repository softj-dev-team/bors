.class public abstract Lcom/coloros/ocs/base/common/api/Api$AbstractClientBuilder;
.super Lcom/coloros/ocs/base/common/api/Api$BaseClientBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/ocs/base/common/api/Api;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractClientBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/coloros/ocs/base/common/api/Api$Client;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/coloros/ocs/base/common/api/Api$BaseClientBuilder<",
        "TT;TO;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/coloros/ocs/base/common/api/Api$BaseClientBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/coloros/ocs/base/internal/ClientSettings;Ljava/lang/Object;)Lcom/coloros/ocs/base/common/api/Api$Client;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/coloros/ocs/base/internal/ClientSettings;",
            "TO;)TT;"
        }
    .end annotation
.end method
