.class public Lzendesk/support/TicketForm;
.super Ljava/lang/Object;
.source "TicketForm.java"


# instance fields
.field private id:J

.field private name:Ljava/lang/String;

.field private ticketFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/TicketField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lzendesk/support/TicketField;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lzendesk/support/TicketForm;->id:J

    .line 25
    iput-object p3, p0, Lzendesk/support/TicketForm;->name:Ljava/lang/String;

    .line 26
    invoke-static {p4}, Lcom/zendesk/util/CollectionUtils;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/TicketForm;->ticketFields:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lzendesk/support/TicketForm;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lzendesk/support/TicketForm;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTicketFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/support/TicketField;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lzendesk/support/TicketForm;->ticketFields:Ljava/util/List;

    invoke-static {v0}, Lcom/zendesk/util/CollectionUtils;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
