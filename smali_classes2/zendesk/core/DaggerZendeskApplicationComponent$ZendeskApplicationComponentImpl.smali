.class final Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;
.super Ljava/lang/Object;
.source "DaggerZendeskApplicationComponent.java"

# interfaces
.implements Lzendesk/core/ZendeskApplicationComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/core/DaggerZendeskApplicationComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ZendeskApplicationComponentImpl"
.end annotation


# instance fields
.field private actionHandlerRegistryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ActionHandlerRegistry;",
            ">;"
        }
    .end annotation
.end field

.field private provideAcceptLanguageHeaderInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/AcceptLanguageHeaderInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private provideAccessInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ZendeskAccessInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private provideAccessProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/AccessProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideAccessServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/AccessService;",
            ">;"
        }
    .end annotation
.end field

.field private provideAdditionalSdkBaseStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/BaseStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideApplicationConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ApplicationConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private provideApplicationContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private provideAuthHeaderInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ZendeskAuthHeaderInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private provideAuthProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/AuthenticationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideBase64SerializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/Serializer;",
            ">;"
        }
    .end annotation
.end field

.field private provideBaseOkHttpClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private provideBlipsServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/BlipsService;",
            ">;"
        }
    .end annotation
.end field

.field private provideCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/Cache;",
            ">;"
        }
    .end annotation
.end field

.field private provideCachingInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/CachingInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private provideCoreOkHttpClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private provideCoreRetrofitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private provideCoreSdkModuleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/CoreModule;",
            ">;"
        }
    .end annotation
.end field

.field private provideCoreSettingsStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/CoreSettingsStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideDeviceInfoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private provideExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private provideExecutorServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private provideGsonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private provideHttpLoggingInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/logging/HttpLoggingInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private provideIdentityBaseStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/BaseStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideIdentityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/IdentityManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideIdentityStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/IdentityStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideLegacyIdentityBaseStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/SharedPreferencesStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideLegacyIdentityStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/LegacyIdentityMigrator;",
            ">;"
        }
    .end annotation
.end field

.field private provideLegacyPushBaseStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/SharedPreferencesStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideMachineIdStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/MachineIdStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideMediaOkHttpClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private provideMemoryCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/MemoryCache;",
            ">;"
        }
    .end annotation
.end field

.field private provideOkHttpClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private provideProviderStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ProviderStore;",
            ">;"
        }
    .end annotation
.end field

.field private providePushDeviceIdStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/PushDeviceIdStorage;",
            ">;"
        }
    .end annotation
.end field

.field private providePushInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ZendeskPushInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private providePushProviderRetrofitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private providePushRegistrationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/PushRegistrationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providePushRegistrationProviderInternalProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/PushRegistrationProviderInternal;",
            ">;"
        }
    .end annotation
.end field

.field private providePushRegistrationServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/PushRegistrationService;",
            ">;"
        }
    .end annotation
.end field

.field private provideRestServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/RestServiceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideRetrofitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private provideSdkBaseStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/BaseStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideSdkSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/SettingsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideSdkSettingsProviderInternalProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/SdkSettingsProviderInternal;",
            ">;"
        }
    .end annotation
.end field

.field private provideSdkSettingsServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/SdkSettingsService;",
            ">;"
        }
    .end annotation
.end field

.field private provideSdkStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/Storage;",
            ">;"
        }
    .end annotation
.end field

.field private provideSerializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/Serializer;",
            ">;"
        }
    .end annotation
.end field

.field private provideSessionStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/SessionStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideSettingsBaseStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/BaseStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideSettingsInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ZendeskSettingsInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private provideSettingsStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/SettingsStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideUserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/UserProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideUserServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/UserService;",
            ">;"
        }
    .end annotation
.end field

.field private provideZendeskBasicHeadersInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ZendeskOauthIdHeaderInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private provideZendeskLocaleConverterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ZendeskLocaleConverter;",
            ">;"
        }
    .end annotation
.end field

