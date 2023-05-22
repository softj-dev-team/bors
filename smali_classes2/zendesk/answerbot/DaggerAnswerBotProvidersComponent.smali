.class final Lzendesk/answerbot/DaggerAnswerBotProvidersComponent;
.super Ljava/lang/Object;
.source "DaggerAnswerBotProvidersComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/answerbot/DaggerAnswerBotProvidersComponent$AnswerBotProvidersComponentImpl;,
        Lzendesk/answerbot/DaggerAnswerBotProvidersComponent$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lzendesk/answerbot/DaggerAnswerBotProvidersComponent$Builder;
    .locals 2

    .line 27
    new-instance v0, Lzendesk/answerbot/DaggerAnswerBotProvidersComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzendesk/answerbot/DaggerAnswerBotProvidersComponent$Builder;-><init>(Lzendesk/answerbot/DaggerAnswerBotProvidersComponent$1;)V

    return-object v0
.end method
