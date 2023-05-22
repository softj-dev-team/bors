.class final Lzendesk/answerbot/DaggerAnswerBotArticleComponent;
.super Ljava/lang/Object;
.source "DaggerAnswerBotArticleComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/answerbot/DaggerAnswerBotArticleComponent$AnswerBotArticleComponentImpl;,
        Lzendesk/answerbot/DaggerAnswerBotArticleComponent$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lzendesk/answerbot/DaggerAnswerBotArticleComponent$Builder;
    .locals 2

    .line 26
    new-instance v0, Lzendesk/answerbot/DaggerAnswerBotArticleComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzendesk/answerbot/DaggerAnswerBotArticleComponent$Builder;-><init>(Lzendesk/answerbot/DaggerAnswerBotArticleComponent$1;)V

    return-object v0
.end method
