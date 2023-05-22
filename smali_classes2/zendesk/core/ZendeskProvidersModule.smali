.class Lzendesk/core/ZendeskProvidersModule;
.super Ljava/lang/Object;
.source "ZendeskProvidersModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static actionHandlerRegistry()Lzendesk/core/ActionHandlerRegistry;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 243
    sget-object v0, Lzendesk/core/Zendesk;->INSTANCE:Lzendesk/core/Zendesk;

    invoke-virtual {v0}, Lzendesk/core/Zendesk;->actionHandlerRegistry()Lzendesk/core/ActionHandlerRegistry;

    move-result-object v0

    return-object v0
.end method

.method static provideAccessProvider(Lzendesk/core/IdentityManager;Lzendesk/core/AccessService;)Lzendesk/core/AccessProvider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 150
    new-instance v0, Lzendesk/core/ZendeskAccessProvider;

    invoke-direct {v0, p0, p1}, Lzendesk/core/ZendeskAccessProvider;-><init>(Lzendesk/core/IdentityManager;Lzendesk/core/AccessService;)V

    return-object v0
.end method

.method static provideAccessService(Lretrofit2/Retrofit;)Lzendesk/core/AccessService;
    .locals 1
    .param p0    # Lretrofit2/Retrofit;
        .annotation runtime Ljavax/inject/Named;
            value = "CoreRetrofit"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    .line 62
    const-class v0, Lzendesk/core/AccessService;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/core/AccessService;

    return-object p0
.end method

.method static provideBlipsService(Lretrofit2/Retrofit;)Lzendesk/core/BlipsService;
    .locals 1
    .param p0    # Lretrofit2/Retrofit;
        .annotation runtime Ljavax/inject/Named;
            value = "CoreRetrofit"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 93
    const-class v0, Lzendesk/core/BlipsService;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/core/BlipsService;

    return-object p0
.end method

.method static provideCoreSdkModule(Lzendesk/core/SettingsProvider;Lzendesk/core/RestServiceProvider;Lzendesk/core/BlipsProvider;Lzendesk/core/SessionStorage;Lzendesk/core/NetworkInfoProvider;Lzendesk/core/MemoryCache;Lzendesk/core/ActionHandlerRegistry;Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/Context;Lzendesk/core/AuthenticationProvider;Lzendesk/core/ApplicationConfiguration;Lzendesk/core/PushRegistrationProvider;Lzendesk/core/MachineIdStorage;)Lzendesk/core/CoreModule;
    .locals 15
    .param p8    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "application_context"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    .line 261
    new-instance v14, Lzendesk/core/CoreModule;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p8

    move-object/from16 v7, p6

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lzendesk/core/CoreModule;-><init>(Lzendesk/core/SettingsProvider;Lzendesk/core/RestServiceProvider;Lzendesk/core/BlipsProvider;Lzendesk/core/SessionStorage;Lzendesk/core/NetworkInfoProvider;Landroid/content/Context;Lzendesk/core/ActionHandlerRegistry;Lzendesk/core/MemoryCache;Ljava/util/concurrent/ScheduledExecutorService;Lzendesk/core/AuthenticationProvider;Lzendesk/core/ApplicationConfiguration;Lzendesk/core/PushRegistrationProvider;Lzendesk/core/MachineIdStorage;)V

    return-object v14
.end method

.method static provideProviderStore(Lzendesk/core/UserProvider;Lzendesk/core/PushRegistrationProvider;)Lzendesk/core/ProviderStore;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 237
    new-instance v0, Lzendesk/core/ZendeskProviderStore;

    invoke-direct {v0, p0, p1}, Lzendesk/core/ZendeskProviderStore;-><init>(Lzendesk/core/UserProvider;Lzendesk/core/PushRegistrationProvider;)V

    return-object v0
.end method

.method static providePushRegistrationProvider(Lzendesk/core/PushRegistrationService;Lzendesk/core/IdentityManager;Lzendesk/core/SettingsProvider;Lzendesk/core/BlipsCoreProvider;Lzendesk/core/PushDeviceIdStorage;Landroid/content/Context;)Lzendesk/core/PushRegistrationProvider;
    .locals 8
    .param p5    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "application_context"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 169
    new-instance v7, Lzendesk/core/ZendeskPushRegistrationProvider;

    .line 170
    invoke-static {p5}, Lzendesk/core/DeviceInfo;->getCurrentLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v6

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lzendesk/core/ZendeskPushRegistrationProvider;-><init>(Lzendesk/core/PushRegistrationService;Lzendesk/core/IdentityManager;Lzendesk/core/SettingsProvider;Lzendesk/core/BlipsCoreProvider;Lzendesk/core/PushDeviceIdStorage;Ljava/util/Locale;)V

    return-object v7
.end method

.method static providePushRegistrationProviderInternal(Lzendesk/core/PushRegistrationProvider;)Lzendesk/core/PushRegistrationProviderInternal;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 177
    check-cast p0, Lzendesk/core/ZendeskPushRegistrationProvider;

    return-object p0
.end method

