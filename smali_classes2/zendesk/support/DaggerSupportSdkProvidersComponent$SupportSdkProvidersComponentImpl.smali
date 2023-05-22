.class final Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;
.super Ljava/lang/Object;
.source "DaggerSupportSdkProvidersComponent.java"

# interfaces
.implements Lzendesk/support/SupportSdkProvidersComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/DaggerSupportSdkProvidersComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SupportSdkProvidersComponentImpl"
.end annotation


# instance fields
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

.field private getBlipsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/BlipsProvider;",
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

.field private getRestServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/RestServiceProvider;",
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

.field private getSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/SettingsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideLocaleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private provideMetadataProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportSdkMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private provideProviderStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/ProviderStore;",
            ">;"
        }
    .end annotation
.end field

.field private provideRequestMigratorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/RequestMigrator;",
            ">;"
        }
    .end annotation
.end field

.field private provideRequestProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/RequestProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideRequestSessionCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/RequestSessionCache;",
            ">;"
        }
    .end annotation
.end field

.field private provideRequestStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/RequestStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideSdkSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportSettingsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideSupportBlipsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportBlipsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideSupportModuleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportModule;",
            ">;"
        }
    .end annotation
.end field

.field private provideUploadProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/UploadProvider;",
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

.field private provideZendeskRequestServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/ZendeskRequestService;",
            ">;"
        }
    .end annotation
.end field

.field private provideZendeskUploadServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/ZendeskUploadService;",
            ">;"
        }
    .end annotation
.end field

.field private providesArticleVoteStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/ArticleVoteStorage;",
            ">;"
        }
    .end annotation
.end field

.field private providesHelpCenterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/HelpCenterProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providesRequestServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/RequestService;",
            ">;"
        }
    .end annotation
.end field

.field private providesUploadServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/UploadService;",
            ">;"
        }
    .end annotation
.end field

.field private providesZendeskTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/ZendeskTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final supportSdkProvidersComponentImpl:Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;


# direct methods
.method private constructor <init>(Lzendesk/support/SupportApplicationModule;Lzendesk/core/CoreModule;Lzendesk/support/ProviderModule;Lzendesk/support/GuideModule;Lzendesk/support/StorageModule;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->supportSdkProvidersComponentImpl:Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;

    .line 162
    iput-object p2, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->coreModule:Lzendesk/core/CoreModule;

    .line 163
    invoke-direct/range {p0 .. p5}, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->initialize(Lzendesk/support/SupportApplicationModule;Lzendesk/core/CoreModule;Lzendesk/support/ProviderModule;Lzendesk/support/GuideModule;Lzendesk/support/StorageModule;)V

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/support/SupportApplicationModule;Lzendesk/core/CoreModule;Lzendesk/support/ProviderModule;Lzendesk/support/GuideModule;Lzendesk/support/StorageModule;Lzendesk/support/DaggerSupportSdkProvidersComponent$1;)V
    .locals 0

    .line 102
    invoke-direct/range {p0 .. p5}, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;-><init>(Lzendesk/support/SupportApplicationModule;Lzendesk/core/CoreModule;Lzendesk/support/ProviderModule;Lzendesk/support/GuideModule;Lzendesk/support/StorageModule;)V

    return-void
.end method

