.class public abstract Lzendesk/messaging/MessagingItem$Response;
.super Lzendesk/messaging/MessagingItem;
.source "MessagingItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/MessagingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Response"
.end annotation


# instance fields
.field private final agentDetails:Lzendesk/messaging/AgentDetails;


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;Lzendesk/messaging/AgentDetails;)V
    .locals 0

    .line 287
    invoke-direct {p0, p1, p2}, Lzendesk/messaging/MessagingItem;-><init>(Ljava/util/Date;Ljava/lang/String;)V

    .line 288
    iput-object p3, p0, Lzendesk/messaging/MessagingItem$Response;->agentDetails:Lzendesk/messaging/AgentDetails;

    return-void
.end method


# virtual methods
.method public getAgentDetails()Lzendesk/messaging/AgentDetails;
    .locals 1

    .line 292
    iget-object v0, p0, Lzendesk/messaging/MessagingItem$Response;->agentDetails:Lzendesk/messaging/AgentDetails;

    return-object v0
.end method
