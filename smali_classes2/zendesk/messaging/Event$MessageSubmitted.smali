.class public Lzendesk/messaging/Event$MessageSubmitted;
.super Lzendesk/messaging/Event;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageSubmitted"
.end annotation


# instance fields
.field private final textInput:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;)V
    .locals 1

    const-string v0, "message_submitted"

    .line 71
    invoke-direct {p0, v0, p2}, Lzendesk/messaging/Event;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 72
    iput-object p1, p0, Lzendesk/messaging/Event$MessageSubmitted;->textInput:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTextInput()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lzendesk/messaging/Event$MessageSubmitted;->textInput:Ljava/lang/String;

    return-object v0
.end method
