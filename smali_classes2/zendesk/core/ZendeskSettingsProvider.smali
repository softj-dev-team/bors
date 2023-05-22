.class Lzendesk/core/ZendeskSettingsProvider;
.super Ljava/lang/Object;
.source "ZendeskSettingsProvider.java"

# interfaces
.implements Lzendesk/core/SettingsProvider;
.implements Lzendesk/core/SdkSettingsProviderInternal;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ZendeskSdkSettingsProvi"

.field static final SDK_SETTINGS_MAX_AGE_HOURS:I = 0x1


# instance fields
.field private final actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

.field private final applicationId:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final coreSettingsStorage:Lzendesk/core/CoreSettingsStorage;

.field private final serializer:Lzendesk/core/Serializer;

.field private final settingsService:Lzendesk/core/SdkSettingsService;

.field private final settingsStorage:Lzendesk/core/SettingsStorage;

.field private final zendeskLocaleConverter:Lzendesk/core/ZendeskLocaleConverter;


# direct methods
.method constructor <init>(Lzendesk/core/SdkSettingsService;Lzendesk/core/SettingsStorage;Lzendesk/core/CoreSettingsStorage;Lzendesk/core/ActionHandlerRegistry;Lzendesk/core/Serializer;Lzendesk/core/ZendeskLocaleConverter;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lzendesk/core/ZendeskSettingsProvider;->settingsService:Lzendesk/core/SdkSettingsService;

    .line 62
    iput-object p2, p0, Lzendesk/core/ZendeskSettingsProvider;->settingsStorage:Lzendesk/core/SettingsStorage;

    .line 63
    iput-object p3, p0, Lzendesk/core/ZendeskSettingsProvider;->coreSettingsStorage:Lzendesk/core/CoreSettingsStorage;

    .line 64
    iput-object p4, p0, Lzendesk/core/ZendeskSettingsProvider;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    .line 65
    iput-object p5, p0, Lzendesk/core/ZendeskSettingsProvider;->serializer:Lzendesk/core/Serializer;

    .line 66
    iput-object p6, p0, Lzendesk/core/ZendeskSettingsProvider;->zendeskLocaleConverter:Lzendesk/core/ZendeskLocaleConverter;

    .line 67
    iput-object p7, p0, Lzendesk/core/ZendeskSettingsProvider;->applicationId:Ljava/lang/String;

    .line 68
    iput-object p8, p0, Lzendesk/core/ZendeskSettingsProvider;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lzendesk/core/ZendeskSettingsProvider;)Lzendesk/core/ActionHandlerRegistry;
    .locals 0

    .line 35
    iget-object p0, p0, Lzendesk/core/ZendeskSettingsProvider;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/core/ZendeskSettingsProvider;)Lzendesk/core/SettingsStorage;
    .locals 0

    .line 35
    iget-object p0, p0, Lzendesk/core/ZendeskSettingsProvider;->settingsStorage:Lzendesk/core/SettingsStorage;

    return-object p0
.end method

.method static synthetic access$200(Lzendesk/core/ZendeskSettingsProvider;)Lzendesk/core/CoreSettingsStorage;
    .locals 0

    .line 35
    iget-object p0, p0, Lzendesk/core/ZendeskSettingsProvider;->coreSettingsStorage:Lzendesk/core/CoreSettingsStorage;

    return-object p0
.end method

.method static synthetic access$300(Lzendesk/core/ZendeskSettingsProvider;)Lzendesk/core/Serializer;
    .locals 0

    .line 35
    iget-object p0, p0, Lzendesk/core/ZendeskSettingsProvider;->serializer:Lzendesk/core/Serializer;

    return-object p0
.end method

