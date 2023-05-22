.class Lcom/sdkbox/plugin/TrackingInfoAndroid$1$2;
.super Ljava/lang/Object;
.source "TrackingInfoAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/TrackingInfoAndroid$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/plugin/TrackingInfoAndroid$1;

.field final synthetic val$canTrack:Z


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/TrackingInfoAndroid$1;Z)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/sdkbox/plugin/TrackingInfoAndroid$1$2;->this$0:Lcom/sdkbox/plugin/TrackingInfoAndroid$1;

    iput-boolean p2, p0, Lcom/sdkbox/plugin/TrackingInfoAndroid$1$2;->val$canTrack:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 184
    invoke-static {}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->access$000()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sdkbox/plugin/TrackingInfoAndroid$1$2;->val$canTrack:Z

    invoke-static {v0, v1}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->onAdvertisingIdInfo(Ljava/lang/String;Z)V

    return-void
.end method
