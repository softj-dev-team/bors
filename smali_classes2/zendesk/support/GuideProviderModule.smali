.class Lzendesk/support/GuideProviderModule;
.super Ljava/lang/Object;
.source "GuideProviderModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# instance fields
.field private tracker:Lzendesk/support/HelpCenterTracker;


# direct methods
.method constructor <init>(Lzendesk/support/HelpCenterTracker;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lzendesk/support/GuideProviderModule;->tracker:Lzendesk/support/HelpCenterTracker;

    return-void
.end method

.method static provideArticleVoteStorage(Lzendesk/core/SessionStorage;)Lzendesk/support/ArticleVoteStorage;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 102
    new-instance v0, Lzendesk/support/ZendeskArticleVoteStorage;

    invoke-interface {p0}, Lzendesk/core/SessionStorage;->getAdditionalSdkStorage()Lzendesk/core/BaseStorage;

    move-result-object p0

    invoke-direct {v0, p0}, Lzendesk/support/ZendeskArticleVoteStorage;-><init>(Lzendesk/core/BaseStorage;)V

    return-object v0
.end method

.method static provideCustomNetworkConfig(Lzendesk/support/HelpCenterCachingInterceptor;)Lzendesk/support/HelpCenterCachingNetworkConfig;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    .line 62
    new-instance v0, Lzendesk/support/HelpCenterCachingNetworkConfig;

    invoke-direct {v0, p0}, Lzendesk/support/HelpCenterCachingNetworkConfig;-><init>(Lzendesk/support/HelpCenterCachingInterceptor;)V

    return-object v0
.end method

.method static provideHelpCenterCachingInterceptor()Lzendesk/support/HelpCenterCachingInterceptor;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    .line 68
    new-instance v0, Lzendesk/support/HelpCenterCachingInterceptor;

    invoke-direct {v0}, Lzendesk/support/HelpCenterCachingInterceptor;-><init>()V

    return-object v0
.end method

.method static provideHelpCenterSessionCache()Lzendesk/support/HelpCenterSessionCache;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 96
    new-instance v0, Lzendesk/support/ZendeskHelpCenterSessionCache;

    invoke-direct {v0}, Lzendesk/support/ZendeskHelpCenterSessionCache;-><init>()V

    return-object v0
.end method

.method static provideZendeskHelpCenterService(Lzendesk/support/HelpCenterService;Lzendesk/core/ZendeskLocaleConverter;)Lzendesk/support/ZendeskHelpCenterService;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 46
    new-instance v0, Lzendesk/support/ZendeskHelpCenterService;

    invoke-direct {v0, p0, p1}, Lzendesk/support/ZendeskHelpCenterService;-><init>(Lzendesk/support/HelpCenterService;Lzendesk/core/ZendeskLocaleConverter;)V

    return-object v0
.end method

.method static provideZendeskLocaleConverter()Lzendesk/core/ZendeskLocaleConverter;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 90
    new-instance v0, Lzendesk/core/ZendeskLocaleConverter;

    invoke-direct {v0}, Lzendesk/core/ZendeskLocaleConverter;-><init>()V

    return-object v0
.end method

.method static providesHelpCenterService(Lzendesk/core/RestServiceProvider;Lzendesk/support/HelpCenterCachingNetworkConfig;)Lzendesk/support/HelpCenterService;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 54
    const-class v0, Lzendesk/support/HelpCenterService;

    const-string v1, "1.0.9"

    const-string v2, "Guide"

    invoke-interface {p0, v0, v1, v2, p1}, Lzendesk/core/RestServiceProvider;->createRestService(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lzendesk/core/CustomNetworkConfig;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/support/HelpCenterService;

    return-object p0
.end method


# virtual methods
.method provideDeviceLocale()Ljava/util/Locale;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 31
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method provideGuideModule(Lzendesk/support/HelpCenterProvider;Lzendesk/support/HelpCenterSettingsProvider;Lzendesk/support/HelpCenterBlipsProvider;Lzendesk/support/ArticleVoteStorage;Lzendesk/core/RestServiceProvider;)Lzendesk/support/GuideModule;
    .locals 8
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 110
    new-instance v7, Lzendesk/support/GuideModule;

    iget-object v4, p0, Lzendesk/support/GuideProviderModule;->tracker:Lzendesk/support/HelpCenterTracker;

    .line 111
    invoke-interface {p5}, Lzendesk/core/RestServiceProvider;->getMediaOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lzendesk/support/GuideModule;-><init>(Lzendesk/support/HelpCenterProvider;Lzendesk/support/HelpCenterSettingsProvider;Lzendesk/support/HelpCenterBlipsProvider;Lzendesk/support/HelpCenterTracker;Lzendesk/support/ArticleVoteStorage;Lokhttp3/OkHttpClient;)V

    return-object v7
.end method

.method provideHelpCenterProvider(Lzendesk/support/HelpCenterSettingsProvider;Lzendesk/support/HelpCenterBlipsProvider;Lzendesk/support/ZendeskHelpCenterService;Lzendesk/support/HelpCenterSessionCache;)Lzendesk/support/HelpCenterProvider;
    .locals 7
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 77
    new-instance v6, Lzendesk/support/ZendeskHelpCenterProvider;

    iget-object v5, p0, Lzendesk/support/GuideProviderModule;->tracker:Lzendesk/support/HelpCenterTracker;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lzendesk/support/ZendeskHelpCenterProvider;-><init>(Lzendesk/support/HelpCenterSettingsProvider;Lzendesk/support/HelpCenterBlipsProvider;Lzendesk/support/ZendeskHelpCenterService;Lzendesk/support/HelpCenterSessionCache;Lzendesk/support/HelpCenterTracker;)V

    return-object v6
.end method

.method provideSettingsProvider(Lzendesk/core/SettingsProvider;Lzendesk/core/ZendeskLocaleConverter;Ljava/util/Locale;)Lzendesk/support/HelpCenterSettingsProvider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 38
    new-instance v0, Lzendesk/support/ZendeskHelpCenterSettingsProvider;

    invoke-direct {v0, p1, p2, p3}, Lzendesk/support/ZendeskHelpCenterSettingsProvider;-><init>(Lzendesk/core/SettingsProvider;Lzendesk/core/ZendeskLocaleConverter;Ljava/util/Locale;)V

    return-object v0
.end method

.method providesHelpCenterBlipsProvider(Lzendesk/core/BlipsProvider;Ljava/util/Locale;)Lzendesk/support/HelpCenterBlipsProvider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 84
    new-instance v0, Lzendesk/support/ZendeskHelpCenterBlipsProvider;

    invoke-direct {v0, p1, p2}, Lzendesk/support/ZendeskHelpCenterBlipsProvider;-><init>(Lzendesk/core/BlipsProvider;Ljava/util/Locale;)V

    return-object v0
.end method
