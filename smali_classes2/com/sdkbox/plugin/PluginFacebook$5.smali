.class Lcom/sdkbox/plugin/PluginFacebook$5;
.super Lcom/facebook/AccessTokenTracker;
.source "PluginFacebook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/PluginFacebook;->configure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/plugin/PluginFacebook;


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/PluginFacebook;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginFacebook$5;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-direct {p0}, Lcom/facebook/AccessTokenTracker;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCurrentAccessTokenChanged(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .locals 3

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FB onCurrentAccessTokenChanged: oldAccessToken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " currentAccessToken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sdkbox/plugin/PluginFacebook;->LogD(Ljava/lang/String;)V

    const-string v0, "success"

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 277
    iget-object p1, p0, Lcom/sdkbox/plugin/PluginFacebook$5;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-virtual {p1, v1, v0}, Lcom/sdkbox/plugin/PluginFacebook;->onPermissionWrapper(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 278
    invoke-virtual {p2}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result p1

    if-nez p1, :cond_2

    .line 280
    :try_start_0
    sget p1, Lcom/sdkbox/plugin/TrackingInfoAndroid;->FLAG_FACEBOOK_ID:I

    invoke-static {p1}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->isTrackingEnable(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 281
    new-instance p1, Lcom/sdkbox/plugin/JSON;

    invoke-direct {p1}, Lcom/sdkbox/plugin/JSON;-><init>()V

    const-string v2, "facebook_id"

    .line 282
    invoke-virtual {p2}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/sdkbox/plugin/JSON;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "type"

    const-string v2, "login"

    .line 283
    invoke-virtual {p1, p2, v2}, Lcom/sdkbox/plugin/JSON;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "Facebook"

    const-string v2, "share"

    .line 284
    invoke-virtual {p1}, Lcom/sdkbox/plugin/JSON;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v2, p1}, Lcom/sdkbox/plugin/SdkboxLog;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :catch_0
    :cond_1
    iget-object p1, p0, Lcom/sdkbox/plugin/PluginFacebook$5;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-virtual {p1, v1, v0}, Lcom/sdkbox/plugin/PluginFacebook;->onLoginWrapper(ZLjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
