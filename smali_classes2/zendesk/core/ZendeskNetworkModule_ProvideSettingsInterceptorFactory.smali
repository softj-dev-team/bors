.class public final Lzendesk/core/ZendeskNetworkModule_ProvideSettingsInterceptorFactory;
.super Ljava/lang/Object;
.source "ZendeskNetworkModule_ProvideSettingsInterceptorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/core/ZendeskSettingsInterceptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final sdkSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/SdkSettingsProviderInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/SettingsStorage;",
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
            "Lzendesk/core/SdkSettingsProviderInternal;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/SettingsStorage;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lzendesk/core/ZendeskNetworkModule_ProvideSettingsInterceptorFactory;->sdkSettingsProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lzendesk/core/ZendeskNetworkModule_ProvideSettingsInterceptorFactory;->settingsStorageProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskNetworkModule_ProvideSettingsInterceptorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/SdkSettingsProviderInternal;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/SettingsStorage;",
            ">;)",
            "Lzendesk/core/ZendeskNetworkModule_ProvideSettingsInterceptorFactory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lzendesk/core/ZendeskNetworkModule_ProvideSettingsInterceptorFactory;

    invoke-direct {v0, p0, p1}, Lzendesk/core/ZendeskNetworkModule_ProvideSettingsInterceptorFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideSettingsInterceptor(Ljava/lang/Object;Ljava/lang/Object;)Lzendesk/core/ZendeskSettingsInterceptor;
    .locals 0

    .line 43
    check-cast p0, Lzendesk/core/SdkSettingsProviderInternal;

    check-cast p1, Lzendesk/core/SettingsStorage;

    invoke-static {p0, p1}, Lzendesk/core/ZendeskNetworkModule;->provideSettingsInterceptor(Lzendesk/core/SdkSettingsProviderInternal;Lzendesk/core/SettingsStorage;)Lzendesk/core/ZendeskSettingsInterceptor;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/core/ZendeskSettingsInterceptor;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lzendesk/core/ZendeskNetworkModule_ProvideSettingsInterceptorFactory;->get()Lzendesk/core/ZendeskSettingsInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/ZendeskSettingsInterceptor;
    .locals 2

    .line 32
    iget-object v0, p0, Lzendesk/core/ZendeskNetworkModule_ProvideSettingsInterceptorFactory;->sdkSettingsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lzendesk/core/ZendeskNetworkModule_ProvideSettingsInterceptorFactory;->settingsStorageProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lzendesk/core/ZendeskNetworkModule_ProvideSettingsInterceptorFactory;->provideSettingsInterceptor(Ljava/lang/Object;Ljava/lang/Object;)Lzendesk/core/ZendeskSettingsInterceptor;

    move-result-object v0

    return-object v0
.end method
