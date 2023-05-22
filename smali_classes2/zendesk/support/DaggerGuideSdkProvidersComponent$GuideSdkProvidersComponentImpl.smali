.class final Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;
.super Ljava/lang/Object;
.source "DaggerGuideSdkProvidersComponent.java"

# interfaces
.implements Lzendesk/support/GuideSdkProvidersComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/DaggerGuideSdkProvidersComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GuideSdkProvidersComponentImpl"
.end annotation


# instance fields
.field private getBlipsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/BlipsProvider;",
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

.field private final guideSdkProvidersComponentImpl:Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;

.field private provideArticleVoteStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/ArticleVoteStorage;",
            ">;"
        }
    .end annotation
.end field

.field private provideCustomNetworkConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/HelpCenterCachingNetworkConfig;",
            ">;"
        }
    .end annotation
.end field

.field private provideDeviceLocaleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private provideGuideModuleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/GuideModule;",
            ">;"
        }
    .end annotation
.end field

.field private provideHelpCenterCachingInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/HelpCenterCachingInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private provideHelpCenterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/HelpCenterProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideHelpCenterSessionCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/HelpCenterSessionCache;",
            ">;"
        }
    .end annotation
.end field

.field private provideSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/HelpCenterSettingsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideZendeskHelpCenterServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/ZendeskHelpCenterService;",
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

.field private providesHelpCenterBlipsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/HelpCenterBlipsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providesHelpCenterServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/HelpCenterService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lzendesk/core/CoreModule;Lzendesk/support/GuideProviderModule;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->guideSdkProvidersComponentImpl:Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;

    .line 97
    invoke-direct {p0, p1, p2}, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->initialize(Lzendesk/core/CoreModule;Lzendesk/support/GuideProviderModule;)V

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/core/CoreModule;Lzendesk/support/GuideProviderModule;Lzendesk/support/DaggerGuideSdkProvidersComponent$1;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;-><init>(Lzendesk/core/CoreModule;Lzendesk/support/GuideProviderModule;)V

    return-void
.end method

