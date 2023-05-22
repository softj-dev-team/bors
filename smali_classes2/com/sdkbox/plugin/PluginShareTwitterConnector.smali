.class public Lcom/sdkbox/plugin/PluginShareTwitterConnector;
.super Ljava/lang/Object;
.source "PluginShareTwitterConnector.java"

# interfaces
.implements Lcom/sdkbox/plugin/PluginListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;
    }
.end annotation


# static fields
.field private static final PLUGIN_LOG_TAG:Ljava/lang/String; = "PluginShare"


# instance fields
.field mAuthClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

.field private mContext:Landroid/content/Context;

.field private mOperation:Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;

.field private mShareInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;->OperNone:Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;

    iput-object v0, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector;->mOperation:Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;

    .line 49
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector;->mContext:Landroid/content/Context;

    .line 50
    invoke-static {p0}, Lcom/sdkbox/plugin/SDKBox;->addListener(Lcom/sdkbox/plugin/PluginListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sdkbox/plugin/PluginShareTwitterConnector;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sdkbox/plugin/PluginShareTwitterConnector;Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;)Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector;->mOperation:Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;

    return-object p1
.end method

.method private native getAuthorities()Ljava/lang/String;
.end method


# virtual methods
.method public authenticationRequest()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector;->mAuthClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;-><init>()V

    iput-object v0, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector;->mAuthClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector;->mAuthClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    iget-object v1, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/sdkbox/plugin/PluginShareTwitterConnector$4;

    invoke-direct {v2, p0}, Lcom/sdkbox/plugin/PluginShareTwitterConnector$4;-><init>(Lcom/sdkbox/plugin/PluginShareTwitterConnector;)V

    invoke-virtual {v0, v1, v2}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authorize(Landroid/app/Activity;Lcom/twitter/sdk/android/core/Callback;)V

    return-void
.end method

