.class interface abstract Lzendesk/answerbot/AnswerBotConversationComponent;
.super Ljava/lang/Object;
.source "AnswerBotConversationComponent.java"


# annotations
.annotation runtime Ldagger/Component;
    modules = {
        Lzendesk/core/CoreModule;,
        Lzendesk/answerbot/AnswerBotModule;,
        Lzendesk/answerbot/AnswerBotConversationModule;,
        Lzendesk/answerbot/TimerModule;
    }
.end annotation


# virtual methods
.method public abstract answerBot()Lzendesk/answerbot/AnswerBotEngine;
.end method

.method public abstract getPicasso()Lcom/squareup/picasso/Picasso;
.end method
