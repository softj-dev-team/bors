.class public Lzendesk/answerbot/AnswerBotArticleActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AnswerBotArticleActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/answerbot/AnswerBotArticleActivity$Renderer;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AnswerBotArticleActivity"

.field private static final VIEW_MODEL_KEY:Ljava/lang/String; = "ANSWER_BOT_ARTICLE_VIEW_MODEL"


# instance fields
.field private articleView:Lzendesk/answerbot/ArticleView;

.field timerFactory:Lzendesk/messaging/components/Timer$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field viewModel:Lzendesk/answerbot/AnswerBotArticleViewModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field zendeskWebViewClient:Lzendesk/answerbot/ZendeskWebViewClient;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static builder(Lzendesk/answerbot/DeflectionResponse;Lzendesk/answerbot/DeflectionArticle;)Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;
    .locals 8

    .line 43
    new-instance v7, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;

    .line 44
    invoke-virtual {p1}, Lzendesk/answerbot/DeflectionArticle;->getArticleId()J

    move-result-wide v1

    .line 45
    invoke-virtual {p1}, Lzendesk/answerbot/DeflectionArticle;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-virtual {p0}, Lzendesk/answerbot/DeflectionResponse;->getDeflection()Lzendesk/answerbot/Deflection;

    move-result-object p1

    invoke-virtual {p1}, Lzendesk/answerbot/Deflection;->getId()J

    move-result-wide v4

    .line 47
    invoke-virtual {p0}, Lzendesk/answerbot/DeflectionResponse;->getInteractionAccessToken()Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;-><init>(JLjava/lang/String;JLjava/lang/String;)V

    return-object v7
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleActivity;->articleView:Lzendesk/answerbot/ArticleView;

    invoke-virtual {v0}, Lzendesk/answerbot/ArticleView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleActivity;->articleView:Lzendesk/answerbot/ArticleView;

    invoke-virtual {v0}, Lzendesk/answerbot/ArticleView;->goBack()V

    goto :goto_1

    .line 154
    :cond_0
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleActivity;->viewModel:Lzendesk/answerbot/AnswerBotArticleViewModel;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p0, v0}, Lzendesk/answerbot/AnswerBotArticleActivity;->setResult(I)V

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 157
    new-instance v2, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;

    .line 158
    invoke-virtual {v0}, Lzendesk/answerbot/AnswerBotArticleViewModel;->getAnswerBotArticleUiConfig()Lzendesk/answerbot/AnswerBotArticleConfiguration;

    move-result-object v0

    invoke-direct {v2, v0}, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;-><init>(Lzendesk/answerbot/AnswerBotArticleConfiguration;)V

    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleActivity;->viewModel:Lzendesk/answerbot/AnswerBotArticleViewModel;

    .line 159
    invoke-virtual {v0}, Lzendesk/answerbot/AnswerBotArticleViewModel;->getArticleResult()Lzendesk/answerbot/AnswerBotArticleResult;

    move-result-object v0

    invoke-virtual {v2, v0}, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->resultIntent(Lzendesk/answerbot/AnswerBotArticleResult;)Landroid/content/Intent;

    move-result-object v0

    .line 157
    invoke-virtual {p0, v1, v0}, Lzendesk/answerbot/AnswerBotArticleActivity;->setResult(ILandroid/content/Intent;)V

    .line 161
    :goto_0
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotArticleActivity;->finish()V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 63
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotArticleActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v0, Lzendesk/answerbot/R$style;->ZendeskActivityDefaultTheme:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 65
    sget p1, Lzendesk/answerbot/R$layout;->zab_activity_article:I

    invoke-virtual {p0, p1}, Lzendesk/answerbot/AnswerBotArticleActivity;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotArticleActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Lzendesk/answerbot/AnswerBotArticleConfiguration;

    invoke-static {p1, v0}, Lzendesk/configurations/ConfigurationUtil;->fromBundle(Landroid/os/Bundle;Ljava/lang/Class;)Lzendesk/configurations/Configuration;

    move-result-object p1

    check-cast p1, Lzendesk/answerbot/AnswerBotArticleConfiguration;

    .line 70
    sget-object v0, Lzendesk/answerbot/AnswerBot;->INSTANCE:Lzendesk/answerbot/AnswerBot;

    invoke-virtual {v0}, Lzendesk/answerbot/AnswerBot;->isInitialized()Z

    move-result v0

    const-string v1, "AnswerBotArticleActivity"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Answer Bot SDK needs to be initialized first. Call AnswerBot.INSTANCE.init(...)"

    .line 71
    invoke-static {v1, v0, p1}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p0, v2}, Lzendesk/answerbot/AnswerBotArticleActivity;->setResult(I)V

    .line 73
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotArticleActivity;->finish()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "No configuration found. Please use AnswerBotArticleActivity.builder()"

    .line 78
    invoke-static {v1, v0, p1}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p0, v2}, Lzendesk/answerbot/AnswerBotArticleActivity;->setResult(I)V

    .line 80
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotArticleActivity;->finish()V

    return-void

    .line 84
    :cond_1
    invoke-static {p0}, Lzendesk/commonui/CacheFragment;->from(Landroidx/fragment/app/FragmentActivity;)Lzendesk/commonui/CacheFragment;

    move-result-object v0

    new-instance v1, Lzendesk/answerbot/AnswerBotArticleActivity$1;

    invoke-direct {v1, p0, p1}, Lzendesk/answerbot/AnswerBotArticleActivity$1;-><init>(Lzendesk/answerbot/AnswerBotArticleActivity;Lzendesk/answerbot/AnswerBotArticleConfiguration;)V

    const-string p1, "ANSWER_BOT_ARTICLE_VIEW_MODEL"

    invoke-virtual {v0, p1, v1}, Lzendesk/commonui/CacheFragment;->getOrDefault(Ljava/lang/String;Lzendesk/commonui/CacheFragment$Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/answerbot/AnswerBotArticleComponent;

    .line 91
    invoke-interface {p1, p0}, Lzendesk/answerbot/AnswerBotArticleComponent;->inject(Lzendesk/answerbot/AnswerBotArticleActivity;)V

    .line 93
    sget p1, Lzendesk/answerbot/R$id;->zab_view_article:I

    invoke-virtual {p0, p1}, Lzendesk/answerbot/AnswerBotArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lzendesk/answerbot/ArticleView;

    iput-object p1, p0, Lzendesk/answerbot/AnswerBotArticleActivity;->articleView:Lzendesk/answerbot/ArticleView;

    .line 94
    sget v0, Lzendesk/answerbot/R$id;->zui_toolbar:I

    invoke-virtual {p1, v0}, Lzendesk/answerbot/ArticleView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 96
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleActivity;->zendeskWebViewClient:Lzendesk/answerbot/ZendeskWebViewClient;

    new-instance v1, Lzendesk/answerbot/AnswerBotArticleActivity$2;

    invoke-direct {v1, p0}, Lzendesk/answerbot/AnswerBotArticleActivity$2;-><init>(Lzendesk/answerbot/AnswerBotArticleActivity;)V

    invoke-virtual {v0, v1}, Lzendesk/answerbot/ZendeskWebViewClient;->setOnLinkClickListener(Lzendesk/answerbot/ZendeskWebViewClient$OnLinkClickListener;)V

    .line 111
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleActivity;->articleView:Lzendesk/answerbot/ArticleView;

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotArticleActivity;->zendeskWebViewClient:Lzendesk/answerbot/ZendeskWebViewClient;

    invoke-virtual {v0, v1}, Lzendesk/answerbot/ArticleView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 112
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleActivity;->articleView:Lzendesk/answerbot/ArticleView;

    new-instance v1, Lzendesk/answerbot/AnswerBotArticleActivity$3;

    invoke-direct {v1, p0}, Lzendesk/answerbot/AnswerBotArticleActivity$3;-><init>(Lzendesk/answerbot/AnswerBotArticleActivity;)V

    invoke-virtual {v0, v1}, Lzendesk/answerbot/ArticleView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 118
    new-instance v0, Lzendesk/answerbot/AnswerBotArticleActivity$4;

    invoke-direct {v0, p0}, Lzendesk/answerbot/AnswerBotArticleActivity$4;-><init>(Lzendesk/answerbot/AnswerBotArticleActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotArticleActivity;->timerFactory:Lzendesk/messaging/components/Timer$Factory;

    new-instance v0, Lzendesk/answerbot/AnswerBotArticleActivity$5;

    invoke-direct {v0, p0}, Lzendesk/answerbot/AnswerBotArticleActivity$5;-><init>(Lzendesk/answerbot/AnswerBotArticleActivity;)V

    new-instance v1, Lzendesk/answerbot/AnswerBotArticleActivity$6;

    invoke-direct {v1, p0}, Lzendesk/answerbot/AnswerBotArticleActivity$6;-><init>(Lzendesk/answerbot/AnswerBotArticleActivity;)V

    invoke-static {p0, p1, v0, v1}, Lzendesk/answerbot/AnswerBotArticleResultRenderer;->install(Lzendesk/answerbot/AnswerBotArticleActivity;Lzendesk/messaging/components/Timer$Factory;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Lzendesk/answerbot/AnswerBotArticleResultRenderer;

    move-result-object p1

    .line 142
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleActivity;->viewModel:Lzendesk/answerbot/AnswerBotArticleViewModel;

    invoke-virtual {v0}, Lzendesk/answerbot/AnswerBotArticleViewModel;->getLiveAnswerBotArticleViewState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lzendesk/answerbot/AnswerBotArticleActivity$Renderer;

    iget-object v2, p0, Lzendesk/answerbot/AnswerBotArticleActivity;->articleView:Lzendesk/answerbot/ArticleView;

    iget-object v3, p0, Lzendesk/answerbot/AnswerBotArticleActivity;->viewModel:Lzendesk/answerbot/AnswerBotArticleViewModel;

    invoke-direct {v1, v2, p1, p0, v3}, Lzendesk/answerbot/AnswerBotArticleActivity$Renderer;-><init>(Lzendesk/answerbot/ArticleView;Lzendesk/answerbot/AnswerBotArticleResultRenderer;Lzendesk/answerbot/AnswerBotArticleActivity;Lzendesk/answerbot/AnswerBotArticleViewModel;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 146
    iget-object p1, p0, Lzendesk/answerbot/AnswerBotArticleActivity;->viewModel:Lzendesk/answerbot/AnswerBotArticleViewModel;

    invoke-virtual {p1}, Lzendesk/answerbot/AnswerBotArticleViewModel;->init()V

    return-void
.end method
