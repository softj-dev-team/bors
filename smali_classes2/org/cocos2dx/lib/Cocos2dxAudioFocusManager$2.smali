.class final Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$2;
.super Ljava/lang/Object;
.source "Cocos2dxAudioFocusManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager;->unregisterAudioFocusListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x1

    .line 125
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->setAudioFocus(Z)V

    const/4 v0, 0x0

    .line 126
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager;->access$000(I)V

    return-void
.end method
