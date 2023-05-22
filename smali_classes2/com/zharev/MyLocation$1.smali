.class Lcom/zharev/MyLocation$1;
.super Ljava/lang/Object;
.source "MyLocation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zharev/MyLocation;->startLocation(Lcom/sdkbox/plugin/SDKBoxActivity;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zharev/MyLocation;

.field final synthetic val$provider2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zharev/MyLocation;Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/zharev/MyLocation$1;->this$0:Lcom/zharev/MyLocation;

    iput-object p2, p0, Lcom/zharev/MyLocation$1;->val$provider2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 86
    iget-object v0, p0, Lcom/zharev/MyLocation$1;->this$0:Lcom/zharev/MyLocation;

    iget-object v1, v0, Lcom/zharev/MyLocation;->locationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/zharev/MyLocation$1;->val$provider2:Ljava/lang/String;

    iget-object v0, p0, Lcom/zharev/MyLocation$1;->this$0:Lcom/zharev/MyLocation;

    iget-object v6, v0, Lcom/zharev/MyLocation;->locationListener:Landroid/location/LocationListener;

    const-wide/16 v3, 0x2710

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return-void
.end method
