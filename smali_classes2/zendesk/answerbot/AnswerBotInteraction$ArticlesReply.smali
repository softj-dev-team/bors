.class public Lzendesk/answerbot/AnswerBotInteraction$ArticlesReply;
.super Ljava/lang/Object;
.source "AnswerBotInteraction.java"

# interfaces
.implements Lzendesk/answerbot/AnswerBotInteraction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/answerbot/AnswerBotInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArticlesReply"
.end annotation


# instance fields
.field private final date:Ljava/util/Date;

.field private final deflectionResponse:Lzendesk/answerbot/DeflectionResponse;

.field private final id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Date;Lzendesk/answerbot/DeflectionResponse;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotInteraction$ArticlesReply;->id:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lzendesk/answerbot/AnswerBotInteraction$ArticlesReply;->date:Ljava/util/Date;

    .line 84
    iput-object p3, p0, Lzendesk/answerbot/AnswerBotInteraction$ArticlesReply;->deflectionResponse:Lzendesk/answerbot/DeflectionResponse;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .line 96
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotInteraction$ArticlesReply;->date:Ljava/util/Date;

    return-object v0
.end method

.method getDeflectionArticles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/answerbot/DeflectionArticle;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotInteraction$ArticlesReply;->deflectionResponse:Lzendesk/answerbot/DeflectionResponse;

    invoke-virtual {v0}, Lzendesk/answerbot/DeflectionResponse;->getDeflectionArticles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeflectionResponse()Lzendesk/answerbot/DeflectionResponse;
    .locals 1

    .line 106
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotInteraction$ArticlesReply;->deflectionResponse:Lzendesk/answerbot/DeflectionResponse;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotInteraction$ArticlesReply;->id:Ljava/lang/String;

    return-object v0
.end method

.method public handle(Lzendesk/answerbot/AnswerBotInteraction$Handler;)V
    .locals 0

    .line 111
    invoke-interface {p1, p0}, Lzendesk/answerbot/AnswerBotInteraction$Handler;->handle(Lzendesk/answerbot/AnswerBotInteraction$ArticlesReply;)V

    return-void
.end method
