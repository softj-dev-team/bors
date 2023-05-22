.class final Lzendesk/answerbot/AnswerBotConversationManager;
.super Ljava/lang/Object;
.source "AnswerBotConversationManager.java"


# instance fields
.field private final botMessageDispatcher:Lzendesk/messaging/components/bot/BotMessageDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzendesk/messaging/components/bot/BotMessageDispatcher<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;"
        }
    .end annotation
.end field

.field private final dateProvider:Lzendesk/messaging/components/DateProvider;


# direct methods
.method public constructor <init>(Lzendesk/messaging/components/bot/BotMessageDispatcher;Lzendesk/messaging/components/DateProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;",
            "Lzendesk/messaging/components/DateProvider;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotConversationManager;->botMessageDispatcher:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    .line 24
    iput-object p2, p0, Lzendesk/answerbot/AnswerBotConversationManager;->dateProvider:Lzendesk/messaging/components/DateProvider;

    return-void
.end method

.method private static newId()Ljava/lang/String;
    .locals 1

    .line 110
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method addArticles(Lzendesk/answerbot/DeflectionResponse;)Ljava/lang/String;
    .locals 4

    .line 65
    invoke-static {}, Lzendesk/answerbot/AnswerBotConversationManager;->newId()Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lzendesk/answerbot/AnswerBotConversationManager;->botMessageDispatcher:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    new-instance v2, Lzendesk/answerbot/AnswerBotInteraction$ArticlesReply;

    iget-object v3, p0, Lzendesk/answerbot/AnswerBotConversationManager;->dateProvider:Lzendesk/messaging/components/DateProvider;

    .line 67
    invoke-virtual {v3}, Lzendesk/messaging/components/DateProvider;->now()Ljava/util/Date;

    move-result-object v3

    invoke-direct {v2, v0, v3, p1}, Lzendesk/answerbot/AnswerBotInteraction$ArticlesReply;-><init>(Ljava/lang/String;Ljava/util/Date;Lzendesk/answerbot/DeflectionResponse;)V

    const/4 p1, 0x0

    new-array p1, p1, [Lzendesk/messaging/Update;

    .line 66
    invoke-virtual {v1, v2, p1}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->addMessageWithTypingIndicator(Ljava/lang/Object;[Lzendesk/messaging/Update;)V

    return-object v0
.end method

.method addPendingMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 46
    invoke-static {}, Lzendesk/answerbot/AnswerBotConversationManager;->newId()Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lzendesk/answerbot/AnswerBotConversationManager;->botMessageDispatcher:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    new-instance v2, Lzendesk/answerbot/AnswerBotInteraction$TextQuery;

    iget-object v3, p0, Lzendesk/answerbot/AnswerBotConversationManager;->dateProvider:Lzendesk/messaging/components/DateProvider;

    .line 48
    invoke-virtual {v3}, Lzendesk/messaging/components/DateProvider;->now()Ljava/util/Date;

    move-result-object v3

    sget-object v4, Lzendesk/messaging/MessagingItem$Query$Status;->PENDING:Lzendesk/messaging/MessagingItem$Query$Status;

    invoke-direct {v2, v0, v3, p1, v4}, Lzendesk/answerbot/AnswerBotInteraction$TextQuery;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lzendesk/messaging/MessagingItem$Query$Status;)V

    .line 47
    invoke-virtual {v1, v2}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->addMessage(Ljava/lang/Object;)V

    return-object v0
.end method

.method addResponseOptions(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    invoke-static {}, Lzendesk/answerbot/AnswerBotConversationManager;->newId()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {}, Lzendesk/answerbot/AnswerBotConversationManager;->newId()Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v4, Lzendesk/answerbot/AnswerBotInteraction$TextReply;

    iget-object v5, p0, Lzendesk/answerbot/AnswerBotConversationManager;->dateProvider:Lzendesk/messaging/components/DateProvider;

    invoke-virtual {v5}, Lzendesk/messaging/components/DateProvider;->now()Ljava/util/Date;

    move-result-object v5

    invoke-direct {v4, v1, v5, p1}, Lzendesk/answerbot/AnswerBotInteraction$TextReply;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance p1, Lzendesk/answerbot/AnswerBotInteraction$ResponseOption;

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotConversationManager;->dateProvider:Lzendesk/messaging/components/DateProvider;

    invoke-virtual {v1}, Lzendesk/messaging/components/DateProvider;->now()Ljava/util/Date;

    move-result-object v1

    invoke-direct {p1, v3, p2, v1}, Lzendesk/answerbot/AnswerBotInteraction$ResponseOption;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Date;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotConversationManager;->botMessageDispatcher:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    const/4 p2, 0x0

    new-array p2, p2, [Lzendesk/messaging/Update;

    invoke-virtual {p1, v0, p2}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->addMessagesWithTypingIndicator(Ljava/util/List;[Lzendesk/messaging/Update;)V

    return-object v2
.end method

.method addTextReply(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 39
    invoke-static {}, Lzendesk/answerbot/AnswerBotConversationManager;->newId()Ljava/lang/String;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lzendesk/answerbot/AnswerBotConversationManager;->botMessageDispatcher:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    new-instance v2, Lzendesk/answerbot/AnswerBotInteraction$TextReply;

    iget-object v3, p0, Lzendesk/answerbot/AnswerBotConversationManager;->dateProvider:Lzendesk/messaging/components/DateProvider;

    .line 41
    invoke-virtual {v3}, Lzendesk/messaging/components/DateProvider;->now()Ljava/util/Date;

    move-result-object v3

    invoke-direct {v2, v0, v3, p1}, Lzendesk/answerbot/AnswerBotInteraction$TextReply;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Lzendesk/messaging/Update;

    .line 40
    invoke-virtual {v1, v2, p1}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->addMessageWithTypingIndicator(Ljava/lang/Object;[Lzendesk/messaging/Update;)V

    return-object v0
.end method

.method addTransferOptions(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 32
    invoke-static {}, Lzendesk/answerbot/AnswerBotConversationManager;->newId()Ljava/lang/String;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lzendesk/answerbot/AnswerBotConversationManager;->botMessageDispatcher:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    new-instance v2, Lzendesk/answerbot/AnswerBotInteraction$TransferOptions;

    iget-object v3, p0, Lzendesk/answerbot/AnswerBotConversationManager;->dateProvider:Lzendesk/messaging/components/DateProvider;

    .line 34
    invoke-virtual {v3}, Lzendesk/messaging/components/DateProvider;->now()Ljava/util/Date;

    move-result-object v3

    invoke-direct {v2, v0, v3, p1}, Lzendesk/answerbot/AnswerBotInteraction$TransferOptions;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Lzendesk/messaging/Update;

    .line 33
    invoke-virtual {v1, v2, p1}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->addMessageWithTypingIndicator(Ljava/lang/Object;[Lzendesk/messaging/Update;)V

    return-object v0
.end method

.method dispatchUpdate(Lzendesk/messaging/Update;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotConversationManager;->botMessageDispatcher:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    invoke-virtual {v0, p1}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->dispatchUpdate(Lzendesk/messaging/Update;)V

    return-void
.end method

.method getInteractionById(Ljava/lang/String;)Lzendesk/answerbot/AnswerBotInteraction;
    .locals 1

    .line 97
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotConversationManager;->botMessageDispatcher:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    invoke-virtual {v0, p1}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->getMessageById(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/answerbot/AnswerBotInteraction;

    return-object p1
.end method

.method getLastInteraction()Lzendesk/answerbot/AnswerBotInteraction;
    .locals 1

    .line 102
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotConversationManager;->botMessageDispatcher:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    invoke-virtual {v0}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->getLastMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/answerbot/AnswerBotInteraction;

    return-object v0
.end method

.method reloadConversation()V
    .locals 1

    .line 28
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotConversationManager;->botMessageDispatcher:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    invoke-virtual {v0}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->dispatchState()V

    return-void
.end method

.method removeInteraction(Ljava/lang/String;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotConversationManager;->botMessageDispatcher:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    invoke-virtual {v0, p1}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->removeMessage(Ljava/lang/String;)V

    return-void
.end method

.method removeLastInteractions(I)V
    .locals 1

    .line 92
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotConversationManager;->botMessageDispatcher:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    invoke-virtual {v0, p1}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->removeLastMessages(I)V

    return-void
.end method

.method replaceWithDeliveredTextQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 59
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotConversationManager;->botMessageDispatcher:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    new-instance v1, Lzendesk/answerbot/AnswerBotInteraction$TextQuery;

    iget-object v2, p0, Lzendesk/answerbot/AnswerBotConversationManager;->dateProvider:Lzendesk/messaging/components/DateProvider;

    .line 60
    invoke-virtual {v2}, Lzendesk/messaging/components/DateProvider;->now()Ljava/util/Date;

    move-result-object v2

    sget-object v3, Lzendesk/messaging/MessagingItem$Query$Status;->DELIVERED:Lzendesk/messaging/MessagingItem$Query$Status;

    invoke-direct {v1, p1, v2, p2, v3}, Lzendesk/answerbot/AnswerBotInteraction$TextQuery;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lzendesk/messaging/MessagingItem$Query$Status;)V

    .line 59
    invoke-virtual {v0, p1, v1}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->replaceMessage(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1
.end method

.method replaceWithFailedQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 53
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotConversationManager;->botMessageDispatcher:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    new-instance v1, Lzendesk/answerbot/AnswerBotInteraction$TextQuery;

    iget-object v2, p0, Lzendesk/answerbot/AnswerBotConversationManager;->dateProvider:Lzendesk/messaging/components/DateProvider;

    .line 54
    invoke-virtual {v2}, Lzendesk/messaging/components/DateProvider;->now()Ljava/util/Date;

    move-result-object v2

    sget-object v3, Lzendesk/messaging/MessagingItem$Query$Status;->FAILED:Lzendesk/messaging/MessagingItem$Query$Status;

    invoke-direct {v1, p1, v2, p2, v3}, Lzendesk/answerbot/AnswerBotInteraction$TextQuery;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lzendesk/messaging/MessagingItem$Query$Status;)V

    .line 53
    invoke-virtual {v0, p1, v1}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->replaceMessage(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1
.end method
