.class public Lcom/sdkbox/plugin/PluginSocialShare;
.super Ljava/lang/Object;
.source "PluginSocialShare.java"

# interfaces
.implements Lcom/sdkbox/plugin/PluginListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPanelCancel:Ljava/lang/String;

.field private mPanelTitle:Ljava/lang/String;

.field private mPlatforms:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginSocialShare;->mContext:Landroid/content/Context;

    .line 21
    invoke-static {p0}, Lcom/sdkbox/plugin/SDKBox;->addListener(Lcom/sdkbox/plugin/PluginListener;)V

    const-string p1, "Share To"

    .line 22
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginSocialShare;->mPanelTitle:Ljava/lang/String;

    const-string p1, "Cancel"

    .line 23
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginSocialShare;->mPanelCancel:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sdkbox/plugin/PluginSocialShare;)Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/sdkbox/plugin/PluginSocialShare;->mPanelCancel:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sdkbox/plugin/PluginSocialShare;)[Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/sdkbox/plugin/PluginSocialShare;->mPlatforms:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sdkbox/plugin/PluginSocialShare;)Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/sdkbox/plugin/PluginSocialShare;->mPanelTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sdkbox/plugin/PluginSocialShare;)Landroid/content/Context;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/sdkbox/plugin/PluginSocialShare;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public nativeShare(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/sdkbox/plugin/PluginSocialShare$2;

    invoke-direct {v0, p0, p1}, Lcom/sdkbox/plugin/PluginSocialShare$2;-><init>(Lcom/sdkbox/plugin/PluginSocialShare;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
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

.method public setSharePanelCancel(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginSocialShare;->mPanelCancel:Ljava/lang/String;

    return-void
.end method

.method public setSharePanelTitle(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginSocialShare;->mPanelTitle:Ljava/lang/String;

    return-void
.end method

.method public showSharePanel([Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginSocialShare;->mPlatforms:[Ljava/lang/String;

    .line 36
    new-instance p1, Lcom/sdkbox/plugin/PluginSocialShare$1;

    invoke-direct {p1, p0}, Lcom/sdkbox/plugin/PluginSocialShare$1;-><init>(Lcom/sdkbox/plugin/PluginSocialShare;)V

    invoke-static {p1}, Lcom/sdkbox/plugin/SDKBox;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
