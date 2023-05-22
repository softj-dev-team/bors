.class public Lzendesk/answerbot/AnswerBotInteraction$TextReply;
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
    name = "TextReply"
.end annotation


# instance fields
.field private final date:Ljava/util/Date;

.field private final id:Ljava/lang/String;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotInteraction$TextReply;->id:Ljava/lang/String;

    .line 125
    iput-object p2, p0, Lzendesk/answerbot/AnswerBotInteraction$TextReply;->date:Ljava/util/Date;

    .line 126
    iput-object p3, p0, Lzendesk/answerbot/AnswerBotInteraction$TextReply;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .line 138
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotInteraction$TextReply;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotInteraction$TextReply;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotInteraction$TextReply;->text:Ljava/lang/String;

    return-object v0
.end method

.method public handle(Lzendesk/answerbot/AnswerBotInteraction$Handler;)V
    .locals 0

    .line 148
    invoke-interface {p1, p0}, Lzendesk/answerbot/AnswerBotInteraction$Handler;->handle(Lzendesk/answerbot/AnswerBotInteraction$TextReply;)V

    return-void
.end method
