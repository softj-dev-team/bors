.class Lzendesk/answerbot/AnswerBotArticleActivity$4;
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

    .line 118
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotArticleActivity$4;->this$0:Lzendesk/answerbot/AnswerBotArticleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 121
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotArticleActivity$4;->this$0:Lzendesk/answerbot/AnswerBotArticleActivity;

    invoke-virtual {p1}, Lzendesk/answerbot/AnswerBotArticleActivity;->onBackPressed()V

    return-void
.end method
