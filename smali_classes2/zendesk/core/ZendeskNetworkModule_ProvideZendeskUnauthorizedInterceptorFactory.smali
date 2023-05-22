.class public final Lzendesk/core/ZendeskNetworkModule_ProvideZendeskUnauthorizedInterceptorFactory;
.super Ljava/lang/Object;
.source "ZendeskNetworkModule_ProvideZendeskUnauthorizedInterceptorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/core/ZendeskUnauthorizedInterceptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final identityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/IdentityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/SessionStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/SessionStorage;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/IdentityManager;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lzendesk/core/ZendeskNetworkModule_ProvideZendeskUnauthorizedInterceptorFactory;->sessionStorageProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lzendesk/core/ZendeskNetworkModule_ProvideZendeskUnauthorizedInterceptorFactory;->identityManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskNetworkModule_ProvideZendeskUnauthorizedInterceptorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/SessionStorage;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/IdentityManager;",
            ">;)",
            "Lzendesk/core/ZendeskNetworkModule_ProvideZendeskUnauthorizedInterceptorFactory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lzendesk/core/ZendeskNetworkModule_ProvideZendeskUnauthorizedInterceptorFactory;

    invoke-direct {v0, p0, p1}, Lzendesk/core/ZendeskNetworkModule_ProvideZendeskUnauthorizedInterceptorFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideZendeskUnauthorizedInterceptor(Lzendesk/core/SessionStorage;Ljava/lang/Object;)Lzendesk/core/ZendeskUnauthorizedInterceptor;
    .locals 0

    .line 43
    check-cast p1, Lzendesk/core/IdentityManager;

    invoke-static {p0, p1}, Lzendesk/core/ZendeskNetworkModule;->provideZendeskUnauthorizedInterceptor(Lzendesk/core/SessionStorage;Lzendesk/core/IdentityManager;)Lzendesk/core/ZendeskUnauthorizedInterceptor;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/core/ZendeskUnauthorizedInterceptor;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lzendesk/core/ZendeskNetworkModule_ProvideZendeskUnauthorizedInterceptorFactory;->get()Lzendesk/core/ZendeskUnauthorizedInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/ZendeskUnauthorizedInterceptor;
    .locals 2

    .line 32
    iget-object v0, p0, Lzendesk/core/ZendeskNetworkModule_ProvideZendeskUnauthorizedInterceptorFactory;->sessionStorageProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/core/SessionStorage;

    iget-object v1, p0, Lzendesk/core/ZendeskNetworkModule_ProvideZendeskUnauthorizedInterceptorFactory;->identityManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lzendesk/core/ZendeskNetworkModule_ProvideZendeskUnauthorizedInterceptorFactory;->provideZendeskUnauthorizedInterceptor(Lzendesk/core/SessionStorage;Ljava/lang/Object;)Lzendesk/core/ZendeskUnauthorizedInterceptor;

    move-result-object v0

    return-object v0
.end method
