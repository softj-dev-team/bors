.class Lzendesk/support/SupportEngine$1;
.super Ljava/lang/Object;
.source "SupportEngine.java"

# interfaces
.implements Lzendesk/messaging/components/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/SupportEngine;->setupViewObserver(Lzendesk/messaging/AgentDetails;)V
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
        "Lzendesk/messaging/MessagingItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/SupportEngine;

.field final synthetic val$agentDetails:Lzendesk/messaging/AgentDetails;


# direct methods
.method constructor <init>(Lzendesk/support/SupportEngine;Lzendesk/messaging/AgentDetails;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lzendesk/support/SupportEngine$1;->this$0:Lzendesk/support/SupportEngine;

    iput-object p2, p0, Lzendesk/support/SupportEngine$1;->val$agentDetails:Lzendesk/messaging/AgentDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAction(Ljava/lang/Object;)V
    .locals 0

    .line 64
    check-cast p1, Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState;

    invoke-virtual {p0, p1}, Lzendesk/support/SupportEngine$1;->onAction(Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState;)V

    return-void
.end method

.method public onAction(Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/messaging/MessagingItem;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState;->shouldShowTypingIndicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lzendesk/support/SupportEngine$1;->this$0:Lzendesk/support/SupportEngine;

    new-instance v1, Lzendesk/messaging/Update$State$ShowTyping;

    iget-object v2, p0, Lzendesk/support/SupportEngine$1;->val$agentDetails:Lzendesk/messaging/AgentDetails;

    invoke-direct {v1, v2}, Lzendesk/messaging/Update$State$ShowTyping;-><init>(Lzendesk/messaging/AgentDetails;)V

    invoke-virtual {v0, v1}, Lzendesk/support/SupportEngine;->notifyObservers(Lzendesk/messaging/Update;)V

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lzendesk/support/SupportEngine$1;->this$0:Lzendesk/support/SupportEngine;

    new-instance v1, Lzendesk/messaging/Update$State$HideTyping;

    invoke-direct {v1}, Lzendesk/messaging/Update$State$HideTyping;-><init>()V

    invoke-virtual {v0, v1}, Lzendesk/support/SupportEngine;->notifyObservers(Lzendesk/messaging/Update;)V

    .line 72
    :goto_0
    iget-object v0, p0, Lzendesk/support/SupportEngine$1;->this$0:Lzendesk/support/SupportEngine;

    new-instance v1, Lzendesk/messaging/Update$State$ApplyMessagingItems;

    invoke-virtual {p1}, Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState;->getMessages()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Lzendesk/messaging/Update$State$ApplyMessagingItems;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lzendesk/support/SupportEngine;->notifyObservers(Lzendesk/messaging/Update;)V

    return-void
.end method
