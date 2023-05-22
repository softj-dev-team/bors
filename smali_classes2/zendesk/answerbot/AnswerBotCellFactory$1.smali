.class Lzendesk/answerbot/AnswerBotCellFactory$1;
.super Ljava/lang/Object;
.source "AnswerBotCellFactory.java"

# interfaces
.implements Lzendesk/answerbot/AnswerBotInteraction$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/answerbot/AnswerBotCellFactory;->create(Lzendesk/messaging/AgentDetails;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/answerbot/AnswerBotCellFactory;

.field final synthetic val$agentDetails:Lzendesk/messaging/AgentDetails;

.field final synthetic val$cells:Ljava/util/List;

.field final synthetic val$engineOptions:Ljava/util/List;


# direct methods
.method constructor <init>(Lzendesk/answerbot/AnswerBotCellFactory;Ljava/util/List;Lzendesk/messaging/AgentDetails;Ljava/util/List;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotCellFactory$1;->this$0:Lzendesk/answerbot/AnswerBotCellFactory;

    iput-object p2, p0, Lzendesk/answerbot/AnswerBotCellFactory$1;->val$cells:Ljava/util/List;

    iput-object p3, p0, Lzendesk/answerbot/AnswerBotCellFactory$1;->val$agentDetails:Lzendesk/messaging/AgentDetails;

    iput-object p4, p0, Lzendesk/answerbot/AnswerBotCellFactory$1;->val$engineOptions:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lzendesk/answerbot/AnswerBotInteraction$ArticlesReply;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotCellFactory$1;->val$cells:Ljava/util/List;

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotCellFactory$1;->val$agentDetails:Lzendesk/messaging/AgentDetails;

    invoke-static {p1, v1}, Lzendesk/answerbot/MessagingItemFactory;->createArticlesReplyCellData(Lzendesk/answerbot/AnswerBotInteraction$ArticlesReply;Lzendesk/messaging/AgentDetails;)Lzendesk/messaging/MessagingItem$ArticlesResponse;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public handle(Lzendesk/answerbot/AnswerBotInteraction$ResponseOption;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotCellFactory$1;->val$cells:Ljava/util/List;

    invoke-static {p1}, Lzendesk/answerbot/MessagingItemFactory;->createResponseOptionCellData(Lzendesk/answerbot/AnswerBotInteraction$ResponseOption;)Lzendesk/messaging/MessagingItem$OptionsResponse;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public handle(Lzendesk/answerbot/AnswerBotInteraction$TextQuery;)V
    .locals 5

    .line 25
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotCellFactory$1;->val$cells:Ljava/util/List;

    new-instance v1, Lzendesk/messaging/MessagingItem$TextQuery;

    .line 26
    invoke-virtual {p1}, Lzendesk/answerbot/AnswerBotInteraction$TextQuery;->getDate()Ljava/util/Date;

    move-result-object v2

    .line 27
    invoke-virtual {p1}, Lzendesk/answerbot/AnswerBotInteraction$TextQuery;->getId()Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-virtual {p1}, Lzendesk/answerbot/AnswerBotInteraction$TextQuery;->getQueryStatus()Lzendesk/messaging/MessagingItem$Query$Status;

    move-result-object v4

    .line 29
    invoke-virtual {p1}, Lzendesk/answerbot/AnswerBotInteraction$TextQuery;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v3, v4, p1}, Lzendesk/messaging/MessagingItem$TextQuery;-><init>(Ljava/util/Date;Ljava/lang/String;Lzendesk/messaging/MessagingItem$Query$Status;Ljava/lang/String;)V

    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public handle(Lzendesk/answerbot/AnswerBotInteraction$TextReply;)V
    .locals 5

    .line 40
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotCellFactory$1;->val$cells:Ljava/util/List;

    new-instance v1, Lzendesk/messaging/MessagingItem$TextResponse;

    .line 41
    invoke-virtual {p1}, Lzendesk/answerbot/AnswerBotInteraction$TextReply;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1}, Lzendesk/answerbot/AnswerBotInteraction$TextReply;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lzendesk/answerbot/AnswerBotCellFactory$1;->val$agentDetails:Lzendesk/messaging/AgentDetails;

    invoke-virtual {p1}, Lzendesk/answerbot/AnswerBotInteraction$TextReply;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v3, v4, p1}, Lzendesk/messaging/MessagingItem$TextResponse;-><init>(Ljava/util/Date;Ljava/lang/String;Lzendesk/messaging/AgentDetails;Ljava/lang/String;)V

    .line 40
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public handle(Lzendesk/answerbot/AnswerBotInteraction$TransferOptions;)V
    .locals 3

    .line 46
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotCellFactory$1;->val$cells:Ljava/util/List;

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotCellFactory$1;->val$agentDetails:Lzendesk/messaging/AgentDetails;

    iget-object v2, p0, Lzendesk/answerbot/AnswerBotCellFactory$1;->val$engineOptions:Ljava/util/List;

    invoke-static {p1, v1, v2}, Lzendesk/answerbot/MessagingItemFactory;->createTransferOptionsCellData(Lzendesk/answerbot/AnswerBotInteraction$TransferOptions;Lzendesk/messaging/AgentDetails;Ljava/util/List;)Lzendesk/messaging/MessagingItem$TransferResponse;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