.method private getSettingsInternal(Ljava/util/Locale;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 185
    :try_start_0
    iget-object v1, p0, Lzendesk/core/ZendeskSettingsProvider;->settingsService:Lzendesk/core/SdkSettingsService;

    iget-object v2, p0, Lzendesk/core/ZendeskSettingsProvider;->zendeskLocaleConverter:Lzendesk/core/ZendeskLocaleConverter;

    .line 187
    invoke-virtual {v2, p1}, Lzendesk/core/ZendeskLocaleConverter;->toHelpCenterLocaleString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lzendesk/core/ZendeskSettingsProvider;->applicationId:Ljava/lang/String;

    .line 186
    invoke-interface {v1, p1, v2}, Lzendesk/core/SdkSettingsService;->getSettings(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 189
    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    .line 191
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 192
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v1

    .line 194
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "ZendeskSdkSettingsProvi"

    const-string v2, "Settings retrieval failed, returning empty map."

    .line 198
    invoke-static {v1, v2, p1}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    return-object p1
.end method

.method private getSettingsInternal(Ljava/util/Locale;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonElement;",
            ">;>;)V"
        }
    .end annotation

    .line 173
    new-instance v0, Lcom/zendesk/service/RetrofitZendeskCallbackAdapter;

    invoke-direct {v0, p2}, Lcom/zendesk/service/RetrofitZendeskCallbackAdapter;-><init>(Lcom/zendesk/service/ZendeskCallback;)V

    .line 176
    iget-object p2, p0, Lzendesk/core/ZendeskSettingsProvider;->zendeskLocaleConverter:Lzendesk/core/ZendeskLocaleConverter;

    invoke-virtual {p2, p1}, Lzendesk/core/ZendeskLocaleConverter;->toHelpCenterLocaleString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 177
    iget-object p2, p0, Lzendesk/core/ZendeskSettingsProvider;->settingsService:Lzendesk/core/SdkSettingsService;

    iget-object v1, p0, Lzendesk/core/ZendeskSettingsProvider;->applicationId:Ljava/lang/String;

    .line 178
    invoke-interface {p2, p1, v1}, Lzendesk/core/SdkSettingsService;->getSettings(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 179
    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method


# virtual methods
.method extractCoreSettings(Ljava/util/Map;)Lzendesk/core/CoreSettings;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonElement;",
            ">;)",
            "Lzendesk/core/CoreSettings;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "core"

    .line 208
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonElement;

    .line 210
    :goto_0
    iget-object v0, p0, Lzendesk/core/ZendeskSettingsProvider;->serializer:Lzendesk/core/Serializer;

    const-class v1, Lzendesk/core/CoreSettings;

    invoke-interface {v0, p1, v1}, Lzendesk/core/Serializer;->deserialize(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/core/CoreSettings;

    if-eqz p1, :cond_1

    return-object p1

    .line 215
    :cond_1
    sget-object p1, Lzendesk/core/ZendeskCoreSettingsStorage;->DEFAULT_CORE_SETTINGS:Lzendesk/core/CoreSettings;

    return-object p1
.end method

.method public getBlipsSettings()Lzendesk/core/BlipsSettings;
    .locals 1

    .line 221
    iget-object v0, p0, Lzendesk/core/ZendeskSettingsProvider;->coreSettingsStorage:Lzendesk/core/CoreSettingsStorage;

    invoke-interface {v0}, Lzendesk/core/CoreSettingsStorage;->getBlipsSettings()Lzendesk/core/BlipsSettings;

    move-result-object v0

    return-object v0
.end method

.method public getCoreSettings()Lzendesk/core/CoreSettings;
    .locals 4

    .line 112
    iget-object v0, p0, Lzendesk/core/ZendeskSettingsProvider;->settingsStorage:Lzendesk/core/SettingsStorage;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-interface {v0, v2, v3, v1}, Lzendesk/core/SettingsStorage;->areSettingsUpToDate(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lzendesk/core/ZendeskSettingsProvider;->coreSettingsStorage:Lzendesk/core/CoreSettingsStorage;

    invoke-interface {v0}, Lzendesk/core/CoreSettingsStorage;->getCoreSettings()Lzendesk/core/CoreSettings;

    move-result-object v0

    return-object v0

    .line 115
    :cond_0
    iget-object v0, p0, Lzendesk/core/ZendeskSettingsProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lzendesk/core/DeviceInfo;->getCurrentLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lzendesk/core/ZendeskSettingsProvider;->getSettingsInternal(Ljava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    new-instance v0, Lzendesk/core/CoreSettings;

    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzendesk/core/CoreSettings;-><init>(Ljava/util/Date;Lzendesk/core/AuthenticationType;)V

    return-object v0

    .line 119
    :cond_1
    iget-object v1, p0, Lzendesk/core/ZendeskSettingsProvider;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    invoke-interface {v1, v0}, Lzendesk/core/ActionHandlerRegistry;->updateSettings(Ljava/util/Map;)V

    .line 120
    iget-object v1, p0, Lzendesk/core/ZendeskSettingsProvider;->settingsStorage:Lzendesk/core/SettingsStorage;

    invoke-interface {v1, v0}, Lzendesk/core/SettingsStorage;->storeRawSettings(Ljava/util/Map;)V

    .line 121
    invoke-virtual {p0, v0}, Lzendesk/core/ZendeskSettingsProvider;->extractCoreSettings(Ljava/util/Map;)Lzendesk/core/CoreSettings;

    move-result-object v0

    return-object v0
.end method

.method public getCoreSettings(Lcom/zendesk/service/ZendeskCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/core/CoreSettings;",
            ">;)V"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lzendesk/core/ZendeskSettingsProvider;->settingsStorage:Lzendesk/core/SettingsStorage;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-interface {v0, v2, v3, v1}, Lzendesk/core/SettingsStorage;->areSettingsUpToDate(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 75
    iget-object v0, p0, Lzendesk/core/ZendeskSettingsProvider;->coreSettingsStorage:Lzendesk/core/CoreSettingsStorage;

    invoke-interface {v0}, Lzendesk/core/CoreSettingsStorage;->getCoreSettings()Lzendesk/core/CoreSettings;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zendesk/service/ZendeskCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lzendesk/core/ZendeskSettingsProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lzendesk/core/DeviceInfo;->getCurrentLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 79
    new-instance v1, Lzendesk/core/ZendeskSettingsProvider$1;

    invoke-direct {v1, p0, p1}, Lzendesk/core/ZendeskSettingsProvider$1;-><init>(Lzendesk/core/ZendeskSettingsProvider;Lcom/zendesk/service/ZendeskCallback;)V

    invoke-direct {p0, v0, v1}, Lzendesk/core/ZendeskSettingsProvider;->getSettingsInternal(Ljava/util/Locale;Lcom/zendesk/service/ZendeskCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getSettingsForSdk(Ljava/lang/String;Ljava/lang/Class;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lzendesk/core/Settings;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/core/SettingsPack<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lzendesk/core/ZendeskSettingsProvider;->settingsStorage:Lzendesk/core/SettingsStorage;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-interface {v0, v2, v3, v1}, Lzendesk/core/SettingsStorage;->areSettingsUpToDate(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    .line 131
    new-instance v0, Lzendesk/core/SettingsPack;

    iget-object v1, p0, Lzendesk/core/ZendeskSettingsProvider;->coreSettingsStorage:Lzendesk/core/CoreSettingsStorage;

    .line 132
    invoke-interface {v1}, Lzendesk/core/CoreSettingsStorage;->getCoreSettings()Lzendesk/core/CoreSettings;

    move-result-object v1

    iget-object v2, p0, Lzendesk/core/ZendeskSettingsProvider;->settingsStorage:Lzendesk/core/SettingsStorage;

    .line 133
    invoke-interface {v2, p1, p2}, Lzendesk/core/SettingsStorage;->getSettings(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/core/Settings;

    invoke-direct {v0, v1, p1}, Lzendesk/core/SettingsPack;-><init>(Lzendesk/core/CoreSettings;Lzendesk/core/Settings;)V

    .line 135
    invoke-virtual {p3, v0}, Lcom/zendesk/service/ZendeskCallback;->onSuccess(Ljava/lang/Object;)V

    .line 136
    iget-object p1, p0, Lzendesk/core/ZendeskSettingsProvider;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    iget-object p2, p0, Lzendesk/core/ZendeskSettingsProvider;->settingsStorage:Lzendesk/core/SettingsStorage;

    invoke-interface {p2}, Lzendesk/core/SettingsStorage;->getRawSettings()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Lzendesk/core/ActionHandlerRegistry;->updateSettings(Ljava/util/Map;)V

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lzendesk/core/ZendeskSettingsProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lzendesk/core/DeviceInfo;->getCurrentLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Lzendesk/core/ZendeskSettingsProvider$2;

    invoke-direct {v1, p0, p3, p1, p2}, Lzendesk/core/ZendeskSettingsProvider$2;-><init>(Lzendesk/core/ZendeskSettingsProvider;Lcom/zendesk/service/ZendeskCallback;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1}, Lzendesk/core/ZendeskSettingsProvider;->getSettingsInternal(Ljava/util/Locale;Lcom/zendesk/service/ZendeskCallback;)V

    :cond_1
    :goto_0
    return-void
.end method
