.class public Lzendesk/messaging/Update$State$ShowTyping;
.super Lzendesk/messaging/Update$State;
.source "Update.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/Update$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowTyping"
.end annotation


# instance fields
.field private final agentDetails:Lzendesk/messaging/AgentDetails;


# direct methods
.method public constructor <init>(Lzendesk/messaging/AgentDetails;)V
    .locals 1

    const-string v0, "show_typing"

    .line 103
    invoke-direct {p0, v0}, Lzendesk/messaging/Update$State;-><init>(Ljava/lang/String;)V

    .line 104
    iput-object p1, p0, Lzendesk/messaging/Update$State$ShowTyping;->agentDetails:Lzendesk/messaging/AgentDetails;

    return-void
.end method


# virtual methods
.method public getAgentDetails()Lzendesk/messaging/AgentDetails;
    .locals 1

    .line 108
    iget-object v0, p0, Lzendesk/messaging/Update$State$ShowTyping;->agentDetails:Lzendesk/messaging/AgentDetails;

    return-object v0
.end method
