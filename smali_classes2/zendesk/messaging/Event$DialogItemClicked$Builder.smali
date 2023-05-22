.class public Lzendesk/messaging/Event$DialogItemClicked$Builder;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/Event$DialogItemClicked;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final config:Lzendesk/messaging/DialogContent$Config;

.field private final isPositive:Z

.field private payload:Ljava/lang/String;

.field private previousConfig:Lzendesk/messaging/DialogContent$Config;

.field private final timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;Lzendesk/messaging/DialogContent$Config;Z)V
    .locals 1

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 427
    iput-object v0, p0, Lzendesk/messaging/Event$DialogItemClicked$Builder;->payload:Ljava/lang/String;

    .line 428
    iput-object v0, p0, Lzendesk/messaging/Event$DialogItemClicked$Builder;->previousConfig:Lzendesk/messaging/DialogContent$Config;

    .line 431
    iput-object p1, p0, Lzendesk/messaging/Event$DialogItemClicked$Builder;->timestamp:Ljava/util/Date;

    .line 432
    iput-object p2, p0, Lzendesk/messaging/Event$DialogItemClicked$Builder;->config:Lzendesk/messaging/DialogContent$Config;

    .line 433
    iput-boolean p3, p0, Lzendesk/messaging/Event$DialogItemClicked$Builder;->isPositive:Z

    return-void
.end method


# virtual methods
.method public build()Lzendesk/messaging/Event$DialogItemClicked;
    .locals 8

    .line 459
    new-instance v7, Lzendesk/messaging/Event$DialogItemClicked;

    iget-object v1, p0, Lzendesk/messaging/Event$DialogItemClicked$Builder;->timestamp:Ljava/util/Date;

    iget-object v2, p0, Lzendesk/messaging/Event$DialogItemClicked$Builder;->config:Lzendesk/messaging/DialogContent$Config;

    iget-boolean v3, p0, Lzendesk/messaging/Event$DialogItemClicked$Builder;->isPositive:Z

    iget-object v4, p0, Lzendesk/messaging/Event$DialogItemClicked$Builder;->payload:Ljava/lang/String;

    iget-object v5, p0, Lzendesk/messaging/Event$DialogItemClicked$Builder;->previousConfig:Lzendesk/messaging/DialogContent$Config;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lzendesk/messaging/Event$DialogItemClicked;-><init>(Ljava/util/Date;Lzendesk/messaging/DialogContent$Config;ZLjava/lang/String;Lzendesk/messaging/DialogContent$Config;Lzendesk/messaging/Event$1;)V

    return-object v7
.end method

.method public setPayload(Ljava/lang/String;)Lzendesk/messaging/Event$DialogItemClicked$Builder;
    .locals 0

    .line 443
    iput-object p1, p0, Lzendesk/messaging/Event$DialogItemClicked$Builder;->payload:Ljava/lang/String;

    return-object p0
.end method

.method public setPreviousConfig(Lzendesk/messaging/DialogContent$Config;)Lzendesk/messaging/Event$DialogItemClicked$Builder;
    .locals 0

    .line 454
    iput-object p1, p0, Lzendesk/messaging/Event$DialogItemClicked$Builder;->previousConfig:Lzendesk/messaging/DialogContent$Config;

    return-object p0
.end method
