.class final Lzendesk/support/guide/AggregatedCallback;
.super Lcom/zendesk/service/ZendeskCallback;
.source "AggregatedCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/zendesk/service/ZendeskCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final callbackSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/zendesk/service/SafeZendeskCallback<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/zendesk/service/ZendeskCallback;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 22
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/guide/AggregatedCallback;->callbackSet:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public add(Lcom/zendesk/service/ZendeskCallback;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/service/ZendeskCallback<",
            "TT;>;)Z"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lzendesk/support/guide/AggregatedCallback;->callbackSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    .line 47
    iget-object v1, p0, Lzendesk/support/guide/AggregatedCallback;->callbackSet:Ljava/util/Set;

    invoke-static {p1}, Lcom/zendesk/service/SafeZendeskCallback;->from(Lcom/zendesk/service/ZendeskCallback;)Lcom/zendesk/service/SafeZendeskCallback;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method public cancel()V
    .locals 2

    .line 52
    iget-object v0, p0, Lzendesk/support/guide/AggregatedCallback;->callbackSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/service/SafeZendeskCallback;

    .line 53
    invoke-virtual {v1}, Lcom/zendesk/service/SafeZendeskCallback;->cancel()V

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lzendesk/support/guide/AggregatedCallback;->callbackSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public onError(Lcom/zendesk/service/ErrorResponse;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lzendesk/support/guide/AggregatedCallback;->callbackSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/service/SafeZendeskCallback;

    .line 35
    invoke-virtual {v1, p1}, Lcom/zendesk/service/SafeZendeskCallback;->onError(Lcom/zendesk/service/ErrorResponse;)V

    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lzendesk/support/guide/AggregatedCallback;->callbackSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lzendesk/support/guide/AggregatedCallback;->callbackSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/service/SafeZendeskCallback;

    .line 27
    invoke-virtual {v1, p1}, Lcom/zendesk/service/SafeZendeskCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lzendesk/support/guide/AggregatedCallback;->callbackSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method
