.class Lzendesk/support/RawTicketFieldOption;
.super Ljava/lang/Object;
.source "RawTicketFieldOption.java"


# instance fields
.field private id:J

.field private isDefault:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "default"
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private rawName:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lzendesk/support/RawTicketFieldOption;)Lzendesk/support/TicketFieldOption;
    .locals 7

    .line 22
    new-instance v6, Lzendesk/support/TicketFieldOption;

    invoke-virtual {p0}, Lzendesk/support/RawTicketFieldOption;->getId()J

    move-result-wide v1

    .line 23
    invoke-virtual {p0}, Lzendesk/support/RawTicketFieldOption;->getName()Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-virtual {p0}, Lzendesk/support/RawTicketFieldOption;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-virtual {p0}, Lzendesk/support/RawTicketFieldOption;->isDefault()Z

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lzendesk/support/TicketFieldOption;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    return-object v6
.end method


# virtual methods
.method getId()J
    .locals 2

    .line 37
    iget-wide v0, p0, Lzendesk/support/RawTicketFieldOption;->id:J

    return-wide v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lzendesk/support/RawTicketFieldOption;->name:Ljava/lang/String;

    return-object v0
.end method

.method getValue()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lzendesk/support/RawTicketFieldOption;->value:Ljava/lang/String;

    return-object v0
.end method

.method isDefault()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lzendesk/support/RawTicketFieldOption;->isDefault:Z

    return v0
.end method
