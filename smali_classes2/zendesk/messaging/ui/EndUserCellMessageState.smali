.class Lzendesk/messaging/ui/EndUserCellMessageState;
.super Lzendesk/messaging/ui/EndUserCellBaseState;
.source "EndUserCellMessageState.java"


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lzendesk/messaging/ui/MessagingCellProps;Lzendesk/messaging/MessagingItem$Query$Status;Lzendesk/messaging/ui/MessageActionListener;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lzendesk/messaging/ui/EndUserCellBaseState;-><init>(Ljava/lang/String;Lzendesk/messaging/ui/MessagingCellProps;Lzendesk/messaging/MessagingItem$Query$Status;Lzendesk/messaging/ui/MessageActionListener;)V

    .line 27
    iput-object p5, p0, Lzendesk/messaging/ui/EndUserCellMessageState;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 46
    :cond_1
    invoke-super {p0, p1}, Lzendesk/messaging/ui/EndUserCellBaseState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 50
    :cond_2
    check-cast p1, Lzendesk/messaging/ui/EndUserCellMessageState;

    .line 52
    iget-object v2, p0, Lzendesk/messaging/ui/EndUserCellMessageState;->message:Ljava/lang/String;

    iget-object p1, p1, Lzendesk/messaging/ui/EndUserCellMessageState;->message:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method getMessage()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lzendesk/messaging/ui/EndUserCellMessageState;->message:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 57
    invoke-super {p0}, Lzendesk/messaging/ui/EndUserCellBaseState;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 58
    iget-object v1, p0, Lzendesk/messaging/ui/EndUserCellMessageState;->message:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
