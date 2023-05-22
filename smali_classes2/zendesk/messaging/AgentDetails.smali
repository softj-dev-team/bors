.class public Lzendesk/messaging/AgentDetails;
.super Ljava/lang/Object;
.source "AgentDetails.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final agentId:Ljava/lang/String;

.field private final agentName:Ljava/lang/String;

.field private final avatarDrawableRes:Ljava/lang/Integer;

.field private final avatarPath:Ljava/lang/String;

.field private final isBot:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 28
    invoke-direct/range {v0 .. v5}, Lzendesk/messaging/AgentDetails;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 32
    invoke-direct/range {v0 .. v5}, Lzendesk/messaging/AgentDetails;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lzendesk/messaging/AgentDetails;->agentName:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lzendesk/messaging/AgentDetails;->agentId:Ljava/lang/String;

    .line 46
    iput-boolean p3, p0, Lzendesk/messaging/AgentDetails;->isBot:Z

    .line 47
    iput-object p4, p0, Lzendesk/messaging/AgentDetails;->avatarDrawableRes:Ljava/lang/Integer;

    .line 48
    iput-object p5, p0, Lzendesk/messaging/AgentDetails;->avatarPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 36
    invoke-direct/range {v0 .. v5}, Lzendesk/messaging/AgentDetails;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAgentId()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lzendesk/messaging/AgentDetails;->agentId:Ljava/lang/String;

    return-object v0
.end method

.method public getAgentName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lzendesk/messaging/AgentDetails;->agentName:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarDrawableRes()Ljava/lang/Integer;
    .locals 1

    .line 65
    iget-object v0, p0, Lzendesk/messaging/AgentDetails;->avatarDrawableRes:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAvatarPath()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lzendesk/messaging/AgentDetails;->avatarPath:Ljava/lang/String;

    return-object v0
.end method

.method public isBot()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lzendesk/messaging/AgentDetails;->isBot:Z

    return v0
.end method
