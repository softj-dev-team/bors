.class Lzendesk/answerbot/AnswerBotArticleActivity$1;
.super Ljava/lang/Object;
.source "AnswerBotArticleActivity.java"

# interfaces
.implements Lzendesk/commonui/CacheFragment$Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/answerbot/AnswerBotArticleActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzendesk/commonui/CacheFragment$Supplier<",
        "Lzendesk/answerbot/AnswerBotArticleComponent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/answerbot/AnswerBotArticleActivity;

.field final synthetic val$answerBotArticleUiConfig:Lzendesk/answerbot/AnswerBotArticleConfiguration;


# direct methods
.method constructor <init>(Lzendesk/answerbot/AnswerBotArticleActivity;Lzendesk/answerbot/AnswerBotArticleConfiguration;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotArticleActivity$1;->this$0:Lzendesk/answerbot/AnswerBotArticleActivity;

    iput-object p2, p0, Lzendesk/answerbot/AnswerBotArticleActivity$1;->val$answerBotArticleUiConfig:Lzendesk/answerbot/AnswerBotArticleConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotArticleActivity$1;->get()Lzendesk/answerbot/AnswerBotArticleComponent;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/answerbot/AnswerBotArticleComponent;
    .locals 2

    .line 88
    sget-object v0, Lzendesk/answerbot/AnswerBotComponentProvider;->INSTANCE:Lzendesk/answerbot/AnswerBotComponentProvider;

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotArticleActivity$1;->val$answerBotArticleUiConfig:Lzendesk/answerbot/AnswerBotArticleConfiguration;

    .line 89
    invoke-virtual {v0, v1}, Lzendesk/answerbot/AnswerBotComponentProvider;->provideArticleComponent(Lzendesk/answerbot/AnswerBotArticleConfiguration;)Lzendesk/answerbot/AnswerBotArticleComponent;

    move-result-object v0

    return-object v0
.end method
