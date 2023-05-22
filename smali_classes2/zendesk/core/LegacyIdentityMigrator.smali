.class Lzendesk/core/LegacyIdentityMigrator;
.super Ljava/lang/Object;
.source "LegacyIdentityMigrator.java"


# static fields
.field private static final ANONYMOUS_EMAIL_KEY:Ljava/lang/String; = "email"

.field private static final ANONYMOUS_NAME_KEY:Ljava/lang/String; = "name"

.field private static final JWT_TOKEN_KEY:Ljava/lang/String; = "token"

.field private static final LEGACY_ACCESS_TOKEN_KEY:Ljava/lang/String; = "access_token"

.field private static final LEGACY_ACCESS_TOKEN_USER_ID_KEY:Ljava/lang/String; = "user_id"

.field private static final LEGACY_IDENTITY_KEY:Ljava/lang/String; = "zendesk-identity"

.field private static final LEGACY_IDENTITY_TYPE_KEY:Ljava/lang/String; = "zendesk-identity-type"

.field private static final LEGACY_PUSH_DEVICE_ID_KEY:Ljava/lang/String; = "identifier"

.field private static final LEGACY_PUSH_RESPONSE_KEY:Ljava/lang/String; = "pushRegResponseIdentifier"

.field private static final LEGACY_SDK_GUID_KEY:Ljava/lang/String; = "uuid"

.field private static final LEGACY_STORED_TOKEN_KEY:Ljava/lang/String; = "stored_token"

.field private static final LEGACY_USER_ID_KEY:Ljava/lang/String; = "user_id"

.field private static final LOG_TAG:Ljava/lang/String; = "LegacyIdentityStorage"


# instance fields
.field private identityManager:Lzendesk/core/IdentityManager;

.field private identityStorage:Lzendesk/core/IdentityStorage;

.field private legacyIdentityStorage:Lzendesk/core/SharedPreferencesStorage;

.field private legacyPushStorage:Lzendesk/core/SharedPreferencesStorage;

.field private pushDeviceIdStorage:Lzendesk/core/PushDeviceIdStorage;


