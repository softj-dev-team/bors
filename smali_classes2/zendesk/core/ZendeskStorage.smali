.class Lzendesk/core/ZendeskStorage;
.super Ljava/lang/Object;
.source "ZendeskStorage.java"

# interfaces
.implements Lzendesk/core/Storage;


# static fields
.field private static final SDK_HASH_FORMAT:Ljava/lang/String; = "%s_%s_%s"

.field private static final SDK_HASH_KEY:Ljava/lang/String; = "sdk_hash"


# instance fields
.field private final memoryCache:Lzendesk/core/MemoryCache;

.field private final sdkDetailsStorage:Lzendesk/core/BaseStorage;

.field private final sessionStorage:Lzendesk/core/SessionStorage;

.field private final settingsStorage:Lzendesk/core/SettingsStorage;


# direct methods
.method constructor <init>(Lzendesk/core/SessionStorage;Lzendesk/core/SettingsStorage;Lzendesk/core/BaseStorage;Lzendesk/core/MemoryCache;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lzendesk/core/ZendeskStorage;->sessionStorage:Lzendesk/core/SessionStorage;

    .line 28
    iput-object p2, p0, Lzendesk/core/ZendeskStorage;->settingsStorage:Lzendesk/core/SettingsStorage;

    .line 29
    iput-object p3, p0, Lzendesk/core/ZendeskStorage;->sdkDetailsStorage:Lzendesk/core/BaseStorage;

    .line 30
    iput-object p4, p0, Lzendesk/core/ZendeskStorage;->memoryCache:Lzendesk/core/MemoryCache;

    return-void
.end method

.method private generateSdkHash(Lzendesk/core/ApplicationConfiguration;)Ljava/lang/String;
    .locals 4

    .line 59
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lzendesk/core/ApplicationConfiguration;->getZendeskUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 60
    invoke-virtual {p1}, Lzendesk/core/ApplicationConfiguration;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lzendesk/core/ApplicationConfiguration;->getOauthClientId()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string p1, "%s_%s_%s"

    .line 59
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-static {p1}, Lcom/zendesk/util/DigestUtils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 40
    iget-object v0, p0, Lzendesk/core/ZendeskStorage;->sessionStorage:Lzendesk/core/SessionStorage;

    invoke-interface {v0}, Lzendesk/core/SessionStorage;->clear()V

    .line 41
    iget-object v0, p0, Lzendesk/core/ZendeskStorage;->settingsStorage:Lzendesk/core/SettingsStorage;

    invoke-interface {v0}, Lzendesk/core/SettingsStorage;->clear()V

    .line 42
    iget-object v0, p0, Lzendesk/core/ZendeskStorage;->memoryCache:Lzendesk/core/MemoryCache;

    invoke-interface {v0}, Lzendesk/core/MemoryCache;->clear()V

    return-void
.end method

.method public getSessionStorage()Lzendesk/core/SessionStorage;
    .locals 1

    .line 35
    iget-object v0, p0, Lzendesk/core/ZendeskStorage;->sessionStorage:Lzendesk/core/SessionStorage;

    return-object v0
.end method

.method public hasSdkConfigChanged(Lzendesk/core/ApplicationConfiguration;)Z
    .locals 2

    .line 47
    invoke-direct {p0, p1}, Lzendesk/core/ZendeskStorage;->generateSdkHash(Lzendesk/core/ApplicationConfiguration;)Ljava/lang/String;

    move-result-object p1

    .line 48
    iget-object v0, p0, Lzendesk/core/ZendeskStorage;->sdkDetailsStorage:Lzendesk/core/BaseStorage;

    const-string v1, "sdk_hash"

    invoke-interface {v0, v1}, Lzendesk/core/BaseStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public storeSdkHash(Lzendesk/core/ApplicationConfiguration;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lzendesk/core/ZendeskStorage;->sdkDetailsStorage:Lzendesk/core/BaseStorage;

    invoke-direct {p0, p1}, Lzendesk/core/ZendeskStorage;->generateSdkHash(Lzendesk/core/ApplicationConfiguration;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "sdk_hash"

    invoke-interface {v0, v1, p1}, Lzendesk/core/BaseStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
