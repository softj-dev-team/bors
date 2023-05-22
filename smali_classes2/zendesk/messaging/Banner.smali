.class public Lzendesk/messaging/Banner;
.super Ljava/lang/Object;
.source "Banner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/messaging/Banner$Duration;,
        Lzendesk/messaging/Banner$Position;,
        Lzendesk/messaging/Banner$Builder;
    }
.end annotation


# instance fields
.field private final buttonText:Ljava/lang/String;

.field private final duration:Lzendesk/messaging/Banner$Duration;

.field private final label:Ljava/lang/String;

.field private final position:Lzendesk/messaging/Banner$Position;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lzendesk/messaging/Banner$Position;Lzendesk/messaging/Banner$Duration;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lzendesk/messaging/Banner;->label:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lzendesk/messaging/Banner;->buttonText:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lzendesk/messaging/Banner;->position:Lzendesk/messaging/Banner$Position;

    .line 25
    iput-object p4, p0, Lzendesk/messaging/Banner;->duration:Lzendesk/messaging/Banner$Duration;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lzendesk/messaging/Banner$Position;Lzendesk/messaging/Banner$Duration;Lzendesk/messaging/Banner$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lzendesk/messaging/Banner;-><init>(Ljava/lang/String;Ljava/lang/String;Lzendesk/messaging/Banner$Position;Lzendesk/messaging/Banner$Duration;)V

    return-void
.end method


# virtual methods
.method public getButtonText()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lzendesk/messaging/Banner;->buttonText:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Lzendesk/messaging/Banner$Duration;
    .locals 1

    .line 37
    iget-object v0, p0, Lzendesk/messaging/Banner;->duration:Lzendesk/messaging/Banner$Duration;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lzendesk/messaging/Banner;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Lzendesk/messaging/Banner$Position;
    .locals 1

    .line 41
    iget-object v0, p0, Lzendesk/messaging/Banner;->position:Lzendesk/messaging/Banner$Position;

    return-object v0
.end method
