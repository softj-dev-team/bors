.class Lzendesk/answerbot/ZendeskAnswerBotProvider$4;
.super Lcom/zendesk/service/ZendeskCallback;
.source "ZendeskAnswerBotProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/answerbot/ZendeskAnswerBotProvider;->checkSettings(Lcom/zendesk/service/ZendeskCallback;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/service/ZendeskCallback<",
        "Lzendesk/answerbot/AnswerBotSettings;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/answerbot/ZendeskAnswerBotProvider;

.field final synthetic val$callback:Lcom/zendesk/service/ZendeskCallback;

.field final synthetic val$enabled:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lzendesk/answerbot/ZendeskAnswerBotProvider;Ljava/lang/Runnable;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$4;->this$0:Lzendesk/answerbot/ZendeskAnswerBotProvider;

    iput-object p2, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$4;->val$enabled:Ljava/lang/Runnable;

    iput-object p3, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$4;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-direct {p0}, Lcom/zendesk/service/ZendeskCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/zendesk/service/ErrorResponse;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$4;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-virtual {v0, p1}, Lcom/zendesk/service/ZendeskCallback;->onError(Lcom/zendesk/service/ErrorResponse;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 115
    check-cast p1, Lzendesk/answerbot/AnswerBotSettings;

    invoke-virtual {p0, p1}, Lzendesk/answerbot/ZendeskAnswerBotProvider$4;->onSuccess(Lzendesk/answerbot/AnswerBotSettings;)V

    return-void
.end method

.method public onSuccess(Lzendesk/answerbot/AnswerBotSettings;)V
    .locals 3

    .line 118
    invoke-virtual {p1}, Lzendesk/answerbot/AnswerBotSettings;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$4;->val$enabled:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 121
    :cond_0
    new-instance p1, Lcom/zendesk/service/ErrorResponseAdapter;

    const-string v0, "Answer Bot is disabled in settings"

    invoke-direct {p1, v0}, Lcom/zendesk/service/ErrorResponseAdapter;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-interface {p1}, Lcom/zendesk/service/ErrorResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ZendeskAnswerBotProvider"

    invoke-static {v2, v0, v1}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$4;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-virtual {v0, p1}, Lcom/zendesk/service/ZendeskCallback;->onError(Lcom/zendesk/service/ErrorResponse;)V

    :goto_0
    return-void
.end method
