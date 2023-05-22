.class Lzendesk/answerbot/AnswerBotModel$2;
.super Lcom/zendesk/service/ZendeskCallback;
.source "AnswerBotModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/answerbot/AnswerBotModel;->sendQuery(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/service/ZendeskCallback<",
        "Lzendesk/answerbot/DeflectionResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/answerbot/AnswerBotModel;

.field final synthetic val$pendingInteractionId:Ljava/lang/String;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lzendesk/answerbot/AnswerBotModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotModel$2;->this$0:Lzendesk/answerbot/AnswerBotModel;

    iput-object p2, p0, Lzendesk/answerbot/AnswerBotModel$2;->val$pendingInteractionId:Ljava/lang/String;

    iput-object p3, p0, Lzendesk/answerbot/AnswerBotModel$2;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Lcom/zendesk/service/ZendeskCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/zendesk/service/ErrorResponse;)V
    .locals 2

    .line 141
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotModel$2;->this$0:Lzendesk/answerbot/AnswerBotModel;

    sget-object v0, Lzendesk/answerbot/AnswerBotModel$Responses;->FAILED_QUERY:Lzendesk/answerbot/AnswerBotModel$Responses;

    invoke-static {p1, v0}, Lzendesk/answerbot/AnswerBotModel;->access$502(Lzendesk/answerbot/AnswerBotModel;Lzendesk/answerbot/AnswerBotModel$Responses;)Lzendesk/answerbot/AnswerBotModel$Responses;

    .line 142
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotModel$2;->this$0:Lzendesk/answerbot/AnswerBotModel;

    invoke-static {p1}, Lzendesk/answerbot/AnswerBotModel;->access$100(Lzendesk/answerbot/AnswerBotModel;)Lzendesk/answerbot/AnswerBotConversationManager;

    move-result-object p1

    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel$2;->val$pendingInteractionId:Ljava/lang/String;

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotModel$2;->val$query:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lzendesk/answerbot/AnswerBotConversationManager;->replaceWithFailedQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 116
    check-cast p1, Lzendesk/answerbot/DeflectionResponse;

    invoke-virtual {p0, p1}, Lzendesk/answerbot/AnswerBotModel$2;->onSuccess(Lzendesk/answerbot/DeflectionResponse;)V

    return-void
.end method

.method public onSuccess(Lzendesk/answerbot/DeflectionResponse;)V
    .locals 3

    .line 120
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel$2;->this$0:Lzendesk/answerbot/AnswerBotModel;

    invoke-static {v0}, Lzendesk/answerbot/AnswerBotModel;->access$100(Lzendesk/answerbot/AnswerBotModel;)Lzendesk/answerbot/AnswerBotConversationManager;

    move-result-object v0

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotModel$2;->val$pendingInteractionId:Ljava/lang/String;

    iget-object v2, p0, Lzendesk/answerbot/AnswerBotModel$2;->val$query:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lzendesk/answerbot/AnswerBotConversationManager;->replaceWithDeliveredTextQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Lzendesk/answerbot/DeflectionResponse;->getDeflectionArticles()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/zendesk/util/CollectionUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel$2;->this$0:Lzendesk/answerbot/AnswerBotModel;

    invoke-static {v0}, Lzendesk/answerbot/AnswerBotModel;->access$100(Lzendesk/answerbot/AnswerBotModel;)Lzendesk/answerbot/AnswerBotConversationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lzendesk/answerbot/AnswerBotConversationManager;->addArticles(Lzendesk/answerbot/DeflectionResponse;)Ljava/lang/String;

    .line 125
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotModel$2;->this$0:Lzendesk/answerbot/AnswerBotModel;

    sget-object v0, Lzendesk/answerbot/AnswerBotModel$Responses;->ARTICLE_LIST:Lzendesk/answerbot/AnswerBotModel$Responses;

    invoke-static {p1, v0}, Lzendesk/answerbot/AnswerBotModel;->access$502(Lzendesk/answerbot/AnswerBotModel;Lzendesk/answerbot/AnswerBotModel$Responses;)Lzendesk/answerbot/AnswerBotModel$Responses;

    goto :goto_1

    .line 127
    :cond_0
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotModel$2;->this$0:Lzendesk/answerbot/AnswerBotModel;

    invoke-static {p1}, Lzendesk/answerbot/AnswerBotModel;->access$100(Lzendesk/answerbot/AnswerBotModel;)Lzendesk/answerbot/AnswerBotConversationManager;

    move-result-object p1

    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel$2;->this$0:Lzendesk/answerbot/AnswerBotModel;

    invoke-static {v0}, Lzendesk/answerbot/AnswerBotModel;->access$600(Lzendesk/answerbot/AnswerBotModel;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzendesk/answerbot/R$string;->zab_cell_text_no_articles:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzendesk/answerbot/AnswerBotConversationManager;->addTextReply(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotModel$2;->this$0:Lzendesk/answerbot/AnswerBotModel;

    invoke-static {p1}, Lzendesk/answerbot/AnswerBotModel;->access$200(Lzendesk/answerbot/AnswerBotModel;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 129
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotModel$2;->this$0:Lzendesk/answerbot/AnswerBotModel;

    sget v0, Lzendesk/answerbot/R$string;->zab_cell_text_contact_options_header:I

    invoke-static {p1, v0}, Lzendesk/answerbot/AnswerBotModel;->access$700(Lzendesk/answerbot/AnswerBotModel;I)V

    .line 130
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotModel$2;->this$0:Lzendesk/answerbot/AnswerBotModel;

    invoke-static {p1}, Lzendesk/answerbot/AnswerBotModel;->access$100(Lzendesk/answerbot/AnswerBotModel;)Lzendesk/answerbot/AnswerBotConversationManager;

    move-result-object p1

    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel$2;->this$0:Lzendesk/answerbot/AnswerBotModel;

    invoke-static {v0}, Lzendesk/answerbot/AnswerBotModel;->access$600(Lzendesk/answerbot/AnswerBotModel;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzendesk/answerbot/R$string;->zab_cell_text_prompt_another_question:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzendesk/answerbot/AnswerBotConversationManager;->addTextReply(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 132
    :cond_1
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotModel$2;->this$0:Lzendesk/answerbot/AnswerBotModel;

    invoke-static {p1}, Lzendesk/answerbot/AnswerBotModel;->access$100(Lzendesk/answerbot/AnswerBotModel;)Lzendesk/answerbot/AnswerBotConversationManager;

    move-result-object p1

    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel$2;->this$0:Lzendesk/answerbot/AnswerBotModel;

    invoke-static {v0}, Lzendesk/answerbot/AnswerBotModel;->access$600(Lzendesk/answerbot/AnswerBotModel;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzendesk/answerbot/R$string;->zab_cell_text_prompt_another_question_no_transfer_options:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzendesk/answerbot/AnswerBotConversationManager;->addTextReply(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    :goto_0
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotModel$2;->this$0:Lzendesk/answerbot/AnswerBotModel;

    sget-object v0, Lzendesk/answerbot/AnswerBotModel$Responses;->NO_ARTICLES:Lzendesk/answerbot/AnswerBotModel$Responses;

    invoke-static {p1, v0}, Lzendesk/answerbot/AnswerBotModel;->access$502(Lzendesk/answerbot/AnswerBotModel;Lzendesk/answerbot/AnswerBotModel$Responses;)Lzendesk/answerbot/AnswerBotModel$Responses;

    :goto_1
    return-void
.end method
