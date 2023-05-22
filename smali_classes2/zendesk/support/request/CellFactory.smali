.class Lzendesk/support/request/CellFactory;
.super Ljava/lang/Object;
.source "CellFactory.java"


# instance fields
.field private final documentRenderer:Lzendesk/support/request/DocumentRenderer;

.field private final htmlParser:Lzendesk/support/request/DocumentRenderer$HtmlParser;

.field private final utils:Lzendesk/support/request/CellBindHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lzendesk/support/request/ActionFactory;Lzendesk/support/suas/Dispatcher;Lzendesk/core/ActionHandlerRegistry;Lzendesk/configurations/ConfigurationHelper;Lzendesk/configurations/Configuration;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lzendesk/support/request/CellBindHelper;

    invoke-direct {v0, p1, p2, p3, p4}, Lzendesk/support/request/CellBindHelper;-><init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lzendesk/support/request/ActionFactory;Lzendesk/support/suas/Dispatcher;)V

    iput-object v0, p0, Lzendesk/support/request/CellFactory;->utils:Lzendesk/support/request/CellBindHelper;

    .line 37
    new-instance p2, Lzendesk/support/request/DocumentRenderer$HtmlParser;

    invoke-direct {p2}, Lzendesk/support/request/DocumentRenderer$HtmlParser;-><init>()V

    iput-object p2, p0, Lzendesk/support/request/CellFactory;->htmlParser:Lzendesk/support/request/DocumentRenderer$HtmlParser;

    .line 38
    new-instance p2, Lzendesk/support/request/DocumentRenderer;

    invoke-direct {p2, p1, p5, p6, p7}, Lzendesk/support/request/DocumentRenderer;-><init>(Landroid/content/Context;Lzendesk/core/ActionHandlerRegistry;Lzendesk/configurations/ConfigurationHelper;Lzendesk/configurations/Configuration;)V

    iput-object p2, p0, Lzendesk/support/request/CellFactory;->documentRenderer:Lzendesk/support/request/DocumentRenderer;

    return-void
.end method

