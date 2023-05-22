.class public Lzendesk/answerbot/ArticleView;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.source "ArticleView.java"


# static fields
.field private static final ARTICLE_DETAIL_FORMAT_STRING:Ljava/lang/String; = "%s %s <span dir=\"auto\">%s</span>"

.field private static final CSS_FILE:Ljava/lang/String; = "help_center_article_style.css"

.field private static final CSS_TOKEN_BOUNDARY:Ljava/lang/String; = "\\A"

.field private static final LOG_TAG:Ljava/lang/String; = "ArticleView"

.field private static final TYPE_TEXT_HTML:Ljava/lang/String; = "text/html"

.field private static final UTF_8_ENCODING_TYPE:Ljava/lang/String; = "UTF-8"


# instance fields
.field private css:Ljava/lang/String;

.field private dateFormat:Ljava/text/DateFormat;

.field private errorView:Lcom/google/android/material/snackbar/Snackbar;

.field private loadingIndicator:Lzendesk/commonui/AlmostRealProgressBar;

.field private locale:Ljava/util/Locale;

.field private onRetryListener:Landroid/view/View$OnClickListener;

.field private resources:Landroid/content/res/Resources;

.field private toolbar:Landroidx/appcompat/widget/Toolbar;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-direct {p0, p1}, Lzendesk/answerbot/ArticleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    invoke-direct {p0, p1}, Lzendesk/answerbot/ArticleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    invoke-direct {p0, p1}, Lzendesk/answerbot/ArticleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lzendesk/answerbot/ArticleView;)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-direct {p0}, Lzendesk/answerbot/ArticleView;->getCss()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/answerbot/ArticleView;)Landroid/content/res/Resources;
    .locals 0

    .line 33
    iget-object p0, p0, Lzendesk/answerbot/ArticleView;->resources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$200(Lzendesk/answerbot/ArticleView;)Landroid/webkit/WebView;
    .locals 0

    .line 33
    iget-object p0, p0, Lzendesk/answerbot/ArticleView;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method private static configureWebView(Landroid/webkit/WebView;)V
    .locals 1

    .line 204
    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 205
    new-instance v0, Landroid/webkit/WebViewClient;

    invoke-direct {v0}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 206
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void
.end method

.method private getCss()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lzendesk/answerbot/ArticleView;->css:Ljava/lang/String;

    invoke-static {v0}, Lcom/zendesk/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0}, Lzendesk/answerbot/ArticleView;->getCssFileAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzendesk/answerbot/ArticleView;->css:Ljava/lang/String;

    .line 141
    :cond_0
    iget-object v0, p0, Lzendesk/answerbot/ArticleView;->css:Ljava/lang/String;

    return-object v0
.end method

