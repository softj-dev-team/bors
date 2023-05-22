.class public final Lzendesk/core/ZendeskNetworkModule_ProvideZendeskBasicHeadersInterceptorFactory;
.super Ljava/lang/Object;
.source "ZendeskNetworkModule_ProvideZendeskBasicHeadersInterceptorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/core/ZendeskOauthIdHeaderInterceptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final configurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ApplicationConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lzendesk/core/ZendeskNetworkModule;


# direct methods
.method public constructor <init>(Lzendesk/core/ZendeskNetworkModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/core/ZendeskNetworkModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ApplicationConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lzendesk/core/ZendeskNetworkModule_ProvideZendeskBasicHeadersInterceptorFactory;->module:Lzendesk/core/ZendeskNetworkModule;

    .line 26
    iput-object p2, p0, Lzendesk/core/ZendeskNetworkModule_ProvideZendeskBasicHeadersInterceptorFactory;->configurationProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lzendesk/core/ZendeskNetworkModule;Ljavax/inject/Provider;)Lzendesk/core/ZendeskNetworkModule_ProvideZendeskBasicHeadersInterceptorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/core/ZendeskNetworkModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ApplicationConfiguration;",
            ">;)",
            "Lzendesk/core/ZendeskNetworkModule_ProvideZendeskBasicHeadersInterceptorFactory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lzendesk/core/ZendeskNetworkModule_ProvideZendeskBasicHeadersInterceptorFactory;

    invoke-direct {v0, p0, p1}, Lzendesk/core/ZendeskNetworkModule_ProvideZendeskBasicHeadersInterceptorFactory;-><init>(Lzendesk/core/ZendeskNetworkModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideZendeskBasicHeadersInterceptor(Lzendesk/core/ZendeskNetworkModule;Lzendesk/core/ApplicationConfiguration;)Lzendesk/core/ZendeskOauthIdHeaderInterceptor;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lzendesk/core/ZendeskNetworkModule;->provideZendeskBasicHeadersInterceptor(Lzendesk/core/ApplicationConfiguration;)Lzendesk/core/ZendeskOauthIdHeaderInterceptor;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/core/ZendeskOauthIdHeaderInterceptor;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lzendesk/core/ZendeskNetworkModule_ProvideZendeskBasicHeadersInterceptorFactory;->get()Lzendesk/core/ZendeskOauthIdHeaderInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/ZendeskOauthIdHeaderInterceptor;
    .locals 2

    .line 31
    iget-object v0, p0, Lzendesk/core/ZendeskNetworkModule_ProvideZendeskBasicHeadersInterceptorFactory;->module:Lzendesk/core/ZendeskNetworkModule;

    iget-object v1, p0, Lzendesk/core/ZendeskNetworkModule_ProvideZendeskBasicHeadersInterceptorFactory;->configurationProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/core/ApplicationConfiguration;

    invoke-static {v0, v1}, Lzendesk/core/ZendeskNetworkModule_ProvideZendeskBasicHeadersInterceptorFactory;->provideZendeskBasicHeadersInterceptor(Lzendesk/core/ZendeskNetworkModule;Lzendesk/core/ApplicationConfiguration;)Lzendesk/core/ZendeskOauthIdHeaderInterceptor;

    move-result-object v0

    return-object v0
.end method
