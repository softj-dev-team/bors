.class Lzendesk/answerbot/AnswerBotEngine$1;
.super Ljava/lang/Object;
.source "AnswerBotEngine.java"

# interfaces
.implements Lzendesk/messaging/components/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/answerbot/AnswerBotEngine;->start(Lzendesk/messaging/MessagingApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzendesk/messaging/components/ActionListener<",
        "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
        "Lzendesk/answerbot/AnswerBotInteraction;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/answerbot/AnswerBotEngine;

.field final synthetic val$agentDetails:Lzendesk/messaging/AgentDetails;

.field final synthetic val$messagingApi:Lzendesk/messaging/MessagingApi;


# direct methods
.method constructor <init>(Lzendesk/answerbot/AnswerBotEngine;Lzendesk/messaging/AgentDetails;Lzendesk/messaging/MessagingApi;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotEngine$1;->this$0:Lzendesk/answerbot/AnswerBotEngine;

    iput-object p2, p0, Lzendesk/answerbot/AnswerBotEngine$1;->val$agentDetails:Lzendesk/messaging/AgentDetails;

    iput-object p3, p0, Lzendesk/answerbot/AnswerBotEngine$1;->val$messagingApi:Lzendesk/messaging/MessagingApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAction(Ljava/lang/Object;)V
    .locals 0

    .line 82
    check-cast p1, Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState;

    invoke-virtual {p0, p1}, Lzendesk/answerbot/AnswerBotEngine$1;->onAction(Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState;)V

    return-void
.end method

.method public onAction(Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState;->shouldShowTypingIndicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotEngine$1;->this$0:Lzendesk/answerbot/AnswerBotEngine;

    new-instance v1, Lzendesk/messaging/Update$State$ShowTyping;

    iget-object v2, p0, Lzendesk/answerbot/AnswerBotEngine$1;->val$agentDetails:Lzendesk/messaging/AgentDetails;

    invoke-direct {v1, v2}, Lzendesk/messaging/Update$State$ShowTyping;-><init>(Lzendesk/messaging/AgentDetails;)V

    invoke-virtual {v0, v1}, Lzendesk/answerbot/AnswerBotEngine;->notifyObservers(Lzendesk/messaging/Update;)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotEngine$1;->this$0:Lzendesk/answerbot/AnswerBotEngine;

    new-instance v1, Lzendesk/messaging/Update$State$HideTyping;

    invoke-direct {v1}, Lzendesk/messaging/Update$State$HideTyping;-><init>()V

    invoke-virtual {v0, v1}, Lzendesk/answerbot/AnswerBotEngine;->notifyObservers(Lzendesk/messaging/Update;)V

    .line 90
    :goto_0
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotEngine$1;->this$0:Lzendesk/answerbot/AnswerBotEngine;

    new-instance v1, Lzendesk/messaging/Update$State$ApplyMessagingItems;

    .line 91
    invoke-static {v0}, Lzendesk/answerbot/AnswerBotEngine;->access$000(Lzendesk/answerbot/AnswerBotEngine;)Lzendesk/answerbot/AnswerBotCellFactory;

    move-result-object v2

    iget-object v3, p0, Lzendesk/answerbot/AnswerBotEngine$1;->val$agentDetails:Lzendesk/messaging/AgentDetails;

    .line 93
    invoke-virtual {p1}, Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState;->getMessages()Ljava/util/List;

    move-result-object p1

    iget-object v4, p0, Lzendesk/answerbot/AnswerBotEngine$1;->val$messagingApi:Lzendesk/messaging/MessagingApi;

    .line 94
    invoke-interface {v4}, Lzendesk/messaging/MessagingApi;->getTransferOptionDescriptions()Ljava/util/List;

    move-result-object v4

    .line 91
    invoke-virtual {v2, v3, p1, v4}, Lzendesk/answerbot/AnswerBotCellFactory;->create(Lzendesk/messaging/AgentDetails;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Lzendesk/messaging/Update$State$ApplyMessagingItems;-><init>(Ljava/util/List;)V

    .line 90
    invoke-virtual {v0, v1}, Lzendesk/answerbot/AnswerBotEngine;->notifyObservers(Lzendesk/messaging/Update;)V

    return-void
.end method
