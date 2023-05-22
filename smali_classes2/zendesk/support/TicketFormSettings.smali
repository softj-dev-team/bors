.class public Lzendesk/support/TicketFormSettings;
.super Ljava/lang/Object;
.source "TicketFormSettings.java"


# static fields
.field private static DEFAULT:Lzendesk/support/TicketFormSettings;


# instance fields
.field private available:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lzendesk/support/TicketFormSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzendesk/support/TicketFormSettings;-><init>(Z)V

    sput-object v0, Lzendesk/support/TicketFormSettings;->DEFAULT:Lzendesk/support/TicketFormSettings;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean p1, p0, Lzendesk/support/TicketFormSettings;->available:Z

    return-void
.end method

.method static defaultSettings()Lzendesk/support/TicketFormSettings;
    .locals 1

    .line 15
    sget-object v0, Lzendesk/support/TicketFormSettings;->DEFAULT:Lzendesk/support/TicketFormSettings;

    return-object v0
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lzendesk/support/TicketFormSettings;->available:Z

    return v0
.end method
