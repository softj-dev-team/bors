.class Lzendesk/support/suas/CombinedReducer;
.super Ljava/lang/Object;
.source "CombinedReducer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/suas/CombinedReducer$ReduceResult;
    }
.end annotation


# instance fields
.field private final keys:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final reducers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lzendesk/support/suas/Reducer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lzendesk/support/suas/Reducer;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-direct {p0, p1}, Lzendesk/support/suas/CombinedReducer;->assertReducers(Ljava/util/Collection;)V

    .line 20
    iput-object p1, p0, Lzendesk/support/suas/CombinedReducer;->reducers:Ljava/util/Collection;

    .line 21
    invoke-direct {p0, p1}, Lzendesk/support/suas/CombinedReducer;->getKeys(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/suas/CombinedReducer;->keys:Ljava/util/Collection;

    return-void
.end method

.method private assertReducers(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lzendesk/support/suas/Reducer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 25
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 30
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/support/suas/Reducer;

    .line 31
    invoke-virtual {v2}, Lzendesk/support/suas/Reducer;->getStateKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-ne v0, p1, :cond_1

    return-void

    .line 34
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Two or more reducers are tied to the same key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No reducers provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getKeys(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lzendesk/support/suas/Reducer;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 40
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/suas/Reducer;

    .line 41
    invoke-virtual {v1}, Lzendesk/support/suas/Reducer;->getStateKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method getAllKeys()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lzendesk/support/suas/CombinedReducer;->keys:Ljava/util/Collection;

    return-object v0
.end method

.method public getEmptyState()Lzendesk/support/suas/State;
    .locals 4

    .line 69
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lzendesk/support/suas/CombinedReducer;->reducers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 71
    iget-object v1, p0, Lzendesk/support/suas/CombinedReducer;->reducers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/support/suas/Reducer;

    .line 72
    invoke-virtual {v2}, Lzendesk/support/suas/Reducer;->getInitialState()Ljava/lang/Object;

    move-result-object v3

    .line 73
    invoke-virtual {v2}, Lzendesk/support/suas/Reducer;->getStateKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 76
    :cond_0
    new-instance v1, Lzendesk/support/suas/State;

    invoke-direct {v1, v0}, Lzendesk/support/suas/State;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public reduce(Lzendesk/support/suas/State;Lzendesk/support/suas/Action;)Lzendesk/support/suas/CombinedReducer$ReduceResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/suas/State;",
            "Lzendesk/support/suas/Action<",
            "*>;)",
            "Lzendesk/support/suas/CombinedReducer$ReduceResult;"
        }
    .end annotation

    .line 48
    new-instance v0, Lzendesk/support/suas/State;

    invoke-direct {v0}, Lzendesk/support/suas/State;-><init>()V

    .line 49
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 51
    iget-object v2, p0, Lzendesk/support/suas/CombinedReducer;->reducers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/support/suas/Reducer;

    .line 52
    invoke-virtual {v3}, Lzendesk/support/suas/Reducer;->getStateKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lzendesk/support/suas/State;->getState(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 54
    invoke-virtual {v3, v4, p2}, Lzendesk/support/suas/Reducer;->reduce(Ljava/lang/Object;Lzendesk/support/suas/Action;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 56
    invoke-virtual {v3}, Lzendesk/support/suas/Reducer;->getStateKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Lzendesk/support/suas/State;->updateKey(Ljava/lang/String;Ljava/lang/Object;)V

    if-eq v5, v4, :cond_0

    .line 58
    invoke-virtual {v3}, Lzendesk/support/suas/Reducer;->getStateKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v3}, Lzendesk/support/suas/Reducer;->getStateKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Lzendesk/support/suas/State;->updateKey(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    :cond_2
    new-instance p1, Lzendesk/support/suas/CombinedReducer$ReduceResult;

    invoke-direct {p1, v1, v0}, Lzendesk/support/suas/CombinedReducer$ReduceResult;-><init>(Ljava/util/Collection;Lzendesk/support/suas/State;)V

    return-object p1
.end method
