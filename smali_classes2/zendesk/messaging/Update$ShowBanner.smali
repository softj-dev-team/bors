.class public Lzendesk/messaging/Update$ShowBanner;
.super Lzendesk/messaging/Update$State;
.source "Update.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/Update;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowBanner"
.end annotation


# instance fields
.field private final banner:Lzendesk/messaging/Banner;


# direct methods
.method public constructor <init>(Lzendesk/messaging/Banner;)V
    .locals 1

    const-string v0, "show_banner"

    .line 296
    invoke-direct {p0, v0}, Lzendesk/messaging/Update$State;-><init>(Ljava/lang/String;)V

    .line 297
    iput-object p1, p0, Lzendesk/messaging/Update$ShowBanner;->banner:Lzendesk/messaging/Banner;

    return-void
.end method


# virtual methods
.method public getBanner()Lzendesk/messaging/Banner;
    .locals 1

    .line 301
    iget-object v0, p0, Lzendesk/messaging/Update$ShowBanner;->banner:Lzendesk/messaging/Banner;

    return-object v0
.end method