.method private getCssFileAsString()Ljava/lang/String;
    .locals 9

    const-string v0, "Failed to close CSS InputStream."

    const-string v1, "ArticleView"

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 151
    :try_start_0
    invoke-virtual {p0}, Lzendesk/answerbot/ArticleView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "help_center_article_style.css"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :try_start_1
    new-instance v6, Ljava/util/Scanner;

    const-string v7, "UTF-8"

    invoke-direct {v6, v5, v7}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v7, "\\A"

    .line 153
    invoke-virtual {v6, v7}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v3

    .line 155
    invoke-virtual {v3}, Ljava/util/Scanner;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 156
    invoke-virtual {v3}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    if-eqz v3, :cond_1

    .line 163
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    :cond_1
    if-eqz v5, :cond_3

    .line 167
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 169
    invoke-static {v1, v0, v3, v4}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v6

    goto :goto_0

    :catchall_0
    move-exception v2

    move-object v5, v3

    goto :goto_2

    :catch_2
    move-exception v6

    move-object v5, v3

    :goto_0
    :try_start_3
    const-string v7, "Failed to load CSS."

    new-array v8, v4, [Ljava/lang/Object;

    .line 160
    invoke-static {v1, v7, v6, v8}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_2

    .line 163
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    :cond_2
    if-eqz v5, :cond_3

    .line 167
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 169
    invoke-static {v1, v0, v3, v4}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-object v2

    :catchall_1
    move-exception v2

    :goto_2
    if-eqz v3, :cond_4

    .line 163
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    :cond_4
    if-eqz v5, :cond_5

    .line 167
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 169
    invoke-static {v1, v0, v3, v4}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 172
    :cond_5
    :goto_3
    throw v2
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 70
    sget v0, Lzendesk/answerbot/R$layout;->zui_view_article:I

    invoke-static {p1, v0, p0}, Lzendesk/answerbot/ArticleView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 71
    sget v1, Lzendesk/answerbot/R$id;->zui_toolbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    iput-object v1, p0, Lzendesk/answerbot/ArticleView;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 72
    sget v1, Lzendesk/answerbot/R$id;->zui_webview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lzendesk/answerbot/ArticleView;->webView:Landroid/webkit/WebView;

    .line 73
    sget v1, Lzendesk/answerbot/R$id;->zui_progressbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzendesk/commonui/AlmostRealProgressBar;

    iput-object v0, p0, Lzendesk/answerbot/ArticleView;->loadingIndicator:Lzendesk/commonui/AlmostRealProgressBar;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lzendesk/answerbot/ArticleView;->resources:Landroid/content/res/Resources;

    .line 75
    invoke-virtual {p0}, Lzendesk/answerbot/ArticleView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lzendesk/answerbot/ArticleView;->locale:Ljava/util/Locale;

    const/4 v0, 0x1

    .line 76
    invoke-static {v0, p1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p1

    iput-object p1, p0, Lzendesk/answerbot/ArticleView;->dateFormat:Ljava/text/DateFormat;

    .line 77
    iget-object p1, p0, Lzendesk/answerbot/ArticleView;->webView:Landroid/webkit/WebView;

    invoke-static {p1}, Lzendesk/answerbot/ArticleView;->configureWebView(Landroid/webkit/WebView;)V

    return-void
.end method


# virtual methods
.method canGoBack()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lzendesk/answerbot/ArticleView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method goBack()V
    .locals 1

    .line 81
    iget-object v0, p0, Lzendesk/answerbot/ArticleView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void
.end method

.method setOnRetryListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lzendesk/answerbot/ArticleView;->onRetryListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lzendesk/answerbot/ArticleView;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p1}, Lzendesk/commonui/UiUtils;->decodeHtmlEntities(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lzendesk/answerbot/ArticleView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method showArticle(Lzendesk/support/Article;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-virtual {p1}, Lzendesk/support/Article;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzendesk/answerbot/ArticleView;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lzendesk/support/Article;->getCreatedAt()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 101
    :goto_0
    invoke-virtual {p1}, Lzendesk/support/Article;->getAuthor()Lzendesk/core/User;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lzendesk/support/Article;->getAuthor()Lzendesk/core/User;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/core/User;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 103
    iget-object v2, p0, Lzendesk/answerbot/ArticleView;->locale:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    iget-object v4, p0, Lzendesk/answerbot/ArticleView;->resources:Landroid/content/res/Resources;

    sget v5, Lzendesk/answerbot/R$string;->zab_view_article_separator:I

    .line 106
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    aput-object v0, v3, v1

    const-string v0, "%s %s <span dir=\"auto\">%s</span>"

    .line 103
    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, ""

    .line 110
    :goto_1
    new-instance v1, Lzendesk/answerbot/ArticleView$1;

    invoke-direct {v1, p0, p1, v0}, Lzendesk/answerbot/ArticleView$1;-><init>(Lzendesk/answerbot/ArticleView;Lzendesk/support/Article;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method showError(Z)V
    .locals 2

    .line 186
    iget-object v0, p0, Lzendesk/answerbot/ArticleView;->errorView:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez p1, :cond_1

    if-eqz v1, :cond_1

    .line 189
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    const/4 p1, 0x0

    .line 190
    iput-object p1, p0, Lzendesk/answerbot/ArticleView;->errorView:Lcom/google/android/material/snackbar/Snackbar;

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    if-nez v1, :cond_2

    .line 192
    sget p1, Lzendesk/answerbot/R$string;->zab_error_load_article:I

    const/4 v0, -0x2

    invoke-static {p0, p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    iput-object p1, p0, Lzendesk/answerbot/ArticleView;->errorView:Lcom/google/android/material/snackbar/Snackbar;

    .line 193
    sget v0, Lzendesk/answerbot/R$string;->zui_retry_button_label:I

    iget-object v1, p0, Lzendesk/answerbot/ArticleView;->onRetryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 194
    iget-object p1, p0, Lzendesk/answerbot/ArticleView;->errorView:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :cond_2
    :goto_1
    return-void
.end method

.method showLoading(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 179
    iget-object p1, p0, Lzendesk/answerbot/ArticleView;->loadingIndicator:Lzendesk/commonui/AlmostRealProgressBar;

    sget-object v0, Lzendesk/commonui/AlmostRealProgressBar;->DONT_STOP_MOVING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lzendesk/commonui/AlmostRealProgressBar;->start(Ljava/util/List;)V

    goto :goto_0

    .line 181
    :cond_0
    iget-object p1, p0, Lzendesk/answerbot/ArticleView;->loadingIndicator:Lzendesk/commonui/AlmostRealProgressBar;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Lzendesk/commonui/AlmostRealProgressBar;->stop(J)V

    :goto_0
    return-void
.end method
