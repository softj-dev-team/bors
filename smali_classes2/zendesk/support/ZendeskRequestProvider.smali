.class final Lzendesk/support/ZendeskRequestProvider;
.super Ljava/lang/Object;
.source "ZendeskRequestProvider.java"

# interfaces
.implements Lzendesk/support/RequestProvider;


# static fields
.field private static final ALL_REQUEST_STATUSES:Ljava/lang/String; = "new,open,pending,hold,solved,closed"

.field private static final GET_REQUESTS_SIDE_LOAD:Ljava/lang/String; = "public_updated_at,last_commenting_agents,last_comment,first_comment"

.field private static final LOG_TAG:Ljava/lang/String; = "ZendeskRequestProvider"

.field private static final MAX_TICKET_FIELDS:I = 0x5


# instance fields
.field private final authenticationProvider:Lzendesk/core/AuthenticationProvider;

.field private final blipsProvider:Lzendesk/support/SupportBlipsProvider;

.field private final metadata:Lzendesk/support/SupportSdkMetadata;

.field private final requestService:Lzendesk/support/ZendeskRequestService;

.field private final requestSessionCache:Lzendesk/support/RequestSessionCache;

.field private final requestStorage:Lzendesk/support/RequestStorage;

.field private final settingsProvider:Lzendesk/support/SupportSettingsProvider;

.field private final zendeskTracker:Lzendesk/support/ZendeskTracker;


# direct methods
.method constructor <init>(Lzendesk/support/SupportSettingsProvider;Lzendesk/support/ZendeskRequestService;Lzendesk/core/AuthenticationProvider;Lzendesk/support/RequestStorage;Lzendesk/support/RequestSessionCache;Lzendesk/support/ZendeskTracker;Lzendesk/support/SupportSdkMetadata;Lzendesk/support/SupportBlipsProvider;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lzendesk/support/ZendeskRequestProvider;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    .line 52
    iput-object p2, p0, Lzendesk/support/ZendeskRequestProvider;->requestService:Lzendesk/support/ZendeskRequestService;

    .line 53
    iput-object p3, p0, Lzendesk/support/ZendeskRequestProvider;->authenticationProvider:Lzendesk/core/AuthenticationProvider;

    .line 54
    iput-object p4, p0, Lzendesk/support/ZendeskRequestProvider;->requestStorage:Lzendesk/support/RequestStorage;

    .line 55
    iput-object p5, p0, Lzendesk/support/ZendeskRequestProvider;->requestSessionCache:Lzendesk/support/RequestSessionCache;

    .line 56
    iput-object p6, p0, Lzendesk/support/ZendeskRequestProvider;->zendeskTracker:Lzendesk/support/ZendeskTracker;

    .line 57
    iput-object p7, p0, Lzendesk/support/ZendeskRequestProvider;->metadata:Lzendesk/support/SupportSdkMetadata;

    .line 58
    iput-object p8, p0, Lzendesk/support/ZendeskRequestProvider;->blipsProvider:Lzendesk/support/SupportBlipsProvider;

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/ZendeskRequestProvider;)Lzendesk/support/SupportSdkMetadata;
    .locals 0

    .line 25
    iget-object p0, p0, Lzendesk/support/ZendeskRequestProvider;->metadata:Lzendesk/support/SupportSdkMetadata;

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/support/ZendeskRequestProvider;Lzendesk/support/CreateRequest;Lzendesk/support/SupportSdkSettings;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lzendesk/support/ZendeskRequestProvider;->addServerTags(Lzendesk/support/CreateRequest;Lzendesk/support/SupportSdkSettings;)V

    return-void
.end method

.method static synthetic access$1000(Lzendesk/support/ZendeskRequestProvider;)Lzendesk/support/ZendeskRequestService;
    .locals 0

    .line 25
    iget-object p0, p0, Lzendesk/support/ZendeskRequestProvider;->requestService:Lzendesk/support/ZendeskRequestService;

    return-object p0
.end method

