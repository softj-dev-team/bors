.class public Lio/branch/referral/PrefHelper;
.super Ljava/lang/Object;
.source "PrefHelper.java"


# static fields
.field static final BRANCH_BASE_URL_V1:Ljava/lang/String; = "https://api.branch.io/"

.field static final BRANCH_BASE_URL_V2:Ljava/lang/String; = "https://api2.branch.io/"

.field static final BRANCH_CDN_BASE_URL:Ljava/lang/String; = "https://cdn.branch.io/"

.field static final CONNECT_TIMEOUT:I = 0x2710

.field static final DEFAULT_VALID_WINDOW_FOR_REFERRER_GCLID:J = 0x9a7ec800L

.field private static final INTERVAL_RETRY:I = 0x3e8

.field private static final KEY_ACTIONS:Ljava/lang/String; = "bnc_actions"

.field static final KEY_AD_NETWORK_CALLOUTS_DISABLED:Ljava/lang/String; = "bnc_ad_network_callouts_disabled"

.field private static final KEY_APP_LINK:Ljava/lang/String; = "bnc_app_link"

.field private static final KEY_APP_VERSION:Ljava/lang/String; = "bnc_app_version"

.field private static final KEY_BRANCH_KEY:Ljava/lang/String; = "bnc_branch_key"

.field private static final KEY_BRANCH_VIEW_NUM_OF_USE:Ljava/lang/String; = "bnc_branch_view_use"

.field private static final KEY_BUCKETS:Ljava/lang/String; = "bnc_buckets"

.field private static final KEY_CONNECT_TIMEOUT:Ljava/lang/String; = "bnc_connect_timeout"

.field private static final KEY_CREDIT_BASE:Ljava/lang/String; = "bnc_credit_base_"

.field private static final KEY_DEVICE_FINGERPRINT_ID:Ljava/lang/String; = "bnc_device_fingerprint_id"

.field private static final KEY_EXTERNAL_INTENT_EXTRA:Ljava/lang/String; = "bnc_external_intent_extra"

.field private static final KEY_EXTERNAL_INTENT_URI:Ljava/lang/String; = "bnc_external_intent_uri"

.field private static final KEY_GCLID_EXPIRATION_DATE:Ljava/lang/String; = "bnc_gclid_expiration_date"

.field private static final KEY_GCLID_JSON_OBJECT:Ljava/lang/String; = "bnc_gclid_json_object"

.field private static final KEY_GCLID_VALID_FOR_WINDOW:Ljava/lang/String; = "bnc_gclid_expiration_window"

.field private static final KEY_GCLID_VALUE:Ljava/lang/String; = "bnc_gclid_value"

.field private static final KEY_GOOGLE_PLAY_INSTALL_REFERRER_EXTRA:Ljava/lang/String; = "bnc_google_play_install_referrer_extras"

.field private static final KEY_GOOGLE_SEARCH_INSTALL_IDENTIFIER:Ljava/lang/String; = "bnc_google_search_install_identifier"

.field private static final KEY_IDENTITY:Ljava/lang/String; = "bnc_identity"

.field private static final KEY_IDENTITY_ID:Ljava/lang/String; = "bnc_identity_id"

.field private static final KEY_INITIAL_REFERRER:Ljava/lang/String; = "bnc_initial_referrer"

.field static final KEY_INSTALL_BEGIN_TS:Ljava/lang/String; = "bnc_install_begin_ts"

.field private static final KEY_INSTALL_PARAMS:Ljava/lang/String; = "bnc_install_params"

.field private static final KEY_INSTALL_REFERRER:Ljava/lang/String; = "bnc_install_referrer"

.field private static final KEY_IS_FULL_APP_CONVERSION:Ljava/lang/String; = "bnc_is_full_app_conversion"

.field private static final KEY_IS_TRIGGERED_BY_FB_APP_LINK:Ljava/lang/String; = "bnc_triggered_by_fb_app_link"

.field static final KEY_LAST_KNOWN_UPDATE_TIME:Ljava/lang/String; = "bnc_last_known_update_time"

.field private static final KEY_LAST_READ_SYSTEM:Ljava/lang/String; = "bnc_system_read_date"

.field private static final KEY_LAST_STRONG_MATCH_TIME:Ljava/lang/String; = "bnc_branch_strong_match_time"

