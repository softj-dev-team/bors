.class Lzendesk/support/suas/SuasStore$1$1;
.super Ljava/lang/Object;
.source "SuasStore.java"

# interfaces
.implements Lzendesk/support/suas/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/suas/SuasStore$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lzendesk/support/suas/SuasStore$1;


# direct methods
.method constructor <init>(Lzendesk/support/suas/SuasStore$1;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lzendesk/support/suas/SuasStore$1$1;->this$1:Lzendesk/support/suas/SuasStore$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next(Lzendesk/support/suas/Action;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/suas/Action<",
            "*>;)V"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lzendesk/support/suas/SuasStore$1$1;->this$1:Lzendesk/support/suas/SuasStore$1;

    iget-object v0, v0, Lzendesk/support/suas/SuasStore$1;->this$0:Lzendesk/support/suas/SuasStore;

    invoke-static {v0}, Lzendesk/support/suas/SuasStore;->access$100(Lzendesk/support/suas/SuasStore;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lzendesk/support/suas/SuasStore$1$1;->this$1:Lzendesk/support/suas/SuasStore$1;

    iget-object v0, v0, Lzendesk/support/suas/SuasStore$1;->this$0:Lzendesk/support/suas/SuasStore;

    invoke-virtual {v0}, Lzendesk/support/suas/SuasStore;->getState()Lzendesk/support/suas/State;

    move-result-object v0

    .line 56
    iget-object v2, p0, Lzendesk/support/suas/SuasStore$1$1;->this$1:Lzendesk/support/suas/SuasStore$1;

    iget-object v2, v2, Lzendesk/support/suas/SuasStore$1;->this$0:Lzendesk/support/suas/SuasStore;

    invoke-static {v2}, Lzendesk/support/suas/SuasStore;->access$200(Lzendesk/support/suas/SuasStore;)Lzendesk/support/suas/CombinedReducer;

    move-result-object v2

    iget-object v3, p0, Lzendesk/support/suas/SuasStore$1$1;->this$1:Lzendesk/support/suas/SuasStore$1;

    iget-object v3, v3, Lzendesk/support/suas/SuasStore$1;->this$0:Lzendesk/support/suas/SuasStore;

    invoke-virtual {v3}, Lzendesk/support/suas/SuasStore;->getState()Lzendesk/support/suas/State;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lzendesk/support/suas/CombinedReducer;->reduce(Lzendesk/support/suas/State;Lzendesk/support/suas/Action;)Lzendesk/support/suas/CombinedReducer$ReduceResult;

    move-result-object p1

    .line 57
    iget-object v2, p0, Lzendesk/support/suas/SuasStore$1$1;->this$1:Lzendesk/support/suas/SuasStore$1;

    iget-object v2, v2, Lzendesk/support/suas/SuasStore$1;->this$0:Lzendesk/support/suas/SuasStore;

    invoke-virtual {p1}, Lzendesk/support/suas/CombinedReducer$ReduceResult;->getNewState()Lzendesk/support/suas/State;

    move-result-object v3

    invoke-static {v2, v3}, Lzendesk/support/suas/SuasStore;->access$302(Lzendesk/support/suas/SuasStore;Lzendesk/support/suas/State;)Lzendesk/support/suas/State;

    .line 58
    iget-object v2, p0, Lzendesk/support/suas/SuasStore$1$1;->this$1:Lzendesk/support/suas/SuasStore$1;

    iget-object v2, v2, Lzendesk/support/suas/SuasStore$1;->this$0:Lzendesk/support/suas/SuasStore;

    invoke-static {v2}, Lzendesk/support/suas/SuasStore;->access$100(Lzendesk/support/suas/SuasStore;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 59
    iget-object v1, p0, Lzendesk/support/suas/SuasStore$1$1;->this$1:Lzendesk/support/suas/SuasStore$1;

    iget-object v1, v1, Lzendesk/support/suas/SuasStore$1;->this$0:Lzendesk/support/suas/SuasStore;

    iget-object v2, p0, Lzendesk/support/suas/SuasStore$1$1;->this$1:Lzendesk/support/suas/SuasStore$1;

    iget-object v2, v2, Lzendesk/support/suas/SuasStore$1;->this$0:Lzendesk/support/suas/SuasStore;

    invoke-virtual {v2}, Lzendesk/support/suas/SuasStore;->getState()Lzendesk/support/suas/State;

    move-result-object v2

    invoke-virtual {p1}, Lzendesk/support/suas/CombinedReducer$ReduceResult;->getUpdatedKeys()Ljava/util/Collection;

    move-result-object p1

    invoke-static {v1, v0, v2, p1}, Lzendesk/support/suas/SuasStore;->access$400(Lzendesk/support/suas/SuasStore;Lzendesk/support/suas/State;Lzendesk/support/suas/State;Ljava/util/Collection;)V

    return-void

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "You must not dispatch actions in your reducer. Seriously. (\u256f\u00b0\u25a1\u00b0\uff09\u256f\ufe35 \u253b\u2501\u253b"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
