.class Lzendesk/messaging/ui/MessagingCellFactory$MessageActionAdapter;
.super Ljava/lang/Object;
.source "MessagingCellFactory.java"

# interfaces
.implements Lzendesk/messaging/ui/MessageActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/ui/MessagingCellFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageActionAdapter"
.end annotation


# instance fields
.field private final eventFactory:Lzendesk/messaging/EventFactory;

.field private final eventListener:Lzendesk/messaging/EventListener;

.field private final messagingItem:Lzendesk/messaging/MessagingItem$Query;


# direct methods
.method constructor <init>(Lzendesk/messaging/EventListener;Lzendesk/messaging/MessagingItem$Query;Lzendesk/messaging/EventFactory;)V
    .locals 0

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    iput-object p1, p0, Lzendesk/messaging/ui/MessagingCellFactory$MessageActionAdapter;->eventListener:Lzendesk/messaging/EventListener;

    .line 538
    iput-object p2, p0, Lzendesk/messaging/ui/MessagingCellFactory$MessageActionAdapter;->messagingItem:Lzendesk/messaging/MessagingItem$Query;

    .line 539
    iput-object p3, p0, Lzendesk/messaging/ui/MessagingCellFactory$MessageActionAdapter;->eventFactory:Lzendesk/messaging/EventFactory;

    return-void
.end method


# virtual methods
.method public copy(Ljava/lang/String;)V
    .locals 2

    .line 558
    iget-object p1, p0, Lzendesk/messaging/ui/MessagingCellFactory$MessageActionAdapter;->eventListener:Lzendesk/messaging/EventListener;

    iget-object v0, p0, Lzendesk/messaging/ui/MessagingCellFactory$MessageActionAdapter;->eventFactory:Lzendesk/messaging/EventFactory;

    iget-object v1, p0, Lzendesk/messaging/ui/MessagingCellFactory$MessageActionAdapter;->messagingItem:Lzendesk/messaging/MessagingItem$Query;

    invoke-virtual {v0, v1}, Lzendesk/messaging/EventFactory;->copyQueryClick(Lzendesk/messaging/MessagingItem$Query;)Lzendesk/messaging/Event;

    move-result-object v0

    invoke-interface {p1, v0}, Lzendesk/messaging/EventListener;->onEvent(Lzendesk/messaging/Event;)V

    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 2

    .line 544
    iget-object p1, p0, Lzendesk/messaging/ui/MessagingCellFactory$MessageActionAdapter;->eventListener:Lzendesk/messaging/EventListener;

    iget-object v0, p0, Lzendesk/messaging/ui/MessagingCellFactory$MessageActionAdapter;->eventFactory:Lzendesk/messaging/EventFactory;

    iget-object v1, p0, Lzendesk/messaging/ui/MessagingCellFactory$MessageActionAdapter;->messagingItem:Lzendesk/messaging/MessagingItem$Query;

    invoke-virtual {v0, v1}, Lzendesk/messaging/EventFactory;->deleteQueryClick(Lzendesk/messaging/MessagingItem$Query;)Lzendesk/messaging/Event;

    move-result-object v0

    invoke-interface {p1, v0}, Lzendesk/messaging/EventListener;->onEvent(Lzendesk/messaging/Event;)V

    return-void
.end method

.method public retry(Ljava/lang/String;)V
    .locals 2

    .line 549
    iget-object p1, p0, Lzendesk/messaging/ui/MessagingCellFactory$MessageActionAdapter;->messagingItem:Lzendesk/messaging/MessagingItem$Query;

    instance-of v0, p1, Lzendesk/messaging/MessagingItem$FileQuery;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lzendesk/messaging/ui/MessagingCellFactory$MessageActionAdapter;->eventListener:Lzendesk/messaging/EventListener;

    iget-object v1, p0, Lzendesk/messaging/ui/MessagingCellFactory$MessageActionAdapter;->eventFactory:Lzendesk/messaging/EventFactory;

    check-cast p1, Lzendesk/messaging/MessagingItem$FileQuery;

    invoke-virtual {v1, p1}, Lzendesk/messaging/EventFactory;->retrySendAttachmentClick(Lzendesk/messaging/MessagingItem$FileQuery;)Lzendesk/messaging/Event;

    move-result-object p1

    invoke-interface {v0, p1}, Lzendesk/messaging/EventListener;->onEvent(Lzendesk/messaging/Event;)V

    goto :goto_0

    .line 552
    :cond_0
    iget-object v0, p0, Lzendesk/messaging/ui/MessagingCellFactory$MessageActionAdapter;->eventListener:Lzendesk/messaging/EventListener;

    iget-object v1, p0, Lzendesk/messaging/ui/MessagingCellFactory$MessageActionAdapter;->eventFactory:Lzendesk/messaging/EventFactory;

    invoke-virtual {v1, p1}, Lzendesk/messaging/EventFactory;->retryQueryClick(Lzendesk/messaging/MessagingItem$Query;)Lzendesk/messaging/Event;

    move-result-object p1

    invoke-interface {v0, p1}, Lzendesk/messaging/EventListener;->onEvent(Lzendesk/messaging/Event;)V

    :goto_0
    return-void
.end method