.method static synthetic access$1100(Lzendesk/support/ZendeskRequestProvider;Ljava/lang/String;Lzendesk/support/EndUserComment;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lzendesk/support/ZendeskRequestProvider;->addCommentInternal(Ljava/lang/String;Lzendesk/support/EndUserComment;Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method static synthetic access$1200(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lzendesk/support/ZendeskRequestProvider;->convertTicketFormResponse(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lzendesk/support/ZendeskRequestProvider;)Lzendesk/support/RequestSessionCache;
    .locals 0

    .line 25
    iget-object p0, p0, Lzendesk/support/ZendeskRequestProvider;->requestSessionCache:Lzendesk/support/RequestSessionCache;

    return-object p0
.end method

.method static synthetic access$1400(Ljava/util/List;)Lzendesk/support/RequestUpdates;
    .locals 0

    .line 25
    invoke-static {p0}, Lzendesk/support/ZendeskRequestProvider;->calcRequestUpdates(Ljava/util/List;)Lzendesk/support/RequestUpdates;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lzendesk/support/ZendeskRequestProvider;)Lzendesk/core/AuthenticationProvider;
    .locals 0

    .line 25
    iget-object p0, p0, Lzendesk/support/ZendeskRequestProvider;->authenticationProvider:Lzendesk/core/AuthenticationProvider;

    return-object p0
.end method

.method static synthetic access$300(Lzendesk/support/ZendeskRequestProvider;Lzendesk/support/CreateRequest;Lzendesk/core/AuthenticationType;Lzendesk/core/Identity;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lzendesk/support/ZendeskRequestProvider;->internalCreateRequest(Lzendesk/support/CreateRequest;Lzendesk/core/AuthenticationType;Lzendesk/core/Identity;Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method static synthetic access$400(Lzendesk/support/ZendeskRequestProvider;)Lzendesk/support/ZendeskTracker;
    .locals 0

    .line 25
    iget-object p0, p0, Lzendesk/support/ZendeskRequestProvider;->zendeskTracker:Lzendesk/support/ZendeskTracker;

    return-object p0
.end method

.method static synthetic access$500(Lzendesk/support/ZendeskRequestProvider;)Lzendesk/support/SupportBlipsProvider;
    .locals 0

    .line 25
    iget-object p0, p0, Lzendesk/support/ZendeskRequestProvider;->blipsProvider:Lzendesk/support/SupportBlipsProvider;

    return-object p0
.end method

.method static synthetic access$600(Lzendesk/support/ZendeskRequestProvider;)Lzendesk/support/RequestStorage;
    .locals 0

    .line 25
    iget-object p0, p0, Lzendesk/support/ZendeskRequestProvider;->requestStorage:Lzendesk/support/RequestStorage;

    return-object p0
.end method

.method static synthetic access$700(Lzendesk/support/SupportSdkSettings;)Z
    .locals 0

    .line 25
    invoke-static {p0}, Lzendesk/support/ZendeskRequestProvider;->areConversationsEnabled(Lzendesk/support/SupportSdkSettings;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lzendesk/support/ZendeskRequestProvider;Ljava/lang/String;Lzendesk/core/AuthenticationType;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lzendesk/support/ZendeskRequestProvider;->getAllRequestsInternal(Ljava/lang/String;Lzendesk/core/AuthenticationType;Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method static synthetic access$900(Lcom/zendesk/service/ZendeskCallback;)V
    .locals 0

    .line 25
    invoke-static {p0}, Lzendesk/support/ZendeskRequestProvider;->answerCallbackOnConversationsDisabled(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method private addCommentInternal(Ljava/lang/String;Lzendesk/support/EndUserComment;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lzendesk/support/EndUserComment;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/support/Comment;",
            ">;)V"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider;->requestService:Lzendesk/support/ZendeskRequestService;

    new-instance v1, Lzendesk/support/ZendeskRequestProvider$7;

    invoke-direct {v1, p0, p3, p1, p3}, Lzendesk/support/ZendeskRequestProvider$7;-><init>(Lzendesk/support/ZendeskRequestProvider;Lcom/zendesk/service/ZendeskCallback;Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lzendesk/support/ZendeskRequestService;->addComment(Ljava/lang/String;Lzendesk/support/EndUserComment;Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method private addServerTags(Lzendesk/support/CreateRequest;Lzendesk/support/SupportSdkSettings;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/List;

    .line 108
    invoke-virtual {p1}, Lzendesk/support/CreateRequest;->getTags()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 109
    invoke-virtual {p2}, Lzendesk/support/SupportSdkSettings;->getContactZendeskTags()Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 107
    invoke-static {v0}, Lcom/zendesk/util/CollectionUtils;->combineLists([Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 112
    invoke-static {p2}, Lcom/zendesk/util/CollectionUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "ZendeskRequestProvider"

    const-string v2, "Adding tags to feedback..."

    .line 113
    invoke-static {v1, v2, v0}, Lcom/zendesk/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p1, p2}, Lzendesk/support/CreateRequest;->setTags(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private static answerCallbackOnConversationsDisabled(Lcom/zendesk/service/ZendeskCallback;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ZendeskRequestProvider"

    const-string v2, "Conversations disabled, this feature is not available on your plan or was disabled."

    .line 512
    invoke-static {v1, v2, v0}, Lcom/zendesk/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    .line 514
    new-instance v0, Lcom/zendesk/service/ErrorResponseAdapter;

    const-string v1, "Access Denied"

    invoke-direct {v0, v1}, Lcom/zendesk/service/ErrorResponseAdapter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zendesk/service/ZendeskCallback;->onError(Lcom/zendesk/service/ErrorResponse;)V

    :cond_0
    return-void
.end method

.method private static areConversationsEnabled(Lzendesk/support/SupportSdkSettings;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 502
    :cond_0
    invoke-virtual {p0}, Lzendesk/support/SupportSdkSettings;->isConversationsEnabled()Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static calcRequestUpdates(Ljava/util/List;)Lzendesk/support/RequestUpdates;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/RequestData;",
            ">;)",
            "Lzendesk/support/RequestUpdates;"
        }
    .end annotation

    .line 445
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 447
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/RequestData;

    .line 449
    invoke-virtual {v1}, Lzendesk/support/RequestData;->unreadComments()I

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    invoke-virtual {v1}, Lzendesk/support/RequestData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 456
    :cond_1
    new-instance p0, Lzendesk/support/RequestUpdates;

    invoke-direct {p0, v0}, Lzendesk/support/RequestUpdates;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method private static convertTicketFormResponse(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/RawTicketForm;",
            ">;",
            "Ljava/util/List<",
            "Lzendesk/support/RawTicketField;",
            ">;)",
            "Ljava/util/List<",
            "Lzendesk/support/TicketForm;",
            ">;"
        }
    .end annotation

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 463
    invoke-static {p1}, Lzendesk/support/ZendeskRequestProvider;->createTicketFieldMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 465
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/RawTicketForm;

    .line 466
    invoke-static {v1, p1}, Lzendesk/support/ZendeskRequestProvider;->createTicketFormFromResponse(Lzendesk/support/RawTicketForm;Ljava/util/Map;)Lzendesk/support/TicketForm;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static createTicketFieldMap(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/RawTicketField;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lzendesk/support/TicketField;",
            ">;"
        }
    .end annotation

    .line 484
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 486
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/RawTicketField;

    .line 487
    invoke-virtual {v1}, Lzendesk/support/RawTicketField;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1}, Lzendesk/support/TicketField;->create(Lzendesk/support/RawTicketField;)Lzendesk/support/TicketField;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static createTicketFormFromResponse(Lzendesk/support/RawTicketForm;Ljava/util/Map;)Lzendesk/support/TicketForm;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/RawTicketForm;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lzendesk/support/TicketField;",
            ">;)",
            "Lzendesk/support/TicketForm;"
        }
    .end annotation

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 475
    invoke-virtual {p0}, Lzendesk/support/RawTicketForm;->getTicketFieldIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 476
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 477
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/support/TicketField;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 480
    :cond_1
    invoke-static {p0, v0}, Lzendesk/support/RawTicketForm;->create(Lzendesk/support/RawTicketForm;Ljava/util/List;)Lzendesk/support/TicketForm;

    move-result-object p0

    return-object p0
.end method

.method private getAllRequestsInternal(Ljava/lang/String;Lzendesk/core/AuthenticationType;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lzendesk/core/AuthenticationType;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Ljava/util/List<",
            "Lzendesk/support/Request;",
            ">;>;)V"
        }
    .end annotation

    .line 169
    invoke-static {p1}, Lcom/zendesk/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "new,open,pending,hold,solved,closed"

    .line 173
    :cond_0
    new-instance v0, Lzendesk/support/ZendeskRequestProvider$3;

    invoke-direct {v0, p0, p3, p3}, Lzendesk/support/ZendeskRequestProvider$3;-><init>(Lzendesk/support/ZendeskRequestProvider;Lcom/zendesk/service/ZendeskCallback;Lcom/zendesk/service/ZendeskCallback;)V

    .line 185
    sget-object v1, Lzendesk/core/AuthenticationType;->ANONYMOUS:Lzendesk/core/AuthenticationType;

    const-string v2, "public_updated_at,last_commenting_agents,last_comment,first_comment"

    if-ne p2, v1, :cond_3

    .line 186
    iget-object p2, p0, Lzendesk/support/ZendeskRequestProvider;->requestStorage:Lzendesk/support/RequestStorage;

    invoke-interface {p2}, Lzendesk/support/RequestStorage;->getRequestData()Ljava/util/List;

    move-result-object p2

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 188
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/support/RequestData;

    .line 189
    invoke-virtual {v3}, Lzendesk/support/RequestData;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    :cond_1
    invoke-static {v1}, Lcom/zendesk/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "ZendeskRequestProvider"

    const-string v0, "getAllRequestsInternal: There are no requests to fetch"

    .line 194
    invoke-static {p2, v0, p1}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_4

    .line 197
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3, p1}, Lcom/zendesk/service/ZendeskCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 201
    :cond_2
    iget-object p2, p0, Lzendesk/support/ZendeskRequestProvider;->requestService:Lzendesk/support/ZendeskRequestService;

    .line 202
    invoke-static {v1}, Lcom/zendesk/util/StringUtils;->toCsvString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1, v2, v0}, Lzendesk/support/ZendeskRequestService;->getAllRequests(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V

    goto :goto_1

    .line 206
    :cond_3
    iget-object p2, p0, Lzendesk/support/ZendeskRequestProvider;->requestService:Lzendesk/support/ZendeskRequestService;

    invoke-virtual {p2, p1, v2, v0}, Lzendesk/support/ZendeskRequestService;->getAllRequests(Ljava/lang/String;Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private internalCreateRequest(Lzendesk/support/CreateRequest;Lzendesk/core/AuthenticationType;Lzendesk/core/Identity;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/CreateRequest;",
            "Lzendesk/core/AuthenticationType;",
            "Lzendesk/core/Identity;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/support/Request;",
            ">;)V"
        }
    .end annotation

    .line 120
    new-instance v0, Lzendesk/support/ZendeskRequestProvider$2;

    invoke-direct {v0, p0, p4, p4}, Lzendesk/support/ZendeskRequestProvider$2;-><init>(Lzendesk/support/ZendeskRequestProvider;Lcom/zendesk/service/ZendeskCallback;Lcom/zendesk/service/ZendeskCallback;)V

    .line 139
    sget-object p4, Lzendesk/core/AuthenticationType;->ANONYMOUS:Lzendesk/core/AuthenticationType;

    if-ne p2, p4, :cond_0

    if-eqz p3, :cond_0

    instance-of p2, p3, Lzendesk/core/AnonymousIdentity;

    if-eqz p2, :cond_0

    .line 141
    check-cast p3, Lzendesk/core/AnonymousIdentity;

    .line 142
    invoke-virtual {p3}, Lzendesk/core/AnonymousIdentity;->getSdkGuid()Ljava/lang/String;

    move-result-object p2

    .line 143
    iget-object p3, p0, Lzendesk/support/ZendeskRequestProvider;->requestService:Lzendesk/support/ZendeskRequestService;

    invoke-virtual {p3, p2, p1, v0}, Lzendesk/support/ZendeskRequestService;->createRequest(Ljava/lang/String;Lzendesk/support/CreateRequest;Lcom/zendesk/service/ZendeskCallback;)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object p2, p0, Lzendesk/support/ZendeskRequestProvider;->requestService:Lzendesk/support/ZendeskRequestService;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1, v0}, Lzendesk/support/ZendeskRequestService;->createRequest(Ljava/lang/String;Lzendesk/support/CreateRequest;Lcom/zendesk/service/ZendeskCallback;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addComment(Ljava/lang/String;Lzendesk/support/EndUserComment;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lzendesk/support/EndUserComment;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/support/Comment;",
            ">;)V"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    new-instance v7, Lzendesk/support/ZendeskRequestProvider$8;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lzendesk/support/ZendeskRequestProvider$8;-><init>(Lzendesk/support/ZendeskRequestProvider;Lcom/zendesk/service/ZendeskCallback;Ljava/lang/String;Lzendesk/support/EndUserComment;Lcom/zendesk/service/ZendeskCallback;)V

    invoke-interface {v0, v7}, Lzendesk/support/SupportSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method public createRequest(Lzendesk/support/CreateRequest;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/CreateRequest;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/support/Request;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_2

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "ZendeskRequestProvider"

    const-string v1, "configuration is invalid: request null"

    .line 80
    invoke-static {v0, v1, p1}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 83
    new-instance p1, Lcom/zendesk/service/ErrorResponseAdapter;

    invoke-direct {p1, v1}, Lcom/zendesk/service/ErrorResponseAdapter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/zendesk/service/ZendeskCallback;->onError(Lcom/zendesk/service/ErrorResponse;)V

    :cond_1
    return-void

    .line 88
    :cond_2
    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    new-instance v1, Lzendesk/support/ZendeskRequestProvider$1;

    invoke-direct {v1, p0, p2, p1, p2}, Lzendesk/support/ZendeskRequestProvider$1;-><init>(Lzendesk/support/ZendeskRequestProvider;Lcom/zendesk/service/ZendeskCallback;Lzendesk/support/CreateRequest;Lcom/zendesk/service/ZendeskCallback;)V

    invoke-interface {v0, v1}, Lzendesk/support/SupportSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method public getAllRequests(Lcom/zendesk/service/ZendeskCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Ljava/util/List<",
            "Lzendesk/support/Request;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 212
    invoke-virtual {p0, v0, p1}, Lzendesk/support/ZendeskRequestProvider;->getRequests(Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method public getComments(Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/support/CommentsResponse;",
            ">;)V"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    new-instance v1, Lzendesk/support/ZendeskRequestProvider$5;

    invoke-direct {v1, p0, p2, p1, p2}, Lzendesk/support/ZendeskRequestProvider$5;-><init>(Lzendesk/support/ZendeskRequestProvider;Lcom/zendesk/service/ZendeskCallback;Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V

    invoke-interface {v0, v1}, Lzendesk/support/SupportSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method public getCommentsSince(Ljava/lang/String;Ljava/util/Date;ZLcom/zendesk/service/ZendeskCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Z",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/support/CommentsResponse;",
            ">;)V"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    new-instance v8, Lzendesk/support/ZendeskRequestProvider$6;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lzendesk/support/ZendeskRequestProvider$6;-><init>(Lzendesk/support/ZendeskRequestProvider;Lcom/zendesk/service/ZendeskCallback;Ljava/lang/String;Ljava/util/Date;ZLcom/zendesk/service/ZendeskCallback;)V

    invoke-interface {v0, v8}, Lzendesk/support/SupportSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method public getRequest(Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/support/Request;",
            ">;)V"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    new-instance v1, Lzendesk/support/ZendeskRequestProvider$9;

    invoke-direct {v1, p0, p2, p1, p2}, Lzendesk/support/ZendeskRequestProvider$9;-><init>(Lzendesk/support/ZendeskRequestProvider;Lcom/zendesk/service/ZendeskCallback;Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V

    invoke-interface {v0, v1}, Lzendesk/support/SupportSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method public getRequests(Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Ljava/util/List<",
            "Lzendesk/support/Request;",
            ">;>;)V"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    new-instance v1, Lzendesk/support/ZendeskRequestProvider$4;

    invoke-direct {v1, p0, p2, p1, p2}, Lzendesk/support/ZendeskRequestProvider$4;-><init>(Lzendesk/support/ZendeskRequestProvider;Lcom/zendesk/service/ZendeskCallback;Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V

    invoke-interface {v0, v1}, Lzendesk/support/SupportSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method public getTicketFormsById(Ljava/util/List;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Ljava/util/List<",
            "Lzendesk/support/TicketForm;",
            ">;>;)V"
        }
    .end annotation

    .line 341
    invoke-static {p1}, Lcom/zendesk/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 343
    new-instance p1, Lcom/zendesk/service/ErrorResponseAdapter;

    const-string v0, "Ticket forms must at least contain 1 Id"

    invoke-direct {p1, v0}, Lcom/zendesk/service/ErrorResponseAdapter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/zendesk/service/ZendeskCallback;->onError(Lcom/zendesk/service/ErrorResponse;)V

    :cond_0
    return-void

    .line 348
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 350
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_2

    const/4 v1, 0x0

    .line 351
    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 352
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v1

    const-string v1, "ZendeskRequestProvider"

    const-string v2, "Maximum number of allowed ticket fields: %d."

    invoke-static {v1, v2, p1}, Lcom/zendesk/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 354
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 357
    :goto_0
    iget-object p1, p0, Lzendesk/support/ZendeskRequestProvider;->requestSessionCache:Lzendesk/support/RequestSessionCache;

    invoke-interface {p1, v0}, Lzendesk/support/RequestSessionCache;->containsAllTicketForms(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_4

    .line 359
    iget-object p1, p0, Lzendesk/support/ZendeskRequestProvider;->requestSessionCache:Lzendesk/support/RequestSessionCache;

    invoke-interface {p1, v0}, Lzendesk/support/RequestSessionCache;->getTicketFormsById(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/zendesk/service/ZendeskCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 364
    :cond_3
    iget-object p1, p0, Lzendesk/support/ZendeskRequestProvider;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    new-instance v1, Lzendesk/support/ZendeskRequestProvider$10;

    invoke-direct {v1, p0, p2, v0, p2}, Lzendesk/support/ZendeskRequestProvider$10;-><init>(Lzendesk/support/ZendeskRequestProvider;Lcom/zendesk/service/ZendeskCallback;Ljava/util/List;Lcom/zendesk/service/ZendeskCallback;)V

    invoke-interface {p1, v1}, Lzendesk/support/SupportSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public getUpdatesForDevice(Lcom/zendesk/service/ZendeskCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/support/RequestUpdates;",
            ">;)V"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider;->requestStorage:Lzendesk/support/RequestStorage;

    invoke-interface {v0}, Lzendesk/support/RequestStorage;->isRequestDataExpired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider;->requestStorage:Lzendesk/support/RequestStorage;

    invoke-interface {v0}, Lzendesk/support/RequestStorage;->getRequestData()Ljava/util/List;

    move-result-object v0

    .line 400
    invoke-static {v0}, Lzendesk/support/ZendeskRequestProvider;->calcRequestUpdates(Ljava/util/List;)Lzendesk/support/RequestUpdates;

    move-result-object v0

    .line 401
    invoke-virtual {p1, v0}, Lcom/zendesk/service/ZendeskCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 405
    :cond_0
    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    new-instance v1, Lzendesk/support/ZendeskRequestProvider$11;

    invoke-direct {v1, p0, p1}, Lzendesk/support/ZendeskRequestProvider$11;-><init>(Lzendesk/support/ZendeskRequestProvider;Lcom/zendesk/service/ZendeskCallback;)V

    invoke-interface {v0, v1}, Lzendesk/support/SupportSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    :goto_0
    return-void
.end method

.method public markRequestAsRead(Ljava/lang/String;I)V
    .locals 1

    .line 435
    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider;->requestStorage:Lzendesk/support/RequestStorage;

    invoke-interface {v0, p1, p2}, Lzendesk/support/RequestStorage;->markRequestAsRead(Ljava/lang/String;I)V

    return-void
.end method

.method public markRequestAsUnread(Ljava/lang/String;)V
    .locals 1

    .line 440
    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider;->requestStorage:Lzendesk/support/RequestStorage;

    invoke-interface {v0, p1}, Lzendesk/support/RequestStorage;->markRequestAsUnread(Ljava/lang/String;)V

    return-void
.end method
