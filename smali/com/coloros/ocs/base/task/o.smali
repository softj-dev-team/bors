.class final Lcom/coloros/ocs/base/task/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coloros/ocs/base/task/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coloros/ocs/base/task/Continuation<",
        "Ljava/lang/Void;",
        "Lcom/coloros/ocs/base/task/Task<",
        "Ljava/util/List<",
        "Lcom/coloros/ocs/base/task/Task<",
        "*>;>;>;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/coloros/ocs/base/task/o;->a:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final synthetic then(Lcom/coloros/ocs/base/task/Task;)Ljava/lang/Object;
    .locals 1

    .line 1017
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1018
    iget-object v0, p0, Lcom/coloros/ocs/base/task/o;->a:Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1019
    invoke-static {p1}, Lcom/coloros/ocs/base/task/Tasks;->forResult(Ljava/lang/Object;)Lcom/coloros/ocs/base/task/Task;

    move-result-object p1

    return-object p1
.end method