.field private static final KEY_LATD_ATTRIBUTION_WINDOW:Ljava/lang/String; = "bnc_latd_attributon_window"

.field private static final KEY_LIMIT_FACEBOOK_TRACKING:Ljava/lang/String; = "bnc_limit_facebook_tracking"

.field private static final KEY_LINK_CLICK_ID:Ljava/lang/String; = "bnc_link_click_id"

.field private static final KEY_LINK_CLICK_IDENTIFIER:Ljava/lang/String; = "bnc_link_click_identifier"

.field static final KEY_ORIGINAL_INSTALL_TIME:Ljava/lang/String; = "bnc_original_install_time"

.field static final KEY_PREVIOUS_UPDATE_TIME:Ljava/lang/String; = "bnc_previous_update_time"

.field private static final KEY_PUSH_IDENTIFIER:Ljava/lang/String; = "bnc_push_identifier"

.field private static final KEY_RANDOMIZED_BUNDLE_TOKEN:Ljava/lang/String; = "bnc_randomized_bundle_token"

.field private static final KEY_RANDOMIZED_DEVICE_TOKEN:Ljava/lang/String; = "bnc_randomized_device_token"

.field static final KEY_RANDOMLY_GENERATED_UUID:Ljava/lang/String; = "bnc_randomly_generated_uuid"

.field static final KEY_REFERRER_CLICK_TS:Ljava/lang/String; = "bnc_referrer_click_ts"

.field private static final KEY_RETRY_COUNT:Ljava/lang/String; = "bnc_retry_count"

.field private static final KEY_RETRY_INTERVAL:Ljava/lang/String; = "bnc_retry_interval"

.field private static final KEY_SESSION_ID:Ljava/lang/String; = "bnc_session_id"

.field private static final KEY_SESSION_PARAMS:Ljava/lang/String; = "bnc_session_params"

.field private static final KEY_TASK_TIMEOUT:Ljava/lang/String; = "bnc_task_timeout"

.field private static final KEY_TIMEOUT:Ljava/lang/String; = "bnc_timeout"

.field private static final KEY_TOTAL_BASE:Ljava/lang/String; = "bnc_total_base_"

.field static final KEY_TRACKING_STATE:Ljava/lang/String; = "bnc_tracking_state"

.field private static final KEY_UNIQUE_BASE:Ljava/lang/String; = "bnc_balance_base_"

.field private static final KEY_USER_URL:Ljava/lang/String; = "bnc_user_url"

.field private static final MAX_RETRIES:I = 0x3

.field static final MAX_VALID_WINDOW_FOR_REFERRER_GCLID:J = 0x174876e800L

.field static final MIN_VALID_WINDOW_FOR_REFERRER_GCLID:J = 0x0L

.field public static final NO_STRING_VALUE:Ljava/lang/String; = "bnc_no_value"

.field private static final SHARED_PREF_FILE:Ljava/lang/String; = "branch_referral_shared_pref"

.field private static final TAG:Ljava/lang/String; = "BranchSDK"

.field static final TASK_TIMEOUT:I = 0x3c8c

.field static final TIMEOUT:I = 0x157c

.field private static customCDNBaseURL_:Ljava/lang/String; = null

.field private static customServerURL_:Ljava/lang/String; = null

.field private static enableLogging_:Z = false

.field private static prefHelper_:Lio/branch/referral/PrefHelper;


# instance fields
.field private final appSharedPrefs_:Landroid/content/SharedPreferences;

.field private final installMetadata:Lorg/json/JSONObject;

.field final partnerParams_:Lio/branch/referral/BranchPartnerParameters;

.field private prefsEditor_:Landroid/content/SharedPreferences$Editor;

.field private final requestMetadata:Lorg/json/JSONObject;

