.class public Lzendesk/messaging/MessagingItem$TextResponse;
.super Lzendesk/messaging/MessagingItem$Response;
.source "MessagingItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/MessagingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextResponse"
.end annotation


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;Lzendesk/messaging/AgentDetails;Ljava/lang/String;)V
    .locals 0

    .line 303
    invoke-direct {p0, p1, p2, p3}, Lzendesk/messaging/MessagingItem$Response;-><init>(Ljava/util/Date;Ljava/lang/String;Lzendesk/messaging/AgentDetails;)V

    .line 304
    iput-object p4, p0, Lzendesk/messaging/MessagingItem$TextResponse;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lzendesk/messaging/MessagingItem$TextResponse;->message:Ljava/lang/String;

    return-object v0
.end method
