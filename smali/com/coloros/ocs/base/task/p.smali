.class final Lcom/coloros/ocs/base/task/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/ocs/base/task/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/coloros/ocs/base/task/Continuation<",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "TTResult;>;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lcom/coloros/ocs/base/task/Task<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/coloros/ocs/base/task/Task<",
            "*>;>;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/coloros/ocs/base/task/p;->a:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final synthetic then(Lcom/coloros/ocs/base/task/Task;)Ljava/lang/Object;
    .locals 2

    .line 1020
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1021
    iget-object v0, p0, Lcom/coloros/ocs/base/task/p;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1022
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1023
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/ocs/base/task/Task;

    invoke-virtual {v1}, Lcom/coloros/ocs/base/task/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method
