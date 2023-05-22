.class Lzendesk/answerbot/AnswerBotModel$1;
.super Lcom/zendesk/service/ZendeskCallback;
.source "AnswerBotModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/answerbot/AnswerBotModel;->startConversation(Z)V
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
.field final synthetic this$0:Lzendesk/answerbot/AnswerBotModel;


# direct methods
.method constructor <init>(Lzendesk/answerbot/AnswerBotModel;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotModel$1;->this$0:Lzendesk/answerbot/AnswerBotModel;

    invoke-direct {p0}, Lcom/zendesk/service/ZendeskCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/zendesk/service/ErrorResponse;)V
    .locals 0

    .line 105
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotModel$1;->this$0:Lzendesk/answerbot/AnswerBotModel;

    invoke-static {p1}, Lzendesk/answerbot/AnswerBotModel;->access$400(Lzendesk/answerbot/AnswerBotModel;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 89
    check-cast p1, Lzendesk/answerbot/AnswerBotSettings;

    invoke-virtual {p0, p1}, Lzendesk/answerbot/AnswerBotModel$1;->onSuccess(Lzendesk/answerbot/AnswerBotSettings;)V

    return-void
.end method

.method public onSuccess(Lzendesk/answerbot/AnswerBotSettings;)V
    .locals 1

    .line 92
    invoke-virtual {p1}, Lzendesk/answerbot/AnswerBotSettings;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotModel$1;->this$0:Lzendesk/answerbot/AnswerBotModel;

    invoke-static {p1}, Lzendesk/answerbot/AnswerBotModel;->access$000(Lzendesk/answerbot/AnswerBotModel;)V

    .line 94
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotModel$1;->this$0:Lzendesk/answerbot/AnswerBotModel;

    invoke-static {p1}, Lzendesk/answerbot/AnswerBotModel;->access$100(Lzendesk/answerbot/AnswerBotModel;)Lzendesk/answerbot/AnswerBotConversationManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Lzendesk/messaging/Update$State$UpdateInputFieldState;->updateInputFieldEnabled(Z)Lzendesk/messaging/Update$State$UpdateInputFieldState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzendesk/answerbot/AnswerBotConversationManager;->dispatchUpdate(Lzendesk/messaging/Update;)V

    .line 95
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotModel$1;->this$0:Lzendesk/answerbot/AnswerBotModel;

    invoke-static {p1}, Lzendesk/answerbot/AnswerBotModel;->access$200(Lzendesk/answerbot/AnswerBotModel;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 96
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotModel$1;->this$0:Lzendesk/answerbot/AnswerBotModel;

    invoke-static {p1}, Lzendesk/answerbot/AnswerBotModel;->access$300(Lzendesk/answerbot/AnswerBotModel;)Lzendesk/messaging/components/Timer;

    move-result-object p1

    invoke-virtual {p1}, Lzendesk/messaging/components/Timer;->start()Z

    goto :goto_0

    .line 99
    :cond_0
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotModel$1;->this$0:Lzendesk/answerbot/AnswerBotModel;

    invoke-static {p1}, Lzendesk/answerbot/AnswerBotModel;->access$400(Lzendesk/answerbot/AnswerBotModel;)V

    :cond_1
    :goto_0
    return-void
.end method
