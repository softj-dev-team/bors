.class public Lzendesk/answerbot/AnswerBotInteraction$ResponseOption;
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
    name = "ResponseOption"
.end annotation


# instance fields
.field private final date:Ljava/util/Date;

.field private final id:Ljava/lang/String;

.field private final options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotInteraction$ResponseOption;->id:Ljava/lang/String;

    .line 196
    iput-object p2, p0, Lzendesk/answerbot/AnswerBotInteraction$ResponseOption;->options:Ljava/util/List;

    .line 197
    iput-object p3, p0, Lzendesk/answerbot/AnswerBotInteraction$ResponseOption;->date:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .line 209
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotInteraction$ResponseOption;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotInteraction$ResponseOption;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotInteraction$ResponseOption;->options:Ljava/util/List;

    return-object v0
.end method

.method public handle(Lzendesk/answerbot/AnswerBotInteraction$Handler;)V
    .locals 0

    .line 218
    invoke-interface {p1, p0}, Lzendesk/answerbot/AnswerBotInteraction$Handler;->handle(Lzendesk/answerbot/AnswerBotInteraction$ResponseOption;)V

    return-void
.end method
