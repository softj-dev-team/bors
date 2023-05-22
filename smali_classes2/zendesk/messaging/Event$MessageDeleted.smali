.class public Lzendesk/messaging/Event$MessageDeleted;
.super Lzendesk/messaging/Event;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageDeleted"
.end annotation


# instance fields
.field private final message:Lzendesk/messaging/MessagingItem$Query;


# direct methods
.method public constructor <init>(Lzendesk/messaging/MessagingItem$Query;Ljava/util/Date;)V
    .locals 1

    const-string v0, "message_deleted"

    .line 178
    invoke-direct {p0, v0, p2}, Lzendesk/messaging/Event;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 179
    iput-object p1, p0, Lzendesk/messaging/Event$MessageDeleted;->message:Lzendesk/messaging/MessagingItem$Query;

    return-void
.end method


# virtual methods
.method public getMessage()Lzendesk/messaging/MessagingItem$Query;
    .locals 1

    .line 188
    iget-object v0, p0, Lzendesk/messaging/Event$MessageDeleted;->message:Lzendesk/messaging/MessagingItem$Query;

    return-object v0
.end method