# direct methods
.method constructor <init>(Lzendesk/core/SharedPreferencesStorage;Lzendesk/core/SharedPreferencesStorage;Lzendesk/core/IdentityStorage;Lzendesk/core/IdentityManager;Lzendesk/core/PushDeviceIdStorage;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lzendesk/core/LegacyIdentityMigrator;->legacyIdentityStorage:Lzendesk/core/SharedPreferencesStorage;

    .line 73
    iput-object p2, p0, Lzendesk/core/LegacyIdentityMigrator;->legacyPushStorage:Lzendesk/core/SharedPreferencesStorage;

    .line 74
    iput-object p3, p0, Lzendesk/core/LegacyIdentityMigrator;->identityStorage:Lzendesk/core/IdentityStorage;

    .line 75
    iput-object p4, p0, Lzendesk/core/LegacyIdentityMigrator;->identityManager:Lzendesk/core/IdentityManager;

    .line 76
    iput-object p5, p0, Lzendesk/core/LegacyIdentityMigrator;->pushDeviceIdStorage:Lzendesk/core/PushDeviceIdStorage;

    return-void
.end method

.method private clear()V
    .locals 2

    .line 264
    iget-object v0, p0, Lzendesk/core/LegacyIdentityMigrator;->legacyIdentityStorage:Lzendesk/core/SharedPreferencesStorage;

    const-string v1, "zendesk-identity-type"

    invoke-virtual {v0, v1}, Lzendesk/core/SharedPreferencesStorage;->remove(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lzendesk/core/LegacyIdentityMigrator;->legacyIdentityStorage:Lzendesk/core/SharedPreferencesStorage;

    const-string v1, "zendesk-identity"

    invoke-virtual {v0, v1}, Lzendesk/core/SharedPreferencesStorage;->remove(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lzendesk/core/LegacyIdentityMigrator;->legacyIdentityStorage:Lzendesk/core/SharedPreferencesStorage;

    const-string v1, "stored_token"

    invoke-virtual {v0, v1}, Lzendesk/core/SharedPreferencesStorage;->remove(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lzendesk/core/LegacyIdentityMigrator;->legacyIdentityStorage:Lzendesk/core/SharedPreferencesStorage;

    const-string v1, "uuid"

    invoke-virtual {v0, v1}, Lzendesk/core/SharedPreferencesStorage;->remove(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lzendesk/core/LegacyIdentityMigrator;->legacyIdentityStorage:Lzendesk/core/SharedPreferencesStorage;

    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Lzendesk/core/SharedPreferencesStorage;->remove(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lzendesk/core/LegacyIdentityMigrator;->legacyPushStorage:Lzendesk/core/SharedPreferencesStorage;

    const-string v1, "pushRegResponseIdentifier"

    invoke-virtual {v0, v1}, Lzendesk/core/SharedPreferencesStorage;->remove(Ljava/lang/String;)V

    return-void
.end method

.method private getLegacyAccessToken()Lzendesk/core/AccessToken;
    .locals 5

    .line 203
    iget-object v0, p0, Lzendesk/core/LegacyIdentityMigrator;->legacyIdentityStorage:Lzendesk/core/SharedPreferencesStorage;

    const-string v1, "stored_token"

    invoke-virtual {v0, v1}, Lzendesk/core/SharedPreferencesStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v0}, Lcom/zendesk/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 209
    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 210
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 214
    :cond_1
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "access_token"

    .line 215
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    const-string v3, "user_id"

    .line 216
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 219
    new-instance v3, Lzendesk/core/AccessToken;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lzendesk/core/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :cond_2
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "LegacyIdentityStorage"

    const-string v4, "Unable to read legacy AccessToken."

    .line 224
    invoke-static {v3, v4, v0, v1}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v2
.end method

.method private getLegacyIdentity()Lzendesk/core/Identity;
    .locals 3

    .line 122
    invoke-direct {p0}, Lzendesk/core/LegacyIdentityMigrator;->getLegacyIdentityType()Lzendesk/core/AuthenticationType;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 127
    :cond_0
    sget-object v2, Lzendesk/core/LegacyIdentityMigrator$1;->$SwitchMap$zendesk$core$AuthenticationType:[I

    invoke-virtual {v0}, Lzendesk/core/AuthenticationType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return-object v1

    .line 131
    :cond_1
    invoke-direct {p0}, Lzendesk/core/LegacyIdentityMigrator;->readLegacyJwtIdentity()Lzendesk/core/JwtIdentity;

    move-result-object v0

    return-object v0

    .line 129
    :cond_2
    invoke-direct {p0}, Lzendesk/core/LegacyIdentityMigrator;->readLegacyAnonymousIdentity()Lzendesk/core/AnonymousIdentity;

    move-result-object v0

    return-object v0
.end method

.method private getLegacyIdentityType()Lzendesk/core/AuthenticationType;
    .locals 2

    .line 198
    iget-object v0, p0, Lzendesk/core/LegacyIdentityMigrator;->legacyIdentityStorage:Lzendesk/core/SharedPreferencesStorage;

    const-string v1, "zendesk-identity-type"

    invoke-virtual {v0, v1}, Lzendesk/core/SharedPreferencesStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzendesk/core/AuthenticationType;->getAuthType(Ljava/lang/String;)Lzendesk/core/AuthenticationType;

    move-result-object v0

    return-object v0
.end method

.method private getLegacyPushId()Ljava/lang/String;
    .locals 5

    .line 240
    iget-object v0, p0, Lzendesk/core/LegacyIdentityMigrator;->legacyPushStorage:Lzendesk/core/SharedPreferencesStorage;

    const-string v1, "pushRegResponseIdentifier"

    invoke-virtual {v0, v1}, Lzendesk/core/SharedPreferencesStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-static {v0}, Lcom/zendesk/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 244
    :try_start_0
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "identifier"

    .line 250
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 253
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_1
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "LegacyIdentityStorage"

    const-string v4, "Unable to read legacy push device ID."

    .line 256
    invoke-static {v3, v4, v0, v1}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    return-object v2
.end method

.method private getLegacySdkGuid()Ljava/lang/String;
    .locals 2

    .line 231
    iget-object v0, p0, Lzendesk/core/LegacyIdentityMigrator;->legacyIdentityStorage:Lzendesk/core/SharedPreferencesStorage;

    const-string v1, "uuid"

    invoke-virtual {v0, v1}, Lzendesk/core/SharedPreferencesStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLegacyUserId()J
    .locals 2

    .line 235
    iget-object v0, p0, Lzendesk/core/LegacyIdentityMigrator;->legacyIdentityStorage:Lzendesk/core/SharedPreferencesStorage;

    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Lzendesk/core/SharedPreferencesStorage;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private readLegacyAnonymousIdentity()Lzendesk/core/AnonymousIdentity;
    .locals 5

    .line 139
    iget-object v0, p0, Lzendesk/core/LegacyIdentityMigrator;->legacyIdentityStorage:Lzendesk/core/SharedPreferencesStorage;

    const-string v1, "zendesk-identity"

    invoke-virtual {v0, v1}, Lzendesk/core/SharedPreferencesStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/zendesk/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 145
    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 146
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 152
    new-instance v1, Lzendesk/core/AnonymousIdentity$Builder;

    invoke-direct {v1}, Lzendesk/core/AnonymousIdentity$Builder;-><init>()V

    const-string v3, "email"

    .line 154
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 156
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lzendesk/core/AnonymousIdentity$Builder;->withEmailIdentifier(Ljava/lang/String;)Lzendesk/core/AnonymousIdentity$Builder;

    :cond_2
    const-string v3, "name"

    .line 159
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 161
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lzendesk/core/AnonymousIdentity$Builder;->withNameIdentifier(Ljava/lang/String;)Lzendesk/core/AnonymousIdentity$Builder;

    .line 164
    :cond_3
    invoke-virtual {v1}, Lzendesk/core/AnonymousIdentity$Builder;->build()Lzendesk/core/Identity;

    move-result-object v0

    check-cast v0, Lzendesk/core/AnonymousIdentity;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_4
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "LegacyIdentityStorage"

    const-string v4, "Unable to read legacy AnonymousIdentity."

    .line 166
    invoke-static {v3, v4, v0, v1}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v2
.end method

.method private readLegacyJwtIdentity()Lzendesk/core/JwtIdentity;
    .locals 5

    .line 172
    iget-object v0, p0, Lzendesk/core/LegacyIdentityMigrator;->legacyIdentityStorage:Lzendesk/core/SharedPreferencesStorage;

    const-string v1, "zendesk-identity"

    invoke-virtual {v0, v1}, Lzendesk/core/SharedPreferencesStorage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v0}, Lcom/zendesk/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 178
    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    .line 183
    :cond_1
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "token"

    .line 185
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 186
    new-instance v1, Lzendesk/core/JwtIdentity;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lzendesk/core/JwtIdentity;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    :cond_2
    return-object v2

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "LegacyIdentityStorage"

    const-string v4, "Unable to read legacy JwtIdentity."

    .line 191
    invoke-static {v3, v4, v0, v1}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method checkAndMigrateIdentity()V
    .locals 5

    .line 81
    invoke-direct {p0}, Lzendesk/core/LegacyIdentityMigrator;->getLegacyIdentity()Lzendesk/core/Identity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lzendesk/core/LegacyIdentityMigrator;->identityStorage:Lzendesk/core/IdentityStorage;

    invoke-interface {v1, v0}, Lzendesk/core/IdentityStorage;->storeIdentity(Lzendesk/core/Identity;)V

    .line 90
    invoke-direct {p0}, Lzendesk/core/LegacyIdentityMigrator;->getLegacyUserId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 92
    iget-object v2, p0, Lzendesk/core/LegacyIdentityMigrator;->identityStorage:Lzendesk/core/IdentityStorage;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Lzendesk/core/IdentityStorage;->storeUserId(Ljava/lang/Long;)V

    .line 96
    :cond_1
    invoke-direct {p0}, Lzendesk/core/LegacyIdentityMigrator;->getLegacyAccessToken()Lzendesk/core/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 98
    iget-object v1, p0, Lzendesk/core/LegacyIdentityMigrator;->identityManager:Lzendesk/core/IdentityManager;

    invoke-interface {v1, v0}, Lzendesk/core/IdentityManager;->storeAccessToken(Lzendesk/core/AccessToken;)V

    .line 102
    :cond_2
    invoke-direct {p0}, Lzendesk/core/LegacyIdentityMigrator;->getLegacyIdentityType()Lzendesk/core/AuthenticationType;

    move-result-object v0

    sget-object v1, Lzendesk/core/AuthenticationType;->ANONYMOUS:Lzendesk/core/AuthenticationType;

    if-ne v0, v1, :cond_3

    .line 103
    invoke-direct {p0}, Lzendesk/core/LegacyIdentityMigrator;->getLegacySdkGuid()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/zendesk/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    iget-object v1, p0, Lzendesk/core/LegacyIdentityMigrator;->identityStorage:Lzendesk/core/IdentityStorage;

    invoke-interface {v1, v0}, Lzendesk/core/IdentityStorage;->storeSdkGuid(Ljava/lang/String;)V

    .line 110
    :cond_3
    invoke-direct {p0}, Lzendesk/core/LegacyIdentityMigrator;->getLegacyPushId()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/zendesk/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 112
    iget-object v1, p0, Lzendesk/core/LegacyIdentityMigrator;->pushDeviceIdStorage:Lzendesk/core/PushDeviceIdStorage;

    invoke-interface {v1, v0}, Lzendesk/core/PushDeviceIdStorage;->storeRegisteredDeviceId(Ljava/lang/String;)V

    .line 116
    :cond_4
    invoke-direct {p0}, Lzendesk/core/LegacyIdentityMigrator;->clear()V

    return-void
.end method
