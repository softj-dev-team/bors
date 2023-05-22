.class Lzendesk/answerbot/AnswerBotCellFactory;
.super Ljava/lang/Object;
.source "AnswerBotCellFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method create(Lzendesk/messaging/AgentDetails;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/messaging/AgentDetails;",
            "Ljava/util/List<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;",
            "Ljava/util/List<",
            "Lzendesk/messaging/Engine$TransferOptionDescription;",
            ">;)",
            "Ljava/util/List<",
            "Lzendesk/messaging/MessagingItem;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    new-instance v1, Lzendesk/answerbot/AnswerBotCellFactory$1;

    invoke-direct {v1, p0, v0, p1, p3}, Lzendesk/answerbot/AnswerBotCellFactory$1;-><init>(Lzendesk/answerbot/AnswerBotCellFactory;Ljava/util/List;Lzendesk/messaging/AgentDetails;Ljava/util/List;)V

    .line 56
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lzendesk/answerbot/AnswerBotInteraction;

    .line 57
    invoke-interface {p2, v1}, Lzendesk/answerbot/AnswerBotInteraction;->handle(Lzendesk/answerbot/AnswerBotInteraction$Handler;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method
