.class final Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;
.super Ljava/lang/Object;
.source "DaggerSupportSdkComponent.java"

# interfaces
.implements Lzendesk/support/SupportSdkComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/DaggerSupportSdkComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SupportSdkComponentImpl"
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

.field private configurationHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/configurations/ConfigurationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final coreModule:Lzendesk/core/CoreModule;

.field private getApplicationContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private getAuthenticationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/AuthenticationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private getExecutorServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private getMemoryCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/MemoryCache;",
            ">;"
        }
    .end annotation
.end field

.field private getSessionStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/SessionStorage;",
            ">;"
        }
    .end annotation
.end field

.field private mainThreadExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private okHttp3DownloaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/squareup/picasso/OkHttp3Downloader;",
            ">;"
        }
    .end annotation
.end field

.field private providesActionHandlersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lzendesk/core/ActionHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private providesBlipsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportBlipsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providesOkHttpClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private providesPicassoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/squareup/picasso/Picasso;",
            ">;"
        }
    .end annotation
.end field

.field private providesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private providesRequestDiskLruCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/jakewharton/disklrucache/DiskLruCache;",
            ">;"
        }
    .end annotation
.end field

.field private providesRequestProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/RequestProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providesSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportSettingsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providesUploadProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/UploadProvider;",
            ">;"
        }
    .end annotation
.end field

.field private requestInfoDataSourceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final supportSdkComponentImpl:Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;

.field private supportUiStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportUiStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lzendesk/core/CoreModule;Lzendesk/support/SupportModule;Lzendesk/support/SupportSdkModule;)V
    .locals 0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->supportSdkComponentImpl:Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;

    .line 328
    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->coreModule:Lzendesk/core/CoreModule;

    .line 329
    invoke-direct {p0, p1, p2, p3}, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->initialize(Lzendesk/core/CoreModule;Lzendesk/support/SupportModule;Lzendesk/support/SupportSdkModule;)V

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/core/CoreModule;Lzendesk/support/SupportModule;Lzendesk/support/SupportSdkModule;Lzendesk/support/DaggerSupportSdkComponent$1;)V
    .locals 0

    .line 281
    invoke-direct {p0, p1, p2, p3}, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;-><init>(Lzendesk/core/CoreModule;Lzendesk/support/SupportModule;Lzendesk/support/SupportSdkModule;)V

    return-void
.end method

