.class public Lzendesk/support/RequestCreator;
.super Ljava/lang/Object;
.source "RequestCreator.java"


# instance fields
.field private final requestProvider:Lzendesk/support/RequestProvider;

.field private final uploadProvider:Lzendesk/support/UploadProvider;


# direct methods
.method public constructor <init>(Lzendesk/support/RequestProvider;Lzendesk/support/UploadProvider;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lzendesk/support/RequestCreator;->requestProvider:Lzendesk/support/RequestProvider;

    .line 27
    iput-object p2, p0, Lzendesk/support/RequestCreator;->uploadProvider:Lzendesk/support/UploadProvider;

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/RequestCreator;)Lzendesk/support/RequestProvider;
    .locals 0

    .line 19
    iget-object p0, p0, Lzendesk/support/RequestCreator;->requestProvider:Lzendesk/support/RequestProvider;

    return-object p0
.end method

.method private buildCreateRequestObject(Ljava/lang/String;Lzendesk/support/request/RequestConfiguration;)Lzendesk/support/CreateRequest;
    .locals 5

    .line 83
    new-instance v0, Lzendesk/support/CreateRequest;

    invoke-direct {v0}, Lzendesk/support/CreateRequest;-><init>()V

    .line 85
    invoke-virtual {v0, p1}, Lzendesk/support/CreateRequest;->setDescription(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Lzendesk/support/request/RequestConfiguration;->getRequestSubject()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zendesk/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p2}, Lzendesk/support/request/RequestConfiguration;->getRequestSubject()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lzendesk/support/CreateRequest;->setSubject(Ljava/lang/String;)V

    .line 91
    :cond_0
    invoke-virtual {p2}, Lzendesk/support/request/RequestConfiguration;->getTags()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/zendesk/util/CollectionUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {p2}, Lzendesk/support/request/RequestConfiguration;->getTags()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lzendesk/support/CreateRequest;->setTags(Ljava/util/List;)V

    .line 95
    :cond_1
    invoke-virtual {p2}, Lzendesk/support/request/RequestConfiguration;->getTicketFormId()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_2

    .line 96
    invoke-virtual {p2}, Lzendesk/support/request/RequestConfiguration;->getTicketFormId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lzendesk/support/CreateRequest;->setTicketFormId(Ljava/lang/Long;)V

    .line 99
    :cond_2
    invoke-virtual {p2}, Lzendesk/support/request/RequestConfiguration;->getCustomFields()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/zendesk/util/CollectionUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 100
    invoke-virtual {p2}, Lzendesk/support/request/RequestConfiguration;->getCustomFields()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lzendesk/support/CreateRequest;->setCustomFields(Ljava/util/List;)V

    :cond_3
    return-object v0
.end method

.method private uploadAttachments(Lzendesk/support/CreateRequest;Ljava/util/List;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/CreateRequest;",
            "Ljava/util/List<",
            "Lzendesk/support/AttachmentFile;",
            ">;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/support/Request;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    .line 49
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 51
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/AttachmentFile;

    move-object/from16 v11, p0

    .line 54
    iget-object v12, v11, Lzendesk/support/RequestCreator;->uploadProvider:Lzendesk/support/UploadProvider;

    .line 55
    invoke-virtual {v0}, Lzendesk/support/AttachmentFile;->getFileName()Ljava/lang/String;

    move-result-object v13

    .line 56
    invoke-virtual {v0}, Lzendesk/support/AttachmentFile;->getFile()Ljava/io/File;

    move-result-object v14

    .line 57
    invoke-virtual {v0}, Lzendesk/support/AttachmentFile;->getMimeType()Ljava/lang/String;

    move-result-object v15

    new-instance v6, Lzendesk/support/RequestCreator$1;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v3, v8

    move v4, v7

    move-object/from16 v5, p1

    move/from16 v16, v7

    move-object v7, v6

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lzendesk/support/RequestCreator$1;-><init>(Lzendesk/support/RequestCreator;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;ILzendesk/support/CreateRequest;Lcom/zendesk/service/ZendeskCallback;)V

    .line 54
    invoke-interface {v12, v13, v14, v15, v7}, Lzendesk/support/UploadProvider;->uploadAttachment(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V

    move/from16 v7, v16

    goto :goto_0

    :cond_0
    move-object/from16 v11, p0

    return-void
.end method


# virtual methods
.method createRequest(Ljava/lang/String;Lzendesk/support/request/RequestConfiguration;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lzendesk/support/request/RequestConfiguration;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/support/Request;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Lzendesk/support/RequestCreator;->buildCreateRequestObject(Ljava/lang/String;Lzendesk/support/request/RequestConfiguration;)Lzendesk/support/CreateRequest;

    move-result-object p1

    .line 36
    invoke-virtual {p2}, Lzendesk/support/request/RequestConfiguration;->getFilesAsAttachments()Ljava/util/List;

    move-result-object p2

    .line 38
    invoke-static {p2}, Lcom/zendesk/util/CollectionUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lzendesk/support/RequestCreator;->uploadAttachments(Lzendesk/support/CreateRequest;Ljava/util/List;Lcom/zendesk/service/ZendeskCallback;)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object p2, p0, Lzendesk/support/RequestCreator;->requestProvider:Lzendesk/support/RequestProvider;

    invoke-interface {p2, p1, p3}, Lzendesk/support/RequestProvider;->createRequest(Lzendesk/support/CreateRequest;Lcom/zendesk/service/ZendeskCallback;)V

    :goto_0
    return-void
.end method
