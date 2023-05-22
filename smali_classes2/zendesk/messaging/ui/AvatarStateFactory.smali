.class Lzendesk/messaging/ui/AvatarStateFactory;
.super Ljava/lang/Object;
.source "AvatarStateFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method createAvatarState(Lzendesk/messaging/AgentDetails;)Lzendesk/messaging/ui/AvatarState;
    .locals 4

    .line 19
    invoke-virtual {p1}, Lzendesk/messaging/AgentDetails;->getAgentName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zendesk/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p1}, Lzendesk/messaging/AgentDetails;->getAgentName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 22
    :goto_0
    new-instance v1, Lzendesk/messaging/ui/AvatarState;

    invoke-virtual {p1}, Lzendesk/messaging/AgentDetails;->getAgentId()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual {p1}, Lzendesk/messaging/AgentDetails;->getAvatarPath()Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-virtual {p1}, Lzendesk/messaging/AgentDetails;->getAvatarDrawableRes()Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, v2, v0, v3, p1}, Lzendesk/messaging/ui/AvatarState;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v1
.end method
