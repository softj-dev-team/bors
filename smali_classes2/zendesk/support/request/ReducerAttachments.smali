.class Lzendesk/support/request/ReducerAttachments;
.super Lzendesk/support/suas/Reducer;
.source "ReducerAttachments.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzendesk/support/suas/Reducer<",
        "Lzendesk/support/request/StateAttachments;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_FORMAT_ATTACHMENT_DROPPED:Ljava/lang/String; = "Cannot add attachment %s. Size is %d, max attachment size is %d."

.field private static final LOG_MESSAGE_ATTACHMENTS_DISABLED:Ljava/lang/String; = "Cannot add attachments, they are disabled in your Zendesk settings."


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lzendesk/support/suas/Reducer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getInitialState()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lzendesk/support/request/ReducerAttachments;->getInitialState()Lzendesk/support/request/StateAttachments;

    move-result-object v0

    return-object v0
.end method

.method public getInitialState()Lzendesk/support/request/StateAttachments;
    .locals 1

    .line 118
    new-instance v0, Lzendesk/support/request/StateAttachments;

    invoke-direct {v0}, Lzendesk/support/request/StateAttachments;-><init>()V

    return-object v0
.end method

.method public bridge synthetic reduce(Ljava/lang/Object;Lzendesk/support/suas/Action;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Lzendesk/support/request/StateAttachments;

    invoke-virtual {p0, p1, p2}, Lzendesk/support/request/ReducerAttachments;->reduce(Lzendesk/support/request/StateAttachments;Lzendesk/support/suas/Action;)Lzendesk/support/request/StateAttachments;

    move-result-object p1

    return-object p1
.end method

.method public reduce(Lzendesk/support/request/StateAttachments;Lzendesk/support/suas/Action;)Lzendesk/support/request/StateAttachments;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/request/StateAttachments;",
            "Lzendesk/support/suas/Action<",
            "*>;)",
            "Lzendesk/support/request/StateAttachments;"
        }
    .end annotation

    .line 31
    invoke-virtual {p2}, Lzendesk/support/suas/Action;->getActionType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "CLEAR_ATTACHMENTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "START_CONFIG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "LOAD_SETTINGS_SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "ATTACHMENTS_DESELECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "ATTACHMENTS_SELECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    :goto_0
    packed-switch v6, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 107
    :pswitch_0
    new-instance p1, Lzendesk/support/request/StateAttachments;

    invoke-direct {p1}, Lzendesk/support/request/StateAttachments;-><init>()V

    return-object p1

    .line 51
    :pswitch_1
    invoke-virtual {p2}, Lzendesk/support/suas/Action;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lzendesk/support/request/RequestConfiguration;

    .line 53
    invoke-virtual {p2}, Lzendesk/support/request/RequestConfiguration;->getFiles()Ljava/util/List;

    move-result-object p2

    .line 55
    invoke-virtual {p1}, Lzendesk/support/request/StateAttachments;->newBuilder()Lzendesk/support/request/StateAttachments$Builder;

    move-result-object p1

    .line 56
    invoke-virtual {p1, p2}, Lzendesk/support/request/StateAttachments$Builder;->addAllSelectedAttachments(Ljava/util/List;)Lzendesk/support/request/StateAttachments$Builder;

    move-result-object p1

    .line 57
    invoke-virtual {p1, p2}, Lzendesk/support/request/StateAttachments$Builder;->setSelectedAttachments(Ljava/util/List;)Lzendesk/support/request/StateAttachments$Builder;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lzendesk/support/request/StateAttachments$Builder;->build()Lzendesk/support/request/StateAttachments;

    move-result-object p1

    return-object p1

    .line 82
    :pswitch_2
    invoke-virtual {p2}, Lzendesk/support/suas/Action;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lzendesk/support/request/StateSettings;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-virtual {p2}, Lzendesk/support/request/StateSettings;->isAttachmentsEnabled()Z

    move-result v1

    const-string v6, "RequestActivity"

    if-eqz v1, :cond_7

    .line 87
    invoke-virtual {p2}, Lzendesk/support/request/StateSettings;->getMaxAttachmentSize()J

    move-result-wide v7

    .line 89
    invoke-virtual {p1}, Lzendesk/support/request/StateAttachments;->getSelectedAttachments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/request/StateRequestAttachment;

    .line 90
    invoke-virtual {v1}, Lzendesk/support/request/StateRequestAttachment;->getSize()J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-lez v11, :cond_5

    new-array v9, v2, [Ljava/lang/Object;

    .line 92
    invoke-virtual {v1}, Lzendesk/support/request/StateRequestAttachment;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-virtual {v1}, Lzendesk/support/request/StateRequestAttachment;->getSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v3

    const-string v1, "Cannot add attachment %s. Size is %d, max attachment size is %d."

    .line 91
    invoke-static {v6, v1, v9}, Lcom/zendesk/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 94
    :cond_5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 101
    :cond_6
    invoke-virtual {p1}, Lzendesk/support/request/StateAttachments;->newBuilder()Lzendesk/support/request/StateAttachments$Builder;

    move-result-object p1

    .line 102
    invoke-virtual {p1, v0}, Lzendesk/support/request/StateAttachments$Builder;->setSelectedAttachments(Ljava/util/List;)Lzendesk/support/request/StateAttachments$Builder;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lzendesk/support/request/StateAttachments$Builder;->build()Lzendesk/support/request/StateAttachments;

    move-result-object p1

    return-object p1

    :cond_7
    new-array p1, v5, [Ljava/lang/Object;

    const-string p2, "Cannot add attachments, they are disabled in your Zendesk settings."

    .line 98
    invoke-static {v6, p2, p1}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    new-instance p1, Lzendesk/support/request/StateAttachments;

    invoke-direct {p1}, Lzendesk/support/request/StateAttachments;-><init>()V

    return-object p1

    .line 62
    :pswitch_3
    invoke-virtual {p2}, Lzendesk/support/suas/Action;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 65
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/belvedere/MediaResult;

    .line 66
    invoke-virtual {v1}, Lzendesk/belvedere/MediaResult;->getOriginalUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 69
    :cond_8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-virtual {p1}, Lzendesk/support/request/StateAttachments;->getSelectedAttachments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/support/request/StateRequestAttachment;

    .line 71
    invoke-virtual {v2}, Lzendesk/support/request/StateRequestAttachment;->getParsedLocalUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 72
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 76
    :cond_a
    invoke-virtual {p1}, Lzendesk/support/request/StateAttachments;->newBuilder()Lzendesk/support/request/StateAttachments$Builder;

    move-result-object p1

    .line 77
    invoke-virtual {p1, p2}, Lzendesk/support/request/StateAttachments$Builder;->setSelectedAttachments(Ljava/util/List;)Lzendesk/support/request/StateAttachments$Builder;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lzendesk/support/request/StateAttachments$Builder;->build()Lzendesk/support/request/StateAttachments;

    move-result-object p1

    return-object p1

    .line 34
    :pswitch_4
    invoke-virtual {p2}, Lzendesk/support/suas/Action;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/belvedere/MediaResult;

    .line 38
    invoke-static {v1}, Lzendesk/support/request/StateRequestAttachment;->convert(Lzendesk/belvedere/MediaResult;)Lzendesk/support/request/StateRequestAttachment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    new-array p2, v3, [Ljava/util/List;

    aput-object v0, p2, v5

    .line 42
    invoke-virtual {p1}, Lzendesk/support/request/StateAttachments;->getSelectedAttachments()Ljava/util/List;

    move-result-object v1

    aput-object v1, p2, v4

    invoke-static {p2}, Lcom/zendesk/util/CollectionUtils;->combineLists([Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 44
    invoke-virtual {p1}, Lzendesk/support/request/StateAttachments;->newBuilder()Lzendesk/support/request/StateAttachments$Builder;

    move-result-object p1

    .line 45
    invoke-virtual {p1, v0}, Lzendesk/support/request/StateAttachments$Builder;->addAllSelectedAttachments(Ljava/util/List;)Lzendesk/support/request/StateAttachments$Builder;

    move-result-object p1

    .line 46
    invoke-virtual {p1, p2}, Lzendesk/support/request/StateAttachments$Builder;->setSelectedAttachments(Ljava/util/List;)Lzendesk/support/request/StateAttachments$Builder;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lzendesk/support/request/StateAttachments$Builder;->build()Lzendesk/support/request/StateAttachments;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x4f0bc996 -> :sswitch_4
        -0x25dd89d5 -> :sswitch_3
        -0x5716600 -> :sswitch_2
        0xc59b9df -> :sswitch_1
        0x3a62a07e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
