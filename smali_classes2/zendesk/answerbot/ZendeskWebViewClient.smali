.class final Lzendesk/answerbot/ZendeskWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ZendeskWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/answerbot/ZendeskWebViewClient$OnLinkClickListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ZendeskWebViewClient"


# instance fields
.field private final okHttpClient:Lokhttp3/OkHttpClient;

.field private onLinkClickListener:Lzendesk/answerbot/ZendeskWebViewClient$OnLinkClickListener;

.field private final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 33
    iput-object p1, p0, Lzendesk/answerbot/ZendeskWebViewClient;->url:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lzendesk/answerbot/ZendeskWebViewClient;->okHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method


# virtual methods
.method public setOnLinkClickListener(Lzendesk/answerbot/ZendeskWebViewClient$OnLinkClickListener;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lzendesk/answerbot/ZendeskWebViewClient;->onLinkClickListener:Lzendesk/answerbot/ZendeskWebViewClient$OnLinkClickListener;

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 8

    .line 40
    iget-object v0, p0, Lzendesk/answerbot/ZendeskWebViewClient;->url:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ZendeskWebViewClient"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Will not intercept request because the url is not hosted by Zendesk. URL="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 50
    :try_start_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p2

    .line 51
    iget-object v0, p0, Lzendesk/answerbot/ZendeskWebViewClient;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p2

    invoke-interface {p2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 53
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 54
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 57
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 59
    :try_start_1
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    .line 62
    invoke-virtual {p2}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p2}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v4}, Lcom/zendesk/util/StringUtils;->hasLengthMany([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 63
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s/%s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    invoke-virtual {p2}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :cond_1
    move-object v3, p1

    .line 66
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Lokhttp3/MediaType;->charset()Ljava/nio/charset/Charset;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 68
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object p2, p1

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_3

    :cond_3
    move-object p2, p1

    move-object v3, p2

    :goto_1
    move-object p1, v0

    goto :goto_2

    :catch_1
    move-exception p2

    move-object v3, p1

    goto :goto_3

    :cond_4
    move-object p2, p1

    move-object v3, p2

    :goto_2
    move-object v0, p1

    move-object p1, p2

    goto :goto_4

    :catch_2
    move-exception p2

    move-object v0, p1

    move-object v3, v0

    :goto_3
    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "Exception encountered when trying to intercept request"

    .line 74
    invoke-static {v1, v4, p2, v2}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 77
    :goto_4
    new-instance p2, Landroid/webkit/WebResourceResponse;

    invoke-direct {p2, v3, p1, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p2
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 85
    iget-object v0, p0, Lzendesk/answerbot/ZendeskWebViewClient;->onLinkClickListener:Lzendesk/answerbot/ZendeskWebViewClient$OnLinkClickListener;

    if-eqz v0, :cond_2

    .line 86
    invoke-interface {v0, p2}, Lzendesk/answerbot/ZendeskWebViewClient$OnLinkClickListener;->onLinkClicked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    .line 89
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
