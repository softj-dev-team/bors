.class public Lcom/sdkbox/plugin/PluginFacebook;
.super Ljava/lang/Object;
.source "PluginFacebook.java"

# interfaces
.implements Lcom/sdkbox/plugin/PluginListener;


# static fields
.field static final FBSDKShareTypeAPI:I = 0x1

.field static final FBSDKShareTypeDialog:I = 0x2

.field static final FB_LINK:I = 0x1

.field static final FB_NONE:I = 0x0

.field static final FB_PHOTO:I = 0x2

.field public static final LOGIN_ACCESS_TOKEN_SET:Ljava/lang/String; = "access_token"

.field public static final LOGIN_DEFAULT_REQUESTED_PERMISSIONS:Ljava/lang/String; = "public_profile"

.field public static final LOGIN_REQUESTED_PERMISSIONS:Ljava/lang/String; = "login_permissions"

.field public static final PLUGIN_PRIVATE_DATA_KEY:Ljava/lang/String; = "com.sdkbox.fb"

.field static final TAG:Ljava/lang/String; = "PluginFacebook"

.field public static instance:Lcom/sdkbox/plugin/PluginFacebook; = null

.field static final kFBLoginCallback:I = 0x1

.field static final kFBPermissionCallback:I = 0x2

.field static final kFBRequestTypeAskFor:I = 0x2

.field static final kFBRequestTypeInvite:I = 0x1

.field static final kFBRequestTypeSend:I = 0x3

.field private static mDebug:Z = true


# instance fields
.field private _FBRequestType:I

.field private _userInfoRequested:Z

.field private accessTokenTracker:Lcom/facebook/AccessTokenTracker;

.field private callbackManager:Lcom/facebook/CallbackManager;

.field private inviteDialog:Lcom/facebook/share/widget/AppInviteDialog;

.field private mContext:Landroid/content/Context;

.field mFBEventLogger:Lcom/facebook/appevents/AppEventsLogger;

.field private requestDialog:Lcom/facebook/share/widget/GameRequestDialog;

.field private shareDialog:Lcom/facebook/share/widget/ShareDialog;

.field private shareUnit:Lcom/sdkbox/plugin/FacebookShareUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook;->accessTokenTracker:Lcom/facebook/AccessTokenTracker;

    const/4 v1, 0x0

    .line 78
    iput-boolean v1, p0, Lcom/sdkbox/plugin/PluginFacebook;->_userInfoRequested:Z

    .line 79
    iput-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook;->mFBEventLogger:Lcom/facebook/appevents/AppEventsLogger;

    const/4 v0, 0x1

    .line 80
    iput v0, p0, Lcom/sdkbox/plugin/PluginFacebook;->_FBRequestType:I

    .line 131
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginFacebook;->mContext:Landroid/content/Context;

    .line 132
    sput-object p0, Lcom/sdkbox/plugin/PluginFacebook;->instance:Lcom/sdkbox/plugin/PluginFacebook;

    return-void
.end method

