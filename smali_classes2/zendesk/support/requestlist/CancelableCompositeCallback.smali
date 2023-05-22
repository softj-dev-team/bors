.class Lzendesk/support/requestlist/CancelableCompositeCallback;
.super Ljava/lang/Object;
.source "CancelableCompositeCallback.java"


# instance fields
.field private zendeskCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/zendesk/service/SafeZendeskCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lzendesk/support/requestlist/CancelableCompositeCallback;->zendeskCallbacks:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public add(Lcom/zendesk/service/SafeZendeskCallback;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lzendesk/support/requestlist/CancelableCompositeCallback;->zendeskCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs add([Lcom/zendesk/service/SafeZendeskCallback;)V
    .locals 2

    const/4 v0, 0x0

    .line 17
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 18
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lzendesk/support/requestlist/CancelableCompositeCallback;->add(Lcom/zendesk/service/SafeZendeskCallback;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 2

    .line 33
    iget-object v0, p0, Lzendesk/support/requestlist/CancelableCompositeCallback;->zendeskCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zendesk/service/SafeZendeskCallback;

    .line 34
    invoke-virtual {v1}, Lcom/zendesk/service/SafeZendeskCallback;->cancel()V

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lzendesk/support/requestlist/CancelableCompositeCallback;->zendeskCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method
