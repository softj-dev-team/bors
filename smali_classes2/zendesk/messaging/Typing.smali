.class public Lzendesk/messaging/Typing;
.super Ljava/lang/Object;
.source "Typing.java"


# instance fields
.field private final agentDetails:Lzendesk/messaging/AgentDetails;

.field private final isTyping:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lzendesk/messaging/Typing;-><init>(ZLzendesk/messaging/AgentDetails;)V

    return-void
.end method

.method public constructor <init>(ZLzendesk/messaging/AgentDetails;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean p1, p0, Lzendesk/messaging/Typing;->isTyping:Z

    .line 21
    iput-object p2, p0, Lzendesk/messaging/Typing;->agentDetails:Lzendesk/messaging/AgentDetails;

    return-void
.end method


# virtual methods
.method public getAgentDetails()Lzendesk/messaging/AgentDetails;
    .locals 1

    .line 30
    iget-object v0, p0, Lzendesk/messaging/Typing;->agentDetails:Lzendesk/messaging/AgentDetails;

    return-object v0
.end method

.method public isTyping()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lzendesk/messaging/Typing;->isTyping:Z

    return v0
.end method
