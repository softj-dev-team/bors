.class public Lzendesk/messaging/Event$TypingStopped;
.super Lzendesk/messaging/Event;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypingStopped"
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Date;)V
    .locals 1

    const-string v0, "typing_stopped"

    .line 165
    invoke-direct {p0, v0, p1}, Lzendesk/messaging/Event;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    return-void
.end method
