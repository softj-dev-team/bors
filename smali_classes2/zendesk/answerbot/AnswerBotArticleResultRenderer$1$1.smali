.class Lzendesk/answerbot/AnswerBotArticleResultRenderer$1$1;
.super Ljava/lang/Object;
.source "AnswerBotArticleResultRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/answerbot/AnswerBotArticleResultRenderer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lzendesk/answerbot/AnswerBotArticleResultRenderer$1;


# direct methods
.method constructor <init>(Lzendesk/answerbot/AnswerBotArticleResultRenderer$1;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer$1$1;->this$1:Lzendesk/answerbot/AnswerBotArticleResultRenderer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 126
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer$1$1;->this$1:Lzendesk/answerbot/AnswerBotArticleResultRenderer$1;

    iget-object v0, v0, Lzendesk/answerbot/AnswerBotArticleResultRenderer$1;->this$0:Lzendesk/answerbot/AnswerBotArticleResultRenderer;

    invoke-static {v0}, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->access$100(Lzendesk/answerbot/AnswerBotArticleResultRenderer;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer$1$1;->this$1:Lzendesk/answerbot/AnswerBotArticleResultRenderer$1;

    iget-object v1, v1, Lzendesk/answerbot/AnswerBotArticleResultRenderer$1;->this$0:Lzendesk/answerbot/AnswerBotArticleResultRenderer;

    invoke-static {v1}, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->access$000(Lzendesk/answerbot/AnswerBotArticleResultRenderer;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 127
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer$1$1;->this$1:Lzendesk/answerbot/AnswerBotArticleResultRenderer$1;

    iget-object v0, v0, Lzendesk/answerbot/AnswerBotArticleResultRenderer$1;->this$0:Lzendesk/answerbot/AnswerBotArticleResultRenderer;

    invoke-static {v0}, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->access$100(Lzendesk/answerbot/AnswerBotArticleResultRenderer;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer$1$1;->this$1:Lzendesk/answerbot/AnswerBotArticleResultRenderer$1;

    iget-object v1, v1, Lzendesk/answerbot/AnswerBotArticleResultRenderer$1;->this$0:Lzendesk/answerbot/AnswerBotArticleResultRenderer;

    invoke-static {v1}, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->access$200(Lzendesk/answerbot/AnswerBotArticleResultRenderer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 128
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer$1$1;->this$1:Lzendesk/answerbot/AnswerBotArticleResultRenderer$1;

    iget-object v0, v0, Lzendesk/answerbot/AnswerBotArticleResultRenderer$1;->this$0:Lzendesk/answerbot/AnswerBotArticleResultRenderer;

    invoke-static {v0}, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->access$300(Lzendesk/answerbot/AnswerBotArticleResultRenderer;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer$1$1;->this$1:Lzendesk/answerbot/AnswerBotArticleResultRenderer$1;

    iget-object v1, v1, Lzendesk/answerbot/AnswerBotArticleResultRenderer$1;->this$0:Lzendesk/answerbot/AnswerBotArticleResultRenderer;

    invoke-static {v1}, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->access$000(Lzendesk/answerbot/AnswerBotArticleResultRenderer;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 129
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer$1$1;->this$1:Lzendesk/answerbot/AnswerBotArticleResultRenderer$1;

    iget-object v0, v0, Lzendesk/answerbot/AnswerBotArticleResultRenderer$1;->this$0:Lzendesk/answerbot/AnswerBotArticleResultRenderer;

    invoke-static {v0}, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->access$300(Lzendesk/answerbot/AnswerBotArticleResultRenderer;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer$1$1;->this$1:Lzendesk/answerbot/AnswerBotArticleResultRenderer$1;

    iget-object v1, v1, Lzendesk/answerbot/AnswerBotArticleResultRenderer$1;->this$0:Lzendesk/answerbot/AnswerBotArticleResultRenderer;

    invoke-static {v1}, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->access$200(Lzendesk/answerbot/AnswerBotArticleResultRenderer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 130
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer$1$1;->this$1:Lzendesk/answerbot/AnswerBotArticleResultRenderer$1;

    iget-object v0, v0, Lzendesk/answerbot/AnswerBotArticleResultRenderer$1;->this$0:Lzendesk/answerbot/AnswerBotArticleResultRenderer;

    invoke-static {v0}, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->access$400(Lzendesk/answerbot/AnswerBotArticleResultRenderer;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lzendesk/answerbot/R$string;->zab_view_article_help_followup_question:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 131
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer$1$1;->this$1:Lzendesk/answerbot/AnswerBotArticleResultRenderer$1;

    iget-object v0, v0, Lzendesk/answerbot/AnswerBotArticleResultRenderer$1;->this$0:Lzendesk/answerbot/AnswerBotArticleResultRenderer;

    invoke-static {v0}, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->access$500(Lzendesk/answerbot/AnswerBotArticleResultRenderer;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 132
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
