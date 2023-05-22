.class Lzendesk/support/request/ReducerConfiguration;
.super Lzendesk/support/suas/Reducer;
.source "ReducerConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzendesk/support/suas/Reducer<",
        "Lzendesk/support/request/StateConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lzendesk/support/suas/Reducer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getInitialState()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lzendesk/support/request/ReducerConfiguration;->getInitialState()Lzendesk/support/request/StateConfig;

    move-result-object v0

    return-object v0
.end method

.method public getInitialState()Lzendesk/support/request/StateConfig;
    .locals 1

    .line 42
    new-instance v0, Lzendesk/support/request/StateConfig;

    invoke-direct {v0}, Lzendesk/support/request/StateConfig;-><init>()V

    return-object v0
.end method

.method public bridge synthetic reduce(Ljava/lang/Object;Lzendesk/support/suas/Action;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lzendesk/support/request/StateConfig;

    invoke-virtual {p0, p1, p2}, Lzendesk/support/request/ReducerConfiguration;->reduce(Lzendesk/support/request/StateConfig;Lzendesk/support/suas/Action;)Lzendesk/support/request/StateConfig;

    move-result-object p1

    return-object p1
.end method

.method public reduce(Lzendesk/support/request/StateConfig;Lzendesk/support/suas/Action;)Lzendesk/support/request/StateConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/request/StateConfig;",
            "Lzendesk/support/suas/Action<",
            "*>;)",
            "Lzendesk/support/request/StateConfig;"
        }
    .end annotation

    .line 16
    invoke-virtual {p2}, Lzendesk/support/suas/Action;->getActionType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "LOAD_SETTINGS_SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "START_CONFIG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 18
    :cond_0
    invoke-virtual {p2}, Lzendesk/support/suas/Action;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lzendesk/support/request/RequestConfiguration;

    .line 20
    invoke-virtual {p1}, Lzendesk/support/request/StateConfig;->newBuilder()Lzendesk/support/request/StateConfig$Builder;

    move-result-object p1

    .line 21
    invoke-virtual {p2}, Lzendesk/support/request/RequestConfiguration;->getTags()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzendesk/support/request/StateConfig$Builder;->setTags(Ljava/util/List;)Lzendesk/support/request/StateConfig$Builder;

    move-result-object p1

    .line 22
    invoke-virtual {p2}, Lzendesk/support/request/RequestConfiguration;->getTicketForm()Lzendesk/support/request/StateRequestTicketForm;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzendesk/support/request/StateConfig$Builder;->setTicketForm(Lzendesk/support/request/StateRequestTicketForm;)Lzendesk/support/request/StateConfig$Builder;

    move-result-object p1

    .line 23
    invoke-virtual {p2}, Lzendesk/support/request/RequestConfiguration;->getRequestSubject()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lzendesk/support/request/StateConfig$Builder;->setSubject(Ljava/lang/String;)Lzendesk/support/request/StateConfig$Builder;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lzendesk/support/request/StateConfig$Builder;->build()Lzendesk/support/request/StateConfig;

    move-result-object p1

    return-object p1

    .line 28
    :cond_1
    invoke-virtual {p2}, Lzendesk/support/suas/Action;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lzendesk/support/request/StateSettings;

    .line 30
    invoke-virtual {p1}, Lzendesk/support/request/StateConfig;->newBuilder()Lzendesk/support/request/StateConfig$Builder;

    move-result-object p1

    .line 31
    invoke-virtual {p1, p2}, Lzendesk/support/request/StateConfig$Builder;->setSettings(Lzendesk/support/request/StateSettings;)Lzendesk/support/request/StateConfig$Builder;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lzendesk/support/request/StateConfig$Builder;->build()Lzendesk/support/request/StateConfig;

    move-result-object p1

    return-object p1
.end method