.method protected static LogD(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected static LogE(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "PluginFacebook"

    .line 122
    invoke-static {v1, p0, v0}, Lcom/sdkbox/plugin/SdkboxLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method static synthetic access$000(Lcom/sdkbox/plugin/PluginFacebook;)Lcom/facebook/share/widget/ShareDialog;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/sdkbox/plugin/PluginFacebook;->shareDialog:Lcom/facebook/share/widget/ShareDialog;

    return-object p0
.end method

.method static synthetic access$002(Lcom/sdkbox/plugin/PluginFacebook;Lcom/facebook/share/widget/ShareDialog;)Lcom/facebook/share/widget/ShareDialog;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginFacebook;->shareDialog:Lcom/facebook/share/widget/ShareDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sdkbox/plugin/PluginFacebook;)Lcom/facebook/CallbackManager;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/sdkbox/plugin/PluginFacebook;->callbackManager:Lcom/facebook/CallbackManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sdkbox/plugin/PluginFacebook;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/sdkbox/plugin/PluginFacebook;->_FBRequestType:I

    return p0
.end method

.method static synthetic access$300(Lcom/sdkbox/plugin/PluginFacebook;)Landroid/content/Context;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/sdkbox/plugin/PluginFacebook;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private checkFBSettings()V
    .locals 3

    .line 908
    :try_start_0
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 909
    iget-object v1, p0, Lcom/sdkbox/plugin/PluginFacebook;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 910
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.facebook.sdk.ApplicationId"

    .line 911
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "your_app_id"

    .line 912
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 915
    const-class v1, Lcom/facebook/FacebookContentProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 916
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v1, "com.facebook.app.FacebookContentProvider_replace_with_your_app_id_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private convertSetString2String(Ljava/util/Set;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 837
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-lez v1, :cond_0

    const-string v3, ","

    .line 839
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 842
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 844
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getBitmapFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 869
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "assets/"

    .line 873
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    .line 874
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 876
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 877
    :try_start_1
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 880
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object p1, v0

    .line 886
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p1, :cond_1

    .line 889
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catch_2
    :cond_1
    :goto_1
    return-object v0

    :catchall_2
    move-exception p0

    move-object v0, p1

    :goto_2
    if-eqz v0, :cond_2

    .line 898
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 902
    :catch_3
    :cond_2
    throw p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sdkbox/plugin/PluginFacebook;
    .locals 1

    .line 136
    sget-object v0, Lcom/sdkbox/plugin/PluginFacebook;->instance:Lcom/sdkbox/plugin/PluginFacebook;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/sdkbox/plugin/PluginFacebook;

    invoke-direct {v0, p0}, Lcom/sdkbox/plugin/PluginFacebook;-><init>(Landroid/content/Context;)V

    :cond_0
    return-object v0
.end method

.method public static getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)TV;"
        }
    .end annotation

    .line 831
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private isNetConnected()Z
    .locals 6

    const/4 v0, 0x1

    .line 850
    :try_start_0
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 851
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 852
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 854
    aget-object v5, v1, v4

    .line 855
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    return v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v2

    :catch_0
    return v0
.end method

.method private logEvent(Ljava/lang/String;)V
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook;->mFBEventLogger:Lcom/facebook/appevents/AppEventsLogger;

    if-nez v0, :cond_0

    return-void

    .line 681
    :cond_0
    invoke-virtual {v0, p1}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method private logEvent(Ljava/lang/String;F)V
    .locals 3

    .line 685
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook;->mFBEventLogger:Lcom/facebook/appevents/AppEventsLogger;

    if-nez v0, :cond_0

    return-void

    :cond_0
    float-to-double v1, p2

    .line 688
    invoke-virtual {v0, p1, v1, v2}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;D)V

    return-void
.end method

