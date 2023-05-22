.class Lzendesk/core/ZendeskUnauthorizedInterceptor;
.super Ljava/lang/Object;
.source "ZendeskUnauthorizedInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ZendeskUnauthorizedInterceptor"


# instance fields
.field private final identityManager:Lzendesk/core/IdentityManager;

.field private final sessionStorage:Lzendesk/core/SessionStorage;


# direct methods
.method constructor <init>(Lzendesk/core/SessionStorage;Lzendesk/core/IdentityManager;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lzendesk/core/ZendeskUnauthorizedInterceptor;->sessionStorage:Lzendesk/core/SessionStorage;

    .line 23
    iput-object p2, p0, Lzendesk/core/ZendeskUnauthorizedInterceptor;->identityManager:Lzendesk/core/IdentityManager;

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x191

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 31
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lzendesk/core/UrlHelper;->isGuideRequest(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lzendesk/core/ZendeskUnauthorizedInterceptor;->identityManager:Lzendesk/core/IdentityManager;

    .line 32
    invoke-interface {p1}, Lzendesk/core/IdentityManager;->getIdentity()Lzendesk/core/Identity;

    move-result-object p1

    instance-of p1, p1, Lzendesk/core/AnonymousIdentity;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "ZendeskUnauthorizedInterceptor"

    const-string v2, "Unauthorized guide request"

    .line 33
    invoke-static {v1, v2, p1}, Lcom/zendesk/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Lzendesk/core/ZendeskUnauthorizedInterceptor;->onHttpUnauthorized()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method onHttpUnauthorized()V
    .locals 1

    .line 43
    iget-object v0, p0, Lzendesk/core/ZendeskUnauthorizedInterceptor;->sessionStorage:Lzendesk/core/SessionStorage;

    invoke-interface {v0}, Lzendesk/core/SessionStorage;->clear()V

    return-void
.end method
