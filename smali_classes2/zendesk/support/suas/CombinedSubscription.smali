.class public Lzendesk/support/suas/CombinedSubscription;
.super Ljava/lang/Object;
.source "CombinedSubscription.java"

# interfaces
.implements Lzendesk/support/suas/Subscription;


# instance fields
.field private final subscriptions:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lzendesk/support/suas/Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lzendesk/support/suas/Subscription;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lzendesk/support/suas/CombinedSubscription;->subscriptions:Ljava/util/Collection;

    return-void
.end method

.method public static from(Ljava/util/Collection;)Lzendesk/support/suas/Subscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lzendesk/support/suas/Subscription;",
            ">;)",
            "Lzendesk/support/suas/Subscription;"
        }
    .end annotation

    .line 28
    new-instance v0, Lzendesk/support/suas/CombinedSubscription;

    invoke-direct {v0, p0}, Lzendesk/support/suas/CombinedSubscription;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static varargs from([Lzendesk/support/suas/Subscription;)Lzendesk/support/suas/Subscription;
    .locals 1

    .line 18
    new-instance v0, Lzendesk/support/suas/CombinedSubscription;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lzendesk/support/suas/CombinedSubscription;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public addListener()V
    .locals 2

    .line 46
    iget-object v0, p0, Lzendesk/support/suas/CombinedSubscription;->subscriptions:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/suas/Subscription;

    .line 47
    invoke-interface {v1}, Lzendesk/support/suas/Subscription;->addListener()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public informWithCurrentState()V
    .locals 2

    .line 53
    iget-object v0, p0, Lzendesk/support/suas/CombinedSubscription;->subscriptions:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/suas/Subscription;

    .line 54
    invoke-interface {v1}, Lzendesk/support/suas/Subscription;->informWithCurrentState()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeListener()V
    .locals 2

    .line 39
    iget-object v0, p0, Lzendesk/support/suas/CombinedSubscription;->subscriptions:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/suas/Subscription;

    .line 40
    invoke-interface {v1}, Lzendesk/support/suas/Subscription;->removeListener()V

    goto :goto_0

    :cond_0
    return-void
.end method
