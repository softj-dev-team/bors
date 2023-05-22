.class Lzendesk/answerbot/AnswerBotArticleActivity$5;
.super Ljava/lang/Object;
.source "AnswerBotArticleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/answerbot/AnswerBotArticleActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/answerbot/AnswerBotArticleActivity;


# direct methods
.method constructor <init>(Lzendesk/answerbot/AnswerBotArticleActivity;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotArticleActivity$5;->this$0:Lzendesk/answerbot/AnswerBotArticleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 131
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotArticleActivity$5;->this$0:Lzendesk/answerbot/AnswerBotArticleActivity;

    iget-object p1, p1, Lzendesk/answerbot/AnswerBotArticleActivity;->viewModel:Lzendesk/answerbot/AnswerBotArticleViewModel;

    invoke-virtual {p1}, Lzendesk/answerbot/AnswerBotArticleViewModel;->onPositiveBtnClicked()V

    return-void
.end method
