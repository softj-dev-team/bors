.class Lzendesk/answerbot/MessagingItemFactory;
.super Ljava/lang/Object;
.source "MessagingItemFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createArticlesReplyCellData(Lzendesk/answerbot/AnswerBotInteraction$ArticlesReply;Lzendesk/messaging/AgentDetails;)Lzendesk/messaging/MessagingItem$ArticlesResponse;
    .locals 3

    .line 16
    new-instance v0, Lzendesk/messaging/MessagingItem$ArticlesResponse;

    .line 17
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotInteraction$ArticlesReply;->getDate()Ljava/util/Date;

    move-result-object v1

    .line 18
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotInteraction$ArticlesReply;->getId()Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-static {p0}, Lzendesk/answerbot/MessagingItemFactory;->mapToArticleSuggestionState(Lzendesk/answerbot/AnswerBotInteraction$ArticlesReply;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, v2, p1, p0}, Lzendesk/messaging/MessagingItem$ArticlesResponse;-><init>(Ljava/util/Date;Ljava/lang/String;Lzendesk/messaging/AgentDetails;Ljava/util/List;)V

    return-object v0
.end method

.method static createResponseOptionCellData(Lzendesk/answerbot/AnswerBotInteraction$ResponseOption;)Lzendesk/messaging/MessagingItem$OptionsResponse;
    .locals 5

    .line 56
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotInteraction$ResponseOption;->getOptions()Ljava/util/List;

    move-result-object v0

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 59
    new-instance v3, Lzendesk/messaging/MessagingItem$Option;

    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotInteraction$ResponseOption;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lzendesk/messaging/MessagingItem$Option;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Lzendesk/messaging/MessagingItem$OptionsResponse;

    .line 62
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotInteraction$ResponseOption;->getDate()Ljava/util/Date;

    move-result-object v2

    .line 63
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotInteraction$ResponseOption;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, p0, v1}, Lzendesk/messaging/MessagingItem$OptionsResponse;-><init>(Ljava/util/Date;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method static createTransferOptionsCellData(Lzendesk/answerbot/AnswerBotInteraction$TransferOptions;Lzendesk/messaging/AgentDetails;Ljava/util/List;)Lzendesk/messaging/MessagingItem$TransferResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/answerbot/AnswerBotInteraction$TransferOptions;",
            "Lzendesk/messaging/AgentDetails;",
            "Ljava/util/List<",
            "Lzendesk/messaging/Engine$TransferOptionDescription;",
            ">;)",
            "Lzendesk/messaging/MessagingItem$TransferResponse;"
        }
    .end annotation

    .line 46
    new-instance v6, Lzendesk/messaging/MessagingItem$TransferResponse;

    .line 47
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotInteraction$TransferOptions;->getDate()Ljava/util/Date;

    move-result-object v1

    .line 48
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotInteraction$TransferOptions;->getId()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotInteraction$TransferOptions;->getHeader()Ljava/lang/String;

    move-result-object v4

    move-object v0, v6

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lzendesk/messaging/MessagingItem$TransferResponse;-><init>(Ljava/util/Date;Ljava/lang/String;Lzendesk/messaging/AgentDetails;Ljava/lang/String;Ljava/util/List;)V

    return-object v6
.end method

.method private static mapToArticleSuggestionState(Lzendesk/answerbot/AnswerBotInteraction$ArticlesReply;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/answerbot/AnswerBotInteraction$ArticlesReply;",
            ")",
            "Ljava/util/List<",
            "Lzendesk/messaging/MessagingItem$ArticlesResponse$ArticleSuggestion;",
            ">;"
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotInteraction$ArticlesReply;->getDeflectionArticles()Ljava/util/List;

    move-result-object v0

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/answerbot/DeflectionArticle;

    .line 31
    new-instance v10, Lzendesk/messaging/MessagingItem$ArticlesResponse$ArticleSuggestion;

    .line 32
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotInteraction$ArticlesReply;->getId()Ljava/lang/String;

    move-result-object v4

    .line 33
    invoke-virtual {v2}, Lzendesk/answerbot/DeflectionArticle;->getHtmlUrl()Ljava/lang/String;

    move-result-object v5

    .line 34
    invoke-virtual {v2}, Lzendesk/answerbot/DeflectionArticle;->getArticleId()J

    move-result-wide v6

    .line 35
    invoke-virtual {v2}, Lzendesk/answerbot/DeflectionArticle;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 36
    invoke-virtual {v2}, Lzendesk/answerbot/DeflectionArticle;->getSnippet()Ljava/lang/String;

    move-result-object v9

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lzendesk/messaging/MessagingItem$ArticlesResponse$ArticleSuggestion;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
