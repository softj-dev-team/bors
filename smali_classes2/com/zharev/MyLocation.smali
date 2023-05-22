.class public Lcom/zharev/MyLocation;
.super Ljava/lang/Object;
.source "MyLocation.java"


# static fields
.field static final TIME_DIFFERENCE_THRESHOLD:I = 0xea60

.field public static activity:Lorg/cocos2dx/lib/Cocos2dxActivity;


# instance fields
.field lastLocation:Landroid/location/Location;

.field public final locationListener:Landroid/location/LocationListener;

.field locationManager:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/zharev/MyLocation;->locationManager:Landroid/location/LocationManager;

    .line 23
    iput-object v0, p0, Lcom/zharev/MyLocation;->lastLocation:Landroid/location/Location;

    .line 116
    new-instance v0, Lcom/zharev/MyLocation$3;

    invoke-direct {v0, p0}, Lcom/zharev/MyLocation$3;-><init>(Lcom/zharev/MyLocation;)V

    iput-object v0, p0, Lcom/zharev/MyLocation;->locationListener:Landroid/location/LocationListener;

    return-void
.end method

.method public static native onLocationUpdate(Ljava/lang/String;)V
.end method


# virtual methods
.method public checkEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/zharev/MyLocation;->lastLocation:Landroid/location/Location;

    return-object v0
.end method

.method isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 7

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 35
    :cond_0
    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-lez v6, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 38
    :goto_0
    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    return v0

    :cond_3
    if-eqz v2, :cond_4

    if-nez v1, :cond_4

    .line 45
    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide p1

    sub-long/2addr v1, p1

    const-wide/32 p1, -0xea60

    cmp-long v3, v1, p1

    if-lez v3, :cond_4

    return v0

    :cond_4
    return v5
.end method

.method public startLocation(Lcom/sdkbox/plugin/SDKBoxActivity;I)I
    .locals 4

    .line 57
    iget-object p2, p0, Lcom/zharev/MyLocation;->locationManager:Landroid/location/LocationManager;

    if-nez p2, :cond_0

    const-string p2, "location"

    .line 58
    invoke-virtual {p1, p2}, Lcom/sdkbox/plugin/SDKBoxActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/location/LocationManager;

    iput-object p2, p0, Lcom/zharev/MyLocation;->locationManager:Landroid/location/LocationManager;

    .line 60
    :cond_0
    new-instance p2, Landroid/location/Criteria;

    invoke-direct {p2}, Landroid/location/Criteria;-><init>()V

    const/4 v0, 0x2

    .line 61
    invoke-virtual {p2, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v1, 0x0

    .line 62
    invoke-virtual {p2, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 63
    invoke-virtual {p2, v1}, Landroid/location/Criteria;->setBearingRequired(Z)V

    const/4 v1, 0x1

    .line 64
    invoke-virtual {p2, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 65
    invoke-virtual {p2, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 68
    iget-object v2, p0, Lcom/zharev/MyLocation;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, p2, v1}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    .line 71
    iget-object p2, p0, Lcom/zharev/MyLocation;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {p2, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object p2

    const-string v1, "network"

    .line 73
    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "gps"

    if-eqz v2, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move-object v1, v3

    .line 83
    :goto_0
    new-instance p2, Lcom/zharev/MyLocation$1;

    invoke-direct {p2, p0, v1}, Lcom/zharev/MyLocation$1;-><init>(Lcom/zharev/MyLocation;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/sdkbox/plugin/SDKBoxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 89
    iget-object p2, p0, Lcom/zharev/MyLocation;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {p2, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p2

    iput-object p2, p0, Lcom/zharev/MyLocation;->lastLocation:Landroid/location/Location;

    if-eqz p2, :cond_2

    .line 91
    new-instance p2, Lcom/zharev/MyLocation$2;

    invoke-direct {p2, p0}, Lcom/zharev/MyLocation$2;-><init>(Lcom/zharev/MyLocation;)V

    invoke-virtual {p1, p2}, Lcom/sdkbox/plugin/SDKBoxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    :cond_2
    const/16 p1, 0x63

    return p1

    :cond_3
    return v0
.end method

.method public stopLocation()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/zharev/MyLocation;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/zharev/MyLocation;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method
