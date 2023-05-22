.class public Lcom/sdkbox/plugin/TwitterConnectorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TwitterConnectorReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.twitter.sdk.android.tweetcomposer.UPLOAD_SUCCESS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    sget-object p1, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->SocialShareStateSuccess:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/sdkbox/plugin/PluginShareEvent;->sendEventToNative(Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_0
    sget-object p1, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->SocialShareStateFail:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "share fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sdkbox/plugin/PluginShareEvent;->sendEventToNative(Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
