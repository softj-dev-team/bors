.class public final Lzendesk/core/ZendeskProvidersModule_ProviderNetworkInfoProviderFactory;
.super Ljava/lang/Object;
.source "ZendeskProvidersModule_ProviderNetworkInfoProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/core/NetworkInfoProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final connectivityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/net/ConnectivityManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/net/ConnectivityManager;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lzendesk/core/ZendeskProvidersModule_ProviderNetworkInfoProviderFactory;->connectivityManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskProvidersModule_ProviderNetworkInfoProviderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/net/ConnectivityManager;",
            ">;)",
            "Lzendesk/core/ZendeskProvidersModule_ProviderNetworkInfoProviderFactory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lzendesk/core/ZendeskProvidersModule_ProviderNetworkInfoProviderFactory;

    invoke-direct {v0, p0}, Lzendesk/core/ZendeskProvidersModule_ProviderNetworkInfoProviderFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providerNetworkInfoProvider(Landroid/net/ConnectivityManager;)Lzendesk/core/NetworkInfoProvider;
    .locals 0

    .line 39
    invoke-static {p0}, Lzendesk/core/ZendeskProvidersModule;->providerNetworkInfoProvider(Landroid/net/ConnectivityManager;)Lzendesk/core/NetworkInfoProvider;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/core/NetworkInfoProvider;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lzendesk/core/ZendeskProvidersModule_ProviderNetworkInfoProviderFactory;->get()Lzendesk/core/NetworkInfoProvider;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/NetworkInfoProvider;
    .locals 1

    .line 29
    iget-object v0, p0, Lzendesk/core/ZendeskProvidersModule_ProviderNetworkInfoProviderFactory;->connectivityManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lzendesk/core/ZendeskProvidersModule_ProviderNetworkInfoProviderFactory;->providerNetworkInfoProvider(Landroid/net/ConnectivityManager;)Lzendesk/core/NetworkInfoProvider;

    move-result-object v0

    return-object v0
.end method
