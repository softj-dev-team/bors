.class Lzendesk/support/suas/CombinedMiddleware$1;
.super Ljava/lang/Object;
.source "CombinedMiddleware.java"

# interfaces
.implements Lzendesk/support/suas/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/suas/CombinedMiddleware;->loopThroughMiddleware(Lzendesk/support/suas/Action;Lzendesk/support/suas/GetState;Lzendesk/support/suas/Dispatcher;Lzendesk/support/suas/Continuation;Ljava/util/Iterator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/suas/CombinedMiddleware;

.field final synthetic val$continuation:Lzendesk/support/suas/Continuation;

.field final synthetic val$dispatcher:Lzendesk/support/suas/Dispatcher;

.field final synthetic val$middleware:Ljava/util/Iterator;

.field final synthetic val$state:Lzendesk/support/suas/GetState;


# direct methods
.method constructor <init>(Lzendesk/support/suas/CombinedMiddleware;Lzendesk/support/suas/GetState;Lzendesk/support/suas/Dispatcher;Lzendesk/support/suas/Continuation;Ljava/util/Iterator;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lzendesk/support/suas/CombinedMiddleware$1;->this$0:Lzendesk/support/suas/CombinedMiddleware;

    iput-object p2, p0, Lzendesk/support/suas/CombinedMiddleware$1;->val$state:Lzendesk/support/suas/GetState;

    iput-object p3, p0, Lzendesk/support/suas/CombinedMiddleware$1;->val$dispatcher:Lzendesk/support/suas/Dispatcher;

    iput-object p4, p0, Lzendesk/support/suas/CombinedMiddleware$1;->val$continuation:Lzendesk/support/suas/Continuation;

    iput-object p5, p0, Lzendesk/support/suas/CombinedMiddleware$1;->val$middleware:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next(Lzendesk/support/suas/Action;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/suas/Action<",
            "*>;)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lzendesk/support/suas/CombinedMiddleware$1;->this$0:Lzendesk/support/suas/CombinedMiddleware;

    iget-object v2, p0, Lzendesk/support/suas/CombinedMiddleware$1;->val$state:Lzendesk/support/suas/GetState;

    iget-object v3, p0, Lzendesk/support/suas/CombinedMiddleware$1;->val$dispatcher:Lzendesk/support/suas/Dispatcher;

    iget-object v4, p0, Lzendesk/support/suas/CombinedMiddleware$1;->val$continuation:Lzendesk/support/suas/Continuation;

    iget-object v5, p0, Lzendesk/support/suas/CombinedMiddleware$1;->val$middleware:Ljava/util/Iterator;

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lzendesk/support/suas/CombinedMiddleware;->access$000(Lzendesk/support/suas/CombinedMiddleware;Lzendesk/support/suas/Action;Lzendesk/support/suas/GetState;Lzendesk/support/suas/Dispatcher;Lzendesk/support/suas/Continuation;Ljava/util/Iterator;)V

    return-void
.end method
