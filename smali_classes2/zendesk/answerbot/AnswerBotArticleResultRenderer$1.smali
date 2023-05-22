.class Lzendesk/answerbot/AnswerBotArticleResultRenderer$1;
.super Ljava/lang/Object;
.source "AnswerBotArticleResultRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/answerbot/AnswerBotArticleResultRenderer;->render(Lzendesk/answerbot/AnswerBotArticleResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/answerbot/AnswerBotArticleResultRenderer;


# direct methods
.method constructor <init>(Lzendesk/answerbot/AnswerBotArticleResultRenderer;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer$1;->this$0:Lzendesk/answerbot/AnswerBotArticleResultRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 120
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer$1;->this$0:Lzendesk/answerbot/AnswerBotArticleResultRenderer;

    invoke-static {v0}, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->access$500(Lzendesk/answerbot/AnswerBotArticleResultRenderer;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 122
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lzendesk/answerbot/AnswerBotArticleResultRenderer$1$1;

    invoke-direct {v1, p0}, Lzendesk/answerbot/AnswerBotArticleResultRenderer$1$1;-><init>(Lzendesk/answerbot/AnswerBotArticleResultRenderer$1;)V

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
