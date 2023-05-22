.class public final Lzendesk/core/ZendeskNetworkModule_ProvidePushInterceptorFactory;
.super Ljava/lang/Object;
.source "ZendeskNetworkModule_ProvidePushInterceptorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/core/ZendeskPushInterceptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final identityStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/IdentityStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final pushDeviceIdStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/PushDeviceIdStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final pushProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/PushRegistrationProviderInternal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/PushRegistrationProviderInternal;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/PushDeviceIdStorage;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/IdentityStorage;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lzendesk/core/ZendeskNetworkModule_ProvidePushInterceptorFactory;->pushProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p2, p0, Lzendesk/core/ZendeskNetworkModule_ProvidePushInterceptorFactory;->pushDeviceIdStorageProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lzendesk/core/ZendeskNetworkModule_ProvidePushInterceptorFactory;->identityStorageProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskNetworkModule_ProvidePushInterceptorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/PushRegistrationProviderInternal;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/PushDeviceIdStorage;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/IdentityStorage;",
            ">;)",
            "Lzendesk/core/ZendeskNetworkModule_ProvidePushInterceptorFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lzendesk/core/ZendeskNetworkModule_ProvidePushInterceptorFactory;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/core/ZendeskNetworkModule_ProvidePushInterceptorFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providePushInterceptor(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lzendesk/core/ZendeskPushInterceptor;
    .locals 0

    .line 48
    check-cast p0, Lzendesk/core/PushRegistrationProviderInternal;

    check-cast p1, Lzendesk/core/PushDeviceIdStorage;

    check-cast p2, Lzendesk/core/IdentityStorage;

    invoke-static {p0, p1, p2}, Lzendesk/core/ZendeskNetworkModule;->providePushInterceptor(Lzendesk/core/PushRegistrationProviderInternal;Lzendesk/core/PushDeviceIdStorage;Lzendesk/core/IdentityStorage;)Lzendesk/core/ZendeskPushInterceptor;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/core/ZendeskPushInterceptor;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lzendesk/core/ZendeskNetworkModule_ProvidePushInterceptorFactory;->get()Lzendesk/core/ZendeskPushInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/ZendeskPushInterceptor;
    .locals 3

    .line 36
    iget-object v0, p0, Lzendesk/core/ZendeskNetworkModule_ProvidePushInterceptorFactory;->pushProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lzendesk/core/ZendeskNetworkModule_ProvidePushInterceptorFactory;->pushDeviceIdStorageProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lzendesk/core/ZendeskNetworkModule_ProvidePushInterceptorFactory;->identityStorageProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lzendesk/core/ZendeskNetworkModule_ProvidePushInterceptorFactory;->providePushInterceptor(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lzendesk/core/ZendeskPushInterceptor;

    move-result-object v0

    return-object v0
.end method
