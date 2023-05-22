.class final Lorg/cocos2dx/javascript/AppActivity$1;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/javascript/AppActivity;->hideSplash()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 111
    invoke-static {}, Lorg/cocos2dx/javascript/AppActivity;->access$000()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/cocos2dx/javascript/AppActivity;->access$000()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Lorg/cocos2dx/javascript/AppActivity;->access$000()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 113
    invoke-static {v0}, Lorg/cocos2dx/javascript/AppActivity;->access$002(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 114
    invoke-static {v0}, Lorg/cocos2dx/javascript/AppActivity;->access$102(Landroid/widget/ImageView;)Landroid/widget/ImageView;

    :cond_0
    return-void
.end method
