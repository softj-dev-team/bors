.class Lzendesk/messaging/MessagingConversationLog;
.super Ljava/lang/Object;
.source "MessagingConversationLog.java"

# interfaces
.implements Lzendesk/messaging/ConversationLog;


# annotations
.annotation runtime Lzendesk/messaging/MessagingScope;
.end annotation


# static fields
.field private static final TIMESTAMP_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lzendesk/messaging/MessagingEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/messaging/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final messagingEventSerializer:Lzendesk/messaging/MessagingEventSerializer;

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
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lzendesk/messaging/MessagingConversationLog$1;

    invoke-direct {v0}, Lzendesk/messaging/MessagingConversationLog$1;-><init>()V

    sput-object v0, Lzendesk/messaging/MessagingConversationLog;->TIMESTAMP_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lzendesk/messaging/MessagingEventSerializer;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lzendesk/messaging/MessagingConversationLog;->messagingEventSerializer:Lzendesk/messaging/MessagingEventSerializer;

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lzendesk/messaging/MessagingConversationLog;->messagingItems:Ljava/util/List;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lzendesk/messaging/MessagingConversationLog;->events:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addEvent(Lzendesk/messaging/Event;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lzendesk/messaging/MessagingConversationLog;->events:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getLog()Ljava/lang/String;
    .locals 5

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lzendesk/messaging/MessagingConversationLog;->messagingItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lzendesk/messaging/MessagingConversationLog;->events:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    iget-object v1, p0, Lzendesk/messaging/MessagingConversationLog;->messagingItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    iget-object v1, p0, Lzendesk/messaging/MessagingConversationLog;->events:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    invoke-static {v0}, Lcom/zendesk/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    return-object v0

    .line 64
    :cond_0
    sget-object v1, Lzendesk/messaging/MessagingConversationLog;->TIMESTAMP_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 68
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 69
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/messaging/MessagingEvent;

    .line 70
    iget-object v4, p0, Lzendesk/messaging/MessagingConversationLog;->messagingEventSerializer:Lzendesk/messaging/MessagingEventSerializer;

    invoke-virtual {v4, v3}, Lzendesk/messaging/MessagingEventSerializer;->serialize(Lzendesk/messaging/MessagingEvent;)Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-static {v3}, Lcom/zendesk/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    const-string v3, "\n"

    .line 75
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setMessagingItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/messaging/MessagingItem;",
            ">;)V"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lzendesk/messaging/MessagingConversationLog;->messagingItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 42
    invoke-static {p1}, Lcom/zendesk/util/CollectionUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lzendesk/messaging/MessagingConversationLog;->messagingItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
