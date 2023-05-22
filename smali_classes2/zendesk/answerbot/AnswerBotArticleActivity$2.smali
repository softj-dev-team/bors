.class Lzendesk/answerbot/AnswerBotArticleActivity$2;
.super Ljava/lang/Object;
.source "AnswerBotArticleActivity.java"

# interfaces
.implements Lzendesk/answerbot/ZendeskWebViewClient$OnLinkClickListener;


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

    .line 96
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotArticleActivity$2;->this$0:Lzendesk/answerbot/AnswerBotArticleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLinkClicked(Ljava/lang/String;)Z
    .locals 3

    .line 99
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleActivity$2;->this$0:Lzendesk/answerbot/AnswerBotArticleActivity;

    iget-object v0, v0, Lzendesk/answerbot/AnswerBotArticleActivity;->viewModel:Lzendesk/answerbot/AnswerBotArticleViewModel;

    invoke-virtual {v0, p1}, Lzendesk/answerbot/AnswerBotArticleViewModel;->onLinkClicked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 101
    iget-object v1, p0, Lzendesk/answerbot/AnswerBotArticleActivity$2;->this$0:Lzendesk/answerbot/AnswerBotArticleActivity;

    invoke-virtual {v1}, Lzendesk/answerbot/AnswerBotArticleActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotArticleActivity$2;->this$0:Lzendesk/answerbot/AnswerBotArticleActivity;

    invoke-virtual {p1, v0}, Lzendesk/answerbot/AnswerBotArticleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No browser available to open url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AnswerBotArticleActivity"

    invoke-static {v1, p1, v0}, Lcom/zendesk/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