.method static providePushRegistrationService(Lretrofit2/Retrofit;)Lzendesk/core/PushRegistrationService;
    .locals 1
    .param p0    # Lretrofit2/Retrofit;
        .annotation runtime Ljavax/inject/Named;
            value = "PushProviderRetrofit"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    .line 75
    const-class v0, Lzendesk/core/PushRegistrationService;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/core/PushRegistrationService;

    return-object p0
.end method

.method static provideSdkSettingsProvider(Lzendesk/core/ZendeskSettingsProvider;)Lzendesk/core/SettingsProvider;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    return-object p0
.end method

.method static provideSdkSettingsProviderInternal(Lzendesk/core/ZendeskSettingsProvider;)Lzendesk/core/SdkSettingsProviderInternal;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    return-object p0
.end method

.method static provideSdkSettingsService(Lretrofit2/Retrofit;)Lzendesk/core/SdkSettingsService;
    .locals 1
    .param p0    # Lretrofit2/Retrofit;
        .annotation runtime Ljavax/inject/Named;
            value = "CoreRetrofit"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    .line 50
    const-class v0, Lzendesk/core/SdkSettingsService;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/core/SdkSettingsService;

    return-object p0
.end method

.method static provideUserProvider(Lzendesk/core/UserService;)Lzendesk/core/UserProvider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 87
    new-instance v0, Lzendesk/core/ZendeskUserProvider;

    invoke-direct {v0, p0}, Lzendesk/core/ZendeskUserProvider;-><init>(Lzendesk/core/UserService;)V

    return-object v0
.end method

.method static provideUserService(Lretrofit2/Retrofit;)Lzendesk/core/UserService;
    .locals 1
    .param p0    # Lretrofit2/Retrofit;
        .annotation runtime Ljavax/inject/Named;
            value = "Retrofit"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    .line 38
    const-class v0, Lzendesk/core/UserService;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/core/UserService;

    return-object p0
.end method

.method static provideZendeskSdkSettingsProvider(Lzendesk/core/SdkSettingsService;Lzendesk/core/SettingsStorage;Lzendesk/core/CoreSettingsStorage;Lzendesk/core/ActionHandlerRegistry;Lzendesk/core/Serializer;Lzendesk/core/ZendeskLocaleConverter;Lzendesk/core/ApplicationConfiguration;Landroid/content/Context;)Lzendesk/core/ZendeskSettingsProvider;
    .locals 10
    .param p4    # Lzendesk/core/Serializer;
        .annotation runtime Ljavax/inject/Named;
            value = "gson_serializer"
        .end annotation
    .end param
    .param p7    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "application_context"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 116
    new-instance v9, Lzendesk/core/ZendeskSettingsProvider;

    .line 123
    invoke-virtual/range {p6 .. p6}, Lzendesk/core/ApplicationConfiguration;->getApplicationId()Ljava/lang/String;

    move-result-object v7

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lzendesk/core/ZendeskSettingsProvider;-><init>(Lzendesk/core/SdkSettingsService;Lzendesk/core/SettingsStorage;Lzendesk/core/CoreSettingsStorage;Lzendesk/core/ActionHandlerRegistry;Lzendesk/core/Serializer;Lzendesk/core/ZendeskLocaleConverter;Ljava/lang/String;Landroid/content/Context;)V

    return-object v9
.end method

.method static providerBlipsCoreProvider(Lzendesk/core/ZendeskBlipsProvider;)Lzendesk/core/BlipsCoreProvider;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    return-object p0
.end method

.method static providerBlipsProvider(Lzendesk/core/ZendeskBlipsProvider;)Lzendesk/core/BlipsProvider;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    return-object p0
.end method

.method static providerConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "application_context"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "connectivity"

    .line 196
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static providerNetworkInfoProvider(Landroid/net/ConnectivityManager;)Lzendesk/core/NetworkInfoProvider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 189
    new-instance v0, Lzendesk/core/ZendeskNetworkInfoProvider;

    invoke-direct {v0, p0}, Lzendesk/core/ZendeskNetworkInfoProvider;-><init>(Landroid/net/ConnectivityManager;)V

    return-object v0
.end method

.method static providerZendeskBlipsProvider(Lzendesk/core/BlipsService;Lzendesk/core/DeviceInfo;Lzendesk/core/Serializer;Lzendesk/core/IdentityManager;Lzendesk/core/ApplicationConfiguration;Lzendesk/core/CoreSettingsStorage;Ljava/util/concurrent/ExecutorService;)Lzendesk/core/ZendeskBlipsProvider;
    .locals 9
    .param p2    # Lzendesk/core/Serializer;
        .annotation runtime Ljavax/inject/Named;
            value = "base_64_serializer"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 208
    new-instance v8, Lzendesk/core/ZendeskBlipsProvider;

    .line 209
    invoke-virtual {p4}, Lzendesk/core/ApplicationConfiguration;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lzendesk/core/ZendeskBlipsProvider;-><init>(Lzendesk/core/BlipsService;Lzendesk/core/DeviceInfo;Lzendesk/core/Serializer;Lzendesk/core/IdentityManager;Ljava/lang/String;Lzendesk/core/CoreSettingsStorage;Ljava/util/concurrent/Executor;)V

    return-object v8
.end method
