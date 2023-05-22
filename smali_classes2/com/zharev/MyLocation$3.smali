.class Lcom/zharev/MyLocation$3;
.super Ljava/lang/Object;
.source "MyLocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zharev/MyLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zharev/MyLocation;


# direct methods
.method constructor <init>(Lcom/zharev/MyLocation;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/zharev/MyLocation$3;->this$0:Lcom/zharev/MyLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/zharev/MyLocation$3;->this$0:Lcom/zharev/MyLocation;

    iget-object v0, v0, Lcom/zharev/MyLocation;->lastLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zharev/MyLocation$3;->this$0:Lcom/zharev/MyLocation;

    iget-object v1, v0, Lcom/zharev/MyLocation;->lastLocation:Landroid/location/Location;

    invoke-virtual {v0, v1, p1}, Lcom/zharev/MyLocation;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object p1, p0, Lcom/zharev/MyLocation$3;->this$0:Lcom/zharev/MyLocation;

    iget-object p1, p1, Lcom/zharev/MyLocation;->lastLocation:Landroid/location/Location;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/zharev/MyLocation$3;->this$0:Lcom/zharev/MyLocation;

    iput-object p1, v0, Lcom/zharev/MyLocation;->lastLocation:Landroid/location/Location;

    .line 125
    sget-object p1, Lcom/zharev/MyLocation;->activity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v0, Lcom/zharev/MyLocation$3$1;

    invoke-direct {v0, p0}, Lcom/zharev/MyLocation$3$1;-><init>(Lcom/zharev/MyLocation$3;)V

    invoke-virtual {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
