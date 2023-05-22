.class Lzendesk/answerbot/AnswerBotConversationModule$2;
.super Ljava/lang/Object;
.source "AnswerBotConversationModule.java"

# interfaces
.implements Lzendesk/messaging/components/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/answerbot/AnswerBotConversationModule;->provideStateActionListener(Lzendesk/messaging/components/CompositeActionListener;)Lzendesk/messaging/components/ActionListener;
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
.field final synthetic this$0:Lzendesk/answerbot/AnswerBotConversationModule;

.field final synthetic val$observer:Lzendesk/messaging/components/CompositeActionListener;


# direct methods
.method constructor <init>(Lzendesk/answerbot/AnswerBotConversationModule;Lzendesk/messaging/components/CompositeActionListener;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotConversationModule$2;->this$0:Lzendesk/answerbot/AnswerBotConversationModule;

    iput-object p2, p0, Lzendesk/answerbot/AnswerBotConversationModule$2;->val$observer:Lzendesk/messaging/components/CompositeActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAction(Ljava/lang/Object;)V
    .locals 0

    .line 118
    check-cast p1, Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState;

    invoke-virtual {p0, p1}, Lzendesk/answerbot/AnswerBotConversationModule$2;->onAction(Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState;)V

    return-void
.end method

.method public onAction(Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;)V"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotConversationModule$2;->val$observer:Lzendesk/messaging/components/CompositeActionListener;

    invoke-virtual {v0, p1}, Lzendesk/messaging/components/CompositeActionListener;->onAction(Ljava/lang/Object;)V

    return-void
.end method
