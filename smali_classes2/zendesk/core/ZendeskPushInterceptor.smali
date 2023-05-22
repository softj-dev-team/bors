.class Lzendesk/core/ZendeskPushInterceptor;
.super Ljava/lang/Object;
.source "ZendeskPushInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ZendeskPushInterceptor"


# instance fields
.field private final identityStorage:Lzendesk/core/IdentityStorage;

.field private final pushDeviceIdStorage:Lzendesk/core/PushDeviceIdStorage;

.field private final pushProvider:Lzendesk/core/PushRegistrationProviderInternal;


# direct methods
.method constructor <init>(Lzendesk/core/PushRegistrationProviderInternal;Lzendesk/core/PushDeviceIdStorage;Lzendesk/core/IdentityStorage;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lzendesk/core/ZendeskPushInterceptor;->pushProvider:Lzendesk/core/PushRegistrationProviderInternal;

    .line 44
    iput-object p2, p0, Lzendesk/core/ZendeskPushInterceptor;->pushDeviceIdStorage:Lzendesk/core/PushDeviceIdStorage;

    .line 45
    iput-object p3, p0, Lzendesk/core/ZendeskPushInterceptor;->identityStorage:Lzendesk/core/IdentityStorage;

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lzendesk/core/ZendeskPushInterceptor;->pushDeviceIdStorage:Lzendesk/core/PushDeviceIdStorage;

    invoke-interface {v0}, Lzendesk/core/PushDeviceIdStorage;->getPushRegistrationRequest()Lzendesk/core/PushRegistrationRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v1, p0, Lzendesk/core/ZendeskPushInterceptor;->identityStorage:Lzendesk/core/IdentityStorage;

    invoke-interface {v1}, Lzendesk/core/IdentityStorage;->getStoredAccessToken()Lzendesk/core/AccessToken;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ZendeskPushInterceptor"

    const-string v3, "Sending stored push registration request"

    .line 55
    invoke-static {v2, v3, v1}, Lcom/zendesk/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    iget-object v1, p0, Lzendesk/core/ZendeskPushInterceptor;->pushProvider:Lzendesk/core/PushRegistrationProviderInternal;

    invoke-interface {v1, v0}, Lzendesk/core/PushRegistrationProviderInternal;->sendPushRegistrationRequest(Lzendesk/core/PushRegistrationRequest;)Ljava/lang/String;

    .line 59
    :cond_0
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
