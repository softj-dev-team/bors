.class public Lorg/cocos2dx/javascript/AppActivity;
.super Lcom/sdkbox/plugin/SDKBoxActivity;
.source "AppActivity.java"


# static fields
.field private static sCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

.field private static sSplashBgImageView:Landroid/widget/ImageView;

.field private static splashDialog:Landroid/app/Dialog;


# instance fields
.field private branchReferralInitListener:Lio/branch/referral/Branch$BranchReferralInitListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/sdkbox/plugin/SDKBoxActivity;-><init>()V

    .line 260
    new-instance v0, Lorg/cocos2dx/javascript/AppActivity$2;

    invoke-direct {v0, p0}, Lorg/cocos2dx/javascript/AppActivity$2;-><init>(Lorg/cocos2dx/javascript/AppActivity;)V

    iput-object v0, p0, Lorg/cocos2dx/javascript/AppActivity;->branchReferralInitListener:Lio/branch/referral/Branch$BranchReferralInitListener;

    return-void
.end method

.method static synthetic access$000()Landroid/app/Dialog;
    .locals 1

    .line 64
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->splashDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$002(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 64
    sput-object p0, Lorg/cocos2dx/javascript/AppActivity;->splashDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$102(Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 64
    sput-object p0, Lorg/cocos2dx/javascript/AppActivity;->sSplashBgImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static hideSplash()V
    .locals 2

    .line 104
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->sCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lorg/cocos2dx/javascript/AppActivity$1;

    invoke-direct {v1}, Lorg/cocos2dx/javascript/AppActivity$1;-><init>()V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static showSplash()V
    .locals 3

    .line 75
    new-instance v0, Landroid/widget/ImageView;

    sget-object v1, Lorg/cocos2dx/javascript/AppActivity;->sCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/cocos2dx/javascript/AppActivity;->sSplashBgImageView:Landroid/widget/ImageView;

    const v1, 0x7f0800dc

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->sCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 78
    sget-object v1, Lorg/cocos2dx/javascript/AppActivity;->sSplashBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 79
    sget-object v1, Lorg/cocos2dx/javascript/AppActivity;->sSplashBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 80
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->sSplashBgImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 81
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 82
    sget-object v1, Lorg/cocos2dx/javascript/AppActivity;->sSplashBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    new-instance v0, Landroid/app/Dialog;

    sget-object v1, Lorg/cocos2dx/javascript/AppActivity;->sCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    const v2, 0x1030010

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lorg/cocos2dx/javascript/AppActivity;->splashDialog:Landroid/app/Dialog;

    .line 93
    sget-object v1, Lorg/cocos2dx/javascript/AppActivity;->sSplashBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 94
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->splashDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 95
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->splashDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 193
    invoke-super {p0, p1, p2, p3}, Lcom/sdkbox/plugin/SDKBoxActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 194
    invoke-static {}, Lorg/cocos2dx/javascript/ImagePicker;->getInstance()Lorg/cocos2dx/javascript/ImagePicker;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/cocos2dx/javascript/ImagePicker;->onActivityResult(IILandroid/content/Intent;)V

    const-string p1, "FirebaseMessagingService"

    const-string p2, "onActivityResult "

    .line 197
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 229
    invoke-super {p0}, Lcom/sdkbox/plugin/SDKBoxActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 234
    invoke-super {p0, p1}, Lcom/sdkbox/plugin/SDKBoxActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 135
    invoke-super {p0, p1}, Lcom/sdkbox/plugin/SDKBoxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->isTaskRoot()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-static {}, Lorg/cocos2dx/javascript/ImagePicker;->getInstance()Lorg/cocos2dx/javascript/ImagePicker;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/cocos2dx/javascript/ImagePicker;->init(Lorg/cocos2dx/lib/Cocos2dxActivity;)V

    .line 147
    sput-object p0, Lcom/zharev/MyLocation;->activity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 148
    sput-object p0, Lorg/cocos2dx/javascript/VoicePlayer;->activity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 149
    sput-object p0, Lorg/cocos2dx/javascript/VoiceRecorder;->activity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 150
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    sput-object p1, Lorg/cocos2dx/javascript/VoiceRecorder;->ctx:Landroid/content/Context;

    .line 152
    invoke-static {}, Lcom/zharev/ZharevUtil;->getInstance()Lcom/zharev/ZharevUtil;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zharev/ZharevUtil;->Init(Lcom/sdkbox/plugin/SDKBoxActivity;)V

    .line 162
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 163
    sput-object p0, Lorg/cocos2dx/javascript/AppActivity;->sCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 164
    invoke-static {}, Lorg/cocos2dx/javascript/AppActivity;->showSplash()V

    return-void
.end method

.method public onCreateView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    .locals 8

    .line 169
    new-instance v7, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-direct {v7, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x8

    move-object v0, v7

    .line 171
    invoke-virtual/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    return-object v7
.end method

.method protected onDestroy()V
    .locals 0

    .line 188
    invoke-super {p0}, Lcom/sdkbox/plugin/SDKBoxActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 202
    invoke-super {p0, p1}, Lcom/sdkbox/plugin/SDKBoxActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 203
    invoke-virtual {p0, p1}, Lorg/cocos2dx/javascript/AppActivity;->setIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    const-string v0, "branch_force_new_session"

    .line 204
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-static {p0}, Lio/branch/referral/Branch;->sessionBuilder(Landroid/app/Activity;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/javascript/AppActivity;->branchReferralInitListener:Lio/branch/referral/Branch$BranchReferralInitListener;

    invoke-virtual {v0, v1}, Lio/branch/referral/Branch$InitSessionBuilder;->withCallback(Lio/branch/referral/Branch$BranchReferralInitListener;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/referral/Branch$InitSessionBuilder;->reInit()V

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "app_link"

    .line 208
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/zharev/ZharevUtil;->appLink:Ljava/lang/String;

    .line 210
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onNewIntent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/zharev/ZharevUtil;->appLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FirebaseMessagingService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 183
    invoke-super {p0}, Lcom/sdkbox/plugin/SDKBoxActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 126
    invoke-static {}, Lcom/zharev/ZharevUtil;->getInstance()Lcom/zharev/ZharevUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/zharev/ZharevUtil;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 128
    invoke-super {p0, p1, p2, p3}, Lcom/sdkbox/plugin/SDKBoxActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onRestart()V
    .locals 0

    .line 218
    invoke-super {p0}, Lcom/sdkbox/plugin/SDKBoxActivity;->onRestart()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 239
    invoke-super {p0, p1}, Lcom/sdkbox/plugin/SDKBoxActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 178
    invoke-super {p0}, Lcom/sdkbox/plugin/SDKBoxActivity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 244
    invoke-super {p0, p1}, Lcom/sdkbox/plugin/SDKBoxActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 249
    invoke-super {p0}, Lcom/sdkbox/plugin/SDKBoxActivity;->onStart()V

    .line 251
    :try_start_0
    invoke-static {p0}, Lio/branch/referral/Branch;->sessionBuilder(Landroid/app/Activity;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/javascript/AppActivity;->branchReferralInitListener:Lio/branch/referral/Branch$BranchReferralInitListener;

    invoke-virtual {v0, v1}, Lio/branch/referral/Branch$InitSessionBuilder;->withCallback(Lio/branch/referral/Branch$BranchReferralInitListener;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lio/branch/referral/Branch$InitSessionBuilder;->withData(Landroid/net/Uri;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/referral/Branch$InitSessionBuilder;->init()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 224
    invoke-super {p0}, Lcom/sdkbox/plugin/SDKBoxActivity;->onStop()V

    return-void
.end method
