.class final Lcom/coloros/ocs/base/common/api/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/ocs/base/common/api/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/ocs/base/common/api/c;->a(Lcom/coloros/ocs/base/common/api/ColorApi;Lcom/coloros/ocs/base/internal/ClientSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/ocs/base/common/api/ColorApi;

.field final synthetic b:Lcom/coloros/ocs/base/common/api/ColorApiClient;

.field final synthetic c:Lcom/coloros/ocs/base/common/api/c;


# direct methods
.method constructor <init>(Lcom/coloros/ocs/base/common/api/c;Lcom/coloros/ocs/base/common/api/ColorApi;Lcom/coloros/ocs/base/common/api/ColorApiClient;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/c$1;->c:Lcom/coloros/ocs/base/common/api/c;

    iput-object p2, p0, Lcom/coloros/ocs/base/common/api/c$1;->a:Lcom/coloros/ocs/base/common/api/ColorApi;

    iput-object p3, p0, Lcom/coloros/ocs/base/common/api/c$1;->b:Lcom/coloros/ocs/base/common/api/ColorApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/c$1;->a:Lcom/coloros/ocs/base/common/api/ColorApi;

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/api/ColorApi;->getApi()Lcom/coloros/ocs/base/common/api/Api;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/ocs/base/common/api/c;->a(Lcom/coloros/ocs/base/common/api/Api$ClientKey;)V

    .line 95
    invoke-static {}, Lcom/coloros/ocs/base/common/api/c;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/ocs/base/common/api/c$1;->a:Lcom/coloros/ocs/base/common/api/ColorApi;

    invoke-virtual {v1}, Lcom/coloros/ocs/base/common/api/ColorApi;->getApi()Lcom/coloros/ocs/base/common/api/Api;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/ocs/base/common/api/Api;->getClientKey()Lcom/coloros/ocs/base/common/api/Api$ClientKey;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/ocs/base/common/api/c$1;->b:Lcom/coloros/ocs/base/common/api/ColorApiClient;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
