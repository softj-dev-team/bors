.class Lzendesk/support/request/ComponentMessageComposer$MessageComposerSelector;
.super Ljava/lang/Object;
.source "ComponentMessageComposer.java"

# interfaces
.implements Lzendesk/support/suas/StateSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/ComponentMessageComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageComposerSelector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzendesk/support/suas/StateSelector<",
        "Lzendesk/support/request/ComponentMessageComposer$MessageComposerModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic selectData(Lzendesk/support/suas/State;)Ljava/lang/Object;
    .locals 0

    .line 149
    invoke-virtual {p0, p1}, Lzendesk/support/request/ComponentMessageComposer$MessageComposerSelector;->selectData(Lzendesk/support/suas/State;)Lzendesk/support/request/ComponentMessageComposer$MessageComposerModel;

    move-result-object p1

    return-object p1
.end method

.method public selectData(Lzendesk/support/suas/State;)Lzendesk/support/request/ComponentMessageComposer$MessageComposerModel;
    .locals 10

    .line 153
    invoke-static {p1}, Lzendesk/support/request/StateAttachments;->fromState(Lzendesk/support/suas/State;)Lzendesk/support/request/StateAttachments;

    move-result-object v0

    .line 154
    invoke-static {p1}, Lzendesk/support/request/StateConfig;->fromState(Lzendesk/support/suas/State;)Lzendesk/support/request/StateConfig;

    move-result-object v1

    .line 155
    invoke-static {p1}, Lzendesk/support/request/StateConversation;->fromState(Lzendesk/support/suas/State;)Lzendesk/support/request/StateConversation;

    move-result-object p1

    .line 157
    new-instance v4, Ljava/util/ArrayList;

    .line 158
    invoke-virtual {v0}, Lzendesk/support/request/StateAttachments;->getAllSelectedAttachments()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 160
    invoke-virtual {v0}, Lzendesk/support/request/StateAttachments;->getSelectedAttachments()Ljava/util/List;

    move-result-object v0

    .line 159
    invoke-static {v0}, Lcom/zendesk/util/CollectionUtils;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 161
    invoke-virtual {p1}, Lzendesk/support/request/StateConversation;->getRemoteId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zendesk/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v7

    .line 162
    invoke-virtual {v1}, Lzendesk/support/request/StateConfig;->getSettings()Lzendesk/support/request/StateSettings;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/support/request/StateSettings;->isAttachmentsEnabled()Z

    move-result v8

    .line 163
    invoke-virtual {p1}, Lzendesk/support/request/StateConversation;->getStatus()Lzendesk/support/RequestStatus;

    move-result-object p1

    sget-object v0, Lzendesk/support/RequestStatus;->Closed:Lzendesk/support/RequestStatus;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v9, 0x0

    .line 165
    :goto_0
    new-instance p1, Lzendesk/support/request/ComponentMessageComposer$MessageComposerModel;

    .line 168
    invoke-virtual {v1}, Lzendesk/support/request/StateConfig;->getSettings()Lzendesk/support/request/StateSettings;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/support/request/StateSettings;->getMaxAttachmentSize()J

    move-result-wide v5

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lzendesk/support/request/ComponentMessageComposer$MessageComposerModel;-><init>(Ljava/util/List;Ljava/util/List;JZZZ)V

    return-object p1
.end method
