.class final Lcom/coloros/ocs/base/common/api/c$2;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/ocs/base/common/api/c;->a(Lcom/coloros/ocs/base/common/api/ColorApi;Lcom/coloros/ocs/base/common/api/OnConnectionSucceedListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/ocs/base/common/api/OnConnectionSucceedListener;

.field final synthetic b:Lcom/coloros/ocs/base/common/api/c;


# direct methods
.method constructor <init>(Lcom/coloros/ocs/base/common/api/c;Landroid/os/Looper;Lcom/coloros/ocs/base/common/api/OnConnectionSucceedListener;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/c$2;->b:Lcom/coloros/ocs/base/common/api/c;

    iput-object p3, p0, Lcom/coloros/ocs/base/common/api/c$2;->a:Lcom/coloros/ocs/base/common/api/OnConnectionSucceedListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 116
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 117
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/c$2;->a:Lcom/coloros/ocs/base/common/api/OnConnectionSucceedListener;

    invoke-interface {p1}, Lcom/coloros/ocs/base/common/api/OnConnectionSucceedListener;->onConnectionSucceed()V

    return-void
.end method
