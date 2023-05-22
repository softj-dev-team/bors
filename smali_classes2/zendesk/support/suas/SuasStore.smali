.class Lzendesk/support/suas/SuasStore;
.super Ljava/lang/Object;
.source "SuasStore.java"

# interfaces
.implements Lzendesk/support/suas/Store;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/suas/SuasStore$DefaultSubscription;,
        Lzendesk/support/suas/SuasStore$ActionListenerSubscription;
    }
.end annotation


# instance fields
.field private final actionListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lzendesk/support/suas/Listener<",
            "Lzendesk/support/suas/Action<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final defaultFilter:Lzendesk/support/suas/Filter;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final isReducing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final listenerStateListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lzendesk/support/suas/Listener;",
            "Lzendesk/support/suas/Listeners$StateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final middleware:Lzendesk/support/suas/CombinedMiddleware;

.field private final reducer:Lzendesk/support/suas/CombinedReducer;

.field private state:Lzendesk/support/suas/State;


# direct methods
.method constructor <init>(Lzendesk/support/suas/State;Lzendesk/support/suas/CombinedReducer;Lzendesk/support/suas/CombinedMiddleware;Lzendesk/support/suas/Filter;Ljava/util/concurrent/Executor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/suas/State;",
            "Lzendesk/support/suas/CombinedReducer;",
            "Lzendesk/support/suas/CombinedMiddleware;",
            "Lzendesk/support/suas/Filter<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lzendesk/support/suas/SuasStore;->isReducing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    iput-object p1, p0, Lzendesk/support/suas/SuasStore;->state:Lzendesk/support/suas/State;

    .line 31
    iput-object p2, p0, Lzendesk/support/suas/SuasStore;->reducer:Lzendesk/support/suas/CombinedReducer;

    .line 32
    iput-object p3, p0, Lzendesk/support/suas/SuasStore;->middleware:Lzendesk/support/suas/CombinedMiddleware;

    .line 33
    iput-object p4, p0, Lzendesk/support/suas/SuasStore;->defaultFilter:Lzendesk/support/suas/Filter;

    .line 34
    iput-object p5, p0, Lzendesk/support/suas/SuasStore;->executor:Ljava/util/concurrent/Executor;

    .line 35
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/suas/SuasStore;->actionListener:Ljava/util/Set;

    .line 36
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lzendesk/support/suas/SuasStore;->listenerStateListenerMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/suas/SuasStore;Lzendesk/support/suas/Action;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lzendesk/support/suas/SuasStore;->notifyActionListener(Lzendesk/support/suas/Action;)V

    return-void
.end method

.method static synthetic access$100(Lzendesk/support/suas/SuasStore;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 17
    iget-object p0, p0, Lzendesk/support/suas/SuasStore;->isReducing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$200(Lzendesk/support/suas/SuasStore;)Lzendesk/support/suas/CombinedReducer;
    .locals 0

    .line 17
    iget-object p0, p0, Lzendesk/support/suas/SuasStore;->reducer:Lzendesk/support/suas/CombinedReducer;

    return-object p0
.end method

.method static synthetic access$302(Lzendesk/support/suas/SuasStore;Lzendesk/support/suas/State;)Lzendesk/support/suas/State;
    .locals 0

    .line 17
    iput-object p1, p0, Lzendesk/support/suas/SuasStore;->state:Lzendesk/support/suas/State;

    return-object p1
.end method

.method static synthetic access$400(Lzendesk/support/suas/SuasStore;Lzendesk/support/suas/State;Lzendesk/support/suas/State;Ljava/util/Collection;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lzendesk/support/suas/SuasStore;->notifyListener(Lzendesk/support/suas/State;Lzendesk/support/suas/State;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$500(Lzendesk/support/suas/SuasStore;)Lzendesk/support/suas/CombinedMiddleware;
    .locals 0

    .line 17
    iget-object p0, p0, Lzendesk/support/suas/SuasStore;->middleware:Lzendesk/support/suas/CombinedMiddleware;

    return-object p0
.end method

.method static synthetic access$700(Lzendesk/support/suas/SuasStore;)Ljava/util/Set;
    .locals 0

    .line 17
    iget-object p0, p0, Lzendesk/support/suas/SuasStore;->actionListener:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$800(Lzendesk/support/suas/SuasStore;)Ljava/util/Map;
    .locals 0

    .line 17
    iget-object p0, p0, Lzendesk/support/suas/SuasStore;->listenerStateListenerMap:Ljava/util/Map;

    return-object p0
.end method

.method private notifyActionListener(Lzendesk/support/suas/Action;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/suas/Action<",
            "*>;)V"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lzendesk/support/suas/SuasStore;->actionListener:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/suas/Listener;

    .line 81
    invoke-interface {v1, p1}, Lzendesk/support/suas/Listener;->update(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyListener(Lzendesk/support/suas/State;Lzendesk/support/suas/State;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/suas/State;",
            "Lzendesk/support/suas/State;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lzendesk/support/suas/SuasStore;->listenerStateListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/suas/Listeners$StateListener;

    .line 73
    invoke-interface {v1}, Lzendesk/support/suas/Listeners$StateListener;->getStateKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lzendesk/support/suas/Listeners$StateListener;->getStateKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x0

    .line 74
    invoke-interface {v1, p1, p2, v2}, Lzendesk/support/suas/Listeners$StateListener;->update(Lzendesk/support/suas/State;Lzendesk/support/suas/State;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private registerListener(Lzendesk/support/suas/Listener;Lzendesk/support/suas/Listeners$StateListener;)Lzendesk/support/suas/Subscription;
    .locals 1

    .line 162
    new-instance v0, Lzendesk/support/suas/SuasStore$DefaultSubscription;

    invoke-direct {v0, p0, p2, p1}, Lzendesk/support/suas/SuasStore$DefaultSubscription;-><init>(Lzendesk/support/suas/SuasStore;Lzendesk/support/suas/Listeners$StateListener;Lzendesk/support/suas/Listener;)V

    .line 163
    invoke-interface {v0}, Lzendesk/support/suas/Subscription;->addListener()V

    return-object v0
.end method


# virtual methods
.method public addActionListener(Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/suas/Listener<",
            "Lzendesk/support/suas/Action<",
            "*>;>;)",
            "Lzendesk/support/suas/Subscription;"
        }
    .end annotation

    .line 150
    new-instance v0, Lzendesk/support/suas/SuasStore$ActionListenerSubscription;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lzendesk/support/suas/SuasStore$ActionListenerSubscription;-><init>(Lzendesk/support/suas/SuasStore;Lzendesk/support/suas/Listener;Lzendesk/support/suas/SuasStore$1;)V

    .line 151
    invoke-interface {v0}, Lzendesk/support/suas/Subscription;->addListener()V

    return-object v0
.end method

.method public addListener(Ljava/lang/Class;Lzendesk/support/suas/Filter;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lzendesk/support/suas/Filter<",
            "TE;>;",
            "Lzendesk/support/suas/Listener<",
            "TE;>;)",
            "Lzendesk/support/suas/Subscription;"
        }
    .end annotation

    .line 122
    invoke-static {p1, p2, p3}, Lzendesk/support/suas/Listeners;->create(Ljava/lang/Class;Lzendesk/support/suas/Filter;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Listeners$StateListener;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lzendesk/support/suas/SuasStore;->registerListener(Lzendesk/support/suas/Listener;Lzendesk/support/suas/Listeners$StateListener;)Lzendesk/support/suas/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Ljava/lang/Class;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lzendesk/support/suas/Listener<",
            "TE;>;)",
            "Lzendesk/support/suas/Subscription;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lzendesk/support/suas/SuasStore;->defaultFilter:Lzendesk/support/suas/Filter;

    invoke-static {p1, v0, p2}, Lzendesk/support/suas/Listeners;->create(Ljava/lang/Class;Lzendesk/support/suas/Filter;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Listeners$StateListener;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lzendesk/support/suas/SuasStore;->registerListener(Lzendesk/support/suas/Listener;Lzendesk/support/suas/Listeners$StateListener;)Lzendesk/support/suas/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Ljava/lang/String;Ljava/lang/Class;Lzendesk/support/suas/Filter;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lzendesk/support/suas/Filter<",
            "TE;>;",
            "Lzendesk/support/suas/Listener<",
            "TE;>;)",
            "Lzendesk/support/suas/Subscription;"
        }
    .end annotation

    .line 135
    invoke-static {p1, p2, p3, p4}, Lzendesk/support/suas/Listeners;->create(Ljava/lang/String;Ljava/lang/Class;Lzendesk/support/suas/Filter;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Listeners$StateListener;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lzendesk/support/suas/SuasStore;->registerListener(Lzendesk/support/suas/Listener;Lzendesk/support/suas/Listeners$StateListener;)Lzendesk/support/suas/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Ljava/lang/String;Ljava/lang/Class;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lzendesk/support/suas/Listener<",
            "TE;>;)",
            "Lzendesk/support/suas/Subscription;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lzendesk/support/suas/SuasStore;->defaultFilter:Lzendesk/support/suas/Filter;

    invoke-static {p1, p2, v0, p3}, Lzendesk/support/suas/Listeners;->create(Ljava/lang/String;Ljava/lang/Class;Lzendesk/support/suas/Filter;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Listeners$StateListener;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lzendesk/support/suas/SuasStore;->registerListener(Lzendesk/support/suas/Listener;Lzendesk/support/suas/Listeners$StateListener;)Lzendesk/support/suas/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Ljava/lang/String;Lzendesk/support/suas/Filter;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lzendesk/support/suas/Filter<",
            "TE;>;",
            "Lzendesk/support/suas/Listener<",
            "TE;>;)",
            "Lzendesk/support/suas/Subscription;"
        }
    .end annotation

    .line 100
    invoke-static {p1, p2, p3}, Lzendesk/support/suas/Listeners;->create(Ljava/lang/String;Lzendesk/support/suas/Filter;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Listeners$StateListener;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lzendesk/support/suas/SuasStore;->registerListener(Lzendesk/support/suas/Listener;Lzendesk/support/suas/Listeners$StateListener;)Lzendesk/support/suas/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Ljava/lang/String;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lzendesk/support/suas/Listener<",
            "TE;>;)",
            "Lzendesk/support/suas/Subscription;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lzendesk/support/suas/SuasStore;->defaultFilter:Lzendesk/support/suas/Filter;

    invoke-static {p1, v0, p2}, Lzendesk/support/suas/Listeners;->create(Ljava/lang/String;Lzendesk/support/suas/Filter;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Listeners$StateListener;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lzendesk/support/suas/SuasStore;->registerListener(Lzendesk/support/suas/Listener;Lzendesk/support/suas/Listeners$StateListener;)Lzendesk/support/suas/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lzendesk/support/suas/Filter;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/suas/Filter<",
            "Lzendesk/support/suas/State;",
            ">;",
            "Lzendesk/support/suas/Listener<",
            "Lzendesk/support/suas/State;",
            ">;)",
            "Lzendesk/support/suas/Subscription;"
        }
    .end annotation

    .line 145
    invoke-static {p1, p2}, Lzendesk/support/suas/Listeners;->create(Lzendesk/support/suas/Filter;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Listeners$StateListener;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lzendesk/support/suas/SuasStore;->registerListener(Lzendesk/support/suas/Listener;Lzendesk/support/suas/Listeners$StateListener;)Lzendesk/support/suas/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lzendesk/support/suas/Filter;Lzendesk/support/suas/StateSelector;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lzendesk/support/suas/Filter<",
            "Lzendesk/support/suas/State;",
            ">;",
            "Lzendesk/support/suas/StateSelector<",
            "TE;>;",
            "Lzendesk/support/suas/Listener<",
            "TE;>;)",
            "Lzendesk/support/suas/Subscription;"
        }
    .end annotation

    .line 111
    invoke-static {p2, p1, p3}, Lzendesk/support/suas/Listeners;->create(Lzendesk/support/suas/StateSelector;Lzendesk/support/suas/Filter;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Listeners$StateListener;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lzendesk/support/suas/SuasStore;->registerListener(Lzendesk/support/suas/Listener;Lzendesk/support/suas/Listeners$StateListener;)Lzendesk/support/suas/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/suas/Listener<",
            "Lzendesk/support/suas/State;",
            ">;)",
            "Lzendesk/support/suas/Subscription;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lzendesk/support/suas/SuasStore;->defaultFilter:Lzendesk/support/suas/Filter;

    invoke-static {v0, p1}, Lzendesk/support/suas/Listeners;->create(Lzendesk/support/suas/Filter;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Listeners$StateListener;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lzendesk/support/suas/SuasStore;->registerListener(Lzendesk/support/suas/Listener;Lzendesk/support/suas/Listeners$StateListener;)Lzendesk/support/suas/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lzendesk/support/suas/StateSelector;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lzendesk/support/suas/StateSelector<",
            "TE;>;",
            "Lzendesk/support/suas/Listener<",
            "TE;>;)",
            "Lzendesk/support/suas/Subscription;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lzendesk/support/suas/SuasStore;->defaultFilter:Lzendesk/support/suas/Filter;

    invoke-static {p1, v0, p2}, Lzendesk/support/suas/Listeners;->create(Lzendesk/support/suas/StateSelector;Lzendesk/support/suas/Filter;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Listeners$StateListener;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lzendesk/support/suas/SuasStore;->registerListener(Lzendesk/support/suas/Listener;Lzendesk/support/suas/Listeners$StateListener;)Lzendesk/support/suas/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized dispatch(Lzendesk/support/suas/Action;)V
    .locals 2

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lzendesk/support/suas/SuasStore;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lzendesk/support/suas/SuasStore$1;

    invoke-direct {v1, p0, p1}, Lzendesk/support/suas/SuasStore$1;-><init>(Lzendesk/support/suas/SuasStore;Lzendesk/support/suas/Action;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getState()Lzendesk/support/suas/State;
    .locals 1

    .line 42
    iget-object v0, p0, Lzendesk/support/suas/SuasStore;->state:Lzendesk/support/suas/State;

    invoke-virtual {v0}, Lzendesk/support/suas/State;->copy()Lzendesk/support/suas/State;

    move-result-object v0

    return-object v0
.end method

.method public removeListener(Lzendesk/support/suas/Listener;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lzendesk/support/suas/SuasStore;->listenerStateListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lzendesk/support/suas/SuasStore;->actionListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset(Lzendesk/support/suas/State;)V
    .locals 2

    .line 87
    invoke-virtual {p0}, Lzendesk/support/suas/SuasStore;->getState()Lzendesk/support/suas/State;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lzendesk/support/suas/SuasStore;->reducer:Lzendesk/support/suas/CombinedReducer;

    invoke-virtual {v1}, Lzendesk/support/suas/CombinedReducer;->getEmptyState()Lzendesk/support/suas/State;

    move-result-object v1

    invoke-static {v1, p1}, Lzendesk/support/suas/State;->mergeStates(Lzendesk/support/suas/State;Lzendesk/support/suas/State;)Lzendesk/support/suas/State;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/suas/SuasStore;->state:Lzendesk/support/suas/State;

    .line 89
    iget-object v1, p0, Lzendesk/support/suas/SuasStore;->reducer:Lzendesk/support/suas/CombinedReducer;

    invoke-virtual {v1}, Lzendesk/support/suas/CombinedReducer;->getAllKeys()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lzendesk/support/suas/SuasStore;->notifyListener(Lzendesk/support/suas/State;Lzendesk/support/suas/State;Ljava/util/Collection;)V

    return-void
.end method
