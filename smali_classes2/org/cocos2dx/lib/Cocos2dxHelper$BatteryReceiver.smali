.class Lorg/cocos2dx/lib/Cocos2dxHelper$BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Cocos2dxHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BatteryReceiver"
.end annotation


# instance fields
.field public sBatteryLevel:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 103
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxHelper$BatteryReceiver;->sBatteryLevel:F

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 108
    invoke-virtual {p0, p2}, Lorg/cocos2dx/lib/Cocos2dxHelper$BatteryReceiver;->setBatteryLevelByIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public setBatteryLevelByIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "level"

    const/4 v1, 0x0

    .line 112
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "scale"

    const/4 v2, 0x1

    .line 113
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    const/4 p1, 0x0

    .line 116
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxHelper$BatteryReceiver;->sBatteryLevel:F

    return-void
.end method