.method public init(Lcom/sdkbox/plugin/JSON;)Z
    .locals 4

    const-string v0, "twitter config is null"

    const-string v1, "PluginShare"

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    .line 54
    invoke-virtual {p1}, Lcom/sdkbox/plugin/JSON;->isNull()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    const-string v3, "params"

    .line 58
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sdkbox/plugin/JSON;->get([Ljava/lang/String;)Lcom/sdkbox/plugin/JSON;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 59
    invoke-virtual {p1}, Lcom/sdkbox/plugin/JSON;->isNull()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "key"

    .line 63
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sdkbox/plugin/JSON;->get([Ljava/lang/String;)Lcom/sdkbox/plugin/JSON;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdkbox/plugin/JSON;->getStringValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "secret"

    .line 64
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sdkbox/plugin/JSON;->get([Ljava/lang/String;)Lcom/sdkbox/plugin/JSON;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sdkbox/plugin/JSON;->getStringValue()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 69
    :cond_2
    new-instance v1, Lcom/sdkbox/plugin/PluginShareTwitterConnector$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/sdkbox/plugin/PluginShareTwitterConnector$1;-><init>(Lcom/sdkbox/plugin/PluginShareTwitterConnector;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sdkbox/plugin/SDKBox;->runOnMainThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "twitter config key or secret is null"

    .line 66
    invoke-static {v1, v0, p1}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_4
    :goto_1
    new-array p1, v2, [Ljava/lang/Object;

    .line 60
    invoke-static {v1, v0, p1}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_5
    :goto_2
    new-array p1, v2, [Ljava/lang/Object;

    .line 55
    invoke-static {v1, v0, p1}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public isAuthentication()Z
    .locals 1

    .line 127
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/SessionManager;->getActiveSession()Lcom/twitter/sdk/android/core/Session;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/TwitterSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterSession;->getAuthToken()Lcom/twitter/sdk/android/core/AuthToken;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->token:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public logout()V
    .locals 1

    .line 117
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/SessionManager;->clearActiveSession()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector;->mAuthClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0, p1, p2, p3}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return v1
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

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

.method public share(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector;->mShareInfo:Ljava/util/Map;

    .line 85
    new-instance p1, Lcom/sdkbox/plugin/PluginShareTwitterConnector$2;

    invoke-direct {p1, p0}, Lcom/sdkbox/plugin/PluginShareTwitterConnector$2;-><init>(Lcom/sdkbox/plugin/PluginShareTwitterConnector;)V

    invoke-static {p1}, Lcom/sdkbox/plugin/SDKBox;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shareDialog(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector;->mShareInfo:Ljava/util/Map;

    .line 104
    new-instance p1, Lcom/sdkbox/plugin/PluginShareTwitterConnector$3;

    invoke-direct {p1, p0}, Lcom/sdkbox/plugin/PluginShareTwitterConnector$3;-><init>(Lcom/sdkbox/plugin/PluginShareTwitterConnector;)V

    invoke-static {p1}, Lcom/sdkbox/plugin/SDKBox;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shareDialogRequest()V
    .locals 5

    .line 181
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector;->mShareInfo:Ljava/util/Map;

    const-string v1, "text"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 182
    iget-object v1, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector;->mShareInfo:Ljava/util/Map;

    const-string v2, "image"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 183
    iget-object v2, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector;->mShareInfo:Ljava/util/Map;

    const-string v3, "link"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 184
    new-instance v3, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;

    iget-object v4, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;-><init>(Landroid/content/Context;)V

    .line 186
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 187
    invoke-virtual {v3, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->text(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;

    move-result-object v3

    .line 189
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 190
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 192
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v1, v4, :cond_2

    .line 193
    invoke-direct {p0}, Lcom/sdkbox/plugin/PluginShareTwitterConnector;->getAuthorities()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 197
    iget-object v4, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 198
    invoke-virtual {v3, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->image(Landroid/net/Uri;)Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;

    move-result-object v3

    goto :goto_0

    .line 195
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "must set file provider authorities. please check sdkbox::PluginShare::setFileProviderAuthorities"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->image(Landroid/net/Uri;)Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;

    move-result-object v3

    goto :goto_0

    .line 203
    :cond_3
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "image:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_4
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 207
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->url(Ljava/net/URL;)Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;

    move-result-object v3

    .line 209
    :cond_5
    invoke-virtual {v3}, Lcom/twitter/sdk/android/tweetcomposer/TweetComposer$Builder;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 211
    sget-object v1, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->SocialShareStateFail:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sdkbox/plugin/PluginShareEvent;->sendEventToNative(Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public shareRequest()V
    .locals 11

    .line 158
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getApiClient()Lcom/twitter/sdk/android/core/TwitterApiClient;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterApiClient;->getStatusesService()Lcom/twitter/sdk/android/core/services/StatusesService;

    move-result-object v1

    .line 160
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector;->mShareInfo:Ljava/util/Map;

    const-string v2, "text"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 162
    sget-object v0, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->SocialShareStateFail:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    const-string v1, "share text is null"

    invoke-static {v0, v1}, Lcom/sdkbox/plugin/PluginShareEvent;->sendEventToNative(Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;Ljava/lang/String;)V

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector;->mShareInfo:Ljava/util/Map;

    const-string v3, "image"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "PluginShare"

    const-string v3, "share directly is not support image, ignore this field"

    .line 166
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    .line 168
    move-object v3, v0

    check-cast v3, Ljava/lang/Long;

    move-object v4, v0

    check-cast v4, Ljava/lang/Boolean;

    move-object v6, v0

    check-cast v6, Ljava/lang/Double;

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v5, v6

    move-object v7, v10

    invoke-interface/range {v1 .. v10}, Lcom/twitter/sdk/android/core/services/StatusesService;->update(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/sdkbox/plugin/PluginShareTwitterConnector$5;

    invoke-direct {v1, p0}, Lcom/sdkbox/plugin/PluginShareTwitterConnector$5;-><init>(Lcom/sdkbox/plugin/PluginShareTwitterConnector;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
