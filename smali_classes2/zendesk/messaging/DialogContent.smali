.class public Lzendesk/messaging/DialogContent;
.super Ljava/lang/Object;
.source "DialogContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/messaging/DialogContent$Config;,
        Lzendesk/messaging/DialogContent$Builder;
    }
.end annotation


# instance fields
.field private final config:Lzendesk/messaging/DialogContent$Config;

.field private final message:Ljava/lang/String;

.field private final negativeText:Ljava/lang/String;

.field private final positiveText:Ljava/lang/String;

.field private final previousConfig:Lzendesk/messaging/DialogContent$Config;

.field private final title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lzendesk/messaging/DialogContent$Config;Lzendesk/messaging/DialogContent$Config;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lzendesk/messaging/DialogContent;->title:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lzendesk/messaging/DialogContent;->message:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lzendesk/messaging/DialogContent;->negativeText:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lzendesk/messaging/DialogContent;->positiveText:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lzendesk/messaging/DialogContent;->config:Lzendesk/messaging/DialogContent$Config;

    .line 32
    iput-object p6, p0, Lzendesk/messaging/DialogContent;->previousConfig:Lzendesk/messaging/DialogContent$Config;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lzendesk/messaging/DialogContent$Config;Lzendesk/messaging/DialogContent$Config;Lzendesk/messaging/DialogContent$1;)V
    .locals 0

    .line 11
    invoke-direct/range {p0 .. p6}, Lzendesk/messaging/DialogContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lzendesk/messaging/DialogContent$Config;Lzendesk/messaging/DialogContent$Config;)V

    return-void
.end method


# virtual methods
.method public getConfig()Lzendesk/messaging/DialogContent$Config;
    .locals 1

    .line 52
    iget-object v0, p0, Lzendesk/messaging/DialogContent;->config:Lzendesk/messaging/DialogContent$Config;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lzendesk/messaging/DialogContent;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getNegativeText()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lzendesk/messaging/DialogContent;->negativeText:Ljava/lang/String;

    return-object v0
.end method

.method public getPositiveText()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lzendesk/messaging/DialogContent;->positiveText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lzendesk/messaging/DialogContent;->title:Ljava/lang/String;

    return-object v0
.end method

.method public previousConfig()Lzendesk/messaging/DialogContent$Config;
    .locals 1

    .line 56
    iget-object v0, p0, Lzendesk/messaging/DialogContent;->previousConfig:Lzendesk/messaging/DialogContent$Config;

    return-object v0
.end method
