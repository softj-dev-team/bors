.class Lzendesk/answerbot/AnswerBotConversationModule$1;
.super Ljava/lang/Object;
.source "AnswerBotConversationModule.java"

# interfaces
.implements Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/answerbot/AnswerBotConversationModule;->provideInteractionIdentifier()Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier<",
        "Lzendesk/answerbot/AnswerBotInteraction;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/answerbot/AnswerBotConversationModule;


# direct methods
.method constructor <init>(Lzendesk/answerbot/AnswerBotConversationModule;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotConversationModule$1;->this$0:Lzendesk/answerbot/AnswerBotConversationModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 106
    check-cast p1, Lzendesk/answerbot/AnswerBotInteraction;

    invoke-virtual {p0, p1}, Lzendesk/answerbot/AnswerBotConversationModule$1;->getId(Lzendesk/answerbot/AnswerBotInteraction;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getId(Lzendesk/answerbot/AnswerBotInteraction;)Ljava/lang/String;
    .locals 0

    .line 109
    invoke-interface {p1}, Lzendesk/answerbot/AnswerBotInteraction;->getId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