.method static synthetic access$1000(Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 281
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->providesBlipsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1100(Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 281
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->providesOkHttpClientProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1200(Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 281
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->actionHandlerRegistryProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1300(Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 281
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->requestInfoDataSourceProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1400(Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 281
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->providesPicassoProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1500(Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 281
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->configurationHelperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1600(Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;)Lzendesk/core/CoreModule;
    .locals 0

    .line 281
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->coreModule:Lzendesk/core/CoreModule;

    return-object p0
.end method

.method static synthetic access$1700(Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 281
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->getMemoryCacheProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$200(Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 281
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->getApplicationContextProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$300(Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 281
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->providesRequestProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$400(Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 281
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->providesSettingsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$500(Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 281
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->providesUploadProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$600(Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 281
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->supportUiStorageProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$700(Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 281
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->getExecutorServiceProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$800(Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 281
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->mainThreadExecutorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$900(Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;)Ljavax/inject/Provider;
    .locals 0

    .line 281
    iget-object p0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->getAuthenticationProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method private initialize(Lzendesk/core/CoreModule;Lzendesk/support/SupportModule;Lzendesk/support/SupportSdkModule;)V
    .locals 2

    .line 336
    invoke-static {p3}, Lzendesk/support/SupportSdkModule_ProvidesActionHandlersFactory;->create(Lzendesk/support/SupportSdkModule;)Lzendesk/support/SupportSdkModule_ProvidesActionHandlersFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->providesActionHandlersProvider:Ljavax/inject/Provider;

    .line 337
    invoke-static {p2}, Lzendesk/support/SupportModule_ProvidesRequestProviderFactory;->create(Lzendesk/support/SupportModule;)Lzendesk/support/SupportModule_ProvidesRequestProviderFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->providesRequestProvider:Ljavax/inject/Provider;

    .line 338
    invoke-static {p2}, Lzendesk/support/SupportModule_ProvidesSettingsProviderFactory;->create(Lzendesk/support/SupportModule;)Lzendesk/support/SupportModule_ProvidesSettingsProviderFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->providesSettingsProvider:Ljavax/inject/Provider;

    .line 339
    invoke-static {p2}, Lzendesk/support/SupportModule_ProvidesUploadProviderFactory;->create(Lzendesk/support/SupportModule;)Lzendesk/support/SupportModule_ProvidesUploadProviderFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->providesUploadProvider:Ljavax/inject/Provider;

    .line 340
    invoke-static {p1}, Lzendesk/core/CoreModule_GetApplicationContextFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetApplicationContextFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->getApplicationContextProvider:Ljavax/inject/Provider;

    .line 341
    invoke-static {p1}, Lzendesk/core/CoreModule_GetSessionStorageFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetSessionStorageFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->getSessionStorageProvider:Ljavax/inject/Provider;

    .line 342
    invoke-static {p3, v0}, Lzendesk/support/SupportSdkModule_ProvidesRequestDiskLruCacheFactory;->create(Lzendesk/support/SupportSdkModule;Ljavax/inject/Provider;)Lzendesk/support/SupportSdkModule_ProvidesRequestDiskLruCacheFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->providesRequestDiskLruCacheProvider:Ljavax/inject/Provider;

    .line 343
    invoke-static {p3}, Lzendesk/support/SupportSdkModule_ProvidesFactory;->create(Lzendesk/support/SupportSdkModule;)Lzendesk/support/SupportSdkModule_ProvidesFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->providesProvider:Ljavax/inject/Provider;

    .line 344
    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->providesRequestDiskLruCacheProvider:Ljavax/inject/Provider;

    invoke-static {p3, v1, v0}, Lzendesk/support/SupportSdkModule_SupportUiStorageFactory;->create(Lzendesk/support/SupportSdkModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/support/SupportSdkModule_SupportUiStorageFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->supportUiStorageProvider:Ljavax/inject/Provider;

    .line 345
    invoke-static {p1}, Lzendesk/core/CoreModule_GetExecutorServiceFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetExecutorServiceFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->getExecutorServiceProvider:Ljavax/inject/Provider;

    .line 346
    invoke-static {p3}, Lzendesk/support/SupportSdkModule_MainThreadExecutorFactory;->create(Lzendesk/support/SupportSdkModule;)Lzendesk/support/SupportSdkModule_MainThreadExecutorFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->mainThreadExecutorProvider:Ljavax/inject/Provider;

    .line 347
    invoke-static {p1}, Lzendesk/core/CoreModule_GetAuthenticationProviderFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetAuthenticationProviderFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->getAuthenticationProvider:Ljavax/inject/Provider;

    .line 348
    invoke-static {p2}, Lzendesk/support/SupportModule_ProvidesBlipsProviderFactory;->create(Lzendesk/support/SupportModule;)Lzendesk/support/SupportModule_ProvidesBlipsProviderFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->providesBlipsProvider:Ljavax/inject/Provider;

    .line 349
    invoke-static {p2}, Lzendesk/support/SupportModule_ProvidesOkHttpClientFactory;->create(Lzendesk/support/SupportModule;)Lzendesk/support/SupportModule_ProvidesOkHttpClientFactory;

    move-result-object p2

    iput-object p2, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->providesOkHttpClientProvider:Ljavax/inject/Provider;

    .line 350
    invoke-static {p1}, Lzendesk/core/CoreModule_ActionHandlerRegistryFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_ActionHandlerRegistryFactory;

    move-result-object p2

    iput-object p2, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->actionHandlerRegistryProvider:Ljavax/inject/Provider;

    .line 351
    iget-object p2, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->supportUiStorageProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->mainThreadExecutorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->getExecutorServiceProvider:Ljavax/inject/Provider;

    invoke-static {p3, p2, v0, v1}, Lzendesk/support/SupportSdkModule_RequestInfoDataSourceFactory;->create(Lzendesk/support/SupportSdkModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/support/SupportSdkModule_RequestInfoDataSourceFactory;

    move-result-object p2

    iput-object p2, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->requestInfoDataSourceProvider:Ljavax/inject/Provider;

    .line 352
    iget-object p2, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->providesOkHttpClientProvider:Ljavax/inject/Provider;

    invoke-static {p3, p2}, Lzendesk/support/SupportSdkModule_OkHttp3DownloaderFactory;->create(Lzendesk/support/SupportSdkModule;Ljavax/inject/Provider;)Lzendesk/support/SupportSdkModule_OkHttp3DownloaderFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->okHttp3DownloaderProvider:Ljavax/inject/Provider;

    .line 353
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->getApplicationContextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->getExecutorServiceProvider:Ljavax/inject/Provider;

    invoke-static {p3, v0, p2, v1}, Lzendesk/support/SupportSdkModule_ProvidesPicassoFactory;->create(Lzendesk/support/SupportSdkModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/support/SupportSdkModule_ProvidesPicassoFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->providesPicassoProvider:Ljavax/inject/Provider;

    .line 354
    invoke-static {p3}, Lzendesk/support/SupportSdkModule_ConfigurationHelperFactory;->create(Lzendesk/support/SupportSdkModule;)Lzendesk/support/SupportSdkModule_ConfigurationHelperFactory;

    move-result-object p2

    iput-object p2, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->configurationHelperProvider:Ljavax/inject/Provider;

    .line 355
    invoke-static {p1}, Lzendesk/core/CoreModule_GetMemoryCacheFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetMemoryCacheFactory;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->getMemoryCacheProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private injectDeepLinkingBroadcastReceiver(Lzendesk/support/DeepLinkingBroadcastReceiver;)Lzendesk/support/DeepLinkingBroadcastReceiver;
    .locals 1

    .line 390
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->coreModule:Lzendesk/core/CoreModule;

    invoke-static {v0}, Lzendesk/core/CoreModule_ActionHandlerRegistryFactory;->actionHandlerRegistry(Lzendesk/core/CoreModule;)Lzendesk/core/ActionHandlerRegistry;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/DeepLinkingBroadcastReceiver_MembersInjector;->injectRegistry(Lzendesk/support/DeepLinkingBroadcastReceiver;Lzendesk/core/ActionHandlerRegistry;)V

    return-object p1
.end method

.method private injectSdkDependencyProvider(Lzendesk/support/SdkDependencyProvider;)Lzendesk/support/SdkDependencyProvider;
    .locals 1

    .line 383
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->coreModule:Lzendesk/core/CoreModule;

    invoke-static {v0}, Lzendesk/core/CoreModule_ActionHandlerRegistryFactory;->actionHandlerRegistry(Lzendesk/core/CoreModule;)Lzendesk/core/ActionHandlerRegistry;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/SdkDependencyProvider_MembersInjector;->injectRegistry(Lzendesk/support/SdkDependencyProvider;Lzendesk/core/ActionHandlerRegistry;)V

    .line 384
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->providesActionHandlersProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p1, v0}, Lzendesk/support/SdkDependencyProvider_MembersInjector;->injectActionHandlers(Lzendesk/support/SdkDependencyProvider;Ljava/util/List;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lzendesk/support/DeepLinkingBroadcastReceiver;)V
    .locals 0

    .line 365
    invoke-direct {p0, p1}, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->injectDeepLinkingBroadcastReceiver(Lzendesk/support/DeepLinkingBroadcastReceiver;)Lzendesk/support/DeepLinkingBroadcastReceiver;

    return-void
.end method

.method public inject(Lzendesk/support/SdkDependencyProvider;)V
    .locals 0

    .line 360
    invoke-direct {p0, p1}, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->injectSdkDependencyProvider(Lzendesk/support/SdkDependencyProvider;)Lzendesk/support/SdkDependencyProvider;

    return-void
.end method

.method public plus(Lzendesk/support/request/RequestModule;)Lzendesk/support/request/RequestComponent;
    .locals 3

    .line 370
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    new-instance v0, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;

    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->supportSdkComponentImpl:Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lzendesk/support/DaggerSupportSdkComponent$RequestComponentImpl;-><init>(Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;Lzendesk/support/request/RequestModule;Lzendesk/support/DaggerSupportSdkComponent$1;)V

    return-object v0
.end method

.method public plus(Lzendesk/support/requestlist/RequestListModule;Lzendesk/support/requestlist/RequestListViewModule;)Lzendesk/support/requestlist/RequestListComponent;
    .locals 3

    .line 377
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-static {p2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    new-instance v0, Lzendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl;

    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;->supportSdkComponentImpl:Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lzendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl;-><init>(Lzendesk/support/DaggerSupportSdkComponent$SupportSdkComponentImpl;Lzendesk/support/requestlist/RequestListModule;Lzendesk/support/requestlist/RequestListViewModule;Lzendesk/support/DaggerSupportSdkComponent$1;)V

    return-object v0
.end method
