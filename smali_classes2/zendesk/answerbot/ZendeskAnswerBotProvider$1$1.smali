.class Lzendesk/answerbot/ZendeskAnswerBotProvider$1$1;
.super Lcom/zendesk/service/ZendeskCallback;
.source "ZendeskAnswerBotProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/answerbot/ZendeskAnswerBotProvider$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/service/ZendeskCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lzendesk/answerbot/ZendeskAnswerBotProvider$1;


# direct methods
.method constructor <init>(Lzendesk/answerbot/ZendeskAnswerBotProvider$1;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$1$1;->this$1:Lzendesk/answerbot/ZendeskAnswerBotProvider$1;

    invoke-direct {p0}, Lcom/zendesk/service/ZendeskCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/zendesk/service/ErrorResponse;)V
    .locals 3

    .line 54
    invoke-interface {p1}, Lcom/zendesk/service/ErrorResponse;->getResponseBody()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ZendeskAnswerBotProvider"

    invoke-static {v1, p1, v0}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    iget-object p1, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$1$1;->this$1:Lzendesk/answerbot/ZendeskAnswerBotProvider$1;

    iget-object p1, p1, Lzendesk/answerbot/ZendeskAnswerBotProvider$1;->this$0:Lzendesk/answerbot/ZendeskAnswerBotProvider;

    iget-object v0, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$1$1;->this$1:Lzendesk/answerbot/ZendeskAnswerBotProvider$1;

    iget-object v0, v0, Lzendesk/answerbot/ZendeskAnswerBotProvider$1;->val$query:Ljava/lang/String;

    iget-object v1, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$1$1;->this$1:Lzendesk/answerbot/ZendeskAnswerBotProvider$1;

    iget-object v1, v1, Lzendesk/answerbot/ZendeskAnswerBotProvider$1;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lzendesk/answerbot/ZendeskAnswerBotProvider;->access$000(Lzendesk/answerbot/ZendeskAnswerBotProvider;Ljava/lang/String;Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lzendesk/answerbot/ZendeskAnswerBotProvider$1$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    .line 49
    iget-object v0, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$1$1;->this$1:Lzendesk/answerbot/ZendeskAnswerBotProvider$1;

    iget-object v0, v0, Lzendesk/answerbot/ZendeskAnswerBotProvider$1;->this$0:Lzendesk/answerbot/ZendeskAnswerBotProvider;

    iget-object v1, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$1$1;->this$1:Lzendesk/answerbot/ZendeskAnswerBotProvider$1;

    iget-object v1, v1, Lzendesk/answerbot/ZendeskAnswerBotProvider$1;->val$query:Ljava/lang/String;

    iget-object v2, p0, Lzendesk/answerbot/ZendeskAnswerBotProvider$1$1;->this$1:Lzendesk/answerbot/ZendeskAnswerBotProvider$1;

    iget-object v2, v2, Lzendesk/answerbot/ZendeskAnswerBotProvider$1;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-static {v0, v1, p1, v2}, Lzendesk/answerbot/ZendeskAnswerBotProvider;->access$000(Lzendesk/answerbot/ZendeskAnswerBotProvider;Ljava/lang/String;Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method