.field private provideZendeskProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ZendeskShadow;",
            ">;"
        }
    .end annotation
.end field

.field private provideZendeskSdkSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ZendeskSettingsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideZendeskUnauthorizedInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ZendeskUnauthorizedInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private providerBlipsCoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/BlipsCoreProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providerBlipsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/BlipsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providerConnectivityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/net/ConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private providerNetworkInfoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/NetworkInfoProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providerZendeskBlipsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ZendeskBlipsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providesAcceptHeaderInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/AcceptHeaderInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private providesBelvedereDirProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private providesCacheDirProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private providesDataDirProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private providesDiskLruStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/BaseStorage;",
            ">;"
        }
    .end annotation
.end field

.field private providesUserAgentHeaderInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/UserAgentAndClientHeadersInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final zendeskApplicationComponentImpl:Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;


# direct methods
.method private constructor <init>(Lzendesk/core/ZendeskApplicationModule;Lzendesk/core/ZendeskNetworkModule;)V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->zendeskApplicationComponentImpl:Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;

    .line 226
    invoke-direct {p0, p1, p2}, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->initialize(Lzendesk/core/ZendeskApplicationModule;Lzendesk/core/ZendeskNetworkModule;)V

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/core/ZendeskApplicationModule;Lzendesk/core/ZendeskNetworkModule;Lzendesk/core/DaggerZendeskApplicationComponent$1;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;-><init>(Lzendesk/core/ZendeskApplicationModule;Lzendesk/core/ZendeskNetworkModule;)V

    return-void
.end method

