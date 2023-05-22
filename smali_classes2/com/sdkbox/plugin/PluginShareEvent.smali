.class public Lcom/sdkbox/plugin/PluginShareEvent;
.super Ljava/lang/Object;
.source "PluginShareEvent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendEventToNative(Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Twitter"

    .line 9
    invoke-static {p0, p1, v0}, Lcom/sdkbox/plugin/PluginShareEvent;->sendEventToNative(Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendEventToNative(Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 13
    new-instance v0, Lcom/sdkbox/plugin/SocialShareResponse;

    invoke-direct {v0}, Lcom/sdkbox/plugin/SocialShareResponse;-><init>()V

    .line 14
    iput-object p0, v0, Lcom/sdkbox/plugin/SocialShareResponse;->state:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    .line 15
    iput-object p1, v0, Lcom/sdkbox/plugin/SocialShareResponse;->error:Ljava/lang/String;

    .line 16
    iput-object p2, v0, Lcom/sdkbox/plugin/SocialShareResponse;->platform:Ljava/lang/String;

    .line 17
    new-instance p0, Lcom/sdkbox/plugin/PluginShareEvent$1;

    invoke-direct {p0, v0}, Lcom/sdkbox/plugin/PluginShareEvent$1;-><init>(Lcom/sdkbox/plugin/SocialShareResponse;)V

    invoke-static {p0}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method
