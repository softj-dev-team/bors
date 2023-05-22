.class public Lzendesk/support/TicketFieldOption;
.super Ljava/lang/Object;
.source "TicketFieldOption.java"


# instance fields
.field private id:J

.field private isDefault:Z

.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lzendesk/support/TicketFieldOption;->id:J

    .line 35
    iput-object p3, p0, Lzendesk/support/TicketFieldOption;->name:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lzendesk/support/TicketFieldOption;->value:Ljava/lang/String;

    .line 37
    iput-boolean p5, p0, Lzendesk/support/TicketFieldOption;->isDefault:Z

    return-void
.end method

.method static create(Lzendesk/support/RawTicketFieldOption;)Lzendesk/support/TicketFieldOption;
    .locals 7

    .line 15
    new-instance v6, Lzendesk/support/TicketFieldOption;

    invoke-virtual {p0}, Lzendesk/support/RawTicketFieldOption;->getId()J

    move-result-wide v1

    .line 16
    invoke-virtual {p0}, Lzendesk/support/RawTicketFieldOption;->getName()Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-virtual {p0}, Lzendesk/support/RawTicketFieldOption;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-virtual {p0}, Lzendesk/support/RawTicketFieldOption;->isDefault()Z

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lzendesk/support/TicketFieldOption;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    return-object v6
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lzendesk/support/TicketFieldOption;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lzendesk/support/TicketFieldOption;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lzendesk/support/TicketFieldOption;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lzendesk/support/TicketFieldOption;->isDefault:Z

    return v0
.end method
