.class final Lzendesk/answerbot/DaggerAnswerBotConversationComponent;
.super Ljava/lang/Object;
.source "DaggerAnswerBotConversationComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;,
        Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;
    .locals 2

    .line 32
    new-instance v0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;-><init>(Lzendesk/answerbot/DaggerAnswerBotConversationComponent$1;)V

    return-object v0
.end method
