.class Lzendesk/support/request/AsyncMiddleware;
.super Ljava/lang/Object;
.source "AsyncMiddleware.java"

# interfaces
.implements Lzendesk/support/suas/Middleware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/AsyncMiddleware$AsyncAction;,
        Lzendesk/support/request/AsyncMiddleware$Queue;,
        Lzendesk/support/request/AsyncMiddleware$QueueItem;,
        Lzendesk/support/request/AsyncMiddleware$Item;,
        Lzendesk/support/request/AsyncMiddleware$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_TYPE:Ljava/lang/String; = "async_action"

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncMiddleware"


# instance fields
.field private final queue:Lzendesk/support/request/AsyncMiddleware$Queue;


# direct methods
.method constructor <init>(Lzendesk/support/request/AsyncMiddleware$Queue;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lzendesk/support/request/AsyncMiddleware;->queue:Lzendesk/support/request/AsyncMiddleware$Queue;

    return-void
.end method

.method static createAction(Lzendesk/support/request/AsyncMiddleware$AsyncAction;)Lzendesk/support/suas/Action;
    .locals 2

    .line 31
    new-instance v0, Lzendesk/support/suas/Action;

    const-string v1, "async_action"

    invoke-direct {v0, v1, p0}, Lzendesk/support/suas/Action;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public onAction(Lzendesk/support/suas/Action;Lzendesk/support/suas/GetState;Lzendesk/support/suas/Dispatcher;Lzendesk/support/suas/Continuation;)V
    .locals 2
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

    .line 43
    const-class v0, Lzendesk/support/request/AsyncMiddleware$AsyncAction;

    invoke-virtual {p1, v0}, Lzendesk/support/suas/Action;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/request/AsyncMiddleware$AsyncAction;

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0, p3, p2}, Lzendesk/support/request/AsyncMiddleware$AsyncAction;->actionQueued(Lzendesk/support/suas/Dispatcher;Lzendesk/support/suas/GetState;)V

    .line 46
    iget-object p1, p0, Lzendesk/support/request/AsyncMiddleware;->queue:Lzendesk/support/request/AsyncMiddleware$Queue;

    new-instance p4, Lzendesk/support/request/AsyncMiddleware$QueueItem;

    const/4 v1, 0x0

    invoke-direct {p4, v0, p2, p3, v1}, Lzendesk/support/request/AsyncMiddleware$QueueItem;-><init>(Lzendesk/support/request/AsyncMiddleware$AsyncAction;Lzendesk/support/suas/GetState;Lzendesk/support/suas/Dispatcher;Lzendesk/support/request/AsyncMiddleware$1;)V

    invoke-virtual {p1, p4}, Lzendesk/support/request/AsyncMiddleware$Queue;->dispatch(Lzendesk/support/request/AsyncMiddleware$Item;)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-interface {p4, p1}, Lzendesk/support/suas/Continuation;->next(Lzendesk/support/suas/Action;)V

    :goto_0
    return-void
.end method
