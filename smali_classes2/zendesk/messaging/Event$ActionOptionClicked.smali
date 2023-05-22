.class public Lzendesk/messaging/Event$ActionOptionClicked;
.super Lzendesk/messaging/Event;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionOptionClicked"
.end annotation


# instance fields
.field private final action:Lzendesk/messaging/MessagingItem$Action;


# direct methods
.method public constructor <init>(Lzendesk/messaging/MessagingItem$Action;Ljava/util/Date;)V
    .locals 1

    const-string v0, "action_option_clicked"

    .line 138
    invoke-direct {p0, v0, p2}, Lzendesk/messaging/Event;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 139
    iput-object p1, p0, Lzendesk/messaging/Event$ActionOptionClicked;->action:Lzendesk/messaging/MessagingItem$Action;

    return-void
.end method


# virtual methods
.method public getAction()Lzendesk/messaging/MessagingItem$Action;
    .locals 1

    .line 143
    iget-object v0, p0, Lzendesk/messaging/Event$ActionOptionClicked;->action:Lzendesk/messaging/MessagingItem$Action;

    return-object v0
.end method
