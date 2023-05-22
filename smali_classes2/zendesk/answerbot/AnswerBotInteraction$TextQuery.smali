.class public Lzendesk/answerbot/AnswerBotInteraction$TextQuery;
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
    name = "TextQuery"
.end annotation


# instance fields
.field private final date:Ljava/util/Date;

.field private final id:Ljava/lang/String;

.field private final queryStatus:Lzendesk/messaging/MessagingItem$Query$Status;

.field private final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lzendesk/messaging/MessagingItem$Query$Status;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotInteraction$TextQuery;->id:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lzendesk/answerbot/AnswerBotInteraction$TextQuery;->date:Ljava/util/Date;

    .line 43
    iput-object p3, p0, Lzendesk/answerbot/AnswerBotInteraction$TextQuery;->text:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lzendesk/answerbot/AnswerBotInteraction$TextQuery;->queryStatus:Lzendesk/messaging/MessagingItem$Query$Status;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .line 56
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotInteraction$TextQuery;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotInteraction$TextQuery;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryStatus()Lzendesk/messaging/MessagingItem$Query$Status;
    .locals 1

    .line 66
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotInteraction$TextQuery;->queryStatus:Lzendesk/messaging/MessagingItem$Query$Status;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotInteraction$TextQuery;->text:Ljava/lang/String;

    return-object v0
.end method

.method public handle(Lzendesk/answerbot/AnswerBotInteraction$Handler;)V
    .locals 0

    .line 71
    invoke-interface {p1, p0}, Lzendesk/answerbot/AnswerBotInteraction$Handler;->handle(Lzendesk/answerbot/AnswerBotInteraction$TextQuery;)V

    return-void
.end method
