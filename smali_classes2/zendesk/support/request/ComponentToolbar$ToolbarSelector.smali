.class Lzendesk/support/request/ComponentToolbar$ToolbarSelector;
.super Ljava/lang/Object;
.source "ComponentToolbar.java"

# interfaces
.implements Lzendesk/support/suas/StateSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/ComponentToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ToolbarSelector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzendesk/support/suas/StateSelector<",
        "Lzendesk/support/request/ComponentToolbar$ToolbarModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findLastAgentReply(Ljava/util/List;Ljava/util/Map;)Lzendesk/support/request/StateMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateMessage;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lzendesk/support/request/StateRequestUser;",
            ">;)",
            "Lzendesk/support/request/StateMessage;"
        }
    .end annotation

    .line 269
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 270
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/request/StateMessage;

    .line 271
    invoke-virtual {v1}, Lzendesk/support/request/StateMessage;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getInvolvedAgents(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateMessage;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lzendesk/support/request/StateRequestUser;",
            ">;)",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestUser;",
            ">;"
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 258
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 259
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/support/request/StateMessage;

    .line 260
    invoke-virtual {v2}, Lzendesk/support/request/StateMessage;->getUserId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    invoke-virtual {v2}, Lzendesk/support/request/StateMessage;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/support/request/StateRequestUser;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 265
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method private isProgressEnabled(Lzendesk/support/suas/State;)Z
    .locals 0

    .line 251
    invoke-static {p1}, Lzendesk/support/request/StateProgress;->fomState(Lzendesk/support/suas/State;)Lzendesk/support/request/StateProgress;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Lzendesk/support/request/StateProgress;->getRunningRequests()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private mapAgents(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestUser;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lzendesk/support/request/StateRequestUser;",
            ">;"
        }
    .end annotation

    .line 281
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 283
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/request/StateRequestUser;

    .line 284
    invoke-virtual {v1}, Lzendesk/support/request/StateRequestUser;->isAgent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    invoke-virtual {v1}, Lzendesk/support/request/StateRequestUser;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public bridge synthetic selectData(Lzendesk/support/suas/State;)Ljava/lang/Object;
    .locals 0

    .line 206
    invoke-virtual {p0, p1}, Lzendesk/support/request/ComponentToolbar$ToolbarSelector;->selectData(Lzendesk/support/suas/State;)Lzendesk/support/request/ComponentToolbar$ToolbarModel;

    move-result-object p1

    return-object p1
.end method

.method public selectData(Lzendesk/support/suas/State;)Lzendesk/support/request/ComponentToolbar$ToolbarModel;
    .locals 6

    .line 211
    invoke-direct {p0, p1}, Lzendesk/support/request/ComponentToolbar$ToolbarSelector;->isProgressEnabled(Lzendesk/support/suas/State;)Z

    move-result v0

    .line 213
    invoke-static {p1}, Lzendesk/support/request/StateConversation;->fromState(Lzendesk/support/suas/State;)Lzendesk/support/request/StateConversation;

    move-result-object p1

    .line 214
    invoke-virtual {p1}, Lzendesk/support/request/StateConversation;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lzendesk/support/request/ComponentToolbar$ToolbarSelector;->mapAgents(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 216
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 222
    invoke-virtual {p1}, Lzendesk/support/request/StateConversation;->getLocalId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zendesk/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lzendesk/support/request/StateConversation;->getRemoteId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zendesk/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 223
    sget p1, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->STATE_LOADING:I

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p1}, Lzendesk/support/request/StateConversation;->hasAgentReplies()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 228
    sget p1, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->STATE_LOADING:I

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {p1}, Lzendesk/support/request/StateConversation;->hasAgentReplies()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 232
    sget v3, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->STATE_AGENT_INFO:I

    .line 234
    invoke-virtual {p1}, Lzendesk/support/request/StateConversation;->getMessages()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lzendesk/support/request/ComponentToolbar$ToolbarSelector;->findLastAgentReply(Ljava/util/List;Ljava/util/Map;)Lzendesk/support/request/StateMessage;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 236
    invoke-virtual {v5}, Lzendesk/support/request/StateMessage;->getDate()Ljava/util/Date;

    move-result-object v4

    .line 239
    :cond_2
    invoke-virtual {p1}, Lzendesk/support/request/StateConversation;->getMessages()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lzendesk/support/request/ComponentToolbar$ToolbarSelector;->getInvolvedAgents(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move p1, v3

    goto :goto_0

    .line 243
    :cond_3
    sget p1, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->STATE_TITLE:I

    .line 247
    :goto_0
    new-instance v1, Lzendesk/support/request/ComponentToolbar$ToolbarModel;

    invoke-direct {v1, v0, p1, v2, v4}, Lzendesk/support/request/ComponentToolbar$ToolbarModel;-><init>(ZILjava/util/List;Ljava/util/Date;)V

    return-object v1
.end method