.method private initialize(Lzendesk/core/CoreModule;Lzendesk/support/GuideProviderModule;)V
    .locals 6

    .line 104
    invoke-static {p1}, Lzendesk/core/CoreModule_GetSettingsProviderFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetSettingsProviderFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->getSettingsProvider:Ljavax/inject/Provider;

    .line 105
    invoke-static {}, Lzendesk/support/GuideProviderModule_ProvideZendeskLocaleConverterFactory;->create()Lzendesk/support/GuideProviderModule_ProvideZendeskLocaleConverterFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->provideZendeskLocaleConverterProvider:Ljavax/inject/Provider;

    .line 106
    invoke-static {p2}, Lzendesk/support/GuideProviderModule_ProvideDeviceLocaleFactory;->create(Lzendesk/support/GuideProviderModule;)Lzendesk/support/GuideProviderModule_ProvideDeviceLocaleFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->provideDeviceLocaleProvider:Ljavax/inject/Provider;

    .line 107
    iget-object v1, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->getSettingsProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->provideZendeskLocaleConverterProvider:Ljavax/inject/Provider;

    invoke-static {p2, v1, v2, v0}, Lzendesk/support/GuideProviderModule_ProvideSettingsProviderFactory;->create(Lzendesk/support/GuideProviderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/support/GuideProviderModule_ProvideSettingsProviderFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->provideSettingsProvider:Ljavax/inject/Provider;

    .line 108
    invoke-static {p1}, Lzendesk/core/CoreModule_GetBlipsProviderFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetBlipsProviderFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->getBlipsProvider:Ljavax/inject/Provider;

    .line 109
    iget-object v1, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->provideDeviceLocaleProvider:Ljavax/inject/Provider;

    invoke-static {p2, v0, v1}, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory;->create(Lzendesk/support/GuideProviderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/support/GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->providesHelpCenterBlipsProvider:Ljavax/inject/Provider;

    .line 110
    invoke-static {p1}, Lzendesk/core/CoreModule_GetRestServiceProviderFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetRestServiceProviderFactory;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->getRestServiceProvider:Ljavax/inject/Provider;

    .line 111
    invoke-static {}, Lzendesk/support/GuideProviderModule_ProvideHelpCenterCachingInterceptorFactory;->create()Lzendesk/support/GuideProviderModule_ProvideHelpCenterCachingInterceptorFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->provideHelpCenterCachingInterceptorProvider:Ljavax/inject/Provider;

    .line 112
    invoke-static {v0}, Lzendesk/support/GuideProviderModule_ProvideCustomNetworkConfigFactory;->create(Ljavax/inject/Provider;)Lzendesk/support/GuideProviderModule_ProvideCustomNetworkConfigFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/SingleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->provideCustomNetworkConfigProvider:Ljavax/inject/Provider;

    .line 113
    iget-object v1, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->getRestServiceProvider:Ljavax/inject/Provider;

    invoke-static {v1, v0}, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterServiceFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/support/GuideProviderModule_ProvidesHelpCenterServiceFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->providesHelpCenterServiceProvider:Ljavax/inject/Provider;

    .line 114
    iget-object v1, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->provideZendeskLocaleConverterProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lzendesk/support/GuideProviderModule_ProvideZendeskHelpCenterServiceFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/support/GuideProviderModule_ProvideZendeskHelpCenterServiceFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->provideZendeskHelpCenterServiceProvider:Ljavax/inject/Provider;

    .line 115
    invoke-static {}, Lzendesk/support/GuideProviderModule_ProvideHelpCenterSessionCacheFactory;->create()Lzendesk/support/GuideProviderModule_ProvideHelpCenterSessionCacheFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->provideHelpCenterSessionCacheProvider:Ljavax/inject/Provider;

    .line 116
    iget-object v1, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->provideSettingsProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->providesHelpCenterBlipsProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->provideZendeskHelpCenterServiceProvider:Ljavax/inject/Provider;

    invoke-static {p2, v1, v2, v3, v0}, Lzendesk/support/GuideProviderModule_ProvideHelpCenterProviderFactory;->create(Lzendesk/support/GuideProviderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/support/GuideProviderModule_ProvideHelpCenterProviderFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->provideHelpCenterProvider:Ljavax/inject/Provider;

    .line 117
    invoke-static {p1}, Lzendesk/core/CoreModule_GetSessionStorageFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetSessionStorageFactory;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->getSessionStorageProvider:Ljavax/inject/Provider;

    .line 118
    invoke-static {p1}, Lzendesk/support/GuideProviderModule_ProvideArticleVoteStorageFactory;->create(Ljavax/inject/Provider;)Lzendesk/support/GuideProviderModule_ProvideArticleVoteStorageFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v4

    iput-object v4, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->provideArticleVoteStorageProvider:Ljavax/inject/Provider;

    .line 119
    iget-object v1, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->provideHelpCenterProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->provideSettingsProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->providesHelpCenterBlipsProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->getRestServiceProvider:Ljavax/inject/Provider;

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lzendesk/support/GuideProviderModule_ProvideGuideModuleFactory;->create(Lzendesk/support/GuideProviderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/support/GuideProviderModule_ProvideGuideModuleFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->provideGuideModuleProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private injectGuide(Lzendesk/support/Guide;)Lzendesk/support/Guide;
    .locals 1

    .line 128
    iget-object v0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->provideGuideModuleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/GuideModule;

    invoke-static {p1, v0}, Lzendesk/support/Guide_MembersInjector;->injectGuideModule(Lzendesk/support/Guide;Lzendesk/support/GuideModule;)V

    .line 129
    iget-object v0, p0, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->providesHelpCenterBlipsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/HelpCenterBlipsProvider;

    invoke-static {p1, v0}, Lzendesk/support/Guide_MembersInjector;->injectBlipsProvider(Lzendesk/support/Guide;Lzendesk/support/HelpCenterBlipsProvider;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lzendesk/support/Guide;)Lzendesk/support/Guide;
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lzendesk/support/DaggerGuideSdkProvidersComponent$GuideSdkProvidersComponentImpl;->injectGuide(Lzendesk/support/Guide;)Lzendesk/support/Guide;

    move-result-object p1

    return-object p1
.end method
