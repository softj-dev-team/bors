.class public Lzendesk/support/TicketFieldSystemOption;
.super Ljava/lang/Object;
.source "TicketFieldSystemOption.java"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lzendesk/support/TicketFieldSystemOption;->name:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lzendesk/support/TicketFieldSystemOption;->value:Ljava/lang/String;

    return-void
.end method

.method static create(Lzendesk/support/RawTicketFieldSystemOption;)Lzendesk/support/TicketFieldSystemOption;
    .locals 2

    .line 15
    new-instance v0, Lzendesk/support/TicketFieldSystemOption;

    .line 16
    invoke-virtual {p0}, Lzendesk/support/RawTicketFieldSystemOption;->getName()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lzendesk/support/RawTicketFieldSystemOption;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lzendesk/support/TicketFieldSystemOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lzendesk/support/TicketFieldSystemOption;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lzendesk/support/TicketFieldSystemOption;->value:Ljava/lang/String;

    return-object v0
.end method
