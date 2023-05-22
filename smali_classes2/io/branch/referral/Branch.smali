.class public Lio/branch/referral/Branch;
.super Ljava/lang/Object;
.source "Branch.java"

# interfaces
.implements Lio/branch/referral/BranchViewHandler$IBranchViewEvents;
.implements Lio/branch/referral/SystemObserver$AdsParamsFetchEvents;
.implements Lio/branch/referral/GooglePlayStoreAttribution$IInstallReferrerEvents;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/referral/Branch$ShareLinkBuilder;,
        Lio/branch/referral/Branch$InitSessionBuilder;,
        Lio/branch/referral/Branch$IBranchViewControl;,
        Lio/branch/referral/Branch$BranchPostTask;,
        Lio/branch/referral/Branch$GetShortLinkTask;,
        Lio/branch/referral/Branch$CreditHistoryOrder;,
        Lio/branch/referral/Branch$LogoutStatusListener;,
        Lio/branch/referral/Branch$BranchListResponseListener;,
        Lio/branch/referral/Branch$IChannelProperties;,
        Lio/branch/referral/Branch$ExtendedBranchLinkShareListener;,
        Lio/branch/referral/Branch$BranchLinkShareListener;,
        Lio/branch/referral/Branch$BranchLinkCreateListener;,
        Lio/branch/referral/Branch$BranchReferralStateChangedListener;,
        Lio/branch/referral/Branch$BranchUniversalReferralInitListener;,
        Lio/branch/referral/Branch$BranchReferralInitListener;,
        Lio/branch/referral/Branch$INTENT_STATE;,
        Lio/branch/referral/Branch$SESSION_STATE;
    }
.end annotation


# static fields
.field public static final ALWAYS_DEEPLINK:Ljava/lang/String; = "$always_deeplink"

.field private static final AUTO_DEEP_LINK_DISABLE:Ljava/lang/String; = "io.branch.sdk.auto_link_disable"

.field private static final AUTO_DEEP_LINK_KEY:Ljava/lang/String; = "io.branch.sdk.auto_link_keys"

.field private static final AUTO_DEEP_LINK_PATH:Ljava/lang/String; = "io.branch.sdk.auto_link_path"

.field private static final AUTO_DEEP_LINK_REQ_CODE:Ljava/lang/String; = "io.branch.sdk.auto_link_request_code"

.field private static final BRANCH_LIBRARY_VERSION:Ljava/lang/String;

.field public static final DEEPLINK_PATH:Ljava/lang/String; = "$deeplink_path"

.field private static final DEF_AUTO_DEEP_LINK_REQ_CODE:I = 0x5dd

