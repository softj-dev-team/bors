.class Lzendesk/support/suas/CombinedMiddleware;
.super Ljava/lang/Object;
.source "CombinedMiddleware.java"

# interfaces
.implements Lzendesk/support/suas/Middleware;


# instance fields
.field private final middleware:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lzendesk/support/suas/Middleware;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lzendesk/support/suas/Middleware;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 15
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    iput-object p1, p0, Lzendesk/support/suas/CombinedMiddleware;->middleware:Ljava/util/Collection;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lzendesk/support/suas/CombinedMiddleware;->middleware:Ljava/util/Collection;

    :goto_1
    return-void
.end method

.method static synthetic access$000(Lzendesk/support/suas/CombinedMiddleware;Lzendesk/support/suas/Action;Lzendesk/support/suas/GetState;Lzendesk/support/suas/Dispatcher;Lzendesk/support/suas/Continuation;Ljava/util/Iterator;)V
    .locals 0

    .line 10
    invoke-direct/range {p0 .. p5}, Lzendesk/support/suas/CombinedMiddleware;->loopThroughMiddleware(Lzendesk/support/suas/Action;Lzendesk/support/suas/GetState;Lzendesk/support/suas/Dispatcher;Lzendesk/support/suas/Continuation;Ljava/util/Iterator;)V

    return-void
.end method

.method private loopThroughMiddleware(Lzendesk/support/suas/Action;Lzendesk/support/suas/GetState;Lzendesk/support/suas/Dispatcher;Lzendesk/support/suas/Continuation;Ljava/util/Iterator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/suas/Action<",
            "*>;",
            "Lzendesk/support/suas/GetState;",
            "Lzendesk/support/suas/Dispatcher;",
            "Lzendesk/support/suas/Continuation;",
            "Ljava/util/Iterator<",
            "Lzendesk/support/suas/Middleware;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/suas/Middleware;

    .line 36
    new-instance v7, Lzendesk/support/suas/CombinedMiddleware$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lzendesk/support/suas/CombinedMiddleware$1;-><init>(Lzendesk/support/suas/CombinedMiddleware;Lzendesk/support/suas/GetState;Lzendesk/support/suas/Dispatcher;Lzendesk/support/suas/Continuation;Ljava/util/Iterator;)V

    invoke-interface {v0, p1, p2, p3, v7}, Lzendesk/support/suas/Middleware;->onAction(Lzendesk/support/suas/Action;Lzendesk/support/suas/GetState;Lzendesk/support/suas/Dispatcher;Lzendesk/support/suas/Continuation;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-interface {p4, p1}, Lzendesk/support/suas/Continuation;->next(Lzendesk/support/suas/Action;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onAction(Lzendesk/support/suas/Action;Lzendesk/support/suas/GetState;Lzendesk/support/suas/Dispatcher;Lzendesk/support/suas/Continuation;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/suas/Action<",
            "*>;",
            "Lzendesk/support/suas/GetState;",
            "Lzendesk/support/suas/Dispatcher;",
            "Lzendesk/support/suas/Continuation;",
            ")V"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lzendesk/support/suas/CombinedMiddleware;->middleware:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lzendesk/support/suas/CombinedMiddleware;->loopThroughMiddleware(Lzendesk/support/suas/Action;Lzendesk/support/suas/GetState;Lzendesk/support/suas/Dispatcher;Lzendesk/support/suas/Continuation;Ljava/util/Iterator;)V

    goto :goto_0

    .line 28
    :cond_0
    invoke-interface {p4, p1}, Lzendesk/support/suas/Continuation;->next(Lzendesk/support/suas/Action;)V

    :goto_0
    return-void
.end method
