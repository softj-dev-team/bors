.class Lzendesk/answerbot/AnswerBotModel$4;
.super Ljava/lang/Object;
.source "AnswerBotModel.java"

# interfaces
.implements Lzendesk/answerbot/FormResponseEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/answerbot/AnswerBotModel;->showWasArticleRelevantResponse(JJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/answerbot/AnswerBotModel;

.field final synthetic val$accessToken:Ljava/lang/String;

.field final synthetic val$articleId:J

.field final synthetic val$deflectionId:J


# direct methods
.method constructor <init>(Lzendesk/answerbot/AnswerBotModel;JJLjava/lang/String;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotModel$4;->this$0:Lzendesk/answerbot/AnswerBotModel;

    iput-wide p2, p0, Lzendesk/answerbot/AnswerBotModel$4;->val$deflectionId:J

    iput-wide p4, p0, Lzendesk/answerbot/AnswerBotModel$4;->val$articleId:J

    iput-object p6, p0, Lzendesk/answerbot/AnswerBotModel$4;->val$accessToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lzendesk/messaging/Event$ResponseOptionClicked;)V
    .locals 8

    .line 297
    invoke-virtual {p1}, Lzendesk/messaging/Event$ResponseOptionClicked;->getClickedOption()Lzendesk/messaging/MessagingItem$Option;

    move-result-object p1

    .line 298
    invoke-virtual {p1}, Lzendesk/messaging/MessagingItem$Option;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotModel$4;->this$0:Lzendesk/answerbot/AnswerBotModel;

    .line 299
    invoke-static {v1}, Lzendesk/answerbot/AnswerBotModel;->access$600(Lzendesk/answerbot/AnswerBotModel;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzendesk/answerbot/R$string;->zui_button_label_yes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    sget-object v0, Lzendesk/answerbot/RejectionReason;->RELATED_DIDNT_ANSWER:Lzendesk/answerbot/RejectionReason;

    goto :goto_0

    :cond_0
    sget-object v0, Lzendesk/answerbot/RejectionReason;->NOT_RELATED:Lzendesk/answerbot/RejectionReason;

    :goto_0
    move-object v7, v0

    .line 302
    iget-object v1, p0, Lzendesk/answerbot/AnswerBotModel$4;->this$0:Lzendesk/answerbot/AnswerBotModel;

    iget-wide v2, p0, Lzendesk/answerbot/AnswerBotModel$4;->val$deflectionId:J

    iget-wide v4, p0, Lzendesk/answerbot/AnswerBotModel$4;->val$articleId:J

    iget-object v6, p0, Lzendesk/answerbot/AnswerBotModel$4;->val$accessToken:Ljava/lang/String;

    invoke-static/range {v1 .. v7}, Lzendesk/answerbot/AnswerBotModel;->access$1100(Lzendesk/answerbot/AnswerBotModel;JJLjava/lang/String;Lzendesk/answerbot/RejectionReason;)V

    .line 303
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModel$4;->this$0:Lzendesk/answerbot/AnswerBotModel;

    invoke-static {v0}, Lzendesk/answerbot/AnswerBotModel;->access$100(Lzendesk/answerbot/AnswerBotModel;)Lzendesk/answerbot/AnswerBotConversationManager;

    move-result-object v0

    invoke-virtual {p1}, Lzendesk/messaging/MessagingItem$Option;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lzendesk/messaging/MessagingItem$Option;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lzendesk/answerbot/AnswerBotConversationManager;->replaceWithDeliveredTextQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotModel$4;->this$0:Lzendesk/answerbot/AnswerBotModel;

    invoke-static {p1}, Lzendesk/answerbot/AnswerBotModel;->access$1200(Lzendesk/answerbot/AnswerBotModel;)V

    return-void
.end method
