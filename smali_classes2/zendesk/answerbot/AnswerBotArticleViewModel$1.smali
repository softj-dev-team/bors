.class Lzendesk/answerbot/AnswerBotArticleViewModel$1;
.super Ljava/lang/Object;
.source "AnswerBotArticleViewModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/answerbot/AnswerBotArticleViewModel;-><init>(Lzendesk/answerbot/AnswerBotArticleConfiguration;Lzendesk/answerbot/ArticleViewModel;Landroidx/lifecycle/MediatorLiveData;Lzendesk/answerbot/AnswerBotProvider;Lzendesk/messaging/components/Timer$Factory;Lzendesk/answerbot/ArticleUrlIdentifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/answerbot/AnswerBotArticleViewModel;


# direct methods
.method constructor <init>(Lzendesk/answerbot/AnswerBotArticleViewModel;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotArticleViewModel$1;->this$0:Lzendesk/answerbot/AnswerBotArticleViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 42
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleViewModel$1;->this$0:Lzendesk/answerbot/AnswerBotArticleViewModel;

    invoke-static {v0}, Lzendesk/answerbot/AnswerBotArticleViewModel;->access$000(Lzendesk/answerbot/AnswerBotArticleViewModel;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotArticleViewModel$1;->this$0:Lzendesk/answerbot/AnswerBotArticleViewModel;

    .line 43
    invoke-static {v1}, Lzendesk/answerbot/AnswerBotArticleViewModel;->access$000(Lzendesk/answerbot/AnswerBotArticleViewModel;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/answerbot/AnswerBotArticleViewState;

    sget-object v2, Lzendesk/answerbot/AnswerBotArticleResult;->NOT_SET:Lzendesk/answerbot/AnswerBotArticleResult;

    .line 45
    invoke-virtual {v1, v2}, Lzendesk/answerbot/AnswerBotArticleViewState;->withArticleResult(Lzendesk/answerbot/AnswerBotArticleResult;)Lzendesk/answerbot/AnswerBotArticleViewState;

    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