.method private initialize(Lzendesk/core/ZendeskApplicationModule;Lzendesk/core/ZendeskNetworkModule;)V
    .locals 13

    .line 233
    invoke-static {p1}, Lzendesk/core/ZendeskApplicationModule_ProvideApplicationContextFactory;->create(Lzendesk/core/ZendeskApplicationModule;)Lzendesk/core/ZendeskApplicationModule_ProvideApplicationContextFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideApplicationContextProvider:Ljavax/inject/Provider;

    .line 234
    invoke-static {}, Lzendesk/core/ZendeskApplicationModule_ProvideGsonFactory;->create()Lzendesk/core/ZendeskApplicationModule_ProvideGsonFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideGsonProvider:Ljavax/inject/Provider;

    .line 235
    invoke-static {v0}, Lzendesk/core/ZendeskStorageModule_ProvideSerializerFactory;->create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskStorageModule_ProvideSerializerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSerializerProvider:Ljavax/inject/Provider;

    .line 236
    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideApplicationContextProvider:Ljavax/inject/Provider;

    invoke-static {v1, v0}, Lzendesk/core/ZendeskStorageModule_ProvideSettingsBaseStorageFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskStorageModule_ProvideSettingsBaseStorageFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSettingsBaseStorageProvider:Ljavax/inject/Provider;

    .line 237
    invoke-static {v0}, Lzendesk/core/ZendeskStorageModule_ProvideSettingsStorageFactory;->create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskStorageModule_ProvideSettingsStorageFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSettingsStorageProvider:Ljavax/inject/Provider;

    .line 238
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideApplicationContextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSerializerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lzendesk/core/ZendeskStorageModule_ProvideIdentityBaseStorageFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskStorageModule_ProvideIdentityBaseStorageFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideIdentityBaseStorageProvider:Ljavax/inject/Provider;

    .line 239
    invoke-static {v0}, Lzendesk/core/ZendeskStorageModule_ProvideIdentityStorageFactory;->create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskStorageModule_ProvideIdentityStorageFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideIdentityStorageProvider:Ljavax/inject/Provider;

    .line 240
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideApplicationContextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSerializerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lzendesk/core/ZendeskStorageModule_ProvideAdditionalSdkBaseStorageFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskStorageModule_ProvideAdditionalSdkBaseStorageFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideAdditionalSdkBaseStorageProvider:Ljavax/inject/Provider;

    .line 241
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideApplicationContextProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lzendesk/core/ZendeskStorageModule_ProvidesCacheDirFactory;->create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskStorageModule_ProvidesCacheDirFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providesCacheDirProvider:Ljavax/inject/Provider;

    .line 242
    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSerializerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lzendesk/core/ZendeskStorageModule_ProvidesDiskLruStorageFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskStorageModule_ProvidesDiskLruStorageFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providesDiskLruStorageProvider:Ljavax/inject/Provider;

    .line 243
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providesCacheDirProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lzendesk/core/ZendeskStorageModule_ProvideCacheFactory;->create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskStorageModule_ProvideCacheFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideCacheProvider:Ljavax/inject/Provider;

    .line 244
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideApplicationContextProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lzendesk/core/ZendeskStorageModule_ProvidesDataDirFactory;->create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskStorageModule_ProvidesDataDirFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providesDataDirProvider:Ljavax/inject/Provider;

    .line 245
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideApplicationContextProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lzendesk/core/ZendeskStorageModule_ProvidesBelvedereDirFactory;->create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskStorageModule_ProvidesBelvedereDirFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v7

    iput-object v7, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providesBelvedereDirProvider:Ljavax/inject/Provider;

    .line 246
    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideIdentityStorageProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideAdditionalSdkBaseStorageProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providesDiskLruStorageProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideCacheProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providesCacheDirProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providesDataDirProvider:Ljavax/inject/Provider;

    invoke-static/range {v1 .. v7}, Lzendesk/core/ZendeskStorageModule_ProvideSessionStorageFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskStorageModule_ProvideSessionStorageFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSessionStorageProvider:Ljavax/inject/Provider;

    .line 247
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideApplicationContextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSerializerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lzendesk/core/ZendeskStorageModule_ProvideSdkBaseStorageFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskStorageModule_ProvideSdkBaseStorageFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSdkBaseStorageProvider:Ljavax/inject/Provider;

    .line 248
    invoke-static {}, Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory;->create()Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideMemoryCacheProvider:Ljavax/inject/Provider;

    .line 249
    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSettingsStorageProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSessionStorageProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSdkBaseStorageProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3, v0}, Lzendesk/core/ZendeskStorageModule_ProvideSdkStorageFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskStorageModule_ProvideSdkStorageFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSdkStorageProvider:Ljavax/inject/Provider;

    .line 250
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideApplicationContextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSerializerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lzendesk/core/ZendeskStorageModule_ProvideLegacyIdentityBaseStorageFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskStorageModule_ProvideLegacyIdentityBaseStorageFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideLegacyIdentityBaseStorageProvider:Ljavax/inject/Provider;

    .line 251
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideApplicationContextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSerializerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lzendesk/core/ZendeskStorageModule_ProvideLegacyPushBaseStorageFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskStorageModule_ProvideLegacyPushBaseStorageFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideLegacyPushBaseStorageProvider:Ljavax/inject/Provider;

    .line 252
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideIdentityStorageProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lzendesk/core/ZendeskStorageModule_ProvideIdentityManagerFactory;->create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskStorageModule_ProvideIdentityManagerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideIdentityManagerProvider:Ljavax/inject/Provider;

    .line 253
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideAdditionalSdkBaseStorageProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lzendesk/core/ZendeskStorageModule_ProvidePushDeviceIdStorageFactory;->create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskStorageModule_ProvidePushDeviceIdStorageFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providePushDeviceIdStorageProvider:Ljavax/inject/Provider;

    .line 254
    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideLegacyIdentityBaseStorageProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideLegacyPushBaseStorageProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideIdentityStorageProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideIdentityManagerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3, v4, v0}, Lzendesk/core/ZendeskStorageModule_ProvideLegacyIdentityStorageFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskStorageModule_ProvideLegacyIdentityStorageFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideLegacyIdentityStorageProvider:Ljavax/inject/Provider;

    .line 255
    invoke-static {p1}, Lzendesk/core/ZendeskApplicationModule_ProvideApplicationConfigurationFactory;->create(Lzendesk/core/ZendeskApplicationModule;)Lzendesk/core/ZendeskApplicationModule_ProvideApplicationConfigurationFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideApplicationConfigurationProvider:Ljavax/inject/Provider;

    .line 256
    invoke-static {}, Lzendesk/core/ZendeskApplicationModule_ProvideHttpLoggingInterceptorFactory;->create()Lzendesk/core/ZendeskApplicationModule_ProvideHttpLoggingInterceptorFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideHttpLoggingInterceptorProvider:Ljavax/inject/Provider;

    .line 257
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideApplicationConfigurationProvider:Ljavax/inject/Provider;

    invoke-static {p2, v0}, Lzendesk/core/ZendeskNetworkModule_ProvideZendeskBasicHeadersInterceptorFactory;->create(Lzendesk/core/ZendeskNetworkModule;Ljavax/inject/Provider;)Lzendesk/core/ZendeskNetworkModule_ProvideZendeskBasicHeadersInterceptorFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideZendeskBasicHeadersInterceptorProvider:Ljavax/inject/Provider;

    .line 258
    invoke-static {p2}, Lzendesk/core/ZendeskNetworkModule_ProvidesUserAgentHeaderInterceptorFactory;->create(Lzendesk/core/ZendeskNetworkModule;)Lzendesk/core/ZendeskNetworkModule_ProvidesUserAgentHeaderInterceptorFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providesUserAgentHeaderInterceptorProvider:Ljavax/inject/Provider;

    .line 259
    invoke-static {}, Lzendesk/core/ZendeskApplicationModule_ProvideExecutorFactory;->create()Lzendesk/core/ZendeskApplicationModule_ProvideExecutorFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideExecutorProvider:Ljavax/inject/Provider;

    .line 260
    invoke-static {v0}, Lzendesk/core/ZendeskApplicationModule_ProvideExecutorServiceFactory;->create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskApplicationModule_ProvideExecutorServiceFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideExecutorServiceProvider:Ljavax/inject/Provider;

    .line 261
    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideHttpLoggingInterceptorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideZendeskBasicHeadersInterceptorProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providesUserAgentHeaderInterceptorProvider:Ljavax/inject/Provider;

    invoke-static {p2, v1, v2, v3, v0}, Lzendesk/core/ZendeskNetworkModule_ProvideBaseOkHttpClientFactory;->create(Lzendesk/core/ZendeskNetworkModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskNetworkModule_ProvideBaseOkHttpClientFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideBaseOkHttpClientProvider:Ljavax/inject/Provider;

    .line 262
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideApplicationContextProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lzendesk/core/ZendeskNetworkModule_ProvideAcceptLanguageHeaderInterceptorFactory;->create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskNetworkModule_ProvideAcceptLanguageHeaderInterceptorFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideAcceptLanguageHeaderInterceptorProvider:Ljavax/inject/Provider;

    .line 263
    invoke-static {}, Lzendesk/core/ZendeskNetworkModule_ProvidesAcceptHeaderInterceptorFactory;->create()Lzendesk/core/ZendeskNetworkModule_ProvidesAcceptHeaderInterceptorFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providesAcceptHeaderInterceptorProvider:Ljavax/inject/Provider;

    .line 264
    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideBaseOkHttpClientProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideAcceptLanguageHeaderInterceptorProvider:Ljavax/inject/Provider;

    invoke-static {p2, v1, v2, v0}, Lzendesk/core/ZendeskNetworkModule_ProvideCoreOkHttpClientFactory;->create(Lzendesk/core/ZendeskNetworkModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskNetworkModule_ProvideCoreOkHttpClientFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideCoreOkHttpClientProvider:Ljavax/inject/Provider;

    .line 265
    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideApplicationConfigurationProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideGsonProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v0}, Lzendesk/core/ZendeskNetworkModule_ProvideCoreRetrofitFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskNetworkModule_ProvideCoreRetrofitFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideCoreRetrofitProvider:Ljavax/inject/Provider;

    .line 266
    invoke-static {v0}, Lzendesk/core/ZendeskProvidersModule_ProvideBlipsServiceFactory;->create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskProvidersModule_ProvideBlipsServiceFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideBlipsServiceProvider:Ljavax/inject/Provider;

    .line 267
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideApplicationContextProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lzendesk/core/ZendeskApplicationModule_ProvideDeviceInfoFactory;->create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskApplicationModule_ProvideDeviceInfoFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideDeviceInfoProvider:Ljavax/inject/Provider;

    .line 268
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSerializerProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lzendesk/core/ZendeskApplicationModule_ProvideBase64SerializerFactory;->create(Lzendesk/core/ZendeskApplicationModule;Ljavax/inject/Provider;)Lzendesk/core/ZendeskApplicationModule_ProvideBase64SerializerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideBase64SerializerProvider:Ljavax/inject/Provider;

    .line 269
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSettingsStorageProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lzendesk/core/ZendeskStorageModule_ProvideCoreSettingsStorageFactory;->create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskStorageModule_ProvideCoreSettingsStorageFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v6

    iput-object v6, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideCoreSettingsStorageProvider:Ljavax/inject/Provider;

    .line 270
    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideBlipsServiceProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideDeviceInfoProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideBase64SerializerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideIdentityManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideApplicationConfigurationProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideExecutorServiceProvider:Ljavax/inject/Provider;

    invoke-static/range {v1 .. v7}, Lzendesk/core/ZendeskProvidersModule_ProviderZendeskBlipsProviderFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskProvidersModule_ProviderZendeskBlipsProviderFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providerZendeskBlipsProvider:Ljavax/inject/Provider;

    .line 271
    invoke-static {v0}, Lzendesk/core/ZendeskProvidersModule_ProviderBlipsCoreProviderFactory;->create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskProvidersModule_ProviderBlipsCoreProviderFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providerBlipsCoreProvider:Ljavax/inject/Provider;

    .line 272
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideIdentityManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lzendesk/core/ZendeskNetworkModule_ProvideAuthHeaderInterceptorFactory;->create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskNetworkModule_ProvideAuthHeaderInterceptorFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideAuthHeaderInterceptorProvider:Ljavax/inject/Provider;

    .line 273
    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideApplicationConfigurationProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideGsonProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideCoreOkHttpClientProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v3, v0}, Lzendesk/core/ZendeskNetworkModule_ProvidePushProviderRetrofitFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskNetworkModule_ProvidePushProviderRetrofitFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providePushProviderRetrofitProvider:Ljavax/inject/Provider;

    .line 274
    invoke-static {v0}, Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationServiceFactory;->create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationServiceFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providePushRegistrationServiceProvider:Ljavax/inject/Provider;

    .line 275
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideCoreRetrofitProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lzendesk/core/ZendeskProvidersModule_ProvideSdkSettingsServiceFactory;->create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskProvidersModule_ProvideSdkSettingsServiceFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSdkSettingsServiceProvider:Ljavax/inject/Provider;

    .line 276
    invoke-static {}, Lzendesk/core/ZendeskProvidersModule_ActionHandlerRegistryFactory;->create()Lzendesk/core/ZendeskProvidersModule_ActionHandlerRegistryFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->actionHandlerRegistryProvider:Ljavax/inject/Provider;

    .line 277
    invoke-static {p1}, Lzendesk/core/ZendeskApplicationModule_ProvideZendeskLocaleConverterFactory;->create(Lzendesk/core/ZendeskApplicationModule;)Lzendesk/core/ZendeskApplicationModule_ProvideZendeskLocaleConverterFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v5

    iput-object v5, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideZendeskLocaleConverterProvider:Ljavax/inject/Provider;

    .line 278
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSdkSettingsServiceProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSettingsStorageProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideCoreSettingsStorageProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->actionHandlerRegistryProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSerializerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideApplicationConfigurationProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideApplicationContextProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v7}, Lzendesk/core/ZendeskProvidersModule_ProvideZendeskSdkSettingsProviderFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskProvidersModule_ProvideZendeskSdkSettingsProviderFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideZendeskSdkSettingsProvider:Ljavax/inject/Provider;

    .line 279
    invoke-static {p1}, Lzendesk/core/ZendeskProvidersModule_ProvideSdkSettingsProviderFactory;->create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskProvidersModule_ProvideSdkSettingsProviderFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSdkSettingsProvider:Ljavax/inject/Provider;

    .line 280
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providePushRegistrationServiceProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideIdentityManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providerBlipsCoreProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providePushDeviceIdStorageProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideApplicationContextProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v5}, Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationProviderFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationProviderFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providePushRegistrationProvider:Ljavax/inject/Provider;

    .line 281
    iget-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideCoreRetrofitProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lzendesk/core/ZendeskProvidersModule_ProvideAccessServiceFactory;->create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskProvidersModule_ProvideAccessServiceFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideAccessServiceProvider:Ljavax/inject/Provider;

    .line 282
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideIdentityManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, p1}, Lzendesk/core/ZendeskProvidersModule_ProvideAccessProviderFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskProvidersModule_ProvideAccessProviderFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideAccessProvider:Ljavax/inject/Provider;

    .line 283
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideIdentityManagerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSdkStorageProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideCoreSettingsStorageProvider:Ljavax/inject/Provider;

    invoke-static {v0, p1, v1, v2}, Lzendesk/core/ZendeskNetworkModule_ProvideAccessInterceptorFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskNetworkModule_ProvideAccessInterceptorFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideAccessInterceptorProvider:Ljavax/inject/Provider;

    .line 284
    iget-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSessionStorageProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideIdentityManagerProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lzendesk/core/ZendeskNetworkModule_ProvideZendeskUnauthorizedInterceptorFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskNetworkModule_ProvideZendeskUnauthorizedInterceptorFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideZendeskUnauthorizedInterceptorProvider:Ljavax/inject/Provider;

    .line 285
    iget-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideZendeskSdkSettingsProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lzendesk/core/ZendeskProvidersModule_ProvideSdkSettingsProviderInternalFactory;->create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskProvidersModule_ProvideSdkSettingsProviderInternalFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSdkSettingsProviderInternalProvider:Ljavax/inject/Provider;

    .line 286
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSettingsStorageProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lzendesk/core/ZendeskNetworkModule_ProvideSettingsInterceptorFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskNetworkModule_ProvideSettingsInterceptorFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSettingsInterceptorProvider:Ljavax/inject/Provider;

    .line 287
    iget-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providePushRegistrationProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationProviderInternalFactory;->create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationProviderInternalFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providePushRegistrationProviderInternalProvider:Ljavax/inject/Provider;

    .line 288
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providePushDeviceIdStorageProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideIdentityStorageProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0, v1}, Lzendesk/core/ZendeskNetworkModule_ProvidePushInterceptorFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskNetworkModule_ProvidePushInterceptorFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v7

    iput-object v7, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providePushInterceptorProvider:Ljavax/inject/Provider;

    .line 289
    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideBaseOkHttpClientProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideAccessInterceptorProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideZendeskUnauthorizedInterceptorProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideAuthHeaderInterceptorProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSettingsInterceptorProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providesAcceptHeaderInterceptorProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideCacheProvider:Ljavax/inject/Provider;

    move-object v0, p2

    invoke-static/range {v0 .. v8}, Lzendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory;->create(Lzendesk/core/ZendeskNetworkModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideOkHttpClientProvider:Ljavax/inject/Provider;

    .line 290
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideApplicationConfigurationProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideGsonProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p1}, Lzendesk/core/ZendeskNetworkModule_ProvideRetrofitFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskNetworkModule_ProvideRetrofitFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideRetrofitProvider:Ljavax/inject/Provider;

    .line 291
    iget-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providesDiskLruStorageProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lzendesk/core/ZendeskNetworkModule_ProvideCachingInterceptorFactory;->create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskNetworkModule_ProvideCachingInterceptorFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v5

    iput-object v5, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideCachingInterceptorProvider:Ljavax/inject/Provider;

    .line 292
    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideBaseOkHttpClientProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideAccessInterceptorProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideAuthHeaderInterceptorProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSettingsInterceptorProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideZendeskUnauthorizedInterceptorProvider:Ljavax/inject/Provider;

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Lzendesk/core/ZendeskNetworkModule_ProvideMediaOkHttpClientFactory;->create(Lzendesk/core/ZendeskNetworkModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskNetworkModule_ProvideMediaOkHttpClientFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideMediaOkHttpClientProvider:Ljavax/inject/Provider;

    .line 293
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideRetrofitProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideOkHttpClientProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideCoreOkHttpClientProvider:Ljavax/inject/Provider;

    invoke-static {p2, v0, p1, v1, v2}, Lzendesk/core/ZendeskNetworkModule_ProvideRestServiceProviderFactory;->create(Lzendesk/core/ZendeskNetworkModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskNetworkModule_ProvideRestServiceProviderFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideRestServiceProvider:Ljavax/inject/Provider;

    .line 294
    iget-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providerZendeskBlipsProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lzendesk/core/ZendeskProvidersModule_ProviderBlipsProviderFactory;->create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskProvidersModule_ProviderBlipsProviderFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providerBlipsProvider:Ljavax/inject/Provider;

    .line 295
    iget-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideApplicationContextProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lzendesk/core/ZendeskProvidersModule_ProviderConnectivityManagerFactory;->create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskProvidersModule_ProviderConnectivityManagerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providerConnectivityManagerProvider:Ljavax/inject/Provider;

    .line 296
    invoke-static {p1}, Lzendesk/core/ZendeskProvidersModule_ProviderNetworkInfoProviderFactory;->create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskProvidersModule_ProviderNetworkInfoProviderFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providerNetworkInfoProvider:Ljavax/inject/Provider;

    .line 297
    iget-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideIdentityManagerProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lzendesk/core/ZendeskStorageModule_ProvideAuthProviderFactory;->create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskStorageModule_ProvideAuthProviderFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideAuthProvider:Ljavax/inject/Provider;

    .line 298
    iget-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideApplicationContextProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lzendesk/core/ZendeskStorageModule_ProvideMachineIdStorageFactory;->create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskStorageModule_ProvideMachineIdStorageFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v12

    iput-object v12, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideMachineIdStorageProvider:Ljavax/inject/Provider;

    .line 299
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSdkSettingsProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideRestServiceProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providerBlipsProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSessionStorageProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providerNetworkInfoProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideMemoryCacheProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->actionHandlerRegistryProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideExecutorProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideApplicationContextProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideAuthProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideApplicationConfigurationProvider:Ljavax/inject/Provider;

    iget-object v11, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providePushRegistrationProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v12}, Lzendesk/core/ZendeskProvidersModule_ProvideCoreSdkModuleFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskProvidersModule_ProvideCoreSdkModuleFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideCoreSdkModuleProvider:Ljavax/inject/Provider;

    .line 300
    iget-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideRetrofitProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lzendesk/core/ZendeskProvidersModule_ProvideUserServiceFactory;->create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskProvidersModule_ProvideUserServiceFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideUserServiceProvider:Ljavax/inject/Provider;

    .line 301
    invoke-static {p1}, Lzendesk/core/ZendeskProvidersModule_ProvideUserProviderFactory;->create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskProvidersModule_ProvideUserProviderFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideUserProvider:Ljavax/inject/Provider;

    .line 302
    iget-object p2, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providePushRegistrationProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Lzendesk/core/ZendeskProvidersModule_ProvideProviderStoreFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskProvidersModule_ProvideProviderStoreFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v6

    iput-object v6, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideProviderStoreProvider:Ljavax/inject/Provider;

    .line 303
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideSdkStorageProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideLegacyIdentityStorageProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideIdentityManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providerBlipsCoreProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->providePushRegistrationProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideCoreSdkModuleProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v6}, Lzendesk/core/ZendeskApplicationModule_ProvideZendeskFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/core/ZendeskApplicationModule_ProvideZendeskFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideZendeskProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public zendeskShadow()Lzendesk/core/ZendeskShadow;
    .locals 1

    .line 308
    iget-object v0, p0, Lzendesk/core/DaggerZendeskApplicationComponent$ZendeskApplicationComponentImpl;->provideZendeskProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/core/ZendeskShadow;

    return-object v0
.end method
