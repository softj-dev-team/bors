.class Lzendesk/answerbot/AnswerBotArticleResultRenderer$2;
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

    .line 156
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer$2;->this$0:Lzendesk/answerbot/AnswerBotArticleResultRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 160
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer$2;->this$0:Lzendesk/answerbot/AnswerBotArticleResultRenderer;

    invoke-static {v0}, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->access$600(Lzendesk/answerbot/AnswerBotArticleResultRenderer;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setHideable(Z)V

    .line 161
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleResultRenderer$2;->this$0:Lzendesk/answerbot/AnswerBotArticleResultRenderer;

    invoke-static {v0}, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->access$600(Lzendesk/answerbot/AnswerBotArticleResultRenderer;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    return-void
.end method
