.class public Lzendesk/messaging/MessagingItem$Option;
.super Ljava/lang/Object;
.source "MessagingItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/MessagingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Option"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    iput-object p1, p0, Lzendesk/messaging/MessagingItem$Option;->id:Ljava/lang/String;

    .line 673
    iput-object p2, p0, Lzendesk/messaging/MessagingItem$Option;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 689
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 693
    :cond_1
    check-cast p1, Lzendesk/messaging/MessagingItem$Option;

    .line 695
    iget-object v1, p0, Lzendesk/messaging/MessagingItem$Option;->id:Ljava/lang/String;

    iget-object v2, p1, Lzendesk/messaging/MessagingItem$Option;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 698
    :cond_2
    iget-object v0, p0, Lzendesk/messaging/MessagingItem$Option;->text:Ljava/lang/String;

    iget-object p1, p1, Lzendesk/messaging/MessagingItem$Option;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 677
    iget-object v0, p0, Lzendesk/messaging/MessagingItem$Option;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 681
    iget-object v0, p0, Lzendesk/messaging/MessagingItem$Option;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 703
    iget-object v0, p0, Lzendesk/messaging/MessagingItem$Option;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 704
    iget-object v1, p0, Lzendesk/messaging/MessagingItem$Option;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