.method private initialize(Lzendesk/support/SupportApplicationModule;Lzendesk/core/CoreModule;Lzendesk/support/ProviderModule;Lzendesk/support/GuideModule;Lzendesk/support/StorageModule;)V
    .locals 9

    .line 171
    invoke-static {p4}, Lzendesk/support/GuideModule_ProvidesHelpCenterProviderFactory;->create(Lzendesk/support/GuideModule;)Lzendesk/support/GuideModule_ProvidesHelpCenterProviderFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->providesHelpCenterProvider:Ljavax/inject/Provider;

    .line 172
    invoke-static {p2}, Lzendesk/core/CoreModule_GetSettingsProviderFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetSettingsProviderFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->getSettingsProvider:Ljavax/inject/Provider;

    .line 173
    invoke-static {p1}, Lzendesk/support/SupportApplicationModule_ProvideLocaleFactory;->create(Lzendesk/support/SupportApplicationModule;)Lzendesk/support/SupportApplicationModule_ProvideLocaleFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideLocaleProvider:Ljavax/inject/Provider;

    .line 174
    invoke-static {p3}, Lzendesk/support/ProviderModule_ProvideZendeskLocaleConverterFactory;->create(Lzendesk/support/ProviderModule;)Lzendesk/support/ProviderModule_ProvideZendeskLocaleConverterFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideZendeskLocaleConverterProvider:Ljavax/inject/Provider;

    .line 175
    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->getSettingsProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideLocaleProvider:Ljavax/inject/Provider;

    invoke-static {p3, v1, v2, v0}, Lzendesk/support/ProviderModule_ProvideSdkSettingsProviderFactory;->create(Lzendesk/support/ProviderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/support/ProviderModule_ProvideSdkSettingsProviderFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideSdkSettingsProvider:Ljavax/inject/Provider;

    .line 176
    invoke-static {p2}, Lzendesk/core/CoreModule_GetAuthenticationProviderFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetAuthenticationProviderFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->getAuthenticationProvider:Ljavax/inject/Provider;

    .line 177
    invoke-static {p2}, Lzendesk/core/CoreModule_GetRestServiceProviderFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetRestServiceProviderFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->getRestServiceProvider:Ljavax/inject/Provider;

    .line 178
    invoke-static {v0}, Lzendesk/support/ServiceModule_ProvidesRequestServiceFactory;->create(Ljavax/inject/Provider;)Lzendesk/support/ServiceModule_ProvidesRequestServiceFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->providesRequestServiceProvider:Ljavax/inject/Provider;

    .line 179
    invoke-static {v0}, Lzendesk/support/ServiceModule_ProvideZendeskRequestServiceFactory;->create(Ljavax/inject/Provider;)Lzendesk/support/ServiceModule_ProvideZendeskRequestServiceFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideZendeskRequestServiceProvider:Ljavax/inject/Provider;

    .line 180
    invoke-static {p2}, Lzendesk/core/CoreModule_GetSessionStorageFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetSessionStorageFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->getSessionStorageProvider:Ljavax/inject/Provider;

    .line 181
    invoke-static {p2}, Lzendesk/core/CoreModule_GetApplicationContextFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetApplicationContextFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->getApplicationContextProvider:Ljavax/inject/Provider;

    .line 182
    invoke-static {p5, v0}, Lzendesk/support/StorageModule_ProvideRequestMigratorFactory;->create(Lzendesk/support/StorageModule;Ljavax/inject/Provider;)Lzendesk/support/StorageModule_ProvideRequestMigratorFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideRequestMigratorProvider:Ljavax/inject/Provider;

    .line 183
    invoke-static {p2}, Lzendesk/core/CoreModule_GetMemoryCacheFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetMemoryCacheFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->getMemoryCacheProvider:Ljavax/inject/Provider;

    .line 184
    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->getSessionStorageProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideRequestMigratorProvider:Ljavax/inject/Provider;

    invoke-static {p5, v1, v2, v0}, Lzendesk/support/StorageModule_ProvideRequestStorageFactory;->create(Lzendesk/support/StorageModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/support/StorageModule_ProvideRequestStorageFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideRequestStorageProvider:Ljavax/inject/Provider;

    .line 185
    invoke-static {p5}, Lzendesk/support/StorageModule_ProvideRequestSessionCacheFactory;->create(Lzendesk/support/StorageModule;)Lzendesk/support/StorageModule_ProvideRequestSessionCacheFactory;

    move-result-object p5

    invoke-static {p5}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p5

    iput-object p5, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideRequestSessionCacheProvider:Ljavax/inject/Provider;

    .line 186
    invoke-static {p1}, Lzendesk/support/SupportApplicationModule_ProvidesZendeskTrackerFactory;->create(Lzendesk/support/SupportApplicationModule;)Lzendesk/support/SupportApplicationModule_ProvidesZendeskTrackerFactory;

    move-result-object p5

    invoke-static {p5}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p5

    iput-object p5, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->providesZendeskTrackerProvider:Ljavax/inject/Provider;

    .line 187
    iget-object p5, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->getApplicationContextProvider:Ljavax/inject/Provider;

    invoke-static {p1, p5}, Lzendesk/support/SupportApplicationModule_ProvideMetadataFactory;->create(Lzendesk/support/SupportApplicationModule;Ljavax/inject/Provider;)Lzendesk/support/SupportApplicationModule_ProvideMetadataFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideMetadataProvider:Ljavax/inject/Provider;

    .line 188
    invoke-static {p2}, Lzendesk/core/CoreModule_GetBlipsProviderFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetBlipsProviderFactory;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->getBlipsProvider:Ljavax/inject/Provider;

    .line 189
    invoke-static {p3, p1}, Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;->create(Lzendesk/support/ProviderModule;Ljavax/inject/Provider;)Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v8

    iput-object v8, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideSupportBlipsProvider:Ljavax/inject/Provider;

    .line 190
    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideSdkSettingsProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->getAuthenticationProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideZendeskRequestServiceProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideRequestStorageProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideRequestSessionCacheProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->providesZendeskTrackerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideMetadataProvider:Ljavax/inject/Provider;

    move-object v0, p3

    invoke-static/range {v0 .. v8}, Lzendesk/support/ProviderModule_ProvideRequestProviderFactory;->create(Lzendesk/support/ProviderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/support/ProviderModule_ProvideRequestProviderFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideRequestProvider:Ljavax/inject/Provider;

    .line 191
    iget-object p1, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->getRestServiceProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lzendesk/support/ServiceModule_ProvidesUploadServiceFactory;->create(Ljavax/inject/Provider;)Lzendesk/support/ServiceModule_ProvidesUploadServiceFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->providesUploadServiceProvider:Ljavax/inject/Provider;

    .line 192
    invoke-static {p1}, Lzendesk/support/ServiceModule_ProvideZendeskUploadServiceFactory;->create(Ljavax/inject/Provider;)Lzendesk/support/ServiceModule_ProvideZendeskUploadServiceFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideZendeskUploadServiceProvider:Ljavax/inject/Provider;

    .line 193
    invoke-static {p3, p1}, Lzendesk/support/ProviderModule_ProvideUploadProviderFactory;->create(Lzendesk/support/ProviderModule;Ljavax/inject/Provider;)Lzendesk/support/ProviderModule_ProvideUploadProviderFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideUploadProvider:Ljavax/inject/Provider;

    .line 194
    iget-object p2, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->providesHelpCenterProvider:Ljavax/inject/Provider;

    iget-object p5, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideRequestProvider:Ljavax/inject/Provider;

    invoke-static {p3, p2, p5, p1}, Lzendesk/support/ProviderModule_ProvideProviderStoreFactory;->create(Lzendesk/support/ProviderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/support/ProviderModule_ProvideProviderStoreFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideProviderStoreProvider:Ljavax/inject/Provider;

    .line 195
    invoke-static {p4}, Lzendesk/support/GuideModule_ProvidesArticleVoteStorageFactory;->create(Lzendesk/support/GuideModule;)Lzendesk/support/GuideModule_ProvidesArticleVoteStorageFactory;

    move-result-object v8

    iput-object v8, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->providesArticleVoteStorageProvider:Ljavax/inject/Provider;

    .line 196
    iget-object v1, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideRequestProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideUploadProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->providesHelpCenterProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideSdkSettingsProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->getRestServiceProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideSupportBlipsProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->providesZendeskTrackerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v8}, Lzendesk/support/ProviderModule_ProvideSupportModuleFactory;->create(Lzendesk/support/ProviderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/support/ProviderModule_ProvideSupportModuleFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideSupportModuleProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private injectSupport(Lzendesk/support/Support;)Lzendesk/support/Support;
    .locals 1

    .line 205
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideProviderStoreProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/ProviderStore;

    invoke-static {p1, v0}, Lzendesk/support/Support_MembersInjector;->injectProviderStore(Lzendesk/support/Support;Lzendesk/support/ProviderStore;)V

    .line 206
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideSupportModuleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/SupportModule;

    invoke-static {p1, v0}, Lzendesk/support/Support_MembersInjector;->injectSupportModule(Lzendesk/support/Support;Lzendesk/support/SupportModule;)V

    .line 207
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideRequestMigratorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/Support_MembersInjector;->injectRequestMigrator(Lzendesk/support/Support;Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideSupportBlipsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/SupportBlipsProvider;

    invoke-static {p1, v0}, Lzendesk/support/Support_MembersInjector;->injectBlipsProvider(Lzendesk/support/Support;Lzendesk/support/SupportBlipsProvider;)V

    .line 209
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->coreModule:Lzendesk/core/CoreModule;

    invoke-static {v0}, Lzendesk/core/CoreModule_ActionHandlerRegistryFactory;->actionHandlerRegistry(Lzendesk/core/CoreModule;)Lzendesk/core/ActionHandlerRegistry;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/Support_MembersInjector;->injectActionHandlerRegistry(Lzendesk/support/Support;Lzendesk/core/ActionHandlerRegistry;)V

    .line 210
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->provideRequestProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/RequestProvider;

    invoke-static {p1, v0}, Lzendesk/support/Support_MembersInjector;->injectRequestProvider(Lzendesk/support/Support;Lzendesk/support/RequestProvider;)V

    .line 211
    iget-object v0, p0, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->coreModule:Lzendesk/core/CoreModule;

    invoke-static {v0}, Lzendesk/core/CoreModule_GetAuthenticationProviderFactory;->getAuthenticationProvider(Lzendesk/core/CoreModule;)Lzendesk/core/AuthenticationProvider;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/Support_MembersInjector;->injectAuthenticationProvider(Lzendesk/support/Support;Lzendesk/core/AuthenticationProvider;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lzendesk/support/Support;)Lzendesk/support/Support;
    .locals 0

    .line 201
    invoke-direct {p0, p1}, Lzendesk/support/DaggerSupportSdkProvidersComponent$SupportSdkProvidersComponentImpl;->injectSupport(Lzendesk/support/Support;)Lzendesk/support/Support;

    move-result-object p1

    return-object p1
.end method
