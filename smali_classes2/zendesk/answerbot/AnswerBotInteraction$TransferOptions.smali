.class public Lzendesk/answerbot/AnswerBotInteraction$TransferOptions;
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
    name = "TransferOptions"
.end annotation


# instance fields
.field private final date:Ljava/util/Date;

.field private final header:Ljava/lang/String;

.field private final id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotInteraction$TransferOptions;->id:Ljava/lang/String;

    .line 161
    iput-object p2, p0, Lzendesk/answerbot/AnswerBotInteraction$TransferOptions;->date:Ljava/util/Date;

    .line 162
    iput-object p3, p0, Lzendesk/answerbot/AnswerBotInteraction$TransferOptions;->header:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .line 174
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotInteraction$TransferOptions;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotInteraction$TransferOptions;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotInteraction$TransferOptions;->id:Ljava/lang/String;

    return-object v0
.end method

.method public handle(Lzendesk/answerbot/AnswerBotInteraction$Handler;)V
    .locals 0

    .line 184
    invoke-interface {p1, p0}, Lzendesk/answerbot/AnswerBotInteraction$Handler;->handle(Lzendesk/answerbot/AnswerBotInteraction$TransferOptions;)V

    return-void
.end method
