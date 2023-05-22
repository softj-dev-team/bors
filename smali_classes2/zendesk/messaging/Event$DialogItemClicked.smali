.class public Lzendesk/messaging/Event$DialogItemClicked;
.super Lzendesk/messaging/Event;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogItemClicked"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/messaging/Event$DialogItemClicked$Builder;
    }
.end annotation


# instance fields
.field private final config:Lzendesk/messaging/DialogContent$Config;

.field private final isPositive:Z

.field private final payload:Ljava/lang/String;

.field private final previousConfig:Lzendesk/messaging/DialogContent$Config;


# direct methods
.method private constructor <init>(Ljava/util/Date;Lzendesk/messaging/DialogContent$Config;ZLjava/lang/String;Lzendesk/messaging/DialogContent$Config;)V
    .locals 1

    const-string v0, "dialog_item_clicked"

    .line 398
    invoke-direct {p0, v0, p1}, Lzendesk/messaging/Event;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 399
    iput-object p2, p0, Lzendesk/messaging/Event$DialogItemClicked;->config:Lzendesk/messaging/DialogContent$Config;

    .line 400
    iput-boolean p3, p0, Lzendesk/messaging/Event$DialogItemClicked;->isPositive:Z

    .line 401
    iput-object p4, p0, Lzendesk/messaging/Event$DialogItemClicked;->payload:Ljava/lang/String;

    .line 402
    iput-object p5, p0, Lzendesk/messaging/Event$DialogItemClicked;->previousConfig:Lzendesk/messaging/DialogContent$Config;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Date;Lzendesk/messaging/DialogContent$Config;ZLjava/lang/String;Lzendesk/messaging/DialogContent$Config;Lzendesk/messaging/Event$1;)V
    .locals 0

    .line 386
    invoke-direct/range {p0 .. p5}, Lzendesk/messaging/Event$DialogItemClicked;-><init>(Ljava/util/Date;Lzendesk/messaging/DialogContent$Config;ZLjava/lang/String;Lzendesk/messaging/DialogContent$Config;)V

    return-void
.end method


# virtual methods
.method public getConfig()Lzendesk/messaging/DialogContent$Config;
    .locals 1

    .line 406
    iget-object v0, p0, Lzendesk/messaging/Event$DialogItemClicked;->config:Lzendesk/messaging/DialogContent$Config;

    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    .line 414
    iget-object v0, p0, Lzendesk/messaging/Event$DialogItemClicked;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousConfig()Lzendesk/messaging/DialogContent$Config;
    .locals 1

    .line 418
    iget-object v0, p0, Lzendesk/messaging/Event$DialogItemClicked;->previousConfig:Lzendesk/messaging/DialogContent$Config;

    return-object v0
.end method

.method public isPositive()Z
    .locals 1

    .line 410
    iget-boolean v0, p0, Lzendesk/messaging/Event$DialogItemClicked;->isPositive:Z

    return v0
.end method