.field private static final EXTERNAL_INTENT_EXTRA_KEY_WHITE_LIST:[Ljava/lang/String;

.field public static final FEATURE_TAG_DEAL:Ljava/lang/String; = "deal"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_TAG_GIFT:Ljava/lang/String; = "gift"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_TAG_INVITE:Ljava/lang/String; = "invite"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_TAG_REFERRAL:Ljava/lang/String; = "referral"

.field public static final FEATURE_TAG_SHARE:Ljava/lang/String; = "share"

.field private static final GOOGLE_VERSION_TAG:Ljava/lang/String;

.field private static final LATCH_WAIT_UNTIL:I = 0x9c4

.field public static final LINK_TYPE_ONE_TIME_USE:I = 0x1

.field public static final LINK_TYPE_UNLIMITED_USE:I = 0x0

.field public static final NO_PLAY_STORE_REFERRER_WAIT:J = 0x0L

.field public static final OG_APP_ID:Ljava/lang/String; = "$og_app_id"

.field public static final OG_DESC:Ljava/lang/String; = "$og_description"

.field public static final OG_IMAGE_URL:Ljava/lang/String; = "$og_image_url"

.field public static final OG_TITLE:Ljava/lang/String; = "$og_title"

.field public static final OG_URL:Ljava/lang/String; = "$og_url"

.field public static final OG_VIDEO:Ljava/lang/String; = "$og_video"

.field public static final REDEEM_CODE:Ljava/lang/String; = "$redeem_code"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REDIRECT_ANDROID_URL:Ljava/lang/String; = "$android_url"

.field public static final REDIRECT_BLACKBERRY_URL:Ljava/lang/String; = "$blackberry_url"

.field public static final REDIRECT_DESKTOP_URL:Ljava/lang/String; = "$desktop_url"

.field public static final REDIRECT_FIRE_URL:Ljava/lang/String; = "$fire_url"

.field public static final REDIRECT_IOS_URL:Ljava/lang/String; = "$ios_url"

.field public static final REDIRECT_IPAD_URL:Ljava/lang/String; = "$ipad_url"

.field public static final REDIRECT_WINDOWS_PHONE_URL:Ljava/lang/String; = "$windows_phone_url"

.field public static final REFERRAL_BUCKET_DEFAULT:Ljava/lang/String; = "default"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REFERRAL_CODE:Ljava/lang/String; = "referral_code"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REFERRAL_CODE_AWARD_UNIQUE:I = 0x0

.field public static final REFERRAL_CODE_AWARD_UNLIMITED:I = 0x1

.field public static final REFERRAL_CODE_LOCATION_BOTH:I = 0x3

.field public static final REFERRAL_CODE_LOCATION_REFERREE:I = 0x0

.field public static final REFERRAL_CODE_LOCATION_REFERRING_USER:I = 0x2

.field public static final REFERRAL_CODE_TYPE:Ljava/lang/String; = "credit"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REFERRAL_CREATION_SOURCE_SDK:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static branchReferral_:Lio/branch/referral/Branch;

.field private static bypassCurrentActivityIntentState_:Z

.field static bypassWaitingForIntent_:Z

.field static checkInstallReferrer_:Z

.field private static cookieBasedMatchDomain_:Ljava/lang/String;

.field static disableAutoSessionInitialization:Z

.field private static disableDeviceIDFetch_:Z

.field private static enableInstantDeepLinking:Z

.field private static isActivityLifeCycleCallbackRegistered_:Z

.field private static playStoreReferrerWaitTime:J

.field private static pluginName:Ljava/lang/String;

.field private static pluginVersion:Ljava/lang/String;


# instance fields
.field private activityLifeCycleObserver:Lio/branch/referral/BranchActivityLifecycleObserver;

.field private final branchPluginSupport_:Lio/branch/referral/BranchPluginSupport;

.field private branchRemoteInterface_:Lio/branch/referral/network/BranchRemoteInterface;

.field public closeRequestNeeded:Z

.field private final context_:Landroid/content/Context;

.field currentActivityReference_:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private deeplinkDebugParams_:Lorg/json/JSONObject;

.field private final deviceInfo_:Lio/branch/referral/DeviceInfo;

.field private enableFacebookAppLinkCheck_:Z

.field getFirstReferringParamsLatch:Ljava/util/concurrent/CountDownLatch;

.field getLatestReferringParamsLatch:Ljava/util/concurrent/CountDownLatch;

.field initState_:Lio/branch/referral/Branch$SESSION_STATE;

.field final instrumentationExtraData_:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private intentState_:Lio/branch/referral/Branch$INTENT_STATE;

.field private isGAParamsFetchInProgress_:Z

.field private isInstantDeepLinkPossible:Z

.field final linkCache_:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lio/branch/referral/BranchLinkData;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field networkCount_:I

.field private performCookieBasedStrongMatchingOnGAIDAvailable:Z

.field final prefHelper_:Lio/branch/referral/PrefHelper;

.field final requestQueue_:Lio/branch/referral/ServerRequestQueue;

.field private final serverSema_:Ljava/util/concurrent/Semaphore;

.field private shareLinkManager_:Lio/branch/referral/ShareLinkManager;

.field private final trackingController:Lio/branch/referral/TrackingController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "io.branch.sdk.android:library:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/branch/referral/Branch;->getSdkVersionNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/branch/referral/Branch;->BRANCH_LIBRARY_VERSION:Ljava/lang/String;

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!SDK-VERSION-STRING!:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/branch/referral/Branch;->GOOGLE_VERSION_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 283
    sput-boolean v0, Lio/branch/referral/Branch;->bypassWaitingForIntent_:Z

    .line 285
    sput-boolean v0, Lio/branch/referral/Branch;->bypassCurrentActivityIntentState_:Z

    const/4 v1, 0x1

    .line 289
    sput-boolean v1, Lio/branch/referral/Branch;->checkInstallReferrer_:Z

    const-wide/16 v1, 0x5dc

    .line 290
    sput-wide v1, Lio/branch/referral/Branch;->playStoreReferrerWaitTime:J

    .line 314
    sput-boolean v0, Lio/branch/referral/Branch;->isActivityLifeCycleCallbackRegistered_:Z

    const-string v1, "app.link"

    .line 363
    sput-object v1, Lio/branch/referral/Branch;->cookieBasedMatchDomain_:Ljava/lang/String;

    const-string v1, "extra_launch_uri"

    const-string v2, "branch_intent"

    .line 368
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/branch/referral/Branch;->EXTERNAL_INTENT_EXTRA_KEY_WHITE_LIST:[Ljava/lang/String;

    .line 381
    sput-boolean v0, Lio/branch/referral/Branch;->enableInstantDeepLinking:Z

    const/4 v0, 0x0

    .line 386
    sput-object v0, Lio/branch/referral/Branch;->pluginVersion:Ljava/lang/String;

    .line 387
    sput-object v0, Lio/branch/referral/Branch;->pluginName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 281
    iput-boolean v0, p0, Lio/branch/referral/Branch;->enableFacebookAppLinkCheck_:Z

    .line 305
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lio/branch/referral/Branch;->serverSema_:Ljava/util/concurrent/Semaphore;

    .line 309
    iput v0, p0, Lio/branch/referral/Branch;->networkCount_:I

    .line 311
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lio/branch/referral/Branch;->linkCache_:Ljava/util/concurrent/ConcurrentHashMap;

    .line 329
    sget-object v1, Lio/branch/referral/Branch$INTENT_STATE;->PENDING:Lio/branch/referral/Branch$INTENT_STATE;

    iput-object v1, p0, Lio/branch/referral/Branch;->intentState_:Lio/branch/referral/Branch$INTENT_STATE;

    .line 332
    sget-object v1, Lio/branch/referral/Branch$SESSION_STATE;->UNINITIALISED:Lio/branch/referral/Branch$SESSION_STATE;

    iput-object v1, p0, Lio/branch/referral/Branch;->initState_:Lio/branch/referral/Branch$SESSION_STATE;

    .line 335
    iput-boolean v0, p0, Lio/branch/referral/Branch;->closeRequestNeeded:Z

    .line 358
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lio/branch/referral/Branch;->instrumentationExtraData_:Ljava/util/concurrent/ConcurrentHashMap;

    .line 361
    iput-boolean v0, p0, Lio/branch/referral/Branch;->isGAParamsFetchInProgress_:Z

    const/4 v1, 0x0

    .line 373
    iput-object v1, p0, Lio/branch/referral/Branch;->getFirstReferringParamsLatch:Ljava/util/concurrent/CountDownLatch;

    .line 374
    iput-object v1, p0, Lio/branch/referral/Branch;->getLatestReferringParamsLatch:Ljava/util/concurrent/CountDownLatch;

    .line 377
    iput-boolean v0, p0, Lio/branch/referral/Branch;->performCookieBasedStrongMatchingOnGAIDAvailable:Z

    .line 378
    iput-boolean v0, p0, Lio/branch/referral/Branch;->isInstantDeepLinkPossible:Z

    .line 397
    iput-object p1, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    .line 398
    invoke-static {p1}, Lio/branch/referral/PrefHelper;->getInstance(Landroid/content/Context;)Lio/branch/referral/PrefHelper;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    .line 399
    new-instance v0, Lio/branch/referral/TrackingController;

    invoke-direct {v0, p1}, Lio/branch/referral/TrackingController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/branch/referral/Branch;->trackingController:Lio/branch/referral/TrackingController;

    .line 400
    new-instance v1, Lio/branch/referral/network/BranchRemoteInterfaceUrlConnection;

    invoke-direct {v1, p0}, Lio/branch/referral/network/BranchRemoteInterfaceUrlConnection;-><init>(Lio/branch/referral/Branch;)V

    iput-object v1, p0, Lio/branch/referral/Branch;->branchRemoteInterface_:Lio/branch/referral/network/BranchRemoteInterface;

    .line 401
    new-instance v1, Lio/branch/referral/DeviceInfo;

    invoke-direct {v1, p1}, Lio/branch/referral/DeviceInfo;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lio/branch/referral/Branch;->deviceInfo_:Lio/branch/referral/DeviceInfo;

    .line 402
    new-instance v2, Lio/branch/referral/BranchPluginSupport;

    invoke-direct {v2, p1}, Lio/branch/referral/BranchPluginSupport;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lio/branch/referral/Branch;->branchPluginSupport_:Lio/branch/referral/BranchPluginSupport;

    .line 403
    invoke-static {p1}, Lio/branch/referral/ServerRequestQueue;->getInstance(Landroid/content/Context;)Lio/branch/referral/ServerRequestQueue;

    move-result-object v2

    iput-object v2, p0, Lio/branch/referral/Branch;->requestQueue_:Lio/branch/referral/ServerRequestQueue;

    .line 404
    invoke-virtual {v0}, Lio/branch/referral/TrackingController;->isTrackingDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    invoke-virtual {v1}, Lio/branch/referral/DeviceInfo;->getSystemObserver()Lio/branch/referral/SystemObserver;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lio/branch/referral/SystemObserver;->prefetchAdsParams(Landroid/content/Context;Lio/branch/referral/SystemObserver$AdsParamsFetchEvents;)Z

    move-result p1

    iput-boolean p1, p0, Lio/branch/referral/Branch;->isGAParamsFetchInProgress_:Z

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lio/branch/referral/Branch;Ljava/util/concurrent/CountDownLatch;ILio/branch/referral/Branch$BranchPostTask;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lio/branch/referral/Branch;->awaitTimedBranchPostTask(Ljava/util/concurrent/CountDownLatch;ILio/branch/referral/Branch$BranchPostTask;)V

    return-void
.end method

.method static synthetic access$200(Lio/branch/referral/Branch;)Lio/branch/referral/network/BranchRemoteInterface;
    .locals 0

    .line 76
    iget-object p0, p0, Lio/branch/referral/Branch;->branchRemoteInterface_:Lio/branch/referral/network/BranchRemoteInterface;

    return-object p0
.end method

.method static synthetic access$300()Lio/branch/referral/Branch;
    .locals 1

    .line 76
    sget-object v0, Lio/branch/referral/Branch;->branchReferral_:Lio/branch/referral/Branch;

    return-object v0
.end method

.method static synthetic access$400(Lio/branch/referral/Branch;Landroid/net/Uri;Landroid/app/Activity;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lio/branch/referral/Branch;->readAndStripParam(Landroid/net/Uri;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$500(Lio/branch/referral/Branch;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lio/branch/referral/Branch;->isInstantDeepLinkPossible:Z

    return p0
.end method

.method static synthetic access$502(Lio/branch/referral/Branch;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lio/branch/referral/Branch;->isInstantDeepLinkPossible:Z

    return p1
.end method

.method static synthetic access$600(Lio/branch/referral/Branch;Lio/branch/referral/ServerRequestInitSession;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lio/branch/referral/Branch;->initializeSession(Lio/branch/referral/ServerRequestInitSession;I)V

    return-void
.end method

.method private appendDebugParams(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    if-eqz p1, :cond_1

    .line 1443
    :try_start_0
    iget-object v0, p0, Lio/branch/referral/Branch;->deeplinkDebugParams_:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 1444
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "You\'re currently in deep link debug mode. Please comment out \'setDeepLinkDebugMode\' to receive the deep link parameters from a real Branch link"

    .line 1445
    invoke-static {v0}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    .line 1447
    :cond_0
    iget-object v0, p0, Lio/branch/referral/Branch;->deeplinkDebugParams_:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 1448
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1449
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1450
    iget-object v2, p0, Lio/branch/referral/Branch;->deeplinkDebugParams_:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    return-object p1
.end method

.method private awaitTimedBranchPostTask(Ljava/util/concurrent/CountDownLatch;ILio/branch/referral/Branch$BranchPostTask;)V
    .locals 5

    const-string v0, ""

    int-to-long v1, p2

    const/16 p2, -0x78

    const/4 v3, 0x1

    .line 1630
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1631
    invoke-virtual {p3, v3}, Lio/branch/referral/Branch$BranchPostTask;->cancel(Z)Z

    .line 1632
    new-instance p1, Lio/branch/referral/ServerResponse;

    iget-object v1, p3, Lio/branch/referral/Branch$BranchPostTask;->thisReq_:Lio/branch/referral/ServerRequest;

    invoke-virtual {v1}, Lio/branch/referral/ServerRequest;->getRequestPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, p2, v0}, Lio/branch/referral/ServerResponse;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p3, p1}, Lio/branch/referral/Branch$BranchPostTask;->onPostExecuteInner(Lio/branch/referral/ServerResponse;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1635
    :catch_0
    invoke-virtual {p3, v3}, Lio/branch/referral/Branch$BranchPostTask;->cancel(Z)Z

    .line 1636
    new-instance p1, Lio/branch/referral/ServerResponse;

    iget-object v1, p3, Lio/branch/referral/Branch$BranchPostTask;->thisReq_:Lio/branch/referral/ServerRequest;

    invoke-virtual {v1}, Lio/branch/referral/ServerRequest;->getRequestPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, p2, v0}, Lio/branch/referral/ServerResponse;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p3, p1}, Lio/branch/referral/Branch$BranchPostTask;->onPostExecuteInner(Lio/branch/referral/ServerResponse;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static bypassCurrentActivityIntentState()Z
    .locals 1

    .line 2553
    sget-boolean v0, Lio/branch/referral/Branch;->bypassCurrentActivityIntentState_:Z

    return v0
.end method

.method public static bypassWaitingForIntent(Z)V
    .locals 0

    .line 2527
    sput-boolean p0, Lio/branch/referral/Branch;->bypassWaitingForIntent_:Z

    return-void
.end method

.method private checkForAutoDeepLinkKeys(Lorg/json/JSONObject;Landroid/content/pm/ActivityInfo;)Z
    .locals 4

    .line 2437
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "io.branch.sdk.auto_link_keys"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2438
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 2439
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p2, v1

    .line 2440
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private checkForAutoDeepLinkPath(Lorg/json/JSONObject;Landroid/content/pm/ActivityInfo;)Z
    .locals 4

    const/4 v0, 0x0

    .line 2451
    :try_start_0
    sget-object v1, Lio/branch/referral/Defines$Jsonkey;->AndroidDeepLinkPath:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2452
    sget-object v1, Lio/branch/referral/Defines$Jsonkey;->AndroidDeepLinkPath:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v0, p1

    goto :goto_1

    .line 2453
    :cond_0
    sget-object v1, Lio/branch/referral/Defines$Jsonkey;->DeepLinkPath:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2454
    sget-object v1, Lio/branch/referral/Defines$Jsonkey;->DeepLinkPath:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 2458
    :cond_1
    :goto_1
    iget-object p1, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "io.branch.sdk.auto_link_path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 2459
    iget-object p1, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2460
    array-length p2, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p2, :cond_3

    aget-object v3, p1, v1

    .line 2461
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lio/branch/referral/Branch;->pathMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return v2
.end method

.method private checkIntentForSessionRestart(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1979
    sget-object v1, Lio/branch/referral/Defines$IntentKeys;->ForceNewBranchSession:Lio/branch/referral/Defines$IntentKeys;

    invoke-virtual {v1}, Lio/branch/referral/Defines$IntentKeys;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method private checkIntentForUnusedBranchLink(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1987
    sget-object v1, Lio/branch/referral/Defines$IntentKeys;->BranchURI:Lio/branch/referral/Defines$IntentKeys;

    invoke-virtual {v1}, Lio/branch/referral/Defines$IntentKeys;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1988
    :goto_0
    sget-object v3, Lio/branch/referral/Defines$IntentKeys;->BranchLinkUsed:Lio/branch/referral/Defines$IntentKeys;

    invoke-virtual {v3}, Lio/branch/referral/Defines$IntentKeys;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private convertParamsStringToDictionary(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    const-string v0, "bnc_no_value"

    .line 1557
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1558
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1

    .line 1561
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1563
    :catch_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lio/branch/referral/Base64;->decode([BI)[B

    move-result-object p1

    .line 1565
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception p1

    .line 1567
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1568
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method public static disableDebugMode()V
    .locals 0

    return-void
.end method

.method public static disableDeviceIDFetch(Ljava/lang/Boolean;)V
    .locals 0

    .line 752
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lio/branch/referral/Branch;->disableDeviceIDFetch_:Z

    return-void
.end method

.method public static disableForcedSession()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 2533
    invoke-static {v0}, Lio/branch/referral/Branch;->bypassWaitingForIntent(Z)V

    return-void
.end method

.method public static disableInstantDeepLinking(Z)V
    .locals 0

    xor-int/lit8 p0, p0, 0x1

    .line 633
    sput-boolean p0, Lio/branch/referral/Branch;->enableInstantDeepLinking:Z

    return-void
.end method

.method public static disableLogging()V
    .locals 1

    const/4 v0, 0x0

    .line 2499
    invoke-static {v0}, Lio/branch/referral/PrefHelper;->enableLogging(Z)V

    return-void
.end method

.method public static disableSimulateInstalls()V
    .locals 0

    return-void
.end method

.method public static disableTestMode()V
    .locals 1

    const/4 v0, 0x0

    .line 538
    invoke-static {v0}, Lio/branch/referral/BranchUtil;->setTestMode(Z)V

    return-void
.end method

.method public static enableBypassCurrentActivityIntentState()V
    .locals 1

    const/4 v0, 0x1

    .line 2548
    sput-boolean v0, Lio/branch/referral/Branch;->bypassCurrentActivityIntentState_:Z

    return-void
.end method

.method public static enableCookieBasedMatching(Ljava/lang/String;)V
    .locals 0

    .line 884
    sput-object p0, Lio/branch/referral/Branch;->cookieBasedMatchDomain_:Ljava/lang/String;

    return-void
.end method

.method public static enableCookieBasedMatching(Ljava/lang/String;I)V
    .locals 0

    .line 897
    sput-object p0, Lio/branch/referral/Branch;->cookieBasedMatchDomain_:Ljava/lang/String;

    .line 898
    invoke-static {}, Lio/branch/referral/BranchStrongMatchHelper;->getInstance()Lio/branch/referral/BranchStrongMatchHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/branch/referral/BranchStrongMatchHelper;->setStrongMatchUrlHitDelay(I)V

    return-void
.end method

.method public static enableDebugMode()V
    .locals 1

    const-string v0, "enableDebugMode is deprecated and all functionality has been disabled. If you wish to enable logging, please invoke enableLogging. If you wish to simulate installs, please see add a Test Device (https://help.branch.io/using-branch/docs/adding-test-devices) then reset your test device\'s data (https://help.branch.io/using-branch/docs/adding-test-devices#section-resetting-your-test-device-data). If you wish to use the test key rather than the live key, please invoke enableTestMode."

    .line 3187
    invoke-static {v0}, Lio/branch/referral/PrefHelper;->LogAlways(Ljava/lang/String;)V

    return-void
.end method

.method public static enableForcedSession()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 2506
    invoke-static {v0}, Lio/branch/referral/Branch;->bypassWaitingForIntent(Z)V

    return-void
.end method

.method public static enableLogging()V
    .locals 1

    .line 2491
    sget-object v0, Lio/branch/referral/Branch;->GOOGLE_VERSION_TAG:Ljava/lang/String;

    invoke-static {v0}, Lio/branch/referral/PrefHelper;->LogAlways(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2492
    invoke-static {v0}, Lio/branch/referral/PrefHelper;->enableLogging(Z)V

    return-void
.end method

.method public static enablePlayStoreReferrer(J)V
    .locals 0

    .line 609
    invoke-static {p0, p1}, Lio/branch/referral/Branch;->setPlayStoreReferrerCheckTimeout(J)V

    return-void
.end method

.method public static enableSimulateInstalls()V
    .locals 1

    const-string v0, "enableSimulateInstalls is deprecated and all functionality has been disabled. If you wish to simulate installs, please see add a Test Device (https://help.branch.io/using-branch/docs/adding-test-devices) then reset your test device\'s data (https://help.branch.io/using-branch/docs/adding-test-devices#section-resetting-your-test-device-data)."

    .line 3203
    invoke-static {v0}, Lio/branch/referral/PrefHelper;->LogAlways(Ljava/lang/String;)V

    return-void
.end method

.method public static enableTestMode()V
    .locals 1

    const/4 v0, 0x1

    .line 525
    invoke-static {v0}, Lio/branch/referral/BranchUtil;->setTestMode(Z)V

    const-string v0, "enableTestMode has been changed. It now uses the test key but will not log or randomize the device IDs. If you wish to enable logging, please invoke enableLogging. If you wish to simulate installs, please see add a Test Device (https://help.branch.io/using-branch/docs/adding-test-devices) then reset your test device\'s data (https://help.branch.io/using-branch/docs/adding-test-devices#section-resetting-your-test-device-data)."

    .line 526
    invoke-static {v0}, Lio/branch/referral/PrefHelper;->LogAlways(Ljava/lang/String;)V

    return-void
.end method

.method private executeClose()V
    .locals 2

    .line 906
    iget-object v0, p0, Lio/branch/referral/Branch;->initState_:Lio/branch/referral/Branch$SESSION_STATE;

    sget-object v1, Lio/branch/referral/Branch$SESSION_STATE;->UNINITIALISED:Lio/branch/referral/Branch$SESSION_STATE;

    if-eq v0, v1, :cond_1

    .line 907
    new-instance v0, Lio/branch/referral/ServerRequestRegisterClose;

    iget-object v1, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/branch/referral/ServerRequestRegisterClose;-><init>(Landroid/content/Context;)V

    .line 908
    iget-boolean v1, p0, Lio/branch/referral/Branch;->closeRequestNeeded:Z

    if-eqz v1, :cond_0

    .line 909
    invoke-virtual {p0, v0}, Lio/branch/referral/Branch;->handleNewRequest(Lio/branch/referral/ServerRequest;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 911
    invoke-virtual {v0, v1, v1}, Lio/branch/referral/ServerRequest;->onRequestSucceeded(Lio/branch/referral/ServerResponse;Lio/branch/referral/Branch;)V

    .line 913
    :goto_0
    sget-object v0, Lio/branch/referral/Branch$SESSION_STATE;->UNINITIALISED:Lio/branch/referral/Branch$SESSION_STATE;

    invoke-virtual {p0, v0}, Lio/branch/referral/Branch;->setInitState(Lio/branch/referral/Branch$SESSION_STATE;)V

    :cond_1
    const/4 v0, 0x0

    .line 915
    iput-boolean v0, p0, Lio/branch/referral/Branch;->closeRequestNeeded:Z

    return-void
.end method

.method private executeTimedBranchPostTask(Lio/branch/referral/ServerRequest;I)V
    .locals 3

    .line 1613
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1614
    new-instance v1, Lio/branch/referral/Branch$BranchPostTask;

    invoke-direct {v1, p0, p1, v0}, Lio/branch/referral/Branch$BranchPostTask;-><init>(Lio/branch/referral/Branch;Lio/branch/referral/ServerRequest;Ljava/util/concurrent/CountDownLatch;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 1616
    invoke-virtual {v1, p1}, Lio/branch/referral/Branch$BranchPostTask;->executeTask([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1617
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 1618
    new-instance p1, Ljava/lang/Thread;

    new-instance v2, Lio/branch/referral/Branch$1;

    invoke-direct {v2, p0, v0, p2, v1}, Lio/branch/referral/Branch$1;-><init>(Lio/branch/referral/Branch;Ljava/util/concurrent/CountDownLatch;ILio/branch/referral/Branch$BranchPostTask;)V

    invoke-direct {p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1622
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1624
    :cond_0
    invoke-direct {p0, v0, p2, v1}, Lio/branch/referral/Branch;->awaitTimedBranchPostTask(Ljava/util/concurrent/CountDownLatch;ILio/branch/referral/Branch$BranchPostTask;)V

    :goto_0
    return-void
.end method

.method public static expectDelayedSessionInitialization(Z)V
    .locals 0

    .line 568
    sput-boolean p0, Lio/branch/referral/Branch;->disableAutoSessionInitialization:Z

    return-void
.end method

.method private extractAppLink(Landroid/net/Uri;Landroid/app/Activity;)V
    .locals 3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 2756
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 2757
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    const-string v2, "http"

    .line 2759
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2760
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2761
    invoke-direct {p0, p2}, Lio/branch/referral/Branch;->isIntentParamsAlreadyConsumed(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2763
    iget-object v0, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    invoke-static {v0}, Lio/branch/referral/UniversalResourceAnalyser;->getInstance(Landroid/content/Context;)Lio/branch/referral/UniversalResourceAnalyser;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/branch/referral/UniversalResourceAnalyser;->getStrippedURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2765
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2767
    iget-object v0, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/branch/referral/PrefHelper;->setAppLink(Ljava/lang/String;)V

    .line 2769
    :cond_2
    sget-object p1, Lio/branch/referral/Defines$IntentKeys;->BranchLinkUsed:Lio/branch/referral/Defines$IntentKeys;

    invoke-virtual {p1}, Lio/branch/referral/Defines$IntentKeys;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2770
    invoke-virtual {p2, v1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private extractBranchLinkFromIntentExtra(Landroid/app/Activity;)Z
    .locals 3

    if-eqz p1, :cond_2

    .line 2805
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2806
    invoke-direct {p0, p1}, Lio/branch/referral/Branch;->isIntentParamsAlreadyConsumed(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2807
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lio/branch/referral/Defines$IntentKeys;->BranchURI:Lio/branch/referral/Defines$IntentKeys;

    invoke-virtual {v1}, Lio/branch/referral/Defines$IntentKeys;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 2810
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2811
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 2812
    :cond_0
    instance-of v2, v0, Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 2813
    check-cast v0, Landroid/net/Uri;

    .line 2814
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2817
    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2818
    iget-object v0, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v0, v1}, Lio/branch/referral/PrefHelper;->setPushIdentifier(Ljava/lang/String;)V

    .line 2819
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2820
    sget-object v1, Lio/branch/referral/Defines$IntentKeys;->BranchLinkUsed:Lio/branch/referral/Defines$IntentKeys;

    invoke-virtual {v1}, Lio/branch/referral/Defines$IntentKeys;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2821
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private extractClickID(Landroid/net/Uri;Landroid/app/Activity;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 2776
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 2778
    :cond_0
    sget-object v1, Lio/branch/referral/Defines$Jsonkey;->LinkClickID:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 2781
    :cond_1
    iget-object v2, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v2, v1}, Lio/branch/referral/PrefHelper;->setLinkClickIdentifier(Ljava/lang/String;)V

    .line 2782
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "link_click_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2783
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2785
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2786
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\?"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2787
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr p1, v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "&"

    if-ne p1, v3, :cond_3

    .line 2788
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2790
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v1, ""

    .line 2793
    invoke-virtual {v2, p1, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2794
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2795
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object p2, Lio/branch/referral/Defines$IntentKeys;->BranchLinkUsed:Lio/branch/referral/Defines$IntentKeys;

    invoke-virtual {p2}, Lio/branch/referral/Defines$IntentKeys;->getKey()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :catch_0
    :cond_4
    :goto_1
    return v0
.end method

.method private extractExternalUriAndIntentExtras(Landroid/net/Uri;Landroid/app/Activity;)V
    .locals 6

    .line 2833
    :try_start_0
    invoke-direct {p0, p2}, Lio/branch/referral/Branch;->isIntentParamsAlreadyConsumed(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2834
    iget-object v0, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    invoke-static {v0}, Lio/branch/referral/UniversalResourceAnalyser;->getInstance(Landroid/content/Context;)Lio/branch/referral/UniversalResourceAnalyser;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/branch/referral/UniversalResourceAnalyser;->getStrippedURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2835
    iget-object v1, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v1, v0}, Lio/branch/referral/PrefHelper;->setExternalIntentUri(Ljava/lang/String;)V

    .line 2837
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2838
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 2839
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 2840
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2842
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2843
    sget-object v1, Lio/branch/referral/Branch;->EXTERNAL_INTENT_EXTRA_KEY_WHITE_LIST:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 2844
    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2845
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2848
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-lez p1, :cond_3

    .line 2849
    iget-object p1, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/branch/referral/PrefHelper;->setExternalIntentExtra(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method private extractSessionParamsForIDL(Landroid/net/Uri;Landroid/app/Activity;)V
    .locals 4

    if-eqz p2, :cond_6

    .line 2712
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2714
    :cond_0
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    .line 2716
    :try_start_0
    invoke-direct {p0, p2}, Lio/branch/referral/Branch;->isIntentParamsAlreadyConsumed(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    .line 2726
    :cond_1
    sget-object v2, Lio/branch/referral/Defines$IntentKeys;->BranchData:Lio/branch/referral/Defines$IntentKeys;

    invoke-virtual {v2}, Lio/branch/referral/Defines$IntentKeys;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2728
    sget-object p1, Lio/branch/referral/Defines$IntentKeys;->BranchData:Lio/branch/referral/Defines$IntentKeys;

    invoke-virtual {p1}, Lio/branch/referral/Defines$IntentKeys;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2731
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2732
    sget-object p1, Lio/branch/referral/Defines$Jsonkey;->Clicked_Branch_Link:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2733
    iget-object p1, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lio/branch/referral/PrefHelper;->setSessionParams(Ljava/lang/String;)V

    .line 2734
    iput-boolean v1, p0, Lio/branch/referral/Branch;->isInstantDeepLinkPossible:Z

    .line 2738
    :cond_2
    sget-object p1, Lio/branch/referral/Defines$IntentKeys;->BranchData:Lio/branch/referral/Defines$IntentKeys;

    invoke-virtual {p1}, Lio/branch/referral/Defines$IntentKeys;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 2739
    invoke-virtual {p2, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 2740
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, Lio/branch/referral/Defines$Jsonkey;->Instant:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p2}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 2742
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 2743
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2744
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 2746
    :cond_4
    sget-object p1, Lio/branch/referral/Defines$Jsonkey;->Clicked_Branch_Link:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2747
    iget-object p1, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/branch/referral/PrefHelper;->setSessionParams(Ljava/lang/String;)V

    .line 2748
    iput-boolean v1, p0, Lio/branch/referral/Branch;->isInstantDeepLinkPossible:Z

    goto :goto_2

    .line 2720
    :cond_5
    :goto_1
    iget-object p1, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {p1}, Lio/branch/referral/PrefHelper;->getInstallParams()Ljava/lang/String;

    move-result-object p1

    const-string p2, "bnc_no_value"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 2721
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 2722
    sget-object p2, Lio/branch/referral/Defines$Jsonkey;->IsFirstSession:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p2}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2723
    iget-object p2, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/branch/referral/PrefHelper;->setSessionParams(Ljava/lang/String;)V

    .line 2724
    iput-boolean v1, p0, Lio/branch/referral/Branch;->isInstantDeepLinkPossible:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    :goto_2
    return-void
.end method

.method private generateShortLinkSync(Lio/branch/referral/ServerRequestCreateUrl;)Ljava/lang/String;
    .locals 5

    .line 1525
    iget-object v0, p0, Lio/branch/referral/Branch;->trackingController:Lio/branch/referral/TrackingController;

    invoke-virtual {v0}, Lio/branch/referral/TrackingController;->isTrackingDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1526
    invoke-virtual {p1}, Lio/branch/referral/ServerRequestCreateUrl;->getLongUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1528
    :cond_0
    iget-object v0, p0, Lio/branch/referral/Branch;->initState_:Lio/branch/referral/Branch$SESSION_STATE;

    sget-object v1, Lio/branch/referral/Branch$SESSION_STATE;->INITIALISED:Lio/branch/referral/Branch$SESSION_STATE;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 1531
    :try_start_0
    iget-object v0, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v0}, Lio/branch/referral/PrefHelper;->getTimeout()I

    move-result v0

    add-int/lit16 v0, v0, 0x7d0

    .line 1532
    new-instance v1, Lio/branch/referral/Branch$GetShortLinkTask;

    invoke-direct {v1, p0, v2}, Lio/branch/referral/Branch$GetShortLinkTask;-><init>(Lio/branch/referral/Branch;Lio/branch/referral/Branch$1;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lio/branch/referral/ServerRequest;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v3}, Lio/branch/referral/Branch$GetShortLinkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    int-to-long v3, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v0}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/referral/ServerResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v2

    .line 1536
    :goto_0
    invoke-virtual {p1}, Lio/branch/referral/ServerRequestCreateUrl;->isDefaultToLongUrl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1537
    invoke-virtual {p1}, Lio/branch/referral/ServerRequestCreateUrl;->getLongUrl()Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-eqz v0, :cond_2

    .line 1539
    invoke-virtual {v0}, Lio/branch/referral/ServerResponse;->getStatusCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_2

    .line 1541
    :try_start_1
    invoke-virtual {v0}, Lio/branch/referral/ServerResponse;->getObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1542
    invoke-virtual {p1}, Lio/branch/referral/ServerRequestCreateUrl;->getLinkPost()Lio/branch/referral/BranchLinkData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1543
    iget-object v0, p0, Lio/branch/referral/Branch;->linkCache_:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lio/branch/referral/ServerRequestCreateUrl;->getLinkPost()Lio/branch/referral/BranchLinkData;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1546
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v2

    :cond_3
    const-string p1, "Warning: User session has not been initialized"

    .line 1551
    invoke-static {p1}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    return-object v2
.end method

.method public static declared-synchronized getAutoInstance(Landroid/content/Context;)Lio/branch/referral/Branch;
    .locals 2

    const-class v0, Lio/branch/referral/Branch;

    monitor-enter v0

    .line 456
    :try_start_0
    sget-object v1, Lio/branch/referral/Branch;->branchReferral_:Lio/branch/referral/Branch;

    if-nez v1, :cond_0

    .line 457
    invoke-static {p0}, Lio/branch/referral/BranchUtil;->checkTestMode(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Lio/branch/referral/BranchUtil;->setTestMode(Z)V

    .line 458
    invoke-static {p0}, Lio/branch/referral/BranchUtil;->readBranchKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/branch/referral/Branch;->initBranchSDK(Landroid/content/Context;Ljava/lang/String;)Lio/branch/referral/Branch;

    move-result-object v1

    sput-object v1, Lio/branch/referral/Branch;->branchReferral_:Lio/branch/referral/Branch;

    .line 459
    invoke-static {v1, p0}, Lio/branch/referral/BranchPreinstall;->getPreinstallSystemData(Lio/branch/referral/Branch;Landroid/content/Context;)V

    .line 461
    :cond_0
    sget-object p0, Lio/branch/referral/Branch;->branchReferral_:Lio/branch/referral/Branch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getAutoInstance(Landroid/content/Context;Ljava/lang/String;)Lio/branch/referral/Branch;
    .locals 1

    .line 476
    sget-object v0, Lio/branch/referral/Branch;->branchReferral_:Lio/branch/referral/Branch;

    if-nez v0, :cond_1

    .line 477
    invoke-static {p0}, Lio/branch/referral/BranchUtil;->checkTestMode(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lio/branch/referral/BranchUtil;->setTestMode(Z)V

    .line 479
    invoke-static {p1}, Lio/branch/referral/PrefHelper;->isValidBranchKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Warning, Invalid branch key passed! Branch key will be read from manifest instead!"

    .line 480
    invoke-static {p1}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    .line 481
    invoke-static {p0}, Lio/branch/referral/BranchUtil;->readBranchKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 483
    :cond_0
    invoke-static {p0, p1}, Lio/branch/referral/Branch;->initBranchSDK(Landroid/content/Context;Ljava/lang/String;)Lio/branch/referral/Branch;

    move-result-object p1

    sput-object p1, Lio/branch/referral/Branch;->branchReferral_:Lio/branch/referral/Branch;

    .line 484
    invoke-static {p1, p0}, Lio/branch/referral/BranchPreinstall;->getPreinstallSystemData(Lio/branch/referral/Branch;Landroid/content/Context;)V

    .line 486
    :cond_1
    sget-object p0, Lio/branch/referral/Branch;->branchReferral_:Lio/branch/referral/Branch;

    return-object p0
.end method

.method public static getAutoInstance(Landroid/content/Context;Z)Lio/branch/referral/Branch;
    .locals 0

    .line 3221
    invoke-static {p0}, Lio/branch/referral/Branch;->getAutoInstance(Landroid/content/Context;)Lio/branch/referral/Branch;

    move-result-object p0

    return-object p0
.end method

.method public static getAutoTestInstance(Landroid/content/Context;)Lio/branch/referral/Branch;
    .locals 0

    .line 3225
    invoke-static {}, Lio/branch/referral/Branch;->enableTestMode()V

    .line 3226
    invoke-static {p0}, Lio/branch/referral/Branch;->getAutoInstance(Landroid/content/Context;)Lio/branch/referral/Branch;

    move-result-object p0

    return-object p0
.end method

.method public static getAutoTestInstance(Landroid/content/Context;Z)Lio/branch/referral/Branch;
    .locals 0

    .line 3234
    invoke-static {}, Lio/branch/referral/Branch;->enableTestMode()V

    const/4 p1, 0x0

    .line 3235
    invoke-static {p0, p1}, Lio/branch/referral/Branch;->getAutoInstance(Landroid/content/Context;Ljava/lang/String;)Lio/branch/referral/Branch;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lio/branch/referral/Branch;
    .locals 2

    const-class v0, Lio/branch/referral/Branch;

    monitor-enter v0

    .line 417
    :try_start_0
    sget-object v1, Lio/branch/referral/Branch;->branchReferral_:Lio/branch/referral/Branch;

    if-nez v1, :cond_0

    const-string v1, "Branch instance is not created yet. Make sure you call getAutoInstance(Context)."

    .line 418
    invoke-static {v1}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    .line 420
    :cond_0
    sget-object v1, Lio/branch/referral/Branch;->branchReferral_:Lio/branch/referral/Branch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lio/branch/referral/Branch;
    .locals 0

    .line 3212
    invoke-static {p0}, Lio/branch/referral/Branch;->getAutoInstance(Landroid/content/Context;)Lio/branch/referral/Branch;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lio/branch/referral/Branch;
    .locals 0

    .line 3230
    invoke-static {p0, p1}, Lio/branch/referral/Branch;->getAutoInstance(Landroid/content/Context;Ljava/lang/String;)Lio/branch/referral/Branch;

    move-result-object p0

    return-object p0
.end method

.method static getPluginName()Ljava/lang/String;
    .locals 1

    .line 928
    sget-object v0, Lio/branch/referral/Branch;->pluginName:Ljava/lang/String;

    return-object v0
.end method

.method public static getPluginVersion()Ljava/lang/String;
    .locals 1

    .line 924
    sget-object v0, Lio/branch/referral/Branch;->pluginVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getSdkVersionNumber()Ljava/lang/String;
    .locals 1

    const-string v0, "5.1.5"

    return-object v0
.end method

.method public static getTestInstance(Landroid/content/Context;)Lio/branch/referral/Branch;
    .locals 0

    .line 3216
    invoke-static {}, Lio/branch/referral/Branch;->enableTestMode()V

    .line 3217
    invoke-static {p0}, Lio/branch/referral/Branch;->getAutoInstance(Landroid/content/Context;)Lio/branch/referral/Branch;

    move-result-object p0

    return-object p0
.end method

.method private hasRandomizedDeviceToken()Z
    .locals 2

    .line 1734
    iget-object v0, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v0}, Lio/branch/referral/PrefHelper;->getRandomizedDeviceToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bnc_no_value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private hasSession()Z
    .locals 2

    .line 1722
    iget-object v0, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v0}, Lio/branch/referral/PrefHelper;->getSessionID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bnc_no_value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private hasUser()Z
    .locals 2

    .line 1738
    iget-object v0, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v0}, Lio/branch/referral/PrefHelper;->getRandomizedBundleToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bnc_no_value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static declared-synchronized initBranchSDK(Landroid/content/Context;Ljava/lang/String;)Lio/branch/referral/Branch;
    .locals 3

    const-class v0, Lio/branch/referral/Branch;

    monitor-enter v0

    .line 424
    :try_start_0
    sget-object v1, Lio/branch/referral/Branch;->branchReferral_:Lio/branch/referral/Branch;

    if-eqz v1, :cond_0

    const-string p0, "Warning, attempted to reinitialize Branch SDK singleton!"

    .line 425
    invoke-static {p0}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    .line 426
    sget-object p0, Lio/branch/referral/Branch;->branchReferral_:Lio/branch/referral/Branch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 428
    :cond_0
    :try_start_1
    new-instance v1, Lio/branch/referral/Branch;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/branch/referral/Branch;-><init>(Landroid/content/Context;)V

    sput-object v1, Lio/branch/referral/Branch;->branchReferral_:Lio/branch/referral/Branch;

    .line 430
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "Warning: Please enter your branch_key in your project\'s Manifest file!"

    .line 431
    invoke-static {p1}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    .line 432
    sget-object p1, Lio/branch/referral/Branch;->branchReferral_:Lio/branch/referral/Branch;

    iget-object p1, p1, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    const-string v1, "bnc_no_value"

    invoke-virtual {p1, v1}, Lio/branch/referral/PrefHelper;->setBranchKey(Ljava/lang/String;)Z

    goto :goto_0

    .line 434
    :cond_1
    sget-object v1, Lio/branch/referral/Branch;->branchReferral_:Lio/branch/referral/Branch;

    iget-object v1, v1, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v1, p1}, Lio/branch/referral/PrefHelper;->setBranchKey(Ljava/lang/String;)Z

    .line 438
    :goto_0
    instance-of p1, p0, Landroid/app/Application;

    if-eqz p1, :cond_2

    .line 439
    sget-object p1, Lio/branch/referral/Branch;->branchReferral_:Lio/branch/referral/Branch;

    check-cast p0, Landroid/app/Application;

    invoke-direct {p1, p0}, Lio/branch/referral/Branch;->setActivityLifeCycleObserver(Landroid/app/Application;)V

    .line 442
    :cond_2
    sget-object p0, Lio/branch/referral/Branch;->branchReferral_:Lio/branch/referral/Branch;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private initializeSession(Lio/branch/referral/ServerRequestInitSession;I)V
    .locals 5

    .line 1750
    iget-object v0, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v0}, Lio/branch/referral/PrefHelper;->getBranchKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v0}, Lio/branch/referral/PrefHelper;->getBranchKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "bnc_no_value"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 1758
    :cond_0
    invoke-static {}, Lio/branch/referral/BranchUtil;->isTestModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Warning: You are using your test app\'s Branch Key. Remember to change it to live Branch Key during deployment."

    .line 1759
    invoke-static {v0}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    .line 1762
    :cond_1
    iget-object v0, p0, Lio/branch/referral/Branch;->initState_:Lio/branch/referral/Branch$SESSION_STATE;

    sget-object v2, Lio/branch/referral/Branch$SESSION_STATE;->UNINITIALISED:Lio/branch/referral/Branch$SESSION_STATE;

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lio/branch/referral/Branch;->getSessionReferredLink()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lio/branch/referral/Branch;->enableFacebookAppLinkCheck_:Z

    if-eqz v0, :cond_2

    .line 1764
    iget-object v0, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    new-instance v2, Lio/branch/referral/Branch$2;

    invoke-direct {v2, p0}, Lio/branch/referral/Branch$2;-><init>(Lio/branch/referral/Branch;)V

    invoke-static {v0, v2}, Lio/branch/referral/DeferredAppLinkDataHandler;->fetchDeferredAppLinkData(Landroid/content/Context;Lio/branch/referral/DeferredAppLinkDataHandler$AppLinkFetchEvents;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1781
    sget-object v0, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;->FB_APP_LINK_WAIT_LOCK:Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    invoke-virtual {p1, v0}, Lio/branch/referral/ServerRequestInitSession;->addProcessWaitLock(Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;)V

    :cond_2
    if-lez p2, :cond_3

    .line 1786
    sget-object v0, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;->USER_SET_WAIT_LOCK:Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    invoke-virtual {p1, v0}, Lio/branch/referral/ServerRequestInitSession;->addProcessWaitLock(Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;)V

    .line 1787
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lio/branch/referral/Branch$3;

    invoke-direct {v2, p0}, Lio/branch/referral/Branch$3;-><init>(Lio/branch/referral/Branch;)V

    int-to-long v3, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1802
    :cond_3
    invoke-virtual {p0}, Lio/branch/referral/Branch;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lio/branch/referral/Branch;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    goto :goto_0

    :cond_4
    move-object p2, v1

    .line 1803
    :goto_0
    invoke-virtual {p0, p2}, Lio/branch/referral/Branch;->isRestartSessionRequested(Landroid/content/Intent;)Z

    move-result v0

    .line 1805
    invoke-virtual {p0}, Lio/branch/referral/Branch;->getInitState()Lio/branch/referral/Branch$SESSION_STATE;

    move-result-object v2

    sget-object v3, Lio/branch/referral/Branch$SESSION_STATE;->UNINITIALISED:Lio/branch/referral/Branch$SESSION_STATE;

    if-eq v2, v3, :cond_6

    if-eqz v0, :cond_5

    goto :goto_1

    .line 1810
    :cond_5
    iget-object p2, p1, Lio/branch/referral/ServerRequestInitSession;->callback_:Lio/branch/referral/Branch$BranchReferralInitListener;

    if-eqz p2, :cond_8

    .line 1812
    iget-object p1, p1, Lio/branch/referral/ServerRequestInitSession;->callback_:Lio/branch/referral/Branch$BranchReferralInitListener;

    new-instance p2, Lio/branch/referral/BranchError;

    const/16 v0, -0x76

    const-string v2, "Warning."

    invoke-direct {p2, v2, v0}, Lio/branch/referral/BranchError;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v1, p2}, Lio/branch/referral/Branch$BranchReferralInitListener;->onInitFinished(Lorg/json/JSONObject;Lio/branch/referral/BranchError;)V

    goto :goto_2

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    if-eqz p2, :cond_7

    .line 1807
    sget-object v0, Lio/branch/referral/Defines$IntentKeys;->ForceNewBranchSession:Lio/branch/referral/Defines$IntentKeys;

    invoke-virtual {v0}, Lio/branch/referral/Defines$IntentKeys;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_7
    const/4 p2, 0x0

    .line 1809
    invoke-virtual {p0, p1, p2}, Lio/branch/referral/Branch;->registerAppInit(Lio/branch/referral/ServerRequestInitSession;Z)V

    :cond_8
    :goto_2
    return-void

    .line 1751
    :cond_9
    :goto_3
    sget-object p2, Lio/branch/referral/Branch$SESSION_STATE;->UNINITIALISED:Lio/branch/referral/Branch$SESSION_STATE;

    invoke-virtual {p0, p2}, Lio/branch/referral/Branch;->setInitState(Lio/branch/referral/Branch$SESSION_STATE;)V

    .line 1753
    iget-object p2, p1, Lio/branch/referral/ServerRequestInitSession;->callback_:Lio/branch/referral/Branch$BranchReferralInitListener;

    if-eqz p2, :cond_a

    .line 1754
    iget-object p1, p1, Lio/branch/referral/ServerRequestInitSession;->callback_:Lio/branch/referral/Branch$BranchReferralInitListener;

    new-instance p2, Lio/branch/referral/BranchError;

    const/16 v0, -0x72

    const-string v2, "Trouble initializing Branch."

    invoke-direct {p2, v2, v0}, Lio/branch/referral/BranchError;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v1, p2}, Lio/branch/referral/Branch$BranchReferralInitListener;->onInitFinished(Lorg/json/JSONObject;Lio/branch/referral/BranchError;)V

    :cond_a
    const-string p1, "Warning: Please enter your branch_key in your project\'s manifest"

    .line 1756
    invoke-static {p1}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    return-void
.end method

.method private insertRequestAtFront(Lio/branch/referral/ServerRequest;)V
    .locals 2

    .line 1742
    iget v0, p0, Lio/branch/referral/Branch;->networkCount_:I

    if-nez v0, :cond_0

    .line 1743
    iget-object v0, p0, Lio/branch/referral/Branch;->requestQueue_:Lio/branch/referral/ServerRequestQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lio/branch/referral/ServerRequestQueue;->insert(Lio/branch/referral/ServerRequest;I)V

    goto :goto_0

    .line 1745
    :cond_0
    iget-object v0, p0, Lio/branch/referral/Branch;->requestQueue_:Lio/branch/referral/ServerRequestQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lio/branch/referral/ServerRequestQueue;->insert(Lio/branch/referral/ServerRequest;I)V

    :goto_0
    return-void
.end method

.method private isActivityLaunchedFromHistory(Landroid/app/Activity;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 983
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 984
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const/high16 v0, 0x100000

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static isAutoDeepLinkLaunch(Landroid/app/Activity;)Z
    .locals 1

    .line 2372
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    sget-object v0, Lio/branch/referral/Defines$IntentKeys;->AutoDeepLinked:Lio/branch/referral/Defines$IntentKeys;

    invoke-virtual {v0}, Lio/branch/referral/Defines$IntentKeys;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDeviceIDFetchDisabled()Z
    .locals 1

    .line 761
    sget-boolean v0, Lio/branch/referral/Branch;->disableDeviceIDFetch_:Z

    return v0
.end method

.method public static isForceSessionEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2543
    invoke-static {}, Lio/branch/referral/Branch;->isWaitingForIntent()Z

    move-result v0

    return v0
.end method

.method public static isInstantApp(Landroid/content/Context;)Z
    .locals 0

    .line 2642
    invoke-static {p0}, Lio/branch/referral/InstantAppUtil;->isInstantApp(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private isIntentParamsAlreadyConsumed(Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 978
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 979
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v1, Lio/branch/referral/Defines$IntentKeys;->BranchLinkUsed:Lio/branch/referral/Defines$IntentKeys;

    invoke-virtual {v1}, Lio/branch/referral/Defines$IntentKeys;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSessionAvailableForRequest()Z
    .locals 1

    .line 1654
    invoke-direct {p0}, Lio/branch/referral/Branch;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/branch/referral/Branch;->hasRandomizedDeviceToken()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isWaitingForIntent()Z
    .locals 1

    .line 2545
    sget-boolean v0, Lio/branch/referral/Branch;->bypassWaitingForIntent_:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private pathMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "\\?"

    .line 2471
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aget-object p1, p1, v1

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2472
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 2473
    array-length v0, p1

    array-length v2, p2

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2476
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 2477
    aget-object v2, p1, v0

    .line 2478
    aget-object v3, p2, v0

    .line 2479
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private performCookieBasedStrongMatch()V
    .locals 7

    .line 1895
    iget-object v0, p0, Lio/branch/referral/Branch;->trackingController:Lio/branch/referral/TrackingController;

    invoke-virtual {v0}, Lio/branch/referral/TrackingController;->isTrackingDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1896
    iget-object v0, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1897
    iget-object v0, p0, Lio/branch/referral/Branch;->requestQueue_:Lio/branch/referral/ServerRequestQueue;

    invoke-virtual {v0}, Lio/branch/referral/ServerRequestQueue;->setStrongMatchWaitLock()V

    .line 1898
    invoke-static {}, Lio/branch/referral/BranchStrongMatchHelper;->getInstance()Lio/branch/referral/BranchStrongMatchHelper;

    move-result-object v1

    iget-object v2, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    sget-object v3, Lio/branch/referral/Branch;->cookieBasedMatchDomain_:Ljava/lang/String;

    iget-object v4, p0, Lio/branch/referral/Branch;->deviceInfo_:Lio/branch/referral/DeviceInfo;

    iget-object v5, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    new-instance v6, Lio/branch/referral/Branch$4;

    invoke-direct {v6, p0}, Lio/branch/referral/Branch$4;-><init>(Lio/branch/referral/Branch;)V

    invoke-virtual/range {v1 .. v6}, Lio/branch/referral/BranchStrongMatchHelper;->checkForStrongMatch(Landroid/content/Context;Ljava/lang/String;Lio/branch/referral/DeviceInfo;Lio/branch/referral/PrefHelper;Lio/branch/referral/BranchStrongMatchHelper$StrongMatchCheckEvents;)V

    :cond_0
    return-void
.end method

.method private readAndStripParam(Landroid/net/Uri;Landroid/app/Activity;)V
    .locals 3

    .line 932
    sget-boolean v0, Lio/branch/referral/Branch;->enableInstantDeepLinking:Z

    if-eqz v0, :cond_3

    .line 937
    iget-object v0, p0, Lio/branch/referral/Branch;->intentState_:Lio/branch/referral/Branch$INTENT_STATE;

    sget-object v1, Lio/branch/referral/Branch$INTENT_STATE;->READY:Lio/branch/referral/Branch$INTENT_STATE;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lio/branch/referral/Branch;->activityLifeCycleObserver:Lio/branch/referral/BranchActivityLifecycleObserver;

    .line 938
    invoke-virtual {v0}, Lio/branch/referral/BranchActivityLifecycleObserver;->isCurrentActivityLaunchedFromStack()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz p2, :cond_2

    .line 941
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0, v1}, Lio/branch/referral/Branch;->isRestartSessionRequested(Landroid/content/Intent;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 944
    invoke-direct {p0, p1, p2}, Lio/branch/referral/Branch;->extractSessionParamsForIDL(Landroid/net/Uri;Landroid/app/Activity;)V

    .line 948
    :cond_3
    sget-boolean v0, Lio/branch/referral/Branch;->bypassCurrentActivityIntentState_:Z

    if-eqz v0, :cond_4

    .line 949
    sget-object v0, Lio/branch/referral/Branch$INTENT_STATE;->READY:Lio/branch/referral/Branch$INTENT_STATE;

    iput-object v0, p0, Lio/branch/referral/Branch;->intentState_:Lio/branch/referral/Branch$INTENT_STATE;

    .line 952
    :cond_4
    iget-object v0, p0, Lio/branch/referral/Branch;->intentState_:Lio/branch/referral/Branch$INTENT_STATE;

    sget-object v1, Lio/branch/referral/Branch$INTENT_STATE;->READY:Lio/branch/referral/Branch$INTENT_STATE;

    if-ne v0, v1, :cond_7

    .line 955
    invoke-direct {p0, p1, p2}, Lio/branch/referral/Branch;->extractExternalUriAndIntentExtras(Landroid/net/Uri;Landroid/app/Activity;)V

    .line 958
    invoke-direct {p0, p2}, Lio/branch/referral/Branch;->extractBranchLinkFromIntentExtra(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 961
    :cond_5
    invoke-direct {p0, p2}, Lio/branch/referral/Branch;->isActivityLaunchedFromHistory(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 963
    invoke-direct {p0, p1, p2}, Lio/branch/referral/Branch;->extractClickID(Landroid/net/Uri;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 966
    :cond_6
    invoke-direct {p0, p1, p2}, Lio/branch/referral/Branch;->extractAppLink(Landroid/net/Uri;Landroid/app/Activity;)V

    :cond_7
    return-void
.end method

.method public static registerPlugin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 919
    sput-object p0, Lio/branch/referral/Branch;->pluginName:Ljava/lang/String;

    .line 920
    sput-object p1, Lio/branch/referral/Branch;->pluginVersion:Ljava/lang/String;

    return-void
.end method

.method private requestNeedsSession(Lio/branch/referral/ServerRequest;)Z
    .locals 2

    .line 1642
    instance-of v0, p1, Lio/branch/referral/ServerRequestInitSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1644
    :cond_0
    instance-of p1, p1, Lio/branch/referral/ServerRequestCreateUrl;

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public static sessionBuilder(Landroid/app/Activity;)Lio/branch/referral/Branch$InitSessionBuilder;
    .locals 2

    .line 3063
    new-instance v0, Lio/branch/referral/Branch$InitSessionBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/branch/referral/Branch$InitSessionBuilder;-><init>(Landroid/app/Activity;Lio/branch/referral/Branch$1;)V

    return-object v0
.end method

.method public static setAPIUrl(Ljava/lang/String;)V
    .locals 0

    .line 576
    invoke-static {p0}, Lio/branch/referral/PrefHelper;->setAPIUrl(Ljava/lang/String;)V

    return-void
.end method

.method private setActivityLifeCycleObserver(Landroid/app/Application;)V
    .locals 2

    .line 1955
    :try_start_0
    new-instance v0, Lio/branch/referral/BranchActivityLifecycleObserver;

    invoke-direct {v0}, Lio/branch/referral/BranchActivityLifecycleObserver;-><init>()V

    iput-object v0, p0, Lio/branch/referral/Branch;->activityLifeCycleObserver:Lio/branch/referral/BranchActivityLifecycleObserver;

    .line 1957
    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1958
    iget-object v0, p0, Lio/branch/referral/Branch;->activityLifeCycleObserver:Lio/branch/referral/BranchActivityLifecycleObserver;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    .line 1959
    sput-boolean p1, Lio/branch/referral/Branch;->isActivityLifeCycleCallbackRegistered_:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 1962
    sput-boolean p1, Lio/branch/referral/Branch;->isActivityLifeCycleCallbackRegistered_:Z

    .line 1964
    new-instance p1, Lio/branch/referral/BranchError;

    const/16 v0, -0x6c

    const-string v1, ""

    invoke-direct {p1, v1, v0}, Lio/branch/referral/BranchError;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lio/branch/referral/BranchError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setCDNBaseUrl(Ljava/lang/String;)V
    .locals 0

    .line 584
    invoke-static {p0}, Lio/branch/referral/PrefHelper;->setCDNBaseUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static setPlayStoreReferrerCheckTimeout(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 621
    :goto_0
    sput-boolean v0, Lio/branch/referral/Branch;->checkInstallReferrer_:Z

    .line 622
    sput-wide p0, Lio/branch/referral/Branch;->playStoreReferrerWaitTime:J

    return-void
.end method

.method public static showInstallPrompt(Landroid/app/Activity;I)Z
    .locals 4

    .line 2655
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2656
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/referral/Branch;->getLatestReferringParams()Lorg/json/JSONObject;

    move-result-object v0

    .line 2657
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lio/branch/referral/Defines$Jsonkey;->ReferringLink:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v3}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 2658
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2661
    :try_start_0
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v2, "UTF-8"

    .line 2663
    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v2

    :goto_0
    move-object v0, v1

    .line 2665
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2667
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/branch/referral/Defines$Jsonkey;->IsFullAppConv:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v2}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=true&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lio/branch/referral/Defines$Jsonkey;->ReferringLink:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v2}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2672
    :cond_0
    invoke-static {p0, p1, v1}, Lio/branch/referral/InstantAppUtil;->doShowInstallPrompt(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static showInstallPrompt(Landroid/app/Activity;ILio/branch/indexing/BranchUniversalObject;)Z
    .locals 2

    .line 2702
    new-instance v0, Lio/branch/referral/util/LinkProperties;

    invoke-direct {v0}, Lio/branch/referral/util/LinkProperties;-><init>()V

    invoke-virtual {p2, p0, v0}, Lio/branch/indexing/BranchUniversalObject;->getShortUrl(Landroid/content/Context;Lio/branch/referral/util/LinkProperties;)Ljava/lang/String;

    move-result-object p2

    .line 2703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/branch/referral/Defines$Jsonkey;->ReferringLink:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2704
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2705
    invoke-static {p0, p1, p2}, Lio/branch/referral/Branch;->showInstallPrompt(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const-string p2, ""

    .line 2707
    invoke-static {p0, p1, p2}, Lio/branch/referral/Branch;->showInstallPrompt(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static showInstallPrompt(Landroid/app/Activity;ILjava/lang/String;)Z
    .locals 2

    .line 2685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/branch/referral/Defines$Jsonkey;->IsFullAppConv:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=true&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2686
    invoke-static {p0, p1, p2}, Lio/branch/referral/InstantAppUtil;->doShowInstallPrompt(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static shutDown()V
    .locals 1

    .line 639
    invoke-static {}, Lio/branch/referral/ServerRequestQueue;->shutDown()V

    .line 640
    invoke-static {}, Lio/branch/referral/PrefHelper;->shutDown()V

    .line 641
    invoke-static {}, Lio/branch/referral/BranchUtil;->shutDown()V

    const/4 v0, 0x0

    .line 655
    sput-object v0, Lio/branch/referral/Branch;->branchReferral_:Lio/branch/referral/Branch;

    const/4 v0, 0x0

    .line 656
    sput-boolean v0, Lio/branch/referral/Branch;->bypassCurrentActivityIntentState_:Z

    .line 657
    sput-boolean v0, Lio/branch/referral/Branch;->enableInstantDeepLinking:Z

    .line 658
    sput-boolean v0, Lio/branch/referral/Branch;->isActivityLifeCycleCallbackRegistered_:Z

    .line 660
    sput-boolean v0, Lio/branch/referral/Branch;->bypassWaitingForIntent_:Z

    const/4 v0, 0x1

    .line 662
    sput-boolean v0, Lio/branch/referral/Branch;->checkInstallReferrer_:Z

    return-void
.end method


# virtual methods
.method public addExtraInstrumentationData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2585
    iget-object v0, p0, Lio/branch/referral/Branch;->instrumentationExtraData_:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addExtraInstrumentationData(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2575
    iget-object v0, p0, Lio/branch/referral/Branch;->instrumentationExtraData_:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public addFacebookPartnerParameterWithName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1425
    iget-object v0, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    iget-object v0, v0, Lio/branch/referral/PrefHelper;->partnerParams_:Lio/branch/referral/BranchPartnerParameters;

    invoke-virtual {v0, p1, p2}, Lio/branch/referral/BranchPartnerParameters;->addFacebookParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addInstallMetadata(Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/Branch;
    .locals 1

    .line 814
    iget-object v0, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v0, p1, p2}, Lio/branch/referral/PrefHelper;->addInstallMetadata(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public addModule(Lorg/json/JSONObject;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 845
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 846
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 847
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 848
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 850
    :try_start_0
    iget-object v2, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lio/branch/referral/PrefHelper;->addSecondaryRequestMetadata(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addUriHostsToSkip(Ljava/lang/String;)Lio/branch/referral/Branch;
    .locals 1

    .line 1058
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1059
    iget-object v0, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    invoke-static {v0}, Lio/branch/referral/UniversalResourceAnalyser;->getInstance(Landroid/content/Context;)Lio/branch/referral/UniversalResourceAnalyser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/branch/referral/UniversalResourceAnalyser;->addToSkipURLFormats(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public addWhiteListedScheme(Ljava/lang/String;)Lio/branch/referral/Branch;
    .locals 1

    if-eqz p1, :cond_0

    .line 1026
    iget-object v0, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    invoke-static {v0}, Lio/branch/referral/UniversalResourceAnalyser;->getInstance(Landroid/content/Context;)Lio/branch/referral/UniversalResourceAnalyser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/branch/referral/UniversalResourceAnalyser;->addToAcceptURLFormats(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public cancelShareLinkDialog(Z)V
    .locals 1

    .line 1517
    iget-object v0, p0, Lio/branch/referral/Branch;->shareLinkManager_:Lio/branch/referral/ShareLinkManager;

    if-eqz v0, :cond_0

    .line 1518
    invoke-virtual {v0, p1}, Lio/branch/referral/ShareLinkManager;->cancelShareLinkDialog(Z)V

    :cond_0
    return-void
.end method

.method checkForAutoDeepLinkConfiguration()V
    .locals 9

    .line 2376
    invoke-virtual {p0}, Lio/branch/referral/Branch;->getLatestReferringParams()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    .line 2381
    :try_start_0
    sget-object v2, Lio/branch/referral/Defines$Jsonkey;->Clicked_Branch_Link:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v2}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lio/branch/referral/Defines$Jsonkey;->Clicked_Branch_Link:Lio/branch/referral/Defines$Jsonkey;

    .line 2382
    invoke-virtual {v2}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 2385
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 2387
    iget-object v2, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 2388
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "io.branch.sdk.auto_link_disable"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 2391
    :cond_1
    iget-object v2, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x81

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 2392
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/16 v3, 0x5dd

    if-eqz v2, :cond_5

    .line 2396
    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_5

    aget-object v6, v2, v4

    if-eqz v6, :cond_4

    .line 2397
    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_4

    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "io.branch.sdk.auto_link_keys"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "io.branch.sdk.auto_link_path"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 2398
    :cond_2
    invoke-direct {p0, v0, v6}, Lio/branch/referral/Branch;->checkForAutoDeepLinkKeys(Lorg/json/JSONObject;Landroid/content/pm/ActivityInfo;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-direct {p0, v0, v6}, Lio/branch/referral/Branch;->checkForAutoDeepLinkPath(Lorg/json/JSONObject;Landroid/content/pm/ActivityInfo;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2399
    :cond_3
    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2400
    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "io.branch.sdk.auto_link_request_code"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    if-eqz v1, :cond_7

    .line 2406
    invoke-virtual {p0}, Lio/branch/referral/Branch;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2407
    invoke-virtual {p0}, Lio/branch/referral/Branch;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    .line 2409
    new-instance v4, Landroid/content/Intent;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2410
    sget-object v5, Lio/branch/referral/Defines$IntentKeys;->AutoDeepLinked:Lio/branch/referral/Defines$IntentKeys;

    invoke-virtual {v5}, Lio/branch/referral/Defines$IntentKeys;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2413
    sget-object v5, Lio/branch/referral/Defines$Jsonkey;->ReferringData:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v5}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2416
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 2417
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2418
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2419
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 2421
    :cond_6
    invoke-virtual {v2, v4, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    :cond_7
    const-string v0, "No activity reference to launch deep linked activity"

    .line 2424
    invoke-static {v0}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_4

    :cond_8
    :goto_3
    return-void

    .line 2430
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: Please make sure Activity names set for auto deep link are correct! Error while looking for activity "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    goto :goto_4

    :catch_1
    const-string v0, "Warning: Please make sure Activity names set for auto deep link are correct!"

    .line 2428
    invoke-static {v0}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    :catch_2
    :cond_9
    :goto_4
    return-void
.end method

.method public clearPartnerParameters()V
    .locals 1

    .line 1432
    iget-object v0, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    iget-object v0, v0, Lio/branch/referral/PrefHelper;->partnerParams_:Lio/branch/referral/BranchPartnerParameters;

    invoke-virtual {v0}, Lio/branch/referral/BranchPartnerParameters;->clearAllParameters()V

    return-void
.end method

.method clearPendingRequests()V
    .locals 1

    .line 873
    iget-object v0, p0, Lio/branch/referral/Branch;->requestQueue_:Lio/branch/referral/ServerRequestQueue;

    invoke-virtual {v0}, Lio/branch/referral/ServerRequestQueue;->clear()V

    return-void
.end method

.method closeSessionInternal()V
    .locals 2

    .line 863
    invoke-virtual {p0}, Lio/branch/referral/Branch;->clearPartnerParameters()V

    .line 864
    invoke-direct {p0}, Lio/branch/referral/Branch;->executeClose()V

    .line 865
    iget-object v0, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/branch/referral/PrefHelper;->setExternalIntentUri(Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Lio/branch/referral/Branch;->trackingController:Lio/branch/referral/TrackingController;

    iget-object v1, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/branch/referral/TrackingController;->updateTrackingState(Landroid/content/Context;)V

    return-void
.end method

.method public disableAdNetworkCallouts(Z)V
    .locals 1

    .line 547
    iget-object v0, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    invoke-static {v0}, Lio/branch/referral/PrefHelper;->getInstance(Landroid/content/Context;)Lio/branch/referral/PrefHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/branch/referral/PrefHelper;->setAdNetworkCalloutsDisabled(Z)V

    return-void
.end method

.method public disableAppList()V
    .locals 0

    return-void
.end method

.method public disableTracking(Z)V
    .locals 2

    .line 591
    iget-object v0, p0, Lio/branch/referral/Branch;->trackingController:Lio/branch/referral/TrackingController;

    iget-object v1, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lio/branch/referral/TrackingController;->disableTracking(Landroid/content/Context;Z)V

    return-void
.end method

.method public enableFacebookAppLinkCheck()V
    .locals 1

    const/4 v0, 0x1

    .line 787
    iput-boolean v0, p0, Lio/branch/referral/Branch;->enableFacebookAppLinkCheck_:Z

    return-void
.end method

.method generateShortLinkInternal(Lio/branch/referral/ServerRequestCreateUrl;)Ljava/lang/String;
    .locals 2

    .line 1476
    iget-boolean v0, p1, Lio/branch/referral/ServerRequestCreateUrl;->constructError_:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lio/branch/referral/ServerRequestCreateUrl;->handleErrors(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1477
    iget-object v0, p0, Lio/branch/referral/Branch;->linkCache_:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lio/branch/referral/ServerRequestCreateUrl;->getLinkPost()Lio/branch/referral/BranchLinkData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1478
    iget-object v0, p0, Lio/branch/referral/Branch;->linkCache_:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lio/branch/referral/ServerRequestCreateUrl;->getLinkPost()Lio/branch/referral/BranchLinkData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1479
    invoke-virtual {p1, v0}, Lio/branch/referral/ServerRequestCreateUrl;->onUrlAvailable(Ljava/lang/String;)V

    return-object v0

    .line 1482
    :cond_0
    invoke-virtual {p1}, Lio/branch/referral/ServerRequestCreateUrl;->isAsync()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1483
    invoke-virtual {p0, p1}, Lio/branch/referral/Branch;->handleNewRequest(Lio/branch/referral/ServerRequest;)V

    goto :goto_0

    .line 1485
    :cond_1
    invoke-direct {p0, p1}, Lio/branch/referral/Branch;->generateShortLinkSync(Lio/branch/referral/ServerRequestCreateUrl;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 490
    iget-object v0, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    return-object v0
.end method

.method public getBranchPluginSupport()Lio/branch/referral/BranchPluginSupport;
    .locals 1

    .line 1690
    iget-object v0, p0, Lio/branch/referral/Branch;->branchPluginSupport_:Lio/branch/referral/BranchPluginSupport;

    return-object v0
.end method

.method public getBranchRemoteInterface()Lio/branch/referral/network/BranchRemoteInterface;
    .locals 1

    .line 510
    iget-object v0, p0, Lio/branch/referral/Branch;->branchRemoteInterface_:Lio/branch/referral/network/BranchRemoteInterface;

    return-object v0
.end method

.method public getCreditHistory(Lio/branch/referral/Branch$BranchListResponseListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public getCreditHistory(Ljava/lang/String;ILio/branch/referral/Branch$CreditHistoryOrder;Lio/branch/referral/Branch$BranchListResponseListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public getCreditHistory(Ljava/lang/String;Lio/branch/referral/Branch$BranchListResponseListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public getCreditHistory(Ljava/lang/String;Ljava/lang/String;ILio/branch/referral/Branch$CreditHistoryOrder;Lio/branch/referral/Branch$BranchListResponseListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public getCredits()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getCreditsForBucket(Ljava/lang/String;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public getCrossPlatformIds(Lio/branch/referral/ServerRequestGetCPID$BranchCrossPlatformIdListener;)V
    .locals 2

    .line 1109
    iget-object v0, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1110
    new-instance v0, Lio/branch/referral/ServerRequestGetCPID;

    iget-object v1, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lio/branch/referral/ServerRequestGetCPID;-><init>(Landroid/content/Context;Lio/branch/referral/ServerRequestGetCPID$BranchCrossPlatformIdListener;)V

    invoke-virtual {p0, v0}, Lio/branch/referral/Branch;->handleNewRequest(Lio/branch/referral/ServerRequest;)V

    :cond_0
    return-void
.end method

.method getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 2858
    iget-object v0, p0, Lio/branch/referral/Branch;->currentActivityReference_:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2859
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getDeeplinkDebugParams()Lorg/json/JSONObject;
    .locals 1

    .line 1459
    iget-object v0, p0, Lio/branch/referral/Branch;->deeplinkDebugParams_:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "You\'re currently in deep link debug mode. Please comment out \'setDeepLinkDebugMode\' to receive the deep link parameters from a real Branch link"

    .line 1460
    invoke-static {v0}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    .line 1462
    :cond_0
    iget-object v0, p0, Lio/branch/referral/Branch;->deeplinkDebugParams_:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getDeviceInfo()Lio/branch/referral/DeviceInfo;
    .locals 1

    .line 1686
    iget-object v0, p0, Lio/branch/referral/Branch;->deviceInfo_:Lio/branch/referral/DeviceInfo;

    return-object v0
.end method

.method public getFirstReferringParams()Lorg/json/JSONObject;
    .locals 1

    .line 1335
    iget-object v0, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v0}, Lio/branch/referral/PrefHelper;->getInstallParams()Ljava/lang/String;

    move-result-object v0

    .line 1336
    invoke-direct {p0, v0}, Lio/branch/referral/Branch;->convertParamsStringToDictionary(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1337
    invoke-direct {p0, v0}, Lio/branch/referral/Branch;->appendDebugParams(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getFirstReferringParamsSync()Lorg/json/JSONObject;
    .locals 4

    .line 1360
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lio/branch/referral/Branch;->getFirstReferringParamsLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1361
    iget-object v0, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v0}, Lio/branch/referral/PrefHelper;->getInstallParams()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bnc_no_value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1363
    :try_start_0
    iget-object v0, p0, Lio/branch/referral/Branch;->getFirstReferringParamsLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x9c4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1367
    :catch_0
    :cond_0
    iget-object v0, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v0}, Lio/branch/referral/PrefHelper;->getInstallParams()Ljava/lang/String;

    move-result-object v0

    .line 1368
    invoke-direct {p0, v0}, Lio/branch/referral/Branch;->convertParamsStringToDictionary(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1369
    invoke-direct {p0, v0}, Lio/branch/referral/Branch;->appendDebugParams(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    .line 1370
    iput-object v1, p0, Lio/branch/referral/Branch;->getFirstReferringParamsLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method getInitState()Lio/branch/referral/Branch$SESSION_STATE;
    .locals 1

    .line 1718
    iget-object v0, p0, Lio/branch/referral/Branch;->initState_:Lio/branch/referral/Branch$SESSION_STATE;

    return-object v0
.end method

.method getInstallOrOpenRequest(Lio/branch/referral/Branch$BranchReferralInitListener;Z)Lio/branch/referral/ServerRequestInitSession;
    .locals 2

    .line 1860
    invoke-direct {p0}, Lio/branch/referral/Branch;->hasUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1862
    new-instance v0, Lio/branch/referral/ServerRequestRegisterOpen;

    iget-object v1, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lio/branch/referral/ServerRequestRegisterOpen;-><init>(Landroid/content/Context;Lio/branch/referral/Branch$BranchReferralInitListener;Z)V

    goto :goto_0

    .line 1865
    :cond_0
    new-instance v0, Lio/branch/referral/ServerRequestRegisterInstall;

    iget-object v1, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lio/branch/referral/ServerRequestRegisterInstall;-><init>(Landroid/content/Context;Lio/branch/referral/Branch$BranchReferralInitListener;Z)V

    :goto_0
    return-object v0
.end method

.method public getLastAttributedTouchData(Lio/branch/referral/ServerRequestGetLATD$BranchLastAttributedTouchDataListener;)V
    .locals 3

    .line 1124
    iget-object v0, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1125
    new-instance v0, Lio/branch/referral/ServerRequestGetLATD;

    iget-object v1, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    sget-object v2, Lio/branch/referral/Defines$RequestPath;->GetLATD:Lio/branch/referral/Defines$RequestPath;

    invoke-direct {v0, v1, v2, p1}, Lio/branch/referral/ServerRequestGetLATD;-><init>(Landroid/content/Context;Lio/branch/referral/Defines$RequestPath;Lio/branch/referral/ServerRequestGetLATD$BranchLastAttributedTouchDataListener;)V

    invoke-virtual {p0, v0}, Lio/branch/referral/Branch;->handleNewRequest(Lio/branch/referral/ServerRequest;)V

    :cond_0
    return-void
.end method

.method public getLastAttributedTouchData(Lio/branch/referral/ServerRequestGetLATD$BranchLastAttributedTouchDataListener;I)V
    .locals 3

    .line 1140
    iget-object v0, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1141
    new-instance v0, Lio/branch/referral/ServerRequestGetLATD;

    iget-object v1, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    sget-object v2, Lio/branch/referral/Defines$RequestPath;->GetLATD:Lio/branch/referral/Defines$RequestPath;

    invoke-direct {v0, v1, v2, p1, p2}, Lio/branch/referral/ServerRequestGetLATD;-><init>(Landroid/content/Context;Lio/branch/referral/Defines$RequestPath;Lio/branch/referral/ServerRequestGetLATD$BranchLastAttributedTouchDataListener;I)V

    invoke-virtual {p0, v0}, Lio/branch/referral/Branch;->handleNewRequest(Lio/branch/referral/ServerRequest;)V

    :cond_0
    return-void
.end method

.method public getLatestReferringParams()Lorg/json/JSONObject;
    .locals 1

    .line 1385
    iget-object v0, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v0}, Lio/branch/referral/PrefHelper;->getSessionParams()Ljava/lang/String;

    move-result-object v0

    .line 1386
    invoke-direct {p0, v0}, Lio/branch/referral/Branch;->convertParamsStringToDictionary(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1387
    invoke-direct {p0, v0}, Lio/branch/referral/Branch;->appendDebugParams(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getLatestReferringParamsSync()Lorg/json/JSONObject;
    .locals 4

    .line 1404
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lio/branch/referral/Branch;->getLatestReferringParamsLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1406
    :try_start_0
    iget-object v0, p0, Lio/branch/referral/Branch;->initState_:Lio/branch/referral/Branch$SESSION_STATE;

    sget-object v1, Lio/branch/referral/Branch$SESSION_STATE;->INITIALISED:Lio/branch/referral/Branch$SESSION_STATE;

    if-eq v0, v1, :cond_0

    .line 1407
    iget-object v0, p0, Lio/branch/referral/Branch;->getLatestReferringParamsLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x9c4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1411
    :catch_0
    :cond_0
    iget-object v0, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v0}, Lio/branch/referral/PrefHelper;->getSessionParams()Ljava/lang/String;

    move-result-object v0

    .line 1412
    invoke-direct {p0, v0}, Lio/branch/referral/Branch;->convertParamsStringToDictionary(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1413
    invoke-direct {p0, v0}, Lio/branch/referral/Branch;->appendDebugParams(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    .line 1414
    iput-object v1, p0, Lio/branch/referral/Branch;->getLatestReferringParamsLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method getPrefHelper()Lio/branch/referral/PrefHelper;
    .locals 1

    .line 1694
    iget-object v0, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    return-object v0
.end method

.method getSessionReferredLink()Ljava/lang/String;
    .locals 2

    .line 992
    iget-object v0, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v0}, Lio/branch/referral/PrefHelper;->getExternalIntentUri()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bnc_no_value"

    .line 993
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method getShareLinkManager()Lio/branch/referral/ShareLinkManager;
    .locals 1

    .line 1706
    iget-object v0, p0, Lio/branch/referral/Branch;->shareLinkManager_:Lio/branch/referral/ShareLinkManager;

    return-object v0
.end method

.method public getTrackingController()Lio/branch/referral/TrackingController;
    .locals 1

    .line 1682
    iget-object v0, p0, Lio/branch/referral/Branch;->trackingController:Lio/branch/referral/TrackingController;

    return-object v0
.end method

.method public handleNewRequest(Lio/branch/referral/ServerRequest;)V
    .locals 3

    .line 1919
    iget-object v0, p0, Lio/branch/referral/Branch;->trackingController:Lio/branch/referral/TrackingController;

    invoke-virtual {v0}, Lio/branch/referral/TrackingController;->isTrackingDisabled()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/branch/referral/ServerRequest;->prepareExecuteWithoutTracking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested operation cannot be completed since tracking is disabled ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lio/branch/referral/ServerRequest;->requestPath_:Lio/branch/referral/Defines$RequestPath;

    invoke-virtual {v2}, Lio/branch/referral/Defines$RequestPath;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    const/16 v0, -0x75

    .line 1921
    invoke-virtual {p1, v0, v1}, Lio/branch/referral/ServerRequest;->handleFailure(ILjava/lang/String;)V

    return-void

    .line 1925
    :cond_0
    iget-object v0, p0, Lio/branch/referral/Branch;->initState_:Lio/branch/referral/Branch$SESSION_STATE;

    sget-object v2, Lio/branch/referral/Branch$SESSION_STATE;->INITIALISED:Lio/branch/referral/Branch$SESSION_STATE;

    if-eq v0, v2, :cond_3

    instance-of v0, p1, Lio/branch/referral/ServerRequestInitSession;

    if-nez v0, :cond_3

    .line 1926
    instance-of v0, p1, Lio/branch/referral/ServerRequestLogout;

    if-eqz v0, :cond_1

    const/16 v0, -0x65

    .line 1927
    invoke-virtual {p1, v0, v1}, Lio/branch/referral/ServerRequest;->handleFailure(ILjava/lang/String;)V

    const-string p1, "Branch is not initialized, cannot logout"

    .line 1928
    invoke-static {p1}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    return-void

    .line 1931
    :cond_1
    instance-of v0, p1, Lio/branch/referral/ServerRequestRegisterClose;

    if-eqz v0, :cond_2

    const-string p1, "Branch is not initialized, cannot close session"

    .line 1932
    invoke-static {p1}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    return-void

    .line 1935
    :cond_2
    invoke-direct {p0, p1}, Lio/branch/referral/Branch;->requestNeedsSession(Lio/branch/referral/ServerRequest;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1936
    sget-object v0, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;->SDK_INIT_WAIT_LOCK:Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    invoke-virtual {p1, v0}, Lio/branch/referral/ServerRequest;->addProcessWaitLock(Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;)V

    .line 1940
    :cond_3
    iget-object v0, p0, Lio/branch/referral/Branch;->requestQueue_:Lio/branch/referral/ServerRequestQueue;

    invoke-virtual {v0, p1}, Lio/branch/referral/ServerRequestQueue;->enqueue(Lio/branch/referral/ServerRequest;)V

    .line 1941
    invoke-virtual {p1}, Lio/branch/referral/ServerRequest;->onRequestQueued()V

    .line 1943
    invoke-virtual {p0}, Lio/branch/referral/Branch;->processNextQueueItem()V

    return-void
.end method

.method public initSession()Z
    .locals 1

    const/4 v0, 0x0

    .line 3130
    invoke-static {v0}, Lio/branch/referral/Branch;->sessionBuilder(Landroid/app/Activity;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/referral/Branch$InitSessionBuilder;->init()V

    const/4 v0, 0x1

    return v0
.end method

.method public initSession(Landroid/app/Activity;)Z
    .locals 0

    .line 3132
    invoke-static {p1}, Lio/branch/referral/Branch;->sessionBuilder(Landroid/app/Activity;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/referral/Branch$InitSessionBuilder;->init()V

    const/4 p1, 0x1

    return p1
.end method

.method public initSession(Lio/branch/referral/Branch$BranchReferralInitListener;)Z
    .locals 1

    const/4 v0, 0x0

    .line 3116
    invoke-static {v0}, Lio/branch/referral/Branch;->sessionBuilder(Landroid/app/Activity;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/branch/referral/Branch$InitSessionBuilder;->withCallback(Lio/branch/referral/Branch$BranchReferralInitListener;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/referral/Branch$InitSessionBuilder;->init()V

    const/4 p1, 0x1

    return p1
.end method

.method public initSession(Lio/branch/referral/Branch$BranchReferralInitListener;Landroid/app/Activity;)Z
    .locals 0

    .line 3120
    invoke-static {p2}, Lio/branch/referral/Branch;->sessionBuilder(Landroid/app/Activity;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/branch/referral/Branch$InitSessionBuilder;->withCallback(Lio/branch/referral/Branch$BranchReferralInitListener;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/referral/Branch$InitSessionBuilder;->init()V

    const/4 p1, 0x1

    return p1
.end method

.method public initSession(Lio/branch/referral/Branch$BranchReferralInitListener;Landroid/net/Uri;)Z
    .locals 1

    const/4 v0, 0x0

    .line 3124
    invoke-static {v0}, Lio/branch/referral/Branch;->sessionBuilder(Landroid/app/Activity;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/branch/referral/Branch$InitSessionBuilder;->withCallback(Lio/branch/referral/Branch$BranchReferralInitListener;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/branch/referral/Branch$InitSessionBuilder;->withData(Landroid/net/Uri;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/referral/Branch$InitSessionBuilder;->init()V

    const/4 p1, 0x1

    return p1
.end method

.method public initSession(Lio/branch/referral/Branch$BranchReferralInitListener;Landroid/net/Uri;Landroid/app/Activity;)Z
    .locals 0

    .line 3128
    invoke-static {p3}, Lio/branch/referral/Branch;->sessionBuilder(Landroid/app/Activity;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/branch/referral/Branch$InitSessionBuilder;->withCallback(Lio/branch/referral/Branch$BranchReferralInitListener;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/branch/referral/Branch$InitSessionBuilder;->withData(Landroid/net/Uri;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/referral/Branch$InitSessionBuilder;->init()V

    const/4 p1, 0x1

    return p1
.end method

.method public initSession(Lio/branch/referral/Branch$BranchReferralInitListener;Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 3154
    invoke-static {v0}, Lio/branch/referral/Branch;->sessionBuilder(Landroid/app/Activity;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/branch/referral/Branch$InitSessionBuilder;->withCallback(Lio/branch/referral/Branch$BranchReferralInitListener;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/branch/referral/Branch$InitSessionBuilder;->isReferrable(Z)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/referral/Branch$InitSessionBuilder;->init()V

    const/4 p1, 0x1

    return p1
.end method

.method public initSession(Lio/branch/referral/Branch$BranchReferralInitListener;ZLandroid/app/Activity;)Z
    .locals 0

    .line 3158
    invoke-static {p3}, Lio/branch/referral/Branch;->sessionBuilder(Landroid/app/Activity;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/branch/referral/Branch$InitSessionBuilder;->withCallback(Lio/branch/referral/Branch$BranchReferralInitListener;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/branch/referral/Branch$InitSessionBuilder;->isReferrable(Z)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/referral/Branch$InitSessionBuilder;->init()V

    const/4 p1, 0x1

    return p1
.end method

.method public initSession(Lio/branch/referral/Branch$BranchReferralInitListener;ZLandroid/net/Uri;)Z
    .locals 1

    const/4 v0, 0x0

    .line 3146
    invoke-static {v0}, Lio/branch/referral/Branch;->sessionBuilder(Landroid/app/Activity;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/branch/referral/Branch$InitSessionBuilder;->withCallback(Lio/branch/referral/Branch$BranchReferralInitListener;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/branch/referral/Branch$InitSessionBuilder;->isReferrable(Z)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/branch/referral/Branch$InitSessionBuilder;->withData(Landroid/net/Uri;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/referral/Branch$InitSessionBuilder;->init()V

    const/4 p1, 0x1

    return p1
.end method

.method public initSession(Lio/branch/referral/Branch$BranchReferralInitListener;ZLandroid/net/Uri;Landroid/app/Activity;)Z
    .locals 0

    .line 3150
    invoke-static {p4}, Lio/branch/referral/Branch;->sessionBuilder(Landroid/app/Activity;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Lio/branch/referral/Branch$InitSessionBuilder;->withCallback(Lio/branch/referral/Branch$BranchReferralInitListener;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/branch/referral/Branch$InitSessionBuilder;->isReferrable(Z)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/branch/referral/Branch$InitSessionBuilder;->withData(Landroid/net/Uri;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/referral/Branch$InitSessionBuilder;->init()V

    const/4 p1, 0x1

    return p1
.end method

.method public initSession(Lio/branch/referral/Branch$BranchUniversalReferralInitListener;)Z
    .locals 1

    const/4 v0, 0x0

    .line 3114
    invoke-static {v0}, Lio/branch/referral/Branch;->sessionBuilder(Landroid/app/Activity;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/branch/referral/Branch$InitSessionBuilder;->withCallback(Lio/branch/referral/Branch$BranchUniversalReferralInitListener;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/referral/Branch$InitSessionBuilder;->init()V

    const/4 p1, 0x1

    return p1
.end method

.method public initSession(Lio/branch/referral/Branch$BranchUniversalReferralInitListener;Landroid/app/Activity;)Z
    .locals 0

    .line 3118
    invoke-static {p2}, Lio/branch/referral/Branch;->sessionBuilder(Landroid/app/Activity;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/branch/referral/Branch$InitSessionBuilder;->withCallback(Lio/branch/referral/Branch$BranchUniversalReferralInitListener;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/referral/Branch$InitSessionBuilder;->init()V

    const/4 p1, 0x1

    return p1
.end method

.method public initSession(Lio/branch/referral/Branch$BranchUniversalReferralInitListener;Landroid/net/Uri;)Z
    .locals 1

    const/4 v0, 0x0

    .line 3122
    invoke-static {v0}, Lio/branch/referral/Branch;->sessionBuilder(Landroid/app/Activity;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/branch/referral/Branch$InitSessionBuilder;->withCallback(Lio/branch/referral/Branch$BranchUniversalReferralInitListener;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/branch/referral/Branch$InitSessionBuilder;->withData(Landroid/net/Uri;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/referral/Branch$InitSessionBuilder;->init()V

    const/4 p1, 0x1

    return p1
.end method

.method public initSession(Lio/branch/referral/Branch$BranchUniversalReferralInitListener;Landroid/net/Uri;Landroid/app/Activity;)Z
    .locals 0

    .line 3126
    invoke-static {p3}, Lio/branch/referral/Branch;->sessionBuilder(Landroid/app/Activity;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/branch/referral/Branch$InitSessionBuilder;->withCallback(Lio/branch/referral/Branch$BranchUniversalReferralInitListener;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/branch/referral/Branch$InitSessionBuilder;->withData(Landroid/net/Uri;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/referral/Branch$InitSessionBuilder;->init()V

    const/4 p1, 0x1

    return p1
.end method

.method public initSession(Lio/branch/referral/Branch$BranchUniversalReferralInitListener;Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 3152
    invoke-static {v0}, Lio/branch/referral/Branch;->sessionBuilder(Landroid/app/Activity;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/branch/referral/Branch$InitSessionBuilder;->withCallback(Lio/branch/referral/Branch$BranchUniversalReferralInitListener;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/branch/referral/Branch$InitSessionBuilder;->isReferrable(Z)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/referral/Branch$InitSessionBuilder;->init()V

    const/4 p1, 0x1

    return p1
.end method

.method public initSession(Lio/branch/referral/Branch$BranchUniversalReferralInitListener;ZLandroid/app/Activity;)Z
    .locals 0

    .line 3156
    invoke-static {p3}, Lio/branch/referral/Branch;->sessionBuilder(Landroid/app/Activity;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/branch/referral/Branch$InitSessionBuilder;->withCallback(Lio/branch/referral/Branch$BranchUniversalReferralInitListener;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/branch/referral/Branch$InitSessionBuilder;->isReferrable(Z)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/referral/Branch$InitSessionBuilder;->init()V

    const/4 p1, 0x1

    return p1
.end method

.method public initSession(Lio/branch/referral/Branch$BranchUniversalReferralInitListener;ZLandroid/net/Uri;)Z
    .locals 1

    const/4 v0, 0x0

    .line 3144
    invoke-static {v0}, Lio/branch/referral/Branch;->sessionBuilder(Landroid/app/Activity;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/branch/referral/Branch$InitSessionBuilder;->withCallback(Lio/branch/referral/Branch$BranchUniversalReferralInitListener;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/branch/referral/Branch$InitSessionBuilder;->isReferrable(Z)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/branch/referral/Branch$InitSessionBuilder;->withData(Landroid/net/Uri;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/referral/Branch$InitSessionBuilder;->init()V

    const/4 p1, 0x1

    return p1
.end method

.method public initSession(Lio/branch/referral/Branch$BranchUniversalReferralInitListener;ZLandroid/net/Uri;Landroid/app/Activity;)Z
    .locals 0

    .line 3148
    invoke-static {p4}, Lio/branch/referral/Branch;->sessionBuilder(Landroid/app/Activity;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Lio/branch/referral/Branch$InitSessionBuilder;->withCallback(Lio/branch/referral/Branch$BranchUniversalReferralInitListener;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/branch/referral/Branch$InitSessionBuilder;->isReferrable(Z)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/branch/referral/Branch$InitSessionBuilder;->withData(Landroid/net/Uri;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/referral/Branch$InitSessionBuilder;->init()V

    const/4 p1, 0x1

    return p1
.end method

.method public initSession(Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 3140
    invoke-static {v0}, Lio/branch/referral/Branch;->sessionBuilder(Landroid/app/Activity;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/branch/referral/Branch$InitSessionBuilder;->isReferrable(Z)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/referral/Branch$InitSessionBuilder;->init()V

    const/4 p1, 0x1

    return p1
.end method

.method public initSession(ZLandroid/app/Activity;)Z
    .locals 0

    .line 3142
    invoke-static {p2}, Lio/branch/referral/Branch;->sessionBuilder(Landroid/app/Activity;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/branch/referral/Branch$InitSessionBuilder;->isReferrable(Z)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/referral/Branch$InitSessionBuilder;->init()V

    const/4 p1, 0x1

    return p1
.end method

.method public initSessionForced(Lio/branch/referral/Branch$BranchReferralInitListener;)Z
    .locals 2

    const/4 v0, 0x0

    .line 3134
    invoke-static {v0}, Lio/branch/referral/Branch;->sessionBuilder(Landroid/app/Activity;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/branch/referral/Branch$InitSessionBuilder;->ignoreIntent(Z)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/branch/referral/Branch$InitSessionBuilder;->withCallback(Lio/branch/referral/Branch$BranchReferralInitListener;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/referral/Branch$InitSessionBuilder;->init()V

    return v1
.end method

.method public initSessionWithData(Landroid/net/Uri;)Z
    .locals 1

    const/4 v0, 0x0

    .line 3136
    invoke-static {v0}, Lio/branch/referral/Branch;->sessionBuilder(Landroid/app/Activity;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/branch/referral/Branch$InitSessionBuilder;->withData(Landroid/net/Uri;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/referral/Branch$InitSessionBuilder;->init()V

    const/4 p1, 0x1

    return p1
.end method

.method public initSessionWithData(Landroid/net/Uri;Landroid/app/Activity;)Z
    .locals 0

    .line 3138
    invoke-static {p2}, Lio/branch/referral/Branch;->sessionBuilder(Landroid/app/Activity;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/branch/referral/Branch$InitSessionBuilder;->withData(Landroid/net/Uri;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/referral/Branch$InitSessionBuilder;->init()V

    const/4 p1, 0x1

    return p1
.end method

.method isGAParamsFetchInProgress()Z
    .locals 1

    .line 1698
    iget-boolean v0, p0, Lio/branch/referral/Branch;->isGAParamsFetchInProgress_:Z

    return v0
.end method

.method isIDLSession()Z
    .locals 2

    .line 3052
    iget-object v0, p0, Lio/branch/referral/Branch;->instrumentationExtraData_:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lio/branch/referral/Defines$Jsonkey;->InstantDeepLinkSession:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInstantDeepLinkPossible()Z
    .locals 1

    .line 1730
    iget-boolean v0, p0, Lio/branch/referral/Branch;->isInstantDeepLinkPossible:Z

    return v0
.end method

.method isRestartSessionRequested(Landroid/content/Intent;)Z
    .locals 1

    .line 1973
    invoke-direct {p0, p1}, Lio/branch/referral/Branch;->checkIntentForSessionRestart(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lio/branch/referral/Branch;->checkIntentForUnusedBranchLink(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isTrackingDisabled()Z
    .locals 1

    .line 600
    iget-object v0, p0, Lio/branch/referral/Branch;->trackingController:Lio/branch/referral/TrackingController;

    invoke-virtual {v0}, Lio/branch/referral/TrackingController;->isTrackingDisabled()Z

    move-result v0

    return v0
.end method

.method public isUserIdentified()Z
    .locals 2

    .line 1153
    iget-object v0, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v0}, Lio/branch/referral/PrefHelper;->getIdentity()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bnc_no_value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public loadRewards()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public loadRewards(Lio/branch/referral/Branch$BranchReferralStateChangedListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public logout()V
    .locals 1

    const/4 v0, 0x0

    .line 1162
    invoke-virtual {p0, v0}, Lio/branch/referral/Branch;->logout(Lio/branch/referral/Branch$LogoutStatusListener;)V

    return-void
.end method

.method public logout(Lio/branch/referral/Branch$LogoutStatusListener;)V
    .locals 2

    .line 1173
    new-instance v0, Lio/branch/referral/ServerRequestLogout;

    iget-object v1, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lio/branch/referral/ServerRequestLogout;-><init>(Landroid/content/Context;Lio/branch/referral/Branch$LogoutStatusListener;)V

    .line 1174
    iget-boolean p1, v0, Lio/branch/referral/ServerRequest;->constructError_:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    invoke-virtual {v0, p1}, Lio/branch/referral/ServerRequest;->handleErrors(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1175
    invoke-virtual {p0, v0}, Lio/branch/referral/Branch;->handleNewRequest(Lio/branch/referral/ServerRequest;)V

    :cond_0
    return-void
.end method

.method public notifyNetworkAvailable()V
    .locals 0

    .line 1950
    invoke-virtual {p0}, Lio/branch/referral/Branch;->processNextQueueItem()V

    return-void
.end method

.method public onAdsParamsFetchFinished()V
    .locals 3

    const/4 v0, 0x0

    .line 998
    iput-boolean v0, p0, Lio/branch/referral/Branch;->isGAParamsFetchInProgress_:Z

    .line 999
    iget-object v1, p0, Lio/branch/referral/Branch;->requestQueue_:Lio/branch/referral/ServerRequestQueue;

    sget-object v2, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;->GAID_FETCH_WAIT_LOCK:Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    invoke-virtual {v1, v2}, Lio/branch/referral/ServerRequestQueue;->unlockProcessWait(Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;)V

    .line 1000
    iget-boolean v1, p0, Lio/branch/referral/Branch;->performCookieBasedStrongMatchingOnGAIDAvailable:Z

    if-eqz v1, :cond_0

    .line 1001
    invoke-direct {p0}, Lio/branch/referral/Branch;->performCookieBasedStrongMatch()V

    .line 1002
    iput-boolean v0, p0, Lio/branch/referral/Branch;->performCookieBasedStrongMatchingOnGAIDAvailable:Z

    goto :goto_0

    .line 1004
    :cond_0
    invoke-virtual {p0}, Lio/branch/referral/Branch;->processNextQueueItem()V

    :goto_0
    return-void
.end method

.method public onBranchViewAccepted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2599
    invoke-static {p1}, Lio/branch/referral/ServerRequestInitSession;->isInitSessionAction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2600
    invoke-virtual {p0}, Lio/branch/referral/Branch;->checkForAutoDeepLinkConfiguration()V

    :cond_0
    return-void
.end method

.method public onBranchViewCancelled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2606
    invoke-static {p1}, Lio/branch/referral/ServerRequestInitSession;->isInitSessionAction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2607
    invoke-virtual {p0}, Lio/branch/referral/Branch;->checkForAutoDeepLinkConfiguration()V

    :cond_0
    return-void
.end method

.method public onBranchViewError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2613
    invoke-static {p3}, Lio/branch/referral/ServerRequestInitSession;->isInitSessionAction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2614
    invoke-virtual {p0}, Lio/branch/referral/Branch;->checkForAutoDeepLinkConfiguration()V

    :cond_0
    return-void
.end method

.method public onBranchViewVisible(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInstallReferrerEventsFinished()V
    .locals 2

    .line 1010
    iget-object v0, p0, Lio/branch/referral/Branch;->requestQueue_:Lio/branch/referral/ServerRequestQueue;

    sget-object v1, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;->INSTALL_REFERRER_FETCH_WAIT_LOCK:Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    invoke-virtual {v0, v1}, Lio/branch/referral/ServerRequestQueue;->unlockProcessWait(Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;)V

    .line 1011
    invoke-virtual {p0}, Lio/branch/referral/Branch;->processNextQueueItem()V

    return-void
.end method

.method onIntentReady(Landroid/app/Activity;)V
    .locals 3

    .line 1871
    sget-object v0, Lio/branch/referral/Branch$INTENT_STATE;->READY:Lio/branch/referral/Branch$INTENT_STATE;

    invoke-virtual {p0, v0}, Lio/branch/referral/Branch;->setIntentState(Lio/branch/referral/Branch$INTENT_STATE;)V

    .line 1872
    iget-object v0, p0, Lio/branch/referral/Branch;->requestQueue_:Lio/branch/referral/ServerRequestQueue;

    sget-object v1, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;->INTENT_PENDING_WAIT_LOCK:Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    invoke-virtual {v0, v1}, Lio/branch/referral/ServerRequestQueue;->unlockProcessWait(Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;)V

    .line 1874
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/branch/referral/Branch;->getInitState()Lio/branch/referral/Branch$SESSION_STATE;

    move-result-object v0

    sget-object v2, Lio/branch/referral/Branch$SESSION_STATE;->INITIALISED:Lio/branch/referral/Branch$SESSION_STATE;

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1877
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1878
    invoke-direct {p0, v0, p1}, Lio/branch/referral/Branch;->readAndStripParam(Landroid/net/Uri;Landroid/app/Activity;)V

    .line 1880
    invoke-virtual {p0}, Lio/branch/referral/Branch;->isTrackingDisabled()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lio/branch/referral/Branch;->cookieBasedMatchDomain_:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    .line 1881
    invoke-virtual {p1}, Lio/branch/referral/PrefHelper;->getBranchKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    .line 1882
    invoke-virtual {p1}, Lio/branch/referral/PrefHelper;->getBranchKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bnc_no_value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1883
    iget-boolean p1, p0, Lio/branch/referral/Branch;->isGAParamsFetchInProgress_:Z

    if-eqz p1, :cond_1

    .line 1885
    iput-boolean v1, p0, Lio/branch/referral/Branch;->performCookieBasedStrongMatchingOnGAIDAvailable:Z

    goto :goto_1

    .line 1887
    :cond_1
    invoke-direct {p0}, Lio/branch/referral/Branch;->performCookieBasedStrongMatch()V

    .line 1891
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lio/branch/referral/Branch;->processNextQueueItem()V

    return-void
.end method

.method processNextQueueItem()V
    .locals 5

    .line 1576
    :try_start_0
    iget-object v0, p0, Lio/branch/referral/Branch;->serverSema_:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1577
    iget v0, p0, Lio/branch/referral/Branch;->networkCount_:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lio/branch/referral/Branch;->requestQueue_:Lio/branch/referral/ServerRequestQueue;

    invoke-virtual {v0}, Lio/branch/referral/ServerRequestQueue;->getSize()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    .line 1578
    iput v0, p0, Lio/branch/referral/Branch;->networkCount_:I

    .line 1579
    iget-object v0, p0, Lio/branch/referral/Branch;->requestQueue_:Lio/branch/referral/ServerRequestQueue;

    invoke-virtual {v0}, Lio/branch/referral/ServerRequestQueue;->peek()Lio/branch/referral/ServerRequest;

    move-result-object v0

    .line 1581
    iget-object v1, p0, Lio/branch/referral/Branch;->serverSema_:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    if-eqz v0, :cond_3

    .line 1583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processNextQueueItem, req "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    .line 1584
    invoke-virtual {v0}, Lio/branch/referral/ServerRequest;->isWaitingOnProcessToFinish()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 1586
    instance-of v1, v0, Lio/branch/referral/ServerRequestRegisterInstall;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    const/16 v4, -0x65

    if-nez v1, :cond_0

    :try_start_1
    invoke-direct {p0}, Lio/branch/referral/Branch;->hasUser()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Branch Error: User session has not been initialized!"

    .line 1587
    invoke-static {v1}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    .line 1588
    iput v2, p0, Lio/branch/referral/Branch;->networkCount_:I

    .line 1589
    invoke-virtual {v0, v4, v3}, Lio/branch/referral/ServerRequest;->handleFailure(ILjava/lang/String;)V

    goto :goto_0

    .line 1592
    :cond_0
    invoke-direct {p0, v0}, Lio/branch/referral/Branch;->requestNeedsSession(Lio/branch/referral/ServerRequest;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lio/branch/referral/Branch;->isSessionAvailableForRequest()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1593
    iput v2, p0, Lio/branch/referral/Branch;->networkCount_:I

    .line 1594
    invoke-virtual {v0, v4, v3}, Lio/branch/referral/ServerRequest;->handleFailure(ILjava/lang/String;)V

    goto :goto_0

    .line 1596
    :cond_1
    iget-object v1, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v1}, Lio/branch/referral/PrefHelper;->getTaskTimeout()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lio/branch/referral/Branch;->executeTimedBranchPostTask(Lio/branch/referral/ServerRequest;I)V

    goto :goto_0

    .line 1599
    :cond_2
    iput v2, p0, Lio/branch/referral/Branch;->networkCount_:I

    goto :goto_0

    .line 1602
    :cond_3
    iget-object v0, p0, Lio/branch/referral/Branch;->requestQueue_:Lio/branch/referral/ServerRequestQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/branch/referral/ServerRequestQueue;->remove(Lio/branch/referral/ServerRequest;)Z

    goto :goto_0

    .line 1605
    :cond_4
    iget-object v0, p0, Lio/branch/referral/Branch;->serverSema_:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1608
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public reInitSession(Landroid/app/Activity;Lio/branch/referral/Branch$BranchReferralInitListener;)Z
    .locals 1

    .line 3162
    invoke-static {p1}, Lio/branch/referral/Branch;->sessionBuilder(Landroid/app/Activity;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/branch/referral/Branch$InitSessionBuilder;->withCallback(Lio/branch/referral/Branch$BranchReferralInitListener;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lio/branch/referral/Branch$InitSessionBuilder;->reInit()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public reInitSession(Landroid/app/Activity;Lio/branch/referral/Branch$BranchUniversalReferralInitListener;)Z
    .locals 1

    .line 3160
    invoke-static {p1}, Lio/branch/referral/Branch;->sessionBuilder(Landroid/app/Activity;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/branch/referral/Branch$InitSessionBuilder;->withCallback(Lio/branch/referral/Branch$BranchUniversalReferralInitListener;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lio/branch/referral/Branch$InitSessionBuilder;->reInit()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public redeemRewards(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public redeemRewards(ILio/branch/referral/Branch$BranchReferralStateChangedListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public redeemRewards(Ljava/lang/String;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public redeemRewards(Ljava/lang/String;ILio/branch/referral/Branch$BranchReferralStateChangedListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method registerAppInit(Lio/branch/referral/ServerRequestInitSession;Z)V
    .locals 3

    .line 1821
    sget-object v0, Lio/branch/referral/Branch$SESSION_STATE;->INITIALISING:Lio/branch/referral/Branch$SESSION_STATE;

    invoke-virtual {p0, v0}, Lio/branch/referral/Branch;->setInitState(Lio/branch/referral/Branch$SESSION_STATE;)V

    if-nez p2, :cond_1

    .line 1826
    iget-object p2, p0, Lio/branch/referral/Branch;->intentState_:Lio/branch/referral/Branch$INTENT_STATE;

    sget-object v0, Lio/branch/referral/Branch$INTENT_STATE;->READY:Lio/branch/referral/Branch$INTENT_STATE;

    if-eq p2, v0, :cond_0

    invoke-static {}, Lio/branch/referral/Branch;->isWaitingForIntent()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1827
    sget-object p2, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;->INTENT_PENDING_WAIT_LOCK:Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    invoke-virtual {p1, p2}, Lio/branch/referral/ServerRequestInitSession;->addProcessWaitLock(Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;)V

    .line 1833
    :cond_0
    sget-boolean p2, Lio/branch/referral/Branch;->checkInstallReferrer_:Z

    if-eqz p2, :cond_1

    instance-of p2, p1, Lio/branch/referral/ServerRequestRegisterInstall;

    if-eqz p2, :cond_1

    sget-boolean p2, Lio/branch/referral/GooglePlayStoreAttribution;->hasBeenUsed:Z

    if-nez p2, :cond_1

    .line 1834
    sget-object p2, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;->INSTALL_REFERRER_FETCH_WAIT_LOCK:Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    invoke-virtual {p1, p2}, Lio/branch/referral/ServerRequestInitSession;->addProcessWaitLock(Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;)V

    .line 1835
    new-instance p2, Lio/branch/referral/GooglePlayStoreAttribution;

    invoke-direct {p2}, Lio/branch/referral/GooglePlayStoreAttribution;-><init>()V

    iget-object v0, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    sget-wide v1, Lio/branch/referral/Branch;->playStoreReferrerWaitTime:J

    invoke-virtual {p2, v0, v1, v2, p0}, Lio/branch/referral/GooglePlayStoreAttribution;->captureInstallReferrer(Landroid/content/Context;JLio/branch/referral/GooglePlayStoreAttribution$IInstallReferrerEvents;)V

    .line 1839
    sget-boolean p2, Lio/branch/referral/GooglePlayStoreAttribution;->erroredOut:Z

    if-eqz p2, :cond_1

    .line 1840
    sget-object p2, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;->INSTALL_REFERRER_FETCH_WAIT_LOCK:Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    invoke-virtual {p1, p2}, Lio/branch/referral/ServerRequestInitSession;->removeProcessWaitLock(Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;)V

    .line 1845
    :cond_1
    iget-boolean p2, p0, Lio/branch/referral/Branch;->isGAParamsFetchInProgress_:Z

    if-eqz p2, :cond_2

    .line 1846
    sget-object p2, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;->GAID_FETCH_WAIT_LOCK:Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    invoke-virtual {p1, p2}, Lio/branch/referral/ServerRequestInitSession;->addProcessWaitLock(Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;)V

    .line 1849
    :cond_2
    iget-object p2, p0, Lio/branch/referral/Branch;->requestQueue_:Lio/branch/referral/ServerRequestQueue;

    invoke-virtual {p2}, Lio/branch/referral/ServerRequestQueue;->getSelfInitRequest()Lio/branch/referral/ServerRequestInitSession;

    move-result-object p2

    if-nez p2, :cond_3

    .line 1851
    invoke-direct {p0, p1}, Lio/branch/referral/Branch;->insertRequestAtFront(Lio/branch/referral/ServerRequest;)V

    .line 1852
    invoke-virtual {p0}, Lio/branch/referral/Branch;->processNextQueueItem()V

    goto :goto_0

    .line 1854
    :cond_3
    iget-object p1, p1, Lio/branch/referral/ServerRequestInitSession;->callback_:Lio/branch/referral/Branch$BranchReferralInitListener;

    iput-object p1, p2, Lio/branch/referral/ServerRequestInitSession;->callback_:Lio/branch/referral/Branch$BranchReferralInitListener;

    :goto_0
    return-void
.end method

.method public registerView(Lio/branch/indexing/BranchUniversalObject;Lio/branch/indexing/BranchUniversalObject$RegisterViewStatusListener;)V
    .locals 2

    .line 2560
    iget-object p2, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 2561
    new-instance p2, Lio/branch/referral/util/BranchEvent;

    sget-object v0, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->VIEW_ITEM:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    invoke-direct {p2, v0}, Lio/branch/referral/util/BranchEvent;-><init>(Lio/branch/referral/util/BRANCH_STANDARD_EVENT;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lio/branch/indexing/BranchUniversalObject;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2562
    invoke-virtual {p2, v0}, Lio/branch/referral/util/BranchEvent;->addContentItems([Lio/branch/indexing/BranchUniversalObject;)Lio/branch/referral/util/BranchEvent;

    move-result-object p1

    iget-object p2, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    .line 2563
    invoke-virtual {p1, p2}, Lio/branch/referral/util/BranchEvent;->logEvent(Landroid/content/Context;)Z

    :cond_0
    return-void
.end method

.method public removeSessionInitializationDelay()V
    .locals 2

    .line 1343
    iget-object v0, p0, Lio/branch/referral/Branch;->requestQueue_:Lio/branch/referral/ServerRequestQueue;

    sget-object v1, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;->USER_SET_WAIT_LOCK:Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    invoke-virtual {v0, v1}, Lio/branch/referral/ServerRequestQueue;->unlockProcessWait(Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;)V

    .line 1344
    invoke-virtual {p0}, Lio/branch/referral/Branch;->processNextQueueItem()V

    return-void
.end method

.method public resetUserSession()V
    .locals 1

    .line 671
    sget-object v0, Lio/branch/referral/Branch$SESSION_STATE;->UNINITIALISED:Lio/branch/referral/Branch$SESSION_STATE;

    invoke-virtual {p0, v0}, Lio/branch/referral/Branch;->setInitState(Lio/branch/referral/Branch$SESSION_STATE;)V

    return-void
.end method

.method public sendCommerceEvent(Lio/branch/referral/util/CommerceEvent;)V
    .locals 1

    const/4 v0, 0x0

    .line 1321
    invoke-virtual {p0, p1, v0, v0}, Lio/branch/referral/Branch;->sendCommerceEvent(Lio/branch/referral/util/CommerceEvent;Lorg/json/JSONObject;Lio/branch/referral/BranchViewHandler$IBranchViewEvents;)V

    return-void
.end method

.method public sendCommerceEvent(Lio/branch/referral/util/CommerceEvent;Lorg/json/JSONObject;Lio/branch/referral/BranchViewHandler$IBranchViewEvents;)V
    .locals 7

    .line 1313
    new-instance v6, Lio/branch/referral/ServerRequestActionCompleted;

    iget-object v1, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    sget-object v0, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->PURCHASE:Lio/branch/referral/util/BRANCH_STANDARD_EVENT;

    .line 1314
    invoke-virtual {v0}, Lio/branch/referral/util/BRANCH_STANDARD_EVENT;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/branch/referral/ServerRequestActionCompleted;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/branch/referral/util/CommerceEvent;Lorg/json/JSONObject;Lio/branch/referral/BranchViewHandler$IBranchViewEvents;)V

    .line 1315
    iget-boolean p1, v6, Lio/branch/referral/ServerRequest;->constructError_:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    invoke-virtual {v6, p1}, Lio/branch/referral/ServerRequest;->handleErrors(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1316
    invoke-virtual {p0, v6}, Lio/branch/referral/Branch;->handleNewRequest(Lio/branch/referral/ServerRequest;)V

    :cond_0
    return-void
.end method

.method public setBranchRemoteInterface(Lio/branch/referral/network/BranchRemoteInterface;)V
    .locals 0

    if-nez p1, :cond_0

    .line 503
    new-instance p1, Lio/branch/referral/network/BranchRemoteInterfaceUrlConnection;

    invoke-direct {p1, p0}, Lio/branch/referral/network/BranchRemoteInterfaceUrlConnection;-><init>(Lio/branch/referral/Branch;)V

    iput-object p1, p0, Lio/branch/referral/Branch;->branchRemoteInterface_:Lio/branch/referral/network/BranchRemoteInterface;

    goto :goto_0

    .line 505
    :cond_0
    iput-object p1, p0, Lio/branch/referral/Branch;->branchRemoteInterface_:Lio/branch/referral/network/BranchRemoteInterface;

    :goto_0
    return-void
.end method

.method public setDebug()V
    .locals 1

    const-string v0, "setDebug is deprecated and all functionality has been disabled. If you wish to enable logging, please invoke enableLogging. If you wish to simulate installs, please see add a Test Device (https://help.branch.io/using-branch/docs/adding-test-devices) then reset your test device\'s data (https://help.branch.io/using-branch/docs/adding-test-devices#section-resetting-your-test-device-data). If you wish to use the test key rather than the live key, please invoke enableTestMode."

    .line 3172
    invoke-static {v0}, Lio/branch/referral/PrefHelper;->LogAlways(Ljava/lang/String;)V

    return-void
.end method

.method public setDeepLinkDebugMode(Lorg/json/JSONObject;)V
    .locals 0

    .line 771
    iput-object p1, p0, Lio/branch/referral/Branch;->deeplinkDebugParams_:Lorg/json/JSONObject;

    return-void
.end method

.method setGAParamsFetchInProgress(Z)V
    .locals 0

    .line 1702
    iput-boolean p1, p0, Lio/branch/referral/Branch;->isGAParamsFetchInProgress_:Z

    return-void
.end method

.method public setIdentity(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1077
    invoke-virtual {p0, p1, v0}, Lio/branch/referral/Branch;->setIdentity(Ljava/lang/String;Lio/branch/referral/Branch$BranchReferralInitListener;)V

    return-void
.end method

.method public setIdentity(Ljava/lang/String;Lio/branch/referral/Branch$BranchReferralInitListener;)V
    .locals 2

    .line 1091
    new-instance v0, Lio/branch/referral/ServerRequestIdentifyUserRequest;

    iget-object v1, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1}, Lio/branch/referral/ServerRequestIdentifyUserRequest;-><init>(Landroid/content/Context;Lio/branch/referral/Branch$BranchReferralInitListener;Ljava/lang/String;)V

    .line 1092
    iget-boolean p1, v0, Lio/branch/referral/ServerRequestIdentifyUserRequest;->constructError_:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    invoke-virtual {v0, p1}, Lio/branch/referral/ServerRequestIdentifyUserRequest;->handleErrors(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1093
    invoke-virtual {p0, v0}, Lio/branch/referral/Branch;->handleNewRequest(Lio/branch/referral/ServerRequest;)V

    goto :goto_0

    .line 1095
    :cond_0
    invoke-virtual {v0}, Lio/branch/referral/ServerRequestIdentifyUserRequest;->isExistingID()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1096
    sget-object p1, Lio/branch/referral/Branch;->branchReferral_:Lio/branch/referral/Branch;

    invoke-virtual {v0, p1}, Lio/branch/referral/ServerRequestIdentifyUserRequest;->handleUserExist(Lio/branch/referral/Branch;)V

    :cond_1
    :goto_0
    return-void
.end method

.method setInitState(Lio/branch/referral/Branch$SESSION_STATE;)V
    .locals 0

    .line 1714
    iput-object p1, p0, Lio/branch/referral/Branch;->initState_:Lio/branch/referral/Branch$SESSION_STATE;

    return-void
.end method

.method public setInstantDeepLinkPossible(Z)V
    .locals 0

    .line 1726
    iput-boolean p1, p0, Lio/branch/referral/Branch;->isInstantDeepLinkPossible:Z

    return-void
.end method

.method setIntentState(Lio/branch/referral/Branch$INTENT_STATE;)V
    .locals 0

    .line 1710
    iput-object p1, p0, Lio/branch/referral/Branch;->intentState_:Lio/branch/referral/Branch$INTENT_STATE;

    return-void
.end method

.method public setLimitFacebookTracking(Z)V
    .locals 1

    .line 796
    iget-object v0, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v0, p1}, Lio/branch/referral/PrefHelper;->setLimitFacebookTracking(Z)V

    return-void
.end method

.method public setNetworkConnectTimeout(I)V
    .locals 1

    .line 724
    iget-object v0, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 725
    invoke-virtual {v0, p1}, Lio/branch/referral/PrefHelper;->setConnectTimeout(I)V

    :cond_0
    return-void
.end method

.method public setNetworkTimeout(I)V
    .locals 1

    .line 711
    iget-object v0, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 712
    invoke-virtual {v0, p1}, Lio/branch/referral/PrefHelper;->setTimeout(I)V

    :cond_0
    return-void
.end method

.method public setPreinstallCampaign(Ljava/lang/String;)Lio/branch/referral/Branch;
    .locals 1

    .line 824
    sget-object v0, Lio/branch/referral/Defines$PreinstallKey;->campaign:Lio/branch/referral/Defines$PreinstallKey;

    invoke-virtual {v0}, Lio/branch/referral/Defines$PreinstallKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/branch/referral/Branch;->addInstallMetadata(Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/Branch;

    return-object p0
.end method

.method public setPreinstallPartner(Ljava/lang/String;)Lio/branch/referral/Branch;
    .locals 1

    .line 834
    sget-object v0, Lio/branch/referral/Defines$PreinstallKey;->partner:Lio/branch/referral/Defines$PreinstallKey;

    invoke-virtual {v0}, Lio/branch/referral/Defines$PreinstallKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/branch/referral/Branch;->addInstallMetadata(Ljava/lang/String;Ljava/lang/String;)Lio/branch/referral/Branch;

    return-object p0
.end method

.method public setReferrerGclidValidForWindow(J)V
    .locals 1

    .line 740
    iget-object v0, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    if-eqz v0, :cond_0

    .line 741
    invoke-virtual {v0, p1, p2}, Lio/branch/referral/PrefHelper;->setReferrerGclidValidForWindow(J)V

    :cond_0
    return-void
.end method

.method public setRequestMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 803
    iget-object v0, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v0, p1, p2}, Lio/branch/referral/PrefHelper;->setRequestMetadata(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRetryCount(I)V
    .locals 1

    .line 684
    iget-object v0, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 685
    invoke-virtual {v0, p1}, Lio/branch/referral/PrefHelper;->setRetryCount(I)V

    :cond_0
    return-void
.end method

.method public setRetryInterval(I)V
    .locals 1

    .line 697
    iget-object v0, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 698
    invoke-virtual {v0, p1}, Lio/branch/referral/PrefHelper;->setRetryInterval(I)V

    :cond_0
    return-void
.end method

.method public setWhiteListedSchemes(Ljava/util/List;)Lio/branch/referral/Branch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/branch/referral/Branch;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1043
    iget-object v0, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    invoke-static {v0}, Lio/branch/referral/UniversalResourceAnalyser;->getInstance(Landroid/content/Context;)Lio/branch/referral/UniversalResourceAnalyser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/branch/referral/UniversalResourceAnalyser;->addToAcceptURLFormats(Ljava/util/List;)V

    :cond_0
    return-object p0
.end method

.method shareLink(Lio/branch/referral/BranchShareSheetBuilder;)V
    .locals 2

    .line 1501
    iget-object v0, p0, Lio/branch/referral/Branch;->shareLinkManager_:Lio/branch/referral/ShareLinkManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1502
    invoke-virtual {v0, v1}, Lio/branch/referral/ShareLinkManager;->cancelShareLinkDialog(Z)V

    .line 1504
    :cond_0
    new-instance v0, Lio/branch/referral/ShareLinkManager;

    invoke-direct {v0}, Lio/branch/referral/ShareLinkManager;-><init>()V

    iput-object v0, p0, Lio/branch/referral/Branch;->shareLinkManager_:Lio/branch/referral/ShareLinkManager;

    .line 1505
    invoke-virtual {v0, p1}, Lio/branch/referral/ShareLinkManager;->shareLink(Lio/branch/referral/BranchShareSheetBuilder;)Landroid/app/Dialog;

    return-void
.end method

.method unlockSDKInitWaitLock()V
    .locals 2

    .line 972
    iget-object v0, p0, Lio/branch/referral/Branch;->requestQueue_:Lio/branch/referral/ServerRequestQueue;

    if-nez v0, :cond_0

    return-void

    .line 973
    :cond_0
    sget-object v1, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;->SDK_INIT_WAIT_LOCK:Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    invoke-virtual {v0, v1}, Lio/branch/referral/ServerRequestQueue;->unlockProcessWait(Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;)V

    .line 974
    invoke-virtual {p0}, Lio/branch/referral/Branch;->processNextQueueItem()V

    return-void
.end method

.method updateAllRequestsInQueue()V
    .locals 6

    const/4 v0, 0x0

    .line 1659
    :goto_0
    :try_start_0
    iget-object v1, p0, Lio/branch/referral/Branch;->requestQueue_:Lio/branch/referral/ServerRequestQueue;

    invoke-virtual {v1}, Lio/branch/referral/ServerRequestQueue;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1660
    iget-object v1, p0, Lio/branch/referral/Branch;->requestQueue_:Lio/branch/referral/ServerRequestQueue;

    invoke-virtual {v1, v0}, Lio/branch/referral/ServerRequestQueue;->peekAt(I)Lio/branch/referral/ServerRequest;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1662
    invoke-virtual {v1}, Lio/branch/referral/ServerRequest;->getPost()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1664
    sget-object v3, Lio/branch/referral/Defines$Jsonkey;->SessionID:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v3}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1665
    invoke-virtual {v1}, Lio/branch/referral/ServerRequest;->getPost()Lorg/json/JSONObject;

    move-result-object v3

    sget-object v4, Lio/branch/referral/Defines$Jsonkey;->SessionID:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v4}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v5}, Lio/branch/referral/PrefHelper;->getSessionID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1667
    :cond_0
    sget-object v3, Lio/branch/referral/Defines$Jsonkey;->RandomizedBundleToken:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v3}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1668
    invoke-virtual {v1}, Lio/branch/referral/ServerRequest;->getPost()Lorg/json/JSONObject;

    move-result-object v3

    sget-object v4, Lio/branch/referral/Defines$Jsonkey;->RandomizedBundleToken:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v4}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v5}, Lio/branch/referral/PrefHelper;->getRandomizedBundleToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1670
    :cond_1
    sget-object v3, Lio/branch/referral/Defines$Jsonkey;->RandomizedDeviceToken:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v3}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1671
    invoke-virtual {v1}, Lio/branch/referral/ServerRequest;->getPost()Lorg/json/JSONObject;

    move-result-object v1

    sget-object v2, Lio/branch/referral/Defines$Jsonkey;->RandomizedDeviceToken:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v2}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/branch/referral/Branch;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v3}, Lio/branch/referral/PrefHelper;->getRandomizedDeviceToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1677
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    return-void
.end method

.method updateSkipURLFormats()V
    .locals 2

    .line 1067
    iget-object v0, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    invoke-static {v0}, Lio/branch/referral/UniversalResourceAnalyser;->getInstance(Landroid/content/Context;)Lio/branch/referral/UniversalResourceAnalyser;

    move-result-object v0

    iget-object v1, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/branch/referral/UniversalResourceAnalyser;->checkAndUpdateSkipURLFormats(Landroid/content/Context;)V

    return-void
.end method

.method public userCompletedAction(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1276
    invoke-virtual {p0, p1, v0, v0}, Lio/branch/referral/Branch;->userCompletedAction(Ljava/lang/String;Lorg/json/JSONObject;Lio/branch/referral/BranchViewHandler$IBranchViewEvents;)V

    return-void
.end method

.method public userCompletedAction(Ljava/lang/String;Lio/branch/referral/BranchViewHandler$IBranchViewEvents;)V
    .locals 1

    const/4 v0, 0x0

    .line 1289
    invoke-virtual {p0, p1, v0, p2}, Lio/branch/referral/Branch;->userCompletedAction(Ljava/lang/String;Lorg/json/JSONObject;Lio/branch/referral/BranchViewHandler$IBranchViewEvents;)V

    return-void
.end method

.method public userCompletedAction(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 1265
    invoke-virtual {p0, p1, p2, v0}, Lio/branch/referral/Branch;->userCompletedAction(Ljava/lang/String;Lorg/json/JSONObject;Lio/branch/referral/BranchViewHandler$IBranchViewEvents;)V

    return-void
.end method

.method public userCompletedAction(Ljava/lang/String;Lorg/json/JSONObject;Lio/branch/referral/BranchViewHandler$IBranchViewEvents;)V
    .locals 7

    .line 1304
    new-instance v6, Lio/branch/referral/ServerRequestActionCompleted;

    iget-object v1, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/branch/referral/ServerRequestActionCompleted;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/branch/referral/util/CommerceEvent;Lorg/json/JSONObject;Lio/branch/referral/BranchViewHandler$IBranchViewEvents;)V

    .line 1306
    iget-boolean p1, v6, Lio/branch/referral/ServerRequest;->constructError_:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/branch/referral/Branch;->context_:Landroid/content/Context;

    invoke-virtual {v6, p1}, Lio/branch/referral/ServerRequest;->handleErrors(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1307
    invoke-virtual {p0, v6}, Lio/branch/referral/Branch;->handleNewRequest(Lio/branch/referral/ServerRequest;)V

    :cond_0
    return-void
.end method
