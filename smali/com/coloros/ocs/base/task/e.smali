.class final Lcom/coloros/ocs/base/task/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/coloros/ocs/base/task/d;


# direct methods
.method public constructor <init>(Lcom/coloros/ocs/base/task/d;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/coloros/ocs/base/task/e;->a:Lcom/coloros/ocs/base/task/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/coloros/ocs/base/task/e;->a:Lcom/coloros/ocs/base/task/d;

    invoke-virtual {v0}, Lcom/coloros/ocs/base/task/d;->a()Lcom/coloros/ocs/base/task/OnCanceledListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/coloros/ocs/base/task/e;->a:Lcom/coloros/ocs/base/task/d;

    invoke-virtual {v0}, Lcom/coloros/ocs/base/task/d;->a()Lcom/coloros/ocs/base/task/OnCanceledListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/coloros/ocs/base/task/OnCanceledListener;->onCanceled()V

    :cond_0
    return-void
.end method
