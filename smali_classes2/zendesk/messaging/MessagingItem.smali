.class public abstract Lzendesk/messaging/MessagingItem;
.super Ljava/lang/Object;
.source "MessagingItem.java"

# interfaces
.implements Lzendesk/messaging/MessagingEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/messaging/MessagingItem$Option;,
        Lzendesk/messaging/MessagingItem$Action;,
        Lzendesk/messaging/MessagingItem$SystemMessage;,
        Lzendesk/messaging/MessagingItem$OptionsResponse;,
        Lzendesk/messaging/MessagingItem$ActionResponse;,
        Lzendesk/messaging/MessagingItem$TransferResponse;,
        Lzendesk/messaging/MessagingItem$ArticlesResponse;,
        Lzendesk/messaging/MessagingItem$FileResponse;,
        Lzendesk/messaging/MessagingItem$ImageResponse;,
        Lzendesk/messaging/MessagingItem$TextResponse;,
        Lzendesk/messaging/MessagingItem$Response;,
        Lzendesk/messaging/MessagingItem$FileQuery;,
        Lzendesk/messaging/MessagingItem$ImageQuery;,
        Lzendesk/messaging/MessagingItem$TextQuery;,
        Lzendesk/messaging/MessagingItem$Query;
    }
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final timestamp:Ljava/util/Date;


# direct methods
.method constructor <init>(Ljava/util/Date;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lzendesk/messaging/MessagingItem;->timestamp:Ljava/util/Date;

    .line 26
    iput-object p2, p0, Lzendesk/messaging/MessagingItem;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lzendesk/messaging/MessagingItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .line 31
    iget-object v0, p0, Lzendesk/messaging/MessagingItem;->timestamp:Ljava/util/Date;

    return-object v0
.end method
