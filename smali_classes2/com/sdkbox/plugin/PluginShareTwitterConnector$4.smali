.class Lcom/sdkbox/plugin/PluginShareTwitterConnector$4;
.super Lcom/twitter/sdk/android/core/Callback;
.source "PluginShareTwitterConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/PluginShareTwitterConnector;->authenticationRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/Callback<",
        "Lcom/twitter/sdk/android/core/TwitterSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/plugin/PluginShareTwitterConnector;


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/PluginShareTwitterConnector;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector$4;->this$0:Lcom/sdkbox/plugin/PluginShareTwitterConnector;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 3

    .line 140
    sget-object v0, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->SocialShareStateFail:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authen fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sdkbox/plugin/PluginShareEvent;->sendEventToNative(Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;Ljava/lang/String;)V

    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;)V"
        }
    .end annotation

    const-string v0, "share"

    .line 145
    :try_start_0
    new-instance v1, Lcom/sdkbox/plugin/JSON;

    invoke-direct {v1}, Lcom/sdkbox/plugin/JSON;-><init>()V

    const-string v2, "twitter_id"

    .line 146
    iget-object v3, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v3, Lcom/twitter/sdk/android/core/TwitterSession;

    invoke-virtual {v3}, Lcom/twitter/sdk/android/core/TwitterSession;->getUserId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sdkbox/plugin/JSON;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "twitter_username"

    .line 147
    iget-object p1, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/sdk/android/core/TwitterSession;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterSession;->getUserName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/sdkbox/plugin/JSON;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    invoke-virtual {v1}, Lcom/sdkbox/plugin/JSON;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v0, p1}, Lcom/sdkbox/plugin/SdkboxLog;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector$4;->this$0:Lcom/sdkbox/plugin/PluginShareTwitterConnector;

    invoke-virtual {p1}, Lcom/sdkbox/plugin/PluginShareTwitterConnector;->shareRequest()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
