.class public Lzendesk/messaging/components/bot/BotMessageDispatcher;
.super Ljava/lang/Object;
.source "BotMessageDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/messaging/components/bot/BotMessageDispatcher$DispatchListener;,
        Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch;,
        Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;,
        Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TYPING_INDICATOR_DELAY:I


# instance fields
.field private final messageIdentifier:Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier<",
            "TT;>;"
        }
    .end annotation
.end field

.field private messageProcessing:Z

.field private messageQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private showTypingIndicator:Z

.field private final stateActionListener:Lzendesk/messaging/components/ActionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzendesk/messaging/components/ActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private timerFactory:Lzendesk/messaging/components/Timer$Factory;

.field private final updateActionListener:Lzendesk/messaging/components/ActionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzendesk/messaging/components/ActionListener<",
            "Lzendesk/messaging/Update;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lzendesk/messaging/components/bot/BotMessageDispatcher;->TYPING_INDICATOR_DELAY:I

    return-void
.end method

.method public constructor <init>(Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;Lzendesk/messaging/components/ActionListener;Lzendesk/messaging/components/ActionListener;Lzendesk/messaging/components/Timer$Factory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier<",
            "TT;>;",
            "Lzendesk/messaging/components/ActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "TT;>;>;",
            "Lzendesk/messaging/components/ActionListener<",
            "Lzendesk/messaging/Update;",
            ">;",
            "Lzendesk/messaging/components/Timer$Factory;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->messages:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->messageQueue:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->messageProcessing:Z

    .line 44
    iput-object p1, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->messageIdentifier:Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;

    .line 45
    iput-object p2, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->stateActionListener:Lzendesk/messaging/components/ActionListener;

    .line 46
    iput-object p3, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->updateActionListener:Lzendesk/messaging/components/ActionListener;

    .line 47
    iput-object p4, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->timerFactory:Lzendesk/messaging/components/Timer$Factory;

    return-void
.end method

.method static synthetic access$100(Lzendesk/messaging/components/bot/BotMessageDispatcher;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->messages:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lzendesk/messaging/components/bot/BotMessageDispatcher;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->messageProcessing:Z

    return p1
.end method

.method static synthetic access$402(Lzendesk/messaging/components/bot/BotMessageDispatcher;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->showTypingIndicator:Z

    return p1
.end method

.method static synthetic access$500(Lzendesk/messaging/components/bot/BotMessageDispatcher;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->processMessage()V

    return-void
.end method

.method private getCopyOfMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->messages:Ljava/util/List;

    invoke-static {v0}, Lcom/zendesk/util/CollectionUtils;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private processMessage()V
    .locals 3

    .line 51
    iget-object v0, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->messageQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 53
    iput-boolean v1, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->messageProcessing:Z

    .line 54
    iput-boolean v1, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->showTypingIndicator:Z

    .line 55
    invoke-virtual {p0}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->dispatchState()V

    .line 57
    new-instance v1, Lzendesk/messaging/components/bot/BotMessageDispatcher$1;

    invoke-direct {v1, p0, v0}, Lzendesk/messaging/components/bot/BotMessageDispatcher$1;-><init>(Lzendesk/messaging/components/bot/BotMessageDispatcher;Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch;)V

    .line 76
    iget-object v0, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->timerFactory:Lzendesk/messaging/components/Timer$Factory;

    sget v2, Lzendesk/messaging/components/bot/BotMessageDispatcher;->TYPING_INDICATOR_DELAY:I

    invoke-virtual {v0, v1, v2}, Lzendesk/messaging/components/Timer$Factory;->create(Ljava/lang/Runnable;I)Lzendesk/messaging/components/Timer;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lzendesk/messaging/components/Timer;->start()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addMessage(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 129
    iget-object v0, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    invoke-virtual {p0}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->dispatchState()V

    return-void
.end method

.method public addMessageWithTypingIndicator(Ljava/lang/Object;Lzendesk/messaging/components/bot/BotMessageDispatcher$DispatchListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$DispatchListener;",
            ")V"
        }
    .end annotation

    .line 97
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lzendesk/messaging/Update;

    invoke-virtual {p0, p1, p2, v0}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->addMessagesWithTypingIndicator(Ljava/util/List;Lzendesk/messaging/components/bot/BotMessageDispatcher$DispatchListener;[Lzendesk/messaging/Update;)V

    return-void
.end method

.method public varargs addMessageWithTypingIndicator(Ljava/lang/Object;Lzendesk/messaging/components/bot/BotMessageDispatcher$DispatchListener;[Lzendesk/messaging/Update;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$DispatchListener;",
            "[",
            "Lzendesk/messaging/Update;",
            ")V"
        }
    .end annotation

    .line 101
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->addMessagesWithTypingIndicator(Ljava/util/List;Lzendesk/messaging/components/bot/BotMessageDispatcher$DispatchListener;[Lzendesk/messaging/Update;)V

    return-void
.end method

.method public varargs addMessageWithTypingIndicator(Ljava/lang/Object;[Lzendesk/messaging/Update;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Lzendesk/messaging/Update;",
            ")V"
        }
    .end annotation

    .line 93
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->addMessagesWithTypingIndicator(Ljava/util/List;Lzendesk/messaging/components/bot/BotMessageDispatcher$DispatchListener;[Lzendesk/messaging/Update;)V

    return-void
.end method

.method public varargs addMessagesWithTypingIndicator(Ljava/util/List;Lzendesk/messaging/components/bot/BotMessageDispatcher$DispatchListener;[Lzendesk/messaging/Update;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$DispatchListener;",
            "[",
            "Lzendesk/messaging/Update;",
            ")V"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->messageQueue:Ljava/util/Queue;

    new-instance v1, Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v1, p1, p2, p3}, Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch;-><init>(Ljava/util/List;Lzendesk/messaging/components/bot/BotMessageDispatcher$DispatchListener;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 122
    iget-boolean p1, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->messageProcessing:Z

    if-nez p1, :cond_0

    .line 123
    invoke-direct {p0}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->processMessage()V

    :cond_0
    return-void
.end method

.method public varargs addMessagesWithTypingIndicator(Ljava/util/List;[Lzendesk/messaging/Update;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;[",
            "Lzendesk/messaging/Update;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, p1, v0, p2}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->addMessagesWithTypingIndicator(Ljava/util/List;Lzendesk/messaging/components/bot/BotMessageDispatcher$DispatchListener;[Lzendesk/messaging/Update;)V

    return-void
.end method

.method public dispatchState()V
    .locals 4

    .line 142
    iget-object v0, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->stateActionListener:Lzendesk/messaging/components/ActionListener;

    new-instance v1, Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState;

    invoke-direct {p0}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->getCopyOfMessages()Ljava/util/List;

    move-result-object v2

    iget-boolean v3, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->showTypingIndicator:Z

    invoke-direct {v1, v2, v3}, Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState;-><init>(Ljava/util/List;Z)V

    invoke-interface {v0, v1}, Lzendesk/messaging/components/ActionListener;->onAction(Ljava/lang/Object;)V

    return-void
.end method

.method public dispatchUpdate(Lzendesk/messaging/Update;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->updateActionListener:Lzendesk/messaging/components/ActionListener;

    invoke-interface {v0, p1}, Lzendesk/messaging/components/ActionListener;->onAction(Ljava/lang/Object;)V

    return-void
.end method

.method public getLastMessage()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->messages:Ljava/util/List;

    invoke-static {v0}, Lcom/zendesk/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 183
    :cond_0
    iget-object v0, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMessageById(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 170
    iget-object v2, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->messageIdentifier:Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;

    invoke-interface {v2, v1}, Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeLastMessages(I)V
    .locals 3

    if-gtz p1, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 155
    iget-object p1, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->messages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->messages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->messages:Ljava/util/List;

    .line 159
    :goto_0
    invoke-virtual {p0}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->dispatchState()V

    return-void
.end method

.method public removeMessage(Ljava/lang/String;)V
    .locals 3

    .line 83
    iget-object v0, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->messageIdentifier:Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;

    invoke-interface {v2, v1}, Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    iget-object p1, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->messages:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {p0}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->dispatchState()V

    :cond_1
    return-void
.end method

.method public replaceMessage(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 136
    invoke-virtual {p0, p1}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->removeMessage(Ljava/lang/String;)V

    .line 137
    iget-object p1, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher;->messages:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {p0}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->dispatchState()V

    return-void
.end method
