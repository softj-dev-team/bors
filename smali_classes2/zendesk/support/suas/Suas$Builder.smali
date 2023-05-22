.class public Lzendesk/support/suas/Suas$Builder;
.super Ljava/lang/Object;
.source "Suas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/suas/Suas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private executor:Ljava/util/concurrent/Executor;

.field private middleware:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lzendesk/support/suas/Middleware;",
            ">;"
        }
    .end annotation
.end field

.field private notifier:Lzendesk/support/suas/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzendesk/support/suas/Filter<",
            "Ljava/lang/Object;",
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

.field private state:Lzendesk/support/suas/State;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lzendesk/support/suas/Reducer;",
            ">;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzendesk/support/suas/Suas$Builder;->middleware:Ljava/util/Collection;

    .line 76
    sget-object v0, Lzendesk/support/suas/Filters;->DEFAULT:Lzendesk/support/suas/Filter;

    iput-object v0, p0, Lzendesk/support/suas/Suas$Builder;->notifier:Lzendesk/support/suas/Filter;

    .line 80
    iput-object p1, p0, Lzendesk/support/suas/Suas$Builder;->reducers:Ljava/util/Collection;

    return-void
.end method

.method private assertArgumentsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    .line 172
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 161
    iget-object v0, p0, Lzendesk/support/suas/Suas$Builder;->executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    return-object v0

    .line 163
    :cond_0
    invoke-static {}, Lzendesk/support/suas/Suas;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-static {}, Lzendesk/support/suas/Executors;->getAndroidExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0

    .line 166
    :cond_1
    invoke-static {}, Lzendesk/support/suas/Executors;->getDefaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build()Lzendesk/support/suas/Store;
    .locals 7

    .line 152
    new-instance v2, Lzendesk/support/suas/CombinedReducer;

    iget-object v0, p0, Lzendesk/support/suas/Suas$Builder;->reducers:Ljava/util/Collection;

    invoke-direct {v2, v0}, Lzendesk/support/suas/CombinedReducer;-><init>(Ljava/util/Collection;)V

    .line 153
    new-instance v3, Lzendesk/support/suas/CombinedMiddleware;

    iget-object v0, p0, Lzendesk/support/suas/Suas$Builder;->middleware:Ljava/util/Collection;

    invoke-direct {v3, v0}, Lzendesk/support/suas/CombinedMiddleware;-><init>(Ljava/util/Collection;)V

    .line 154
    invoke-virtual {v2}, Lzendesk/support/suas/CombinedReducer;->getEmptyState()Lzendesk/support/suas/State;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/suas/Suas$Builder;->state:Lzendesk/support/suas/State;

    invoke-static {v0, v1}, Lzendesk/support/suas/State;->mergeStates(Lzendesk/support/suas/State;Lzendesk/support/suas/State;)Lzendesk/support/suas/State;

    move-result-object v1

    .line 155
    invoke-direct {p0}, Lzendesk/support/suas/Suas$Builder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 157
    new-instance v6, Lzendesk/support/suas/SuasStore;

    iget-object v4, p0, Lzendesk/support/suas/Suas$Builder;->notifier:Lzendesk/support/suas/Filter;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lzendesk/support/suas/SuasStore;-><init>(Lzendesk/support/suas/State;Lzendesk/support/suas/CombinedReducer;Lzendesk/support/suas/CombinedMiddleware;Lzendesk/support/suas/Filter;Ljava/util/concurrent/Executor;)V

    return-object v6
.end method

.method public withDefaultFilter(Lzendesk/support/suas/Filter;)Lzendesk/support/suas/Suas$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/suas/Filter<",
            "Ljava/lang/Object;",
            ">;)",
            "Lzendesk/support/suas/Suas$Builder;"
        }
    .end annotation

    const-string v0, "Notifier must not be null"

    .line 130
    invoke-direct {p0, p1, v0}, Lzendesk/support/suas/Suas$Builder;->assertArgumentsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iput-object p1, p0, Lzendesk/support/suas/Suas$Builder;->notifier:Lzendesk/support/suas/Filter;

    return-object p0
.end method

.method public withExecutor(Ljava/util/concurrent/Executor;)Lzendesk/support/suas/Suas$Builder;
    .locals 0

    .line 142
    iput-object p1, p0, Lzendesk/support/suas/Suas$Builder;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public withInitialState(Lzendesk/support/suas/State;)Lzendesk/support/suas/Suas$Builder;
    .locals 1

    const-string v0, "Initial state must not be null"

    .line 90
    invoke-direct {p0, p1, v0}, Lzendesk/support/suas/Suas$Builder;->assertArgumentsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iput-object p1, p0, Lzendesk/support/suas/Suas$Builder;->state:Lzendesk/support/suas/State;

    return-object p0
.end method

.method public withMiddleware(Ljava/util/Collection;)Lzendesk/support/suas/Suas$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lzendesk/support/suas/Middleware;",
            ">;)",
            "Lzendesk/support/suas/Suas$Builder;"
        }
    .end annotation

    const-string v0, "Middleware must not be null"

    .line 102
    invoke-direct {p0, p1, v0}, Lzendesk/support/suas/Suas$Builder;->assertArgumentsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iput-object p1, p0, Lzendesk/support/suas/Suas$Builder;->middleware:Ljava/util/Collection;

    return-object p0
.end method

.method public varargs withMiddleware([Lzendesk/support/suas/Middleware;)Lzendesk/support/suas/Suas$Builder;
    .locals 1

    const-string v0, "Middleware must not be null"

    .line 114
    invoke-direct {p0, p1, v0}, Lzendesk/support/suas/Suas$Builder;->assertArgumentsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/suas/Suas$Builder;->middleware:Ljava/util/Collection;

    return-object p0
.end method