.field private final secondaryRequestMetadata:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lio/branch/referral/PrefHelper;->requestMetadata:Lorg/json/JSONObject;

    .line 154
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lio/branch/referral/PrefHelper;->installMetadata:Lorg/json/JSONObject;

    .line 159
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lio/branch/referral/PrefHelper;->secondaryRequestMetadata:Lorg/json/JSONObject;

    .line 174
    new-instance v0, Lio/branch/referral/BranchPartnerParameters;

    invoke-direct {v0}, Lio/branch/referral/BranchPartnerParameters;-><init>()V

    iput-object v0, p0, Lio/branch/referral/PrefHelper;->partnerParams_:Lio/branch/referral/BranchPartnerParameters;

    const-string v0, "branch_referral_shared_pref"

    const/4 v1, 0x0

    .line 183
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lio/branch/referral/PrefHelper;->appSharedPrefs_:Landroid/content/SharedPreferences;

    .line 184
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lio/branch/referral/PrefHelper;->prefsEditor_:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static Debug(Ljava/lang/String;)V
    .locals 1

    .line 1366
    sget-boolean v0, Lio/branch/referral/PrefHelper;->enableLogging_:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BranchSDK"

    .line 1367
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static LogAlways(Ljava/lang/String;)V
    .locals 1

    .line 1378
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BranchSDK"

    .line 1379
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static LogException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 1372
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BranchSDK"

    .line 1373
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private clearPrefOnBranchKeyChange()V
    .locals 5

    .line 1242
    invoke-virtual {p0}, Lio/branch/referral/PrefHelper;->getLinkClickID()Ljava/lang/String;

    move-result-object v0

    .line 1243
    invoke-virtual {p0}, Lio/branch/referral/PrefHelper;->getLinkClickIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 1244
    invoke-virtual {p0}, Lio/branch/referral/PrefHelper;->getAppLink()Ljava/lang/String;

    move-result-object v2

    .line 1245
    invoke-virtual {p0}, Lio/branch/referral/PrefHelper;->getPushIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 1246
    iget-object v4, p0, Lio/branch/referral/PrefHelper;->prefsEditor_:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1248
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->setLinkClickID(Ljava/lang/String;)V

    .line 1249
    invoke-virtual {p0, v1}, Lio/branch/referral/PrefHelper;->setLinkClickIdentifier(Ljava/lang/String;)V

    .line 1250
    invoke-virtual {p0, v2}, Lio/branch/referral/PrefHelper;->setAppLink(Ljava/lang/String;)V

    .line 1251
    invoke-virtual {p0, v3}, Lio/branch/referral/PrefHelper;->setPushIdentifier(Ljava/lang/String;)V

    .line 1252
    iget-object v0, p0, Lio/branch/referral/PrefHelper;->prefsEditor_:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private deserializeString(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1063
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ","

    .line 1064
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1065
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method static enableLogging(Z)V
    .locals 0

    .line 1386
    sput-boolean p0, Lio/branch/referral/PrefHelper;->enableLogging_:Z

    return-void
.end method

.method private getActions()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "bnc_actions"

    .line 938
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bnc_no_value"

    .line 939
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 940
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 942
    :cond_0
    invoke-direct {p0, v0}, Lio/branch/referral/PrefHelper;->deserializeString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static getCDNBaseUrl()Ljava/lang/String;
    .locals 1

    .line 258
    sget-object v0, Lio/branch/referral/PrefHelper;->customCDNBaseURL_:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    sget-object v0, Lio/branch/referral/PrefHelper;->customCDNBaseURL_:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "https://cdn.branch.io/"

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lio/branch/referral/PrefHelper;
    .locals 1

    .line 197
    sget-object v0, Lio/branch/referral/PrefHelper;->prefHelper_:Lio/branch/referral/PrefHelper;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Lio/branch/referral/PrefHelper;

    invoke-direct {v0, p0}, Lio/branch/referral/PrefHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/branch/referral/PrefHelper;->prefHelper_:Lio/branch/referral/PrefHelper;

    .line 200
    :cond_0
    sget-object p0, Lio/branch/referral/PrefHelper;->prefHelper_:Lio/branch/referral/PrefHelper;

    return-object p0
.end method

.method static isValidBranchKey(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 1394
    invoke-static {}, Lio/branch/referral/BranchUtil;->isTestModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key_test_"

    goto :goto_0

    :cond_0
    const-string v0, "key_"

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method static loadPartnerParams(Lorg/json/JSONObject;Lio/branch/referral/BranchPartnerParameters;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1404
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1405
    invoke-virtual {p1}, Lio/branch/referral/BranchPartnerParameters;->allParams()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1406
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1407
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1408
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 1410
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1412
    :cond_2
    sget-object p1, Lio/branch/referral/Defines$Jsonkey;->PartnerData:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private serializeArrayList(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1055
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1056
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1058
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static setAPIUrl(Ljava/lang/String;)V
    .locals 0

    .line 221
    sput-object p0, Lio/branch/referral/PrefHelper;->customServerURL_:Ljava/lang/String;

    return-void
.end method

.method private setActions(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 947
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "bnc_actions"

    if-nez v0, :cond_0

    const-string p1, "bnc_no_value"

    .line 948
    invoke-virtual {p0, v1, p1}, Lio/branch/referral/PrefHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 950
    :cond_0
    invoke-direct {p0, p1}, Lio/branch/referral/PrefHelper;->serializeArrayList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lio/branch/referral/PrefHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static setCDNBaseUrl(Ljava/lang/String;)V
    .locals 0

    .line 248
    sput-object p0, Lio/branch/referral/PrefHelper;->customCDNBaseURL_:Ljava/lang/String;

    return-void
.end method

.method static shutDown()V
    .locals 2

    .line 205
    sget-object v0, Lio/branch/referral/PrefHelper;->prefHelper_:Lio/branch/referral/PrefHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 206
    iput-object v1, v0, Lio/branch/referral/PrefHelper;->prefsEditor_:Landroid/content/SharedPreferences$Editor;

    :cond_0
    const/4 v0, 0x0

    .line 210
    sput-boolean v0, Lio/branch/referral/PrefHelper;->enableLogging_:Z

    .line 211
    sput-object v1, Lio/branch/referral/PrefHelper;->prefHelper_:Lio/branch/referral/PrefHelper;

    .line 212
    sput-object v1, Lio/branch/referral/PrefHelper;->customServerURL_:Ljava/lang/String;

    .line 213
    sput-object v1, Lio/branch/referral/PrefHelper;->customCDNBaseURL_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method addInstallMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1286
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/branch/referral/PrefHelper;->installMetadata:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method addSecondaryRequestMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1324
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/branch/referral/PrefHelper;->secondaryRequestMetadata:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public clearSystemReadStatus()V
    .locals 4

    .line 878
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 879
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-string v2, "bnc_system_read_date"

    invoke-virtual {p0, v2, v0, v1}, Lio/branch/referral/PrefHelper;->setLong(Ljava/lang/String;J)V

    return-void
.end method

.method public clearUserValues()V
    .locals 3

    .line 902
    invoke-direct {p0}, Lio/branch/referral/PrefHelper;->getActions()Ljava/util/ArrayList;

    move-result-object v0

    .line 903
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 904
    invoke-virtual {p0, v1, v2}, Lio/branch/referral/PrefHelper;->setActionTotalCount(Ljava/lang/String;I)V

    .line 905
    invoke-virtual {p0, v1, v2}, Lio/branch/referral/PrefHelper;->setActionUniqueCount(Ljava/lang/String;I)V

    goto :goto_0

    .line 907
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lio/branch/referral/PrefHelper;->setActions(Ljava/util/ArrayList;)V

    return-void
.end method

.method public getAPIBaseUrl()Ljava/lang/String;
    .locals 2

    .line 232
    sget-object v0, Lio/branch/referral/PrefHelper;->customServerURL_:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    sget-object v0, Lio/branch/referral/PrefHelper;->customServerURL_:Ljava/lang/String;

    return-object v0

    .line 236
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    const-string v0, "https://api2.branch.io/"

    return-object v0

    :cond_1
    const-string v0, "https://api.branch.io/"

    return-object v0
.end method

.method public getActionTotalCount(Ljava/lang/String;)I
    .locals 2

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bnc_total_base_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/branch/referral/PrefHelper;->getInteger(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getActionUniqueCount(Ljava/lang/String;)I
    .locals 2

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bnc_balance_base_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/branch/referral/PrefHelper;->getInteger(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getAdNetworkCalloutsDisabled()Z
    .locals 1

    const-string v0, "bnc_ad_network_callouts_disabled"

    .line 584
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAppLink()Ljava/lang/String;
    .locals 1

    const-string v0, "bnc_app_link"

    .line 765
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "bnc_app_version"

    .line 377
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBool(Ljava/lang/String;)Z
    .locals 2

    .line 1153
    iget-object v0, p0, Lio/branch/referral/PrefHelper;->appSharedPrefs_:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBranchKey()Ljava/lang/String;
    .locals 1

    const-string v0, "bnc_branch_key"

    .line 404
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBranchViewUsageCount(Ljava/lang/String;)I
    .locals 2

    .line 1213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bnc_branch_view_use_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 1214
    invoke-virtual {p0, p1, v0}, Lio/branch/referral/PrefHelper;->getInteger(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getConnectTimeout()I
    .locals 2

    const-string v0, "bnc_connect_timeout"

    const/16 v1, 0x2710

    .line 314
    invoke-virtual {p0, v0, v1}, Lio/branch/referral/PrefHelper;->getInteger(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCreditCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getCreditCount(Ljava/lang/String;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public getExternalIntentExtra()Ljava/lang/String;
    .locals 1

    const-string v0, "bnc_external_intent_extra"

    .line 621
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalIntentUri()Ljava/lang/String;
    .locals 1

    const-string v0, "bnc_external_intent_uri"

    .line 602
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 2

    .line 1133
    iget-object v0, p0, Lio/branch/referral/PrefHelper;->appSharedPrefs_:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getGooglePlayReferrer()Ljava/lang/String;
    .locals 1

    const-string v0, "bnc_google_play_install_referrer_extras"

    .line 677
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGoogleSearchInstallIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "bnc_google_search_install_identifier"

    .line 659
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    const-string v0, "bnc_identity"

    .line 514
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitialReferrer()Ljava/lang/String;
    .locals 1

    const-string v0, "bnc_initial_referrer"

    .line 1047
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getInstallMetaData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1302
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/branch/referral/PrefHelper;->installMetadata:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public getInstallMetadata()Lorg/json/JSONObject;
    .locals 1

    .line 1309
    iget-object v0, p0, Lio/branch/referral/PrefHelper;->installMetadata:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getInstallParams()Ljava/lang/String;
    .locals 1

    const-string v0, "bnc_install_params"

    .line 834
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstallReferrerParams()Ljava/lang/String;
    .locals 1

    const-string v0, "bnc_install_referrer"

    .line 852
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInteger(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 1095
    invoke-virtual {p0, p1, v0}, Lio/branch/referral/PrefHelper;->getInteger(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getInteger(Ljava/lang/String;I)I
    .locals 1

    .line 1109
    iget-object v0, p0, Lio/branch/referral/PrefHelper;->appSharedPrefs_:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getIsAppLinkTriggeredInit()Z
    .locals 1

    const-string v0, "bnc_triggered_by_fb_app_link"

    .line 566
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getLATDAttributionWindow()I
    .locals 2

    const-string v0, "bnc_latd_attributon_window"

    const/4 v1, -0x1

    .line 1028
    invoke-virtual {p0, v0, v1}, Lio/branch/referral/PrefHelper;->getInteger(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastStrongMatchTime()J
    .locals 2

    const-string v0, "bnc_branch_strong_match_time"

    .line 1232
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLinkClickID()Ljava/lang/String;
    .locals 1

    const-string v0, "bnc_link_click_id"

    .line 548
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinkClickIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "bnc_link_click_identifier"

    .line 641
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 1119
    invoke-virtual {p0, p1, v0, v1}, Lio/branch/referral/PrefHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    .line 1123
    iget-object v0, p0, Lio/branch/referral/PrefHelper;->appSharedPrefs_:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getPushIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "bnc_push_identifier"

    .line 802
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRandomizedBundleToken()Ljava/lang/String;
    .locals 2

    const-string v0, "bnc_randomized_bundle_token"

    .line 479
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 480
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bnc_no_value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "bnc_identity_id"

    .line 486
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRandomizedDeviceToken()Ljava/lang/String;
    .locals 2

    const-string v0, "bnc_randomized_device_token"

    .line 425
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bnc_no_value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "bnc_device_fingerprint_id"

    .line 432
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRandomlyGeneratedUuid()Ljava/lang/String;
    .locals 1

    const-string v0, "bnc_randomly_generated_uuid"

    .line 539
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReferrerGclid()Ljava/lang/String;
    .locals 8

    const-string v0, "bnc_gclid_json_object"

    .line 702
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bnc_no_value"

    .line 704
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    const/4 v2, 0x0

    .line 711
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "bnc_gclid_expiration_date"

    .line 712
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 716
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    const-string v1, "bnc_gclid_value"

    .line 717
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 721
    :cond_1
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->removePrefValue(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 724
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->removePrefValue(Ljava/lang/String;)V

    .line 725
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v2
.end method

.method public getReferrerGclidValidForWindow()J
    .locals 3

    const-string v0, "bnc_gclid_expiration_window"

    const-wide v1, 0x9a7ec800L

    .line 747
    invoke-virtual {p0, v0, v1, v2}, Lio/branch/referral/PrefHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequestMetadata()Lorg/json/JSONObject;
    .locals 1

    .line 1272
    iget-object v0, p0, Lio/branch/referral/PrefHelper;->requestMetadata:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 2

    const-string v0, "bnc_retry_count"

    const/4 v1, 0x3

    .line 337
    invoke-virtual {p0, v0, v1}, Lio/branch/referral/PrefHelper;->getInteger(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRetryInterval()I
    .locals 2

    const-string v0, "bnc_retry_interval"

    const/16 v1, 0x3e8

    .line 359
    invoke-virtual {p0, v0, v1}, Lio/branch/referral/PrefHelper;->getInteger(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getSecondaryRequestMetaData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1341
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/branch/referral/PrefHelper;->secondaryRequestMetadata:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    const-string v0, "bnc_session_id"

    .line 453
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionParams()Ljava/lang/String;
    .locals 1

    const-string v0, "bnc_session_params"

    .line 814
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1143
    iget-object v0, p0, Lio/branch/referral/PrefHelper;->appSharedPrefs_:Landroid/content/SharedPreferences;

    const-string v1, "bnc_no_value"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTaskTimeout()I
    .locals 3

    const-string v0, "bnc_timeout"

    const/16 v1, 0x157c

    .line 293
    invoke-virtual {p0, v0, v1}, Lio/branch/referral/PrefHelper;->getInteger(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "bnc_connect_timeout"

    const/16 v2, 0x2710

    invoke-virtual {p0, v1, v2}, Lio/branch/referral/PrefHelper;->getInteger(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTimeout()I
    .locals 2

    const-string v0, "bnc_timeout"

    const/16 v1, 0x157c

    .line 283
    invoke-virtual {p0, v0, v1}, Lio/branch/referral/PrefHelper;->getInteger(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUserURL()Ljava/lang/String;
    .locals 1

    const-string v0, "bnc_user_url"

    .line 870
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasPrefValue(Ljava/lang/String;)Z
    .locals 1

    .line 1076
    iget-object v0, p0, Lio/branch/referral/PrefHelper;->appSharedPrefs_:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method hasValidBranchKey()Z
    .locals 1

    .line 1390
    invoke-virtual {p0}, Lio/branch/referral/PrefHelper;->getBranchKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/branch/referral/PrefHelper;->isValidBranchKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isAppTrackingLimited()Z
    .locals 1

    const-string v0, "bnc_limit_facebook_tracking"

    .line 894
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFullAppConversion()Z
    .locals 1

    const-string v0, "bnc_is_full_app_conversion"

    .line 784
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public loadPartnerParams(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1398
    iget-object v0, p0, Lio/branch/referral/PrefHelper;->partnerParams_:Lio/branch/referral/BranchPartnerParameters;

    invoke-static {p1, v0}, Lio/branch/referral/PrefHelper;->loadPartnerParams(Lorg/json/JSONObject;Lio/branch/referral/BranchPartnerParameters;)V

    return-void
.end method

.method public removePrefValue(Ljava/lang/String;)V
    .locals 1

    .line 1085
    iget-object v0, p0, Lio/branch/referral/PrefHelper;->prefsEditor_:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveLastStrongMatchTime(J)V
    .locals 1

    const-string v0, "bnc_branch_strong_match_time"

    .line 1223
    invoke-virtual {p0, v0, p1, p2}, Lio/branch/referral/PrefHelper;->setLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setActionTotalCount(Ljava/lang/String;I)V
    .locals 2

    .line 964
    invoke-direct {p0}, Lio/branch/referral/PrefHelper;->getActions()Ljava/util/ArrayList;

    move-result-object v0

    .line 965
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 966
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    invoke-direct {p0, v0}, Lio/branch/referral/PrefHelper;->setActions(Ljava/util/ArrayList;)V

    .line 969
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bnc_total_base_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/branch/referral/PrefHelper;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setActionUniqueCount(Ljava/lang/String;I)V
    .locals 2

    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bnc_balance_base_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/branch/referral/PrefHelper;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setAdNetworkCalloutsDisabled(Z)V
    .locals 1

    .line 575
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "bnc_ad_network_callouts_disabled"

    invoke-virtual {p0, v0, p1}, Lio/branch/referral/PrefHelper;->setBool(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setAppLink(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bnc_app_link"

    .line 756
    invoke-virtual {p0, v0, p1}, Lio/branch/referral/PrefHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bnc_app_version"

    .line 368
    invoke-virtual {p0, v0, p1}, Lio/branch/referral/PrefHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBool(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 1203
    iget-object v0, p0, Lio/branch/referral/PrefHelper;->prefsEditor_:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setBranchKey(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "bnc_branch_key"

    .line 387
    invoke-virtual {p0, v0}, Lio/branch/referral/PrefHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 389
    invoke-direct {p0}, Lio/branch/referral/PrefHelper;->clearPrefOnBranchKeyChange()V

    .line 390
    invoke-virtual {p0, v0, p1}, Lio/branch/referral/PrefHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 394
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object p1

    iget-object p1, p1, Lio/branch/referral/Branch;->linkCache_:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 395
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object p1

    iget-object p1, p1, Lio/branch/referral/Branch;->requestQueue_:Lio/branch/referral/ServerRequestQueue;

    invoke-virtual {p1}, Lio/branch/referral/ServerRequestQueue;->clear()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setConnectTimeout(I)V
    .locals 1

    const-string v0, "bnc_connect_timeout"

    .line 302
    invoke-virtual {p0, v0, p1}, Lio/branch/referral/PrefHelper;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setCreditCount(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setCreditCount(Ljava/lang/String;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setExternalIntentExtra(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bnc_external_intent_extra"

    .line 612
    invoke-virtual {p0, v0, p1}, Lio/branch/referral/PrefHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setExternalIntentUri(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bnc_external_intent_uri"

    .line 593
    invoke-virtual {p0, v0, p1}, Lio/branch/referral/PrefHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFloat(Ljava/lang/String;F)V
    .locals 1

    .line 1183
    iget-object v0, p0, Lio/branch/referral/PrefHelper;->prefsEditor_:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setGooglePlayReferrer(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bnc_google_play_install_referrer_extras"

    .line 668
    invoke-virtual {p0, v0, p1}, Lio/branch/referral/PrefHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setGoogleSearchInstallIdentifier(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bnc_google_search_install_identifier"

    .line 650
    invoke-virtual {p0, v0, p1}, Lio/branch/referral/PrefHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIdentity(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bnc_identity"

    .line 502
    invoke-virtual {p0, v0, p1}, Lio/branch/referral/PrefHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInitialReferrer(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bnc_initial_referrer"

    .line 1038
    invoke-virtual {p0, v0, p1}, Lio/branch/referral/PrefHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInstallParams(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bnc_install_params"

    .line 844
    invoke-virtual {p0, v0, p1}, Lio/branch/referral/PrefHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInstallReferrerParams(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bnc_install_referrer"

    .line 848
    invoke-virtual {p0, v0, p1}, Lio/branch/referral/PrefHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInteger(Ljava/lang/String;I)V
    .locals 1

    .line 1163
    iget-object v0, p0, Lio/branch/referral/PrefHelper;->prefsEditor_:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setIsAppLinkTriggeredInit(Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "bnc_triggered_by_fb_app_link"

    .line 557
    invoke-virtual {p0, v0, p1}, Lio/branch/referral/PrefHelper;->setBool(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setIsFullAppConversion(Z)V
    .locals 1

    .line 775
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "bnc_is_full_app_conversion"

    invoke-virtual {p0, v0, p1}, Lio/branch/referral/PrefHelper;->setBool(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setLATDAttributionWindow(I)V
    .locals 1

    const-string v0, "bnc_latd_attributon_window"

    .line 1018
    invoke-virtual {p0, v0, p1}, Lio/branch/referral/PrefHelper;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method setLimitFacebookTracking(Z)V
    .locals 1

    .line 887
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "bnc_limit_facebook_tracking"

    invoke-virtual {p0, v0, p1}, Lio/branch/referral/PrefHelper;->setBool(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public setLinkClickID(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bnc_link_click_id"

    .line 524
    invoke-virtual {p0, v0, p1}, Lio/branch/referral/PrefHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLinkClickIdentifier(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bnc_link_click_identifier"

    .line 631
    invoke-virtual {p0, v0, p1}, Lio/branch/referral/PrefHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 1

    .line 1173
    iget-object v0, p0, Lio/branch/referral/PrefHelper;->prefsEditor_:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setPushIdentifier(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bnc_push_identifier"

    .line 793
    invoke-virtual {p0, v0, p1}, Lio/branch/referral/PrefHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRandomizedBundleToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bnc_randomized_bundle_token"

    .line 468
    invoke-virtual {p0, v0, p1}, Lio/branch/referral/PrefHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRandomizedDeviceToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bnc_randomized_device_token"

    .line 414
    invoke-virtual {p0, v0, p1}, Lio/branch/referral/PrefHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRandomlyGeneratedUuid(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bnc_randomly_generated_uuid"

    .line 532
    invoke-virtual {p0, v0, p1}, Lio/branch/referral/PrefHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setReferrerGclid(Ljava/lang/String;)V
    .locals 5

    .line 685
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "bnc_gclid_value"

    .line 687
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "bnc_gclid_expiration_date"

    .line 688
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lio/branch/referral/PrefHelper;->getReferrerGclidValidForWindow()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "bnc_gclid_json_object"

    .line 690
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/branch/referral/PrefHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 692
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setReferrerGclidValidForWindow(J)V
    .locals 3

    const-wide v0, 0x174876e800L

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-string v0, "bnc_gclid_expiration_window"

    .line 738
    invoke-virtual {p0, v0, p1, p2}, Lio/branch/referral/PrefHelper;->setLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public setRequestMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1260
    :cond_0
    iget-object v0, p0, Lio/branch/referral/PrefHelper;->requestMetadata:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 1261
    iget-object v0, p0, Lio/branch/referral/PrefHelper;->requestMetadata:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1265
    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/branch/referral/PrefHelper;->requestMetadata:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setRetryCount(I)V
    .locals 1

    const-string v0, "bnc_retry_count"

    .line 327
    invoke-virtual {p0, v0, p1}, Lio/branch/referral/PrefHelper;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setRetryInterval(I)V
    .locals 1

    const-string v0, "bnc_retry_interval"

    .line 348
    invoke-virtual {p0, v0, p1}, Lio/branch/referral/PrefHelper;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setSessionID(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bnc_session_id"

    .line 443
    invoke-virtual {p0, v0, p1}, Lio/branch/referral/PrefHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSessionParams(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bnc_session_params"

    .line 824
    invoke-virtual {p0, v0, p1}, Lio/branch/referral/PrefHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1193
    iget-object v0, p0, Lio/branch/referral/PrefHelper;->prefsEditor_:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setTimeout(I)V
    .locals 1

    const-string v0, "bnc_timeout"

    .line 271
    invoke-virtual {p0, v0, p1}, Lio/branch/referral/PrefHelper;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setUserURL(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bnc_user_url"

    .line 861
    invoke-virtual {p0, v0, p1}, Lio/branch/referral/PrefHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method shouldAddModules()Z
    .locals 2

    const/4 v0, 0x0

    .line 1354
    :try_start_0
    iget-object v1, p0, Lio/branch/referral/PrefHelper;->secondaryRequestMetadata:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public updateBranchViewUsageCount(Ljava/lang/String;)V
    .locals 2

    .line 1207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bnc_branch_view_use_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1208
    invoke-virtual {p0, p1}, Lio/branch/referral/PrefHelper;->getBranchViewUsageCount(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 1209
    invoke-virtual {p0, v0, p1}, Lio/branch/referral/PrefHelper;->setInteger(Ljava/lang/String;I)V

    return-void
.end method