.method private logPurchase(FLjava/lang/String;)V
    .locals 3

    .line 692
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook;->mFBEventLogger:Lcom/facebook/appevents/AppEventsLogger;

    if-nez v0, :cond_0

    return-void

    :cond_0
    float-to-double v1, p1

    .line 696
    :try_start_0
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/facebook/appevents/AppEventsLogger;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 698
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static native onAPI(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native onAskGiftResult(ZLjava/lang/String;)V
.end method

.method public static native onFetchFriends(ZLjava/lang/String;)V
.end method

.method public static native onInviteFriendsResult(ZLjava/lang/String;)V
.end method

.method public static native onInviteFriendsWithInviteIdsResult(ZLjava/lang/String;)V
.end method

.method public static native onLogin(ZLjava/lang/String;)V
.end method

.method public static native onPermission(ZLjava/lang/String;)V
.end method

.method public static native onRequestInvitableFriends(Ljava/lang/String;)V
.end method

.method public static native onSendGiftResult(ZLjava/lang/String;)V
.end method

.method public static native onSharedCancel()V
.end method

.method public static native onSharedFailed(Ljava/lang/String;)V
.end method

.method public static native onSharedSuccess(Ljava/lang/String;)V
.end method

.method public static native onUserInfo(Ljava/lang/String;)V
.end method


# virtual methods
.method public api(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 434
    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 438
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 439
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 440
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 442
    :cond_1
    sget-object p3, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    const-string v0, "POST"

    .line 443
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 444
    sget-object p2, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    :goto_1
    move-object v5, p2

    goto :goto_2

    :cond_2
    const-string v0, "DELETE"

    .line 445
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 446
    sget-object p2, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    goto :goto_1

    :cond_3
    move-object v5, p3

    .line 448
    :goto_2
    new-instance v6, Lcom/sdkbox/plugin/PluginFacebook$8;

    invoke-direct {v6, p0, p4}, Lcom/sdkbox/plugin/PluginFacebook$8;-><init>(Lcom/sdkbox/plugin/PluginFacebook;Ljava/lang/String;)V

    .line 480
    new-instance p2, Lcom/facebook/GraphRequest;

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 482
    :try_start_0
    new-instance p1, Lcom/sdkbox/plugin/PluginFacebook$9;

    invoke-direct {p1, p0, p2}, Lcom/sdkbox/plugin/PluginFacebook$9;-><init>(Lcom/sdkbox/plugin/PluginFacebook;Lcom/facebook/GraphRequest;)V

    invoke-static {p1}, Lcom/sdkbox/plugin/SDKBox;->runOnMainThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 489
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public askGift([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 646
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 649
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 650
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 651
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    const-string v2, ","

    .line 653
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 656
    :cond_2
    new-instance p1, Lcom/facebook/share/model/GameRequestContent$Builder;

    invoke-direct {p1}, Lcom/facebook/share/model/GameRequestContent$Builder;-><init>()V

    invoke-virtual {p1, p3}, Lcom/facebook/share/model/GameRequestContent$Builder;->setTitle(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/facebook/share/model/GameRequestContent$Builder;->setMessage(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/facebook/share/model/GameRequestContent$Builder;->setTo(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/facebook/share/model/GameRequestContent$Builder;->setData(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object p1

    sget-object p3, Lcom/facebook/share/model/GameRequestContent$ActionType;->ASKFOR:Lcom/facebook/share/model/GameRequestContent$ActionType;

    invoke-virtual {p1, p3}, Lcom/facebook/share/model/GameRequestContent$Builder;->setActionType(Lcom/facebook/share/model/GameRequestContent$ActionType;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/facebook/share/model/GameRequestContent$Builder;->setObjectId(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent$Builder;->build()Lcom/facebook/share/model/GameRequestContent;

    move-result-object p1

    const/4 p2, 0x2

    .line 657
    iput p2, p0, Lcom/sdkbox/plugin/PluginFacebook;->_FBRequestType:I

    .line 658
    iget-object p2, p0, Lcom/sdkbox/plugin/PluginFacebook;->requestDialog:Lcom/facebook/share/widget/GameRequestDialog;

    invoke-virtual {p2, p1}, Lcom/facebook/share/widget/GameRequestDialog;->show(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public canPresent(Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "type"

    const-string v1, "0"

    .line 540
    invoke-static {p1, v0, v1}, Lcom/sdkbox/plugin/PluginFacebook;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    const-string v3, "image"

    const-string v4, ""

    if-ne v0, v2, :cond_1

    .line 545
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    const-string v1, "link"

    invoke-static {p1, v1, v4}, Lcom/sdkbox/plugin/PluginFacebook;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    const-string v1, "title"

    invoke-static {p1, v1, v4}, Lcom/sdkbox/plugin/PluginFacebook;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    const-string v1, "text"

    invoke-static {p1, v1, v4}, Lcom/sdkbox/plugin/PluginFacebook;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    invoke-static {p1, v3, v4}, Lcom/sdkbox/plugin/PluginFacebook;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object p1

    .line 546
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook;->shareDialog:Lcom/facebook/share/widget/ShareDialog;

    sget-object v1, Lcom/facebook/share/widget/ShareDialog$Mode;->NATIVE:Lcom/facebook/share/widget/ShareDialog$Mode;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/share/widget/ShareDialog;->canShow(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)Z

    move-result p1

    return p1

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 548
    invoke-static {p1, v3, v4}, Lcom/sdkbox/plugin/PluginFacebook;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 549
    new-instance v0, Lcom/facebook/share/model/SharePhoto$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/SharePhoto$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/SharePhoto$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto$Builder;->build()Lcom/facebook/share/model/SharePhoto;

    move-result-object p1

    .line 550
    new-instance v0, Lcom/facebook/share/model/SharePhotoContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/SharePhotoContent$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/SharePhotoContent$Builder;->addPhoto(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhotoContent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhotoContent$Builder;->build()Lcom/facebook/share/model/SharePhotoContent;

    move-result-object p1

    .line 551
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook;->shareDialog:Lcom/facebook/share/widget/ShareDialog;

    sget-object v1, Lcom/facebook/share/widget/ShareDialog$Mode;->NATIVE:Lcom/facebook/share/widget/ShareDialog$Mode;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/share/widget/ShareDialog;->canShow(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public configure()V
    .locals 3

    .line 153
    invoke-direct {p0}, Lcom/sdkbox/plugin/PluginFacebook;->checkFBSettings()V

    .line 154
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 155
    invoke-virtual {p0}, Lcom/sdkbox/plugin/PluginFacebook;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook;->mFBEventLogger:Lcom/facebook/appevents/AppEventsLogger;

    .line 156
    invoke-static {p0}, Lcom/sdkbox/plugin/SDKBox;->addListener(Lcom/sdkbox/plugin/PluginListener;)V

    .line 157
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook;->callbackManager:Lcom/facebook/CallbackManager;

    .line 158
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sdkbox/plugin/PluginFacebook;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/sdkbox/plugin/PluginFacebook$1;

    invoke-direct {v2, p0}, Lcom/sdkbox/plugin/PluginFacebook$1;-><init>(Lcom/sdkbox/plugin/PluginFacebook;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 179
    :try_start_0
    new-instance v0, Lcom/sdkbox/plugin/PluginFacebook$2;

    invoke-direct {v0, p0}, Lcom/sdkbox/plugin/PluginFacebook$2;-><init>(Lcom/sdkbox/plugin/PluginFacebook;)V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnMainThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    :goto_0
    new-instance v0, Lcom/facebook/share/widget/GameRequestDialog;

    invoke-virtual {p0}, Lcom/sdkbox/plugin/PluginFacebook;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/share/widget/GameRequestDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook;->requestDialog:Lcom/facebook/share/widget/GameRequestDialog;

    .line 203
    iget-object v1, p0, Lcom/sdkbox/plugin/PluginFacebook;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/sdkbox/plugin/PluginFacebook$3;

    invoke-direct {v2, p0}, Lcom/sdkbox/plugin/PluginFacebook$3;-><init>(Lcom/sdkbox/plugin/PluginFacebook;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/share/widget/GameRequestDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 247
    new-instance v0, Lcom/facebook/share/widget/AppInviteDialog;

    invoke-virtual {p0}, Lcom/sdkbox/plugin/PluginFacebook;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/share/widget/AppInviteDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook;->inviteDialog:Lcom/facebook/share/widget/AppInviteDialog;

    .line 248
    iget-object v1, p0, Lcom/sdkbox/plugin/PluginFacebook;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/sdkbox/plugin/PluginFacebook$4;

    invoke-direct {v2, p0}, Lcom/sdkbox/plugin/PluginFacebook$4;-><init>(Lcom/sdkbox/plugin/PluginFacebook;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/share/widget/AppInviteDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 273
    new-instance v0, Lcom/sdkbox/plugin/PluginFacebook$5;

    invoke-direct {v0, p0}, Lcom/sdkbox/plugin/PluginFacebook$5;-><init>(Lcom/sdkbox/plugin/PluginFacebook;)V

    iput-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook;->accessTokenTracker:Lcom/facebook/AccessTokenTracker;

    return-void
.end method

.method public enableDebug(Z)V
    .locals 0

    .line 525
    sput-boolean p1, Lcom/sdkbox/plugin/PluginFacebook;->mDebug:Z

    if-eqz p1, :cond_0

    .line 527
    sget-object p1, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    invoke-static {p1}, Lcom/facebook/FacebookSdk;->addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    :cond_0
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 642
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAccessToken()Ljava/lang/String;
    .locals 1

    .line 499
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getPermissionList()Ljava/lang/String;
    .locals 1

    .line 508
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sdkbox/plugin/PluginFacebook;->convertSetString2String(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .line 536
    invoke-static {}, Lcom/facebook/FacebookSdk;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 517
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getUserInfo()V
    .locals 7

    .line 412
    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 414
    :cond_0
    iget-boolean v0, p0, Lcom/sdkbox/plugin/PluginFacebook;->_userInfoRequested:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 416
    iput-boolean v0, p0, Lcom/sdkbox/plugin/PluginFacebook;->_userInfoRequested:Z

    .line 417
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "fields"

    const-string v1, "id,name,first_name,last_name,installed,email,picture.type(small)"

    .line 418
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    new-instance v6, Lcom/sdkbox/plugin/PluginFacebook$7;

    invoke-direct {v6, p0}, Lcom/sdkbox/plugin/PluginFacebook$7;-><init>(Lcom/sdkbox/plugin/PluginFacebook;)V

    .line 428
    new-instance v0, Lcom/facebook/GraphRequest;

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    sget-object v5, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    const-string v3, "me"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 429
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    :goto_0
    return-void
.end method

.method public inviteFriends(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 615
    invoke-static {}, Lcom/facebook/share/widget/AppInviteDialog;->canShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    new-instance v0, Lcom/facebook/share/model/AppInviteContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/AppInviteContent$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/AppInviteContent$Builder;->setApplinkUrl(Ljava/lang/String;)Lcom/facebook/share/model/AppInviteContent$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/facebook/share/model/AppInviteContent$Builder;->setPreviewImageUrl(Ljava/lang/String;)Lcom/facebook/share/model/AppInviteContent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/share/model/AppInviteContent$Builder;->build()Lcom/facebook/share/model/AppInviteContent;

    move-result-object p1

    .line 617
    iget-object p2, p0, Lcom/sdkbox/plugin/PluginFacebook;->inviteDialog:Lcom/facebook/share/widget/AppInviteDialog;

    invoke-virtual {p2, p1}, Lcom/facebook/share/widget/AppInviteDialog;->show(Lcom/facebook/share/model/AppInviteContent;)V

    :cond_0
    return-void
.end method

.method public inviteFriendsWithInviteIds([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 622
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 625
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 626
    :goto_0
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 627
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    array-length v2, p1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    const-string v2, ","

    .line 629
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 632
    :cond_2
    new-instance p1, Lcom/facebook/share/model/GameRequestContent$Builder;

    invoke-direct {p1}, Lcom/facebook/share/model/GameRequestContent$Builder;-><init>()V

    invoke-virtual {p1, p3}, Lcom/facebook/share/model/GameRequestContent$Builder;->setMessage(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/facebook/share/model/GameRequestContent$Builder;->setTitle(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/share/model/GameRequestContent$Builder;->setTo(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent$Builder;->build()Lcom/facebook/share/model/GameRequestContent;

    move-result-object p1

    .line 633
    iput v3, p0, Lcom/sdkbox/plugin/PluginFacebook;->_FBRequestType:I

    .line 634
    iget-object p2, p0, Lcom/sdkbox/plugin/PluginFacebook;->requestDialog:Lcom/facebook/share/widget/GameRequestDialog;

    invoke-virtual {p2, p1}, Lcom/facebook/share/widget/GameRequestDialog;->show(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public isLoggedIn()Z
    .locals 1

    .line 494
    invoke-virtual {p0}, Lcom/sdkbox/plugin/PluginFacebook;->getCurrentAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public logInWithPublishPermissions(Ljava/lang/String;I)V
    .locals 2

    .line 309
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/sdkbox/plugin/PluginFacebook;->isLoggedIn()Z

    move-result p2

    iput-boolean p2, p0, Lcom/sdkbox/plugin/PluginFacebook;->_userInfoRequested:Z

    .line 311
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sdkbox/plugin/PluginFacebook;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    :cond_0
    return-void
.end method

.method public logInWithReadPermissions(Ljava/lang/String;I)V
    .locals 3

    .line 316
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 317
    invoke-virtual {p0}, Lcom/sdkbox/plugin/PluginFacebook;->isLoggedIn()Z

    move-result p2

    const-string v0, "\'"

    const-string v1, "PluginFacebook"

    if-nez p2, :cond_0

    .line 318
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login with permissions: \'"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 320
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting permissions: \'"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_0
    invoke-virtual {p0}, Lcom/sdkbox/plugin/PluginFacebook;->isLoggedIn()Z

    move-result p2

    iput-boolean p2, p0, Lcom/sdkbox/plugin/PluginFacebook;->_userInfoRequested:Z

    .line 323
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sdkbox/plugin/PluginFacebook;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    :cond_1
    return-void
.end method

.method public logout()V
    .locals 1

    .line 532
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    return-void
.end method

.method public onAPIWrapper(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 738
    new-instance v0, Lcom/sdkbox/plugin/PluginFacebook$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/sdkbox/plugin/PluginFacebook$13;-><init>(Lcom/sdkbox/plugin/PluginFacebook;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2

    .line 948
    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    :cond_0
    return v1
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 938
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook;->accessTokenTracker:Lcom/facebook/AccessTokenTracker;

    if-eqz v0, :cond_0

    .line 939
    invoke-virtual {v0}, Lcom/facebook/AccessTokenTracker;->stopTracking()V

    :cond_0
    return-void
.end method

.method public onFetchFriendsWrapper(ZLjava/lang/String;)V
    .locals 1

    .line 752
    new-instance v0, Lcom/sdkbox/plugin/PluginFacebook$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/sdkbox/plugin/PluginFacebook$14;-><init>(Lcom/sdkbox/plugin/PluginFacebook;ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLoginWrapper(ZLjava/lang/String;)V
    .locals 1

    .line 718
    new-instance v0, Lcom/sdkbox/plugin/PluginFacebook$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/sdkbox/plugin/PluginFacebook$12;-><init>(Lcom/sdkbox/plugin/PluginFacebook;ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 728
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook;->shareUnit:Lcom/sdkbox/plugin/FacebookShareUnit;

    if-eqz v0, :cond_0

    .line 729
    invoke-virtual {v0, p1, p2}, Lcom/sdkbox/plugin/FacebookShareUnit;->onLogin(ZLjava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 732
    invoke-virtual {p0}, Lcom/sdkbox/plugin/PluginFacebook;->getUserInfo()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onPermissionWrapper(ZLjava/lang/String;)V
    .locals 1

    .line 817
    new-instance v0, Lcom/sdkbox/plugin/PluginFacebook$18;

    invoke-direct {v0, p0, p1, p2}, Lcom/sdkbox/plugin/PluginFacebook$18;-><init>(Lcom/sdkbox/plugin/PluginFacebook;ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRequestInvitableFriendsWrapper(Ljava/lang/String;)V
    .locals 1

    .line 704
    new-instance v0, Lcom/sdkbox/plugin/PluginFacebook$11;

    invoke-direct {v0, p0, p1}, Lcom/sdkbox/plugin/PluginFacebook$11;-><init>(Lcom/sdkbox/plugin/PluginFacebook;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onSharedCancelWrapper()V
    .locals 3

    .line 800
    new-instance v0, Lcom/sdkbox/plugin/PluginFacebook$17;

    invoke-direct {v0, p0}, Lcom/sdkbox/plugin/PluginFacebook$17;-><init>(Lcom/sdkbox/plugin/PluginFacebook;)V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 810
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook;->shareUnit:Lcom/sdkbox/plugin/FacebookShareUnit;

    if-eqz v0, :cond_0

    .line 811
    sget-object v1, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->SocialShareStateCancelled:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sdkbox/plugin/FacebookShareUnit;->notifyShareState(Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onSharedFailedWrapper(Ljava/lang/String;)V
    .locals 2

    .line 783
    new-instance v0, Lcom/sdkbox/plugin/PluginFacebook$16;

    invoke-direct {v0, p0, p1}, Lcom/sdkbox/plugin/PluginFacebook$16;-><init>(Lcom/sdkbox/plugin/PluginFacebook;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 793
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook;->shareUnit:Lcom/sdkbox/plugin/FacebookShareUnit;

    if-eqz v0, :cond_0

    .line 794
    sget-object v1, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->SocialShareStateFail:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    invoke-virtual {v0, v1, p1}, Lcom/sdkbox/plugin/FacebookShareUnit;->notifyShareState(Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onSharedSuccessWrapper(Ljava/lang/String;)V
    .locals 2

    .line 766
    new-instance v0, Lcom/sdkbox/plugin/PluginFacebook$15;

    invoke-direct {v0, p0, p1}, Lcom/sdkbox/plugin/PluginFacebook$15;-><init>(Lcom/sdkbox/plugin/PluginFacebook;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 776
    iget-object p1, p0, Lcom/sdkbox/plugin/PluginFacebook;->shareUnit:Lcom/sdkbox/plugin/FacebookShareUnit;

    if-eqz p1, :cond_0

    .line 777
    sget-object v0, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->SocialShareStateSuccess:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/sdkbox/plugin/FacebookShareUnit;->notifyShareState(Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public requestInvitableFriends()V
    .locals 1

    const/4 v0, 0x0

    .line 558
    invoke-virtual {p0, v0}, Lcom/sdkbox/plugin/PluginFacebook;->requestInvitableFriends(Ljava/util/Map;)V

    return-void
.end method

.method public requestInvitableFriends(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 563
    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 567
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "me/invitable_friends"

    .line 569
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "fields"

    if-eqz p1, :cond_5

    .line 570
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_5

    const-string v3, "ResponseFields"

    .line 571
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 573
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v3, "name,id,picture"

    .line 575
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v3, "PictureSize"

    .line 577
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 579
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v4, ""

    goto :goto_1

    .line 583
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 585
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "picture.width("

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")s"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v2, "PaginationLimit"

    .line 587
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v3, "limit"

    .line 589
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v2, "ExcludeFromListIds"

    .line 591
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "excluded_ids"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    const-string p1, "name,picture.width(300)"

    .line 596
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    :cond_6
    :goto_2
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_7

    const-string p1, "?"

    .line 599
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 601
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 602
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    .line 604
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 607
    :cond_7
    new-instance p1, Lcom/facebook/GraphRequest;

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    sget-object v6, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    new-instance v7, Lcom/sdkbox/plugin/PluginFacebook$10;

    invoke-direct {v7, p0}, Lcom/sdkbox/plugin/PluginFacebook$10;-><init>(Lcom/sdkbox/plugin/PluginFacebook;)V

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 611
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    return-void
.end method

.method public sendGift([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 662
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 665
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 666
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 667
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    const-string v2, ","

    .line 669
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 672
    :cond_2
    new-instance p1, Lcom/facebook/share/model/GameRequestContent$Builder;

    invoke-direct {p1}, Lcom/facebook/share/model/GameRequestContent$Builder;-><init>()V

    invoke-virtual {p1, p3}, Lcom/facebook/share/model/GameRequestContent$Builder;->setTitle(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/facebook/share/model/GameRequestContent$Builder;->setMessage(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/facebook/share/model/GameRequestContent$Builder;->setTo(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/facebook/share/model/GameRequestContent$Builder;->setData(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object p1

    sget-object p3, Lcom/facebook/share/model/GameRequestContent$ActionType;->SEND:Lcom/facebook/share/model/GameRequestContent$ActionType;

    invoke-virtual {p1, p3}, Lcom/facebook/share/model/GameRequestContent$Builder;->setActionType(Lcom/facebook/share/model/GameRequestContent$ActionType;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/facebook/share/model/GameRequestContent$Builder;->setObjectId(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent$Builder;->build()Lcom/facebook/share/model/GameRequestContent;

    move-result-object p1

    const/4 p2, 0x3

    .line 673
    iput p2, p0, Lcom/sdkbox/plugin/PluginFacebook;->_FBRequestType:I

    .line 674
    iget-object p2, p0, Lcom/sdkbox/plugin/PluginFacebook;->requestDialog:Lcom/facebook/share/widget/GameRequestDialog;

    invoke-virtual {p2, p1}, Lcom/facebook/share/widget/GameRequestDialog;->show(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 638
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->setApplicationId(Ljava/lang/String;)V

    return-void
.end method

.method public setLoginBehavior(I)V
    .locals 2

    .line 295
    sget-object v0, Lcom/facebook/login/LoginBehavior;->NATIVE_WITH_FALLBACK:Lcom/facebook/login/LoginBehavior;

    if-nez p1, :cond_0

    .line 297
    sget-object v0, Lcom/facebook/login/LoginBehavior;->NATIVE_WITH_FALLBACK:Lcom/facebook/login/LoginBehavior;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 299
    sget-object v0, Lcom/facebook/login/LoginBehavior;->WEB_ONLY:Lcom/facebook/login/LoginBehavior;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 301
    sget-object v0, Lcom/facebook/login/LoginBehavior;->WEB_VIEW_ONLY:Lcom/facebook/login/LoginBehavior;

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 303
    sget-object v0, Lcom/facebook/login/LoginBehavior;->DEVICE_AUTH:Lcom/facebook/login/LoginBehavior;

    .line 305
    :cond_3
    :goto_0
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/facebook/login/LoginManager;->setLoginBehavior(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/LoginManager;

    return-void
.end method

.method public setShareUnit(Lcom/sdkbox/plugin/FacebookShareUnit;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginFacebook;->shareUnit:Lcom/sdkbox/plugin/FacebookShareUnit;

    return-void
.end method

.method public share(Ljava/util/Map;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "type"

    const-string v1, "0"

    .line 329
    invoke-static {p1, v0, v1}, Lcom/sdkbox/plugin/PluginFacebook;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 333
    :cond_0
    new-instance v1, Lcom/sdkbox/plugin/PluginFacebook$6;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/sdkbox/plugin/PluginFacebook$6;-><init>(Lcom/sdkbox/plugin/PluginFacebook;ILjava/util/Map;I)V

    invoke-static {v1}, Lcom/sdkbox/plugin/SDKBox;->runOnMainThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 407
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