.method constructor <init>(Lzendesk/support/request/CellBindHelper;Lzendesk/support/request/DocumentRenderer$HtmlParser;Lzendesk/support/request/DocumentRenderer;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lzendesk/support/request/CellFactory;->utils:Lzendesk/support/request/CellBindHelper;

    .line 45
    iput-object p2, p0, Lzendesk/support/request/CellFactory;->htmlParser:Lzendesk/support/request/DocumentRenderer$HtmlParser;

    .line 46
    iput-object p3, p0, Lzendesk/support/request/CellFactory;->documentRenderer:Lzendesk/support/request/DocumentRenderer;

    return-void
.end method

.method private generateRichText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    .line 367
    iget-object v0, p0, Lzendesk/support/request/CellFactory;->documentRenderer:Lzendesk/support/request/DocumentRenderer;

    iget-object v1, p0, Lzendesk/support/request/CellFactory;->htmlParser:Lzendesk/support/request/DocumentRenderer$HtmlParser;

    invoke-virtual {v1, p1, p2}, Lzendesk/support/request/DocumentRenderer$HtmlParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lzendesk/support/request/DocumentRenderer$RichRenderingDocument;

    move-result-object p1

    invoke-virtual {v0, p1}, Lzendesk/support/request/DocumentRenderer;->render(Lzendesk/support/request/DocumentRenderer$RichRenderingDocument;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private markMessagesAsErrored(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lzendesk/support/request/CellType$Stateful;",
            ">;",
            "Ljava/util/Collection<",
            "Lzendesk/support/request/StateMessage;",
            ">;)",
            "Ljava/util/List<",
            "Lzendesk/support/request/CellType$Base;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 154
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/request/CellType$Stateful;

    .line 156
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 157
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v3, v2}, Lzendesk/support/request/CellType$Stateful;->markAsErrored(Ljava/util/List;Z)Lzendesk/support/request/CellType$Stateful;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method calculatePositionTypes(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/CellType$Base;",
            ">;)",
            "Ljava/util/List<",
            "Lzendesk/support/request/CellType$Base;",
            ">;"
        }
    .end annotation

    .line 175
    invoke-static {p1}, Lcom/zendesk/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 179
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    .line 182
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 183
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzendesk/support/request/CellType$Base;

    if-eqz v3, :cond_1

    .line 185
    invoke-interface {v4}, Lzendesk/support/request/CellType$Base;->getGroupId()J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-eqz v7, :cond_2

    :cond_1
    const/4 v1, 0x2

    .line 186
    invoke-interface {v4, v1}, Lzendesk/support/request/CellType$Base;->setPositionType(I)V

    .line 189
    :cond_2
    instance-of v1, v4, Lzendesk/support/request/CellType$Stateful;

    if-eqz v1, :cond_4

    .line 190
    move-object v1, v4

    check-cast v1, Lzendesk/support/request/CellType$Stateful;

    .line 191
    invoke-interface {v1}, Lzendesk/support/request/CellType$Stateful;->isMarkedAsDelivered()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Lzendesk/support/request/CellType$Stateful;->isLastErrorCellOfBlock()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/16 v1, 0x8

    .line 192
    invoke-interface {v4, v1}, Lzendesk/support/request/CellType$Base;->setPositionType(I)V

    .line 196
    :cond_4
    invoke-interface {v4}, Lzendesk/support/request/CellType$Base;->getGroupId()J

    move-result-wide v1

    .line 197
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 200
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/support/request/CellType$Base;

    const/16 v1, 0x10

    invoke-interface {p1, v1}, Lzendesk/support/request/CellType$Base;->setPositionType(I)V

    return-object v0
.end method

.method findFirstDelivered(Ljava/util/List;)Lzendesk/support/request/StateMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateMessage;",
            ">;)",
            "Lzendesk/support/request/StateMessage;"
        }
    .end annotation

    .line 217
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/request/StateMessage;

    .line 218
    invoke-virtual {v0}, Lzendesk/support/request/StateMessage;->getState()Lzendesk/support/request/StateMessageStatus;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/support/request/StateMessageStatus;->getStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method findUserForId(Ljava/util/List;J)Lzendesk/support/request/StateRequestUser;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestUser;",
            ">;J)",
            "Lzendesk/support/request/StateRequestUser;"
        }
    .end annotation

    .line 358
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/request/StateRequestUser;

    .line 359
    invoke-virtual {v0}, Lzendesk/support/request/StateRequestUser;->getId()J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-nez v3, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public generateCells(Ljava/util/List;Ljava/util/List;Lzendesk/support/RequestStatus;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateMessage;",
            ">;",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestUser;",
            ">;",
            "Lzendesk/support/RequestStatus;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lzendesk/support/request/CellType$Base;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Lzendesk/support/request/CellFactory;->findFirstDelivered(Ljava/util/List;)Lzendesk/support/request/StateMessage;

    move-result-object v7

    .line 55
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lzendesk/support/request/StateMessage;

    .line 58
    invoke-virtual {v3}, Lzendesk/support/request/StateMessage;->getUserId()J

    move-result-wide v1

    invoke-virtual {p0, p2, v1, v2}, Lzendesk/support/request/CellFactory;->findUserForId(Ljava/util/List;J)Lzendesk/support/request/StateRequestUser;

    move-result-object v1

    .line 59
    invoke-virtual {p0, v1}, Lzendesk/support/request/CellFactory;->isUserAgent(Lzendesk/support/request/StateRequestUser;)Z

    move-result v2

    .line 62
    invoke-virtual {p0, v3, v2, v1}, Lzendesk/support/request/CellFactory;->getViewModelsForMessage(Lzendesk/support/request/StateMessage;ZLzendesk/support/request/StateRequestUser;)Ljava/util/List;

    move-result-object v4

    xor-int/lit8 v6, v2, 0x1

    move-object v1, p0

    move-object v2, v7

    move-object v5, p4

    .line 65
    invoke-virtual/range {v1 .. v6}, Lzendesk/support/request/CellFactory;->insertSystemMessage(Lzendesk/support/request/StateMessage;Lzendesk/support/request/StateMessage;Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 68
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0, v0}, Lzendesk/support/request/CellFactory;->markCellsErrored(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lzendesk/support/request/CellFactory;->markLastDeliveredCell(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Lzendesk/support/request/CellFactory;->insertDateCells(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 81
    invoke-virtual {p0, p1, p3}, Lzendesk/support/request/CellFactory;->insertRequestStatus(Ljava/util/List;Lzendesk/support/RequestStatus;)Ljava/util/List;

    move-result-object p1

    .line 84
    invoke-virtual {p0, p1}, Lzendesk/support/request/CellFactory;->markAgentCells(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Lzendesk/support/request/CellFactory;->calculatePositionTypes(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method getAgentAttachment(Lzendesk/support/request/StateRequestAttachment;Lzendesk/support/request/StateRequestUser;Ljava/util/Date;)Lzendesk/support/request/CellType$Base;
    .locals 2

    .line 311
    invoke-static {p1}, Lzendesk/support/request/UtilsAttachment;->isImageAttachment(Lzendesk/support/request/StateRequestAttachment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    new-instance v0, Lzendesk/support/request/CellAgentAttachmentImage;

    iget-object v1, p0, Lzendesk/support/request/CellFactory;->utils:Lzendesk/support/request/CellBindHelper;

    invoke-direct {v0, v1, p1, p2, p3}, Lzendesk/support/request/CellAgentAttachmentImage;-><init>(Lzendesk/support/request/CellBindHelper;Lzendesk/support/request/StateRequestAttachment;Lzendesk/support/request/StateRequestUser;Ljava/util/Date;)V

    return-object v0

    .line 314
    :cond_0
    new-instance v0, Lzendesk/support/request/CellAgentAttachmentGeneric;

    iget-object v1, p0, Lzendesk/support/request/CellFactory;->utils:Lzendesk/support/request/CellBindHelper;

    invoke-direct {v0, v1, p1, p2, p3}, Lzendesk/support/request/CellAgentAttachmentGeneric;-><init>(Lzendesk/support/request/CellBindHelper;Lzendesk/support/request/StateRequestAttachment;Lzendesk/support/request/StateRequestUser;Ljava/util/Date;)V

    return-object v0
.end method

.method getAgentMessage(Lzendesk/support/request/StateMessage;Lzendesk/support/request/StateRequestUser;)Lzendesk/support/request/CellType$Base;
    .locals 4

    .line 320
    new-instance v0, Lzendesk/support/request/CellAgentMessage;

    iget-object v1, p0, Lzendesk/support/request/CellFactory;->utils:Lzendesk/support/request/CellBindHelper;

    .line 323
    invoke-virtual {p1}, Lzendesk/support/request/StateMessage;->getHtmlBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lzendesk/support/request/StateMessage;->getPlainBody()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lzendesk/support/request/CellFactory;->generateRichText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2, p2}, Lzendesk/support/request/CellAgentMessage;-><init>(Lzendesk/support/request/CellBindHelper;Lzendesk/support/request/StateMessage;Ljava/lang/CharSequence;Lzendesk/support/request/StateRequestUser;)V

    return-object v0
.end method

.method getUserAttachment(Lzendesk/support/request/StateMessage;Lzendesk/support/request/StateRequestAttachment;Ljava/util/Date;)Lzendesk/support/request/CellType$Base;
    .locals 21

    move-object/from16 v0, p0

    .line 330
    invoke-static/range {p2 .. p2}, Lzendesk/support/request/UtilsAttachment;->isImageAttachment(Lzendesk/support/request/StateRequestAttachment;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 331
    new-instance v1, Lzendesk/support/request/CellUserAttachmentImage;

    iget-object v4, v0, Lzendesk/support/request/CellFactory;->utils:Lzendesk/support/request/CellBindHelper;

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v11, 0x0

    move-object v3, v1

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v3 .. v11}, Lzendesk/support/request/CellUserAttachmentImage;-><init>(Lzendesk/support/request/CellBindHelper;Lzendesk/support/request/StateMessage;Lzendesk/support/request/StateRequestAttachment;Ljava/util/Date;ZZLjava/util/List;Z)V

    return-object v1

    .line 334
    :cond_0
    new-instance v1, Lzendesk/support/request/CellUserAttachmentGeneric;

    iget-object v13, v0, Lzendesk/support/request/CellFactory;->utils:Lzendesk/support/request/CellBindHelper;

    const/16 v17, 0x0

    const/16 v18, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v20, 0x0

    move-object v12, v1

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v19, v3

    invoke-direct/range {v12 .. v20}, Lzendesk/support/request/CellUserAttachmentGeneric;-><init>(Lzendesk/support/request/CellBindHelper;Lzendesk/support/request/StateMessage;Lzendesk/support/request/StateRequestAttachment;Ljava/util/Date;ZZLjava/util/List;Z)V

    return-object v1
.end method

.method getUserMessage(Lzendesk/support/request/StateMessage;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/request/StateMessage;",
            ")",
            "Ljava/util/List<",
            "Lzendesk/support/request/CellType$Base;",
            ">;"
        }
    .end annotation

    .line 341
    invoke-static {p1}, Lzendesk/support/request/UtilsAttachment;->hasAttachmentBody(Lzendesk/support/request/StateMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    invoke-virtual {p1}, Lzendesk/support/request/StateMessage;->getHtmlBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lzendesk/support/request/StateMessage;->getPlainBody()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lzendesk/support/request/CellFactory;->generateRichText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 343
    new-instance v0, Lzendesk/support/request/CellUserMessage;

    iget-object v3, p0, Lzendesk/support/request/CellFactory;->utils:Lzendesk/support/request/CellBindHelper;

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v8, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x0

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v9}, Lzendesk/support/request/CellUserMessage;-><init>(Lzendesk/support/request/CellBindHelper;Lzendesk/support/request/StateMessage;ZZLjava/lang/CharSequence;Ljava/util/List;Z)V

    .line 345
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 348
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method getViewModelsForMessage(Lzendesk/support/request/StateMessage;ZLzendesk/support/request/StateRequestUser;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/request/StateMessage;",
            "Z",
            "Lzendesk/support/request/StateRequestUser;",
            ")",
            "Ljava/util/List<",
            "Lzendesk/support/request/CellType$Base;",
            ">;"
        }
    .end annotation

    .line 287
    invoke-virtual {p1}, Lzendesk/support/request/StateMessage;->getAttachments()Ljava/util/List;

    move-result-object v0

    .line 288
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 291
    invoke-virtual {p0, p1, p3}, Lzendesk/support/request/CellFactory;->getAgentMessage(Lzendesk/support/request/StateMessage;Lzendesk/support/request/StateRequestUser;)Lzendesk/support/request/CellType$Base;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {p0, p1}, Lzendesk/support/request/CellFactory;->getUserMessage(Lzendesk/support/request/StateMessage;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    const/4 v2, 0x0

    .line 296
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_2

    .line 297
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzendesk/support/request/StateRequestAttachment;

    if-eqz p2, :cond_1

    .line 300
    invoke-virtual {p1}, Lzendesk/support/request/StateMessage;->getDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p0, v4, p3, v5}, Lzendesk/support/request/CellFactory;->getAgentAttachment(Lzendesk/support/request/StateRequestAttachment;Lzendesk/support/request/StateRequestUser;Ljava/util/Date;)Lzendesk/support/request/CellType$Base;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 302
    :cond_1
    invoke-virtual {p1}, Lzendesk/support/request/StateMessage;->getDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p0, p1, v4, v5}, Lzendesk/support/request/CellFactory;->getUserAttachment(Lzendesk/support/request/StateMessage;Lzendesk/support/request/StateRequestAttachment;Ljava/util/Date;)Lzendesk/support/request/CellType$Base;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method insertDateCells(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/CellType$Base;",
            ">;)",
            "Ljava/util/List<",
            "Lzendesk/support/request/CellType$Base;",
            ">;"
        }
    .end annotation

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 230
    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 232
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/support/request/CellType$Base;

    .line 233
    invoke-interface {v2}, Lzendesk/support/request/CellType$Base;->getTimeStamp()Ljava/util/Date;

    move-result-object v3

    invoke-static {v1, v3}, Lzendesk/support/request/UtilsDate;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 234
    invoke-interface {v2}, Lzendesk/support/request/CellType$Base;->getTimeStamp()Ljava/util/Date;

    move-result-object v1

    .line 235
    invoke-static {v1}, Lzendesk/support/request/UtilsDate;->getBeginOfDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 236
    new-instance v5, Lzendesk/support/request/CellSystemMessages$CellDateMessage;

    iget-object v6, p0, Lzendesk/support/request/CellFactory;->utils:Lzendesk/support/request/CellBindHelper;

    invoke-direct {v5, v6, v3, v4, v1}, Lzendesk/support/request/CellSystemMessages$CellDateMessage;-><init>(Lzendesk/support/request/CellBindHelper;JLjava/util/Date;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method insertRequestStatus(Ljava/util/List;Lzendesk/support/RequestStatus;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/CellType$Base;",
            ">;",
            "Lzendesk/support/RequestStatus;",
            ")",
            "Ljava/util/List<",
            "Lzendesk/support/request/CellType$Base;",
            ">;"
        }
    .end annotation

    .line 165
    sget-object v0, Lzendesk/support/RequestStatus;->Closed:Lzendesk/support/RequestStatus;

    if-ne p2, v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 166
    new-instance v0, Lzendesk/support/request/CellSystemMessages$CellRequestStatus;

    iget-object v1, p0, Lzendesk/support/request/CellFactory;->utils:Lzendesk/support/request/CellBindHelper;

    invoke-direct {v0, v1, p2}, Lzendesk/support/request/CellSystemMessages$CellRequestStatus;-><init>(Lzendesk/support/request/CellBindHelper;Lzendesk/support/RequestStatus;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method insertSystemMessage(Lzendesk/support/request/StateMessage;Lzendesk/support/request/StateMessage;Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/request/StateMessage;",
            "Lzendesk/support/request/StateMessage;",
            "Ljava/util/List<",
            "Lzendesk/support/request/CellType$Base;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lzendesk/support/request/CellType$Base;",
            ">;"
        }
    .end annotation

    if-eqz p5, :cond_0

    if-ne p2, p1, :cond_0

    .line 208
    invoke-static {p4}, Lcom/zendesk/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 209
    new-instance p1, Lzendesk/support/request/CellSystemMessages$CellSystemMessage;

    invoke-virtual {p2}, Lzendesk/support/request/StateMessage;->getDate()Ljava/util/Date;

    move-result-object p2

    invoke-direct {p1, p2, p4}, Lzendesk/support/request/CellSystemMessages$CellSystemMessage;-><init>(Ljava/util/Date;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p3
.end method

.method isUserAgent(Lzendesk/support/request/StateRequestUser;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 353
    invoke-virtual {p1}, Lzendesk/support/request/StateRequestUser;->isAgent()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method markAgentCells(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/CellType$Base;",
            ">;)",
            "Ljava/util/List<",
            "Lzendesk/support/request/CellType$Base;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const-wide/high16 v2, -0x8000000000000000L

    move-wide v4, v2

    :goto_0
    if-ltz v0, :cond_2

    .line 97
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lzendesk/support/request/CellType$Agent;

    if-eqz v6, :cond_1

    .line 98
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lzendesk/support/request/CellType$Agent;

    .line 99
    invoke-interface {v6}, Lzendesk/support/request/CellType$Agent;->getAgent()Lzendesk/support/request/StateRequestUser;

    move-result-object v7

    invoke-virtual {v7}, Lzendesk/support/request/StateRequestUser;->getId()J

    move-result-wide v7

    cmp-long v9, v4, v7

    if-eqz v9, :cond_0

    .line 100
    invoke-interface {v6, v1}, Lzendesk/support/request/CellType$Agent;->showAgentName(Z)V

    .line 101
    invoke-interface {v6}, Lzendesk/support/request/CellType$Agent;->getAgent()Lzendesk/support/request/StateRequestUser;

    move-result-object v4

    invoke-virtual {v4}, Lzendesk/support/request/StateRequestUser;->getId()J

    move-result-wide v4

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    .line 103
    invoke-interface {v6, v7}, Lzendesk/support/request/CellType$Agent;->showAgentName(Z)V

    goto :goto_1

    :cond_1
    move-wide v4, v2

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method markCellsErrored(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/CellType$Base;",
            ">;)",
            "Ljava/util/List<",
            "Lzendesk/support/request/CellType$Base;",
            ">;"
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 119
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/support/request/CellType$Base;

    .line 122
    instance-of v4, v3, Lzendesk/support/request/CellType$Stateful;

    if-eqz v4, :cond_1

    .line 123
    move-object v4, v3

    check-cast v4, Lzendesk/support/request/CellType$Stateful;

    .line 125
    invoke-interface {v4}, Lzendesk/support/request/CellType$Stateful;->getStateMessage()Lzendesk/support/request/StateMessage;

    move-result-object v5

    invoke-virtual {v5}, Lzendesk/support/request/StateMessage;->getState()Lzendesk/support/request/StateMessageStatus;

    move-result-object v5

    invoke-virtual {v5}, Lzendesk/support/request/StateMessageStatus;->getStatus()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 126
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-interface {v4}, Lzendesk/support/request/CellType$Stateful;->getStateMessage()Lzendesk/support/request/StateMessage;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_0
    invoke-direct {p0, v0, v1}, Lzendesk/support/request/CellFactory;->markMessagesAsErrored(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 133
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    goto :goto_0

    .line 137
    :cond_1
    invoke-direct {p0, v0, v1}, Lzendesk/support/request/CellFactory;->markMessagesAsErrored(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 138
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 140
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    goto :goto_0

    .line 144
    :cond_2
    invoke-direct {p0, v0, v1}, Lzendesk/support/request/CellFactory;->markMessagesAsErrored(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v2
.end method

.method markLastDeliveredCell(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/CellType$Base;",
            ">;)",
            "Ljava/util/List<",
            "Lzendesk/support/request/CellType$Base;",
            ">;"
        }
    .end annotation

    .line 249
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/request/CellType$Base;

    .line 250
    instance-of v4, v1, Lzendesk/support/request/CellType$Stateful;

    if-eqz v4, :cond_0

    .line 251
    check-cast v1, Lzendesk/support/request/CellType$Stateful;

    invoke-interface {v1}, Lzendesk/support/request/CellType$Stateful;->getStateMessage()Lzendesk/support/request/StateMessage;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/support/request/StateMessage;->getState()Lzendesk/support/request/StateMessageStatus;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/support/request/StateMessageStatus;->getStatus()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 258
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    if-nez v0, :cond_5

    .line 263
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_1
    if-ltz v0, :cond_4

    .line 265
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzendesk/support/request/CellType$Base;

    .line 266
    instance-of v5, v4, Lzendesk/support/request/CellType$Stateful;

    if-eqz v5, :cond_3

    if-nez v2, :cond_3

    .line 268
    move-object v2, v4

    check-cast v2, Lzendesk/support/request/CellType$Stateful;

    .line 269
    invoke-interface {v2}, Lzendesk/support/request/CellType$Stateful;->getStateMessage()Lzendesk/support/request/StateMessage;

    move-result-object v5

    invoke-virtual {v5}, Lzendesk/support/request/StateMessage;->getState()Lzendesk/support/request/StateMessageStatus;

    move-result-object v5

    invoke-virtual {v5}, Lzendesk/support/request/StateMessageStatus;->getStatus()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 270
    invoke-interface {v2}, Lzendesk/support/request/CellType$Stateful;->markAsDelivered()Lzendesk/support/request/CellType$Stateful;

    move-result-object v4

    :cond_2
    const/4 v2, 0x1

    .line 274
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 277
    :cond_4
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_2

    .line 280
    :cond_5
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_2
    return-object v1
.end method
