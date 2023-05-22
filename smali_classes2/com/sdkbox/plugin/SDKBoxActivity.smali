.class public Lcom/sdkbox/plugin/SDKBoxActivity;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "SDKBoxActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 18
    invoke-static {p1, p2, p3}, Lcom/sdkbox/plugin/SDKBox;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    invoke-super {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 44
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 11
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    invoke-virtual {p0}, Lcom/sdkbox/plugin/SDKBoxActivity;->isTaskRoot()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    invoke-static {p0}, Lcom/sdkbox/plugin/SDKBox;->init(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 39
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 40
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 34
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 35
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 24
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStart()V

    .line 25
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 29
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStop()V

    .line 30
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->onStop()V

    return-void
.end method
