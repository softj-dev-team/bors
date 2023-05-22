.class Lzendesk/support/request/StateConversation$Builder;
.super Ljava/lang/Object;
.source "StateConversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/StateConversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private attachmentIdMapper:Lzendesk/support/request/StateIdMapper;

.field private hasAgentReplies:Z

.field private localId:Ljava/lang/String;

.field private messageIdMapper:Lzendesk/support/request/StateIdMapper;

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/request/StateMessage;",
            ">;"
        }
    .end annotation
.end field

.field private remoteId:Ljava/lang/String;

.field private status:Lzendesk/support/RequestStatus;

.field private users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lzendesk/support/RequestStatus;ZLjava/util/List;Ljava/util/List;Lzendesk/support/request/StateIdMapper;Lzendesk/support/request/StateIdMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lzendesk/support/RequestStatus;",
            "Z",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateMessage;",
            ">;",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestUser;",
            ">;",
            "Lzendesk/support/request/StateIdMapper;",
            "Lzendesk/support/request/StateIdMapper;",
            ")V"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lzendesk/support/request/StateConversation$Builder;->localId:Ljava/lang/String;

    .line 124
    iput-object p2, p0, Lzendesk/support/request/StateConversation$Builder;->remoteId:Ljava/lang/String;

    .line 125
    iput-object p3, p0, Lzendesk/support/request/StateConversation$Builder;->status:Lzendesk/support/RequestStatus;

    .line 126
    iput-boolean p4, p0, Lzendesk/support/request/StateConversation$Builder;->hasAgentReplies:Z

    .line 127
    iput-object p5, p0, Lzendesk/support/request/StateConversation$Builder;->messages:Ljava/util/List;

    .line 128
    iput-object p6, p0, Lzendesk/support/request/StateConversation$Builder;->users:Ljava/util/List;

    .line 129
    iput-object p7, p0, Lzendesk/support/request/StateConversation$Builder;->attachmentIdMapper:Lzendesk/support/request/StateIdMapper;

    .line 130
    iput-object p8, p0, Lzendesk/support/request/StateConversation$Builder;->messageIdMapper:Lzendesk/support/request/StateIdMapper;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lzendesk/support/RequestStatus;ZLjava/util/List;Ljava/util/List;Lzendesk/support/request/StateIdMapper;Lzendesk/support/request/StateIdMapper;Lzendesk/support/request/StateConversation$1;)V
    .locals 0

    .line 108
    invoke-direct/range {p0 .. p8}, Lzendesk/support/request/StateConversation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lzendesk/support/RequestStatus;ZLjava/util/List;Ljava/util/List;Lzendesk/support/request/StateIdMapper;Lzendesk/support/request/StateIdMapper;)V

    return-void
.end method


# virtual methods
.method build()Lzendesk/support/request/StateConversation;
    .locals 11

    .line 177
    new-instance v10, Lzendesk/support/request/StateConversation;

    iget-object v1, p0, Lzendesk/support/request/StateConversation$Builder;->localId:Ljava/lang/String;

    iget-object v2, p0, Lzendesk/support/request/StateConversation$Builder;->remoteId:Ljava/lang/String;

    iget-object v3, p0, Lzendesk/support/request/StateConversation$Builder;->status:Lzendesk/support/RequestStatus;

    iget-boolean v4, p0, Lzendesk/support/request/StateConversation$Builder;->hasAgentReplies:Z

    iget-object v5, p0, Lzendesk/support/request/StateConversation$Builder;->messages:Ljava/util/List;

    iget-object v6, p0, Lzendesk/support/request/StateConversation$Builder;->users:Ljava/util/List;

    iget-object v7, p0, Lzendesk/support/request/StateConversation$Builder;->attachmentIdMapper:Lzendesk/support/request/StateIdMapper;

    iget-object v8, p0, Lzendesk/support/request/StateConversation$Builder;->messageIdMapper:Lzendesk/support/request/StateIdMapper;

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lzendesk/support/request/StateConversation;-><init>(Ljava/lang/String;Ljava/lang/String;Lzendesk/support/RequestStatus;ZLjava/util/List;Ljava/util/List;Lzendesk/support/request/StateIdMapper;Lzendesk/support/request/StateIdMapper;Lzendesk/support/request/StateConversation$1;)V

    return-object v10
.end method

.method setAttachmentIdMapper(Lzendesk/support/request/StateIdMapper;)Lzendesk/support/request/StateConversation$Builder;
    .locals 0

    .line 162
    iput-object p1, p0, Lzendesk/support/request/StateConversation$Builder;->attachmentIdMapper:Lzendesk/support/request/StateIdMapper;

    return-object p0
.end method

.method setHasAgentReplies(Z)Lzendesk/support/request/StateConversation$Builder;
    .locals 0

    .line 172
    iput-boolean p1, p0, Lzendesk/support/request/StateConversation$Builder;->hasAgentReplies:Z

    return-object p0
.end method

.method setLocalId(Ljava/lang/String;)Lzendesk/support/request/StateConversation$Builder;
    .locals 0

    .line 134
    iput-object p1, p0, Lzendesk/support/request/StateConversation$Builder;->localId:Ljava/lang/String;

    return-object p0
.end method

.method setMessageIdMapper(Lzendesk/support/request/StateIdMapper;)Lzendesk/support/request/StateConversation$Builder;
    .locals 0

    .line 167
    iput-object p1, p0, Lzendesk/support/request/StateConversation$Builder;->messageIdMapper:Lzendesk/support/request/StateIdMapper;

    return-object p0
.end method

.method setMessages(Ljava/util/List;)Lzendesk/support/request/StateConversation$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateMessage;",
            ">;)",
            "Lzendesk/support/request/StateConversation$Builder;"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lzendesk/support/request/StateConversation$Builder;->messages:Ljava/util/List;

    return-object p0
.end method

.method setRemoteId(Ljava/lang/String;)Lzendesk/support/request/StateConversation$Builder;
    .locals 0

    .line 139
    iput-object p1, p0, Lzendesk/support/request/StateConversation$Builder;->remoteId:Ljava/lang/String;

    return-object p0
.end method

.method setStatus(Lzendesk/support/RequestStatus;)Lzendesk/support/request/StateConversation$Builder;
    .locals 0

    .line 144
    iput-object p1, p0, Lzendesk/support/request/StateConversation$Builder;->status:Lzendesk/support/RequestStatus;

    return-object p0
.end method

.method setUsers(Ljava/util/List;)Lzendesk/support/request/StateConversation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestUser;",
            ">;)",
            "Lzendesk/support/request/StateConversation$Builder;"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lzendesk/support/request/StateConversation$Builder;->users:Ljava/util/List;

    .line 155
    iget-boolean v0, p0, Lzendesk/support/request/StateConversation$Builder;->hasAgentReplies:Z

    if-nez v0, :cond_0

    .line 156
    invoke-static {p1}, Lzendesk/support/request/StateRequestUser;->containsAgent(Ljava/util/List;)Z

    move-result p1

    iput-boolean p1, p0, Lzendesk/support/request/StateConversation$Builder;->hasAgentReplies:Z

    :cond_0
    return-object p0
.end method
