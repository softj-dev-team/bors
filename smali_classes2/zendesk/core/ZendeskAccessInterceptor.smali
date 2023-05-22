.class Lzendesk/core/ZendeskAccessInterceptor;
.super Ljava/lang/Object;
.source "ZendeskAccessInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static final EMPTY_JSON:Ljava/lang/String; = "{}"

.field private static final LOG_TAG:Ljava/lang/String; = "ZendeskAccessInterceptor"

.field private static final RETRY_LIMIT:I = 0x3


# instance fields
.field private accessProvider:Lzendesk/core/AccessProvider;

.field private coreSettingsStorage:Lzendesk/core/CoreSettingsStorage;

.field private identityManager:Lzendesk/core/IdentityManager;

.field private retryCounter:I

.field private storage:Lzendesk/core/Storage;


# direct methods
.method constructor <init>(Lzendesk/core/IdentityManager;Lzendesk/core/AccessProvider;Lzendesk/core/Storage;Lzendesk/core/CoreSettingsStorage;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lzendesk/core/ZendeskAccessInterceptor;->identityManager:Lzendesk/core/IdentityManager;

    .line 61
    iput-object p2, p0, Lzendesk/core/ZendeskAccessInterceptor;->accessProvider:Lzendesk/core/AccessProvider;

    .line 62
    iput-object p3, p0, Lzendesk/core/ZendeskAccessInterceptor;->storage:Lzendesk/core/Storage;

    .line 63
    iput-object p4, p0, Lzendesk/core/ZendeskAccessInterceptor;->coreSettingsStorage:Lzendesk/core/CoreSettingsStorage;

    return-void
.end method

.method private errorResponse(Lokhttp3/Interceptor$Chain;Ljava/lang/String;)Lokhttp3/Response;
    .locals 1

    .line 166
    new-instance v0, Lokhttp3/Response$Builder;

    invoke-direct {v0}, Lokhttp3/Response$Builder;-><init>()V

    .line 167
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object p1

    sget-object v0, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    .line 168
    invoke-virtual {p1, v0}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object p1

    const/16 v0, 0x190

    .line 169
    invoke-virtual {p1, v0}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object p1

    .line 170
    invoke-virtual {p1, p2}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object p1

    const-string p2, "txt/json"

    .line 171
    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    const-string v0, "{}"

    invoke-static {p2, v0}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method static getErrorLogMessage(Lzendesk/core/AuthenticationType;Lzendesk/core/Identity;)Ljava/lang/String;
    .locals 4

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "The expected type of authentication is "

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "jwt."

    const-string v2, "anonymous."

    if-nez p0, :cond_0

    const-string p0, "null. Check that settings have been downloaded."

    .line 133
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 134
    :cond_0
    sget-object v3, Lzendesk/core/AuthenticationType;->ANONYMOUS:Lzendesk/core/AuthenticationType;

    if-ne p0, v3, :cond_1

    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 136
    :cond_1
    sget-object v3, Lzendesk/core/AuthenticationType;->JWT:Lzendesk/core/AuthenticationType;

    if-ne p0, v3, :cond_2

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    const/16 p0, 0xa

    .line 140
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "The local identity is"

    .line 142
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_3

    const-string p0, " not"

    .line 145
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string p0, " present.\n"

    .line 148
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_6

    const-string p0, "The local identity is "

    .line 151
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    instance-of p0, p1, Lzendesk/core/AnonymousIdentity;

    if-eqz p0, :cond_4

    .line 154
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 155
    :cond_4
    instance-of p0, p1, Lzendesk/core/JwtIdentity;

    if-eqz p0, :cond_5

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string p0, "unknown."

    .line 158
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_6
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lzendesk/core/ZendeskAccessInterceptor;->identityManager:Lzendesk/core/IdentityManager;

    invoke-interface {v0}, Lzendesk/core/IdentityManager;->getIdentity()Lzendesk/core/Identity;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lzendesk/core/ZendeskAccessInterceptor;->coreSettingsStorage:Lzendesk/core/CoreSettingsStorage;

    invoke-interface {v1}, Lzendesk/core/CoreSettingsStorage;->getCoreSettings()Lzendesk/core/CoreSettings;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/core/CoreSettings;->getAuthentication()Lzendesk/core/AuthenticationType;

    move-result-object v1

    .line 73
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lzendesk/core/UrlHelper;->isGuideRequest(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "ZendeskAccessInterceptor"

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    instance-of v2, v0, Lzendesk/core/AnonymousIdentity;

    if-eqz v2, :cond_0

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Anonymous Guide request, no need to intercept."

    .line 75
    invoke-static {v3, v1, v0}, Lcom/zendesk/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    .line 78
    :cond_0
    iget-object v2, p0, Lzendesk/core/ZendeskAccessInterceptor;->identityManager:Lzendesk/core/IdentityManager;

    invoke-interface {v2}, Lzendesk/core/IdentityManager;->getStoredAccessTokenAsBearerToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Access token present, no need to intercept."

    .line 79
    invoke-static {v3, v1, v0}, Lcom/zendesk/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    :cond_1
    new-array v2, v4, [Ljava/lang/Object;

    const-string v5, "Access token is required, intercepting."

    .line 82
    invoke-static {v3, v5, v2}, Lcom/zendesk/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    sget-object v2, Lzendesk/core/AuthenticationType;->ANONYMOUS:Lzendesk/core/AuthenticationType;

    if-ne v2, v1, :cond_2

    instance-of v2, v0, Lzendesk/core/AnonymousIdentity;

    if-eqz v2, :cond_2

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "Anonymous Identity found. Requesting and storing auth token."

    .line 85
    invoke-static {v3, v2, v1}, Lcom/zendesk/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iget-object v1, p0, Lzendesk/core/ZendeskAccessInterceptor;->accessProvider:Lzendesk/core/AccessProvider;

    check-cast v0, Lzendesk/core/AnonymousIdentity;

    invoke-interface {v1, v0}, Lzendesk/core/AccessProvider;->getAuthTokenViaAnonymous(Lzendesk/core/AnonymousIdentity;)Lretrofit2/Response;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_2
    sget-object v2, Lzendesk/core/AuthenticationType;->JWT:Lzendesk/core/AuthenticationType;

    if-ne v2, v1, :cond_8

    instance-of v2, v0, Lzendesk/core/JwtIdentity;

    if-eqz v2, :cond_8

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "JWT Identity found. Requesting and storing auth token."

    .line 88
    invoke-static {v3, v2, v1}, Lcom/zendesk/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iget-object v1, p0, Lzendesk/core/ZendeskAccessInterceptor;->accessProvider:Lzendesk/core/AccessProvider;

    check-cast v0, Lzendesk/core/JwtIdentity;

    invoke-interface {v1, v0}, Lzendesk/core/AccessProvider;->getAuthTokenViaJwt(Lzendesk/core/JwtIdentity;)Lretrofit2/Response;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    const-string v0, "Response was null, failed to auth user."

    .line 105
    invoke-direct {p0, p1, v0}, Lzendesk/core/ZendeskAccessInterceptor;->errorResponse(Lokhttp3/Interceptor$Chain;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    .line 106
    :cond_3
    invoke-virtual {v0}, Lretrofit2/Response;->code()I

    move-result v1

    const/16 v2, 0x199

    if-ne v1, v2, :cond_5

    .line 107
    iget v0, p0, Lzendesk/core/ZendeskAccessInterceptor;->retryCounter:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 108
    iput v0, p0, Lzendesk/core/ZendeskAccessInterceptor;->retryCounter:I

    .line 109
    invoke-virtual {p0, p1}, Lzendesk/core/ZendeskAccessInterceptor;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v0, "Response was 409, failed to auth user."

    .line 111
    invoke-direct {p0, p1, v0}, Lzendesk/core/ZendeskAccessInterceptor;->errorResponse(Lokhttp3/Interceptor$Chain;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    .line 113
    :cond_5
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 114
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/core/AuthenticationResponse;

    invoke-virtual {v0}, Lzendesk/core/AuthenticationResponse;->getAuthentication()Lzendesk/core/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 116
    iget-object v1, p0, Lzendesk/core/ZendeskAccessInterceptor;->identityManager:Lzendesk/core/IdentityManager;

    invoke-interface {v1, v0}, Lzendesk/core/IdentityManager;->storeAccessToken(Lzendesk/core/AccessToken;)V

    .line 118
    :cond_6
    iput v4, p0, Lzendesk/core/ZendeskAccessInterceptor;->retryCounter:I

    .line 119
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    :cond_7
    const-string v0, "Response body was null, failed to auth user."

    .line 121
    invoke-direct {p0, p1, v0}, Lzendesk/core/ZendeskAccessInterceptor;->errorResponse(Lokhttp3/Interceptor$Chain;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object p1

    return-object p1

    .line 96
    :cond_8
    iget-object v2, p0, Lzendesk/core/ZendeskAccessInterceptor;->storage:Lzendesk/core/Storage;

    invoke-interface {v2}, Lzendesk/core/Storage;->clear()V

    .line 98
    invoke-static {v1, v0}, Lzendesk/core/ZendeskAccessInterceptor;->getErrorLogMessage(Lzendesk/core/AuthenticationType;Lzendesk/core/Identity;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    .line 99
    invoke-static {v3, v0, v1}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    invoke-direct {p0, p1, v0}, Lzendesk/core/ZendeskAccessInterceptor;->errorResponse(Lokhttp3/Interceptor$Chain;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
