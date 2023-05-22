.class public Lzendesk/messaging/Update$State$ApplyMessagingItems;
.super Lzendesk/messaging/Update$State;
.source "Update.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/Update$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApplyMessagingItems"
.end annotation


# instance fields
.field private final messagingItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/messaging/MessagingItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/messaging/MessagingItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "apply_messaging_items"

    .line 71
    invoke-direct {p0, v0}, Lzendesk/messaging/Update$State;-><init>(Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lzendesk/messaging/Update$State$ApplyMessagingItems;->messagingItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMessagingItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/messaging/MessagingItem;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lzendesk/messaging/Update$State$ApplyMessagingItems;->messagingItems:Ljava/util/List;

    return-object v0
.end method
