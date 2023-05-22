.class Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingTask$1;
.super Ljava/lang/Object;
.source "TrackingLocalStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingTask;


# direct methods
.method constructor <init>(Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingTask;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingTask$1;->this$1:Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 255
    iget-object v0, p0, Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingTask$1;->this$1:Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingTask;

    new-instance v1, Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingAsyncTask;

    iget-object v2, p0, Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingTask$1;->this$1:Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingTask;

    iget-object v2, v2, Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingTask;->this$0:Lcom/sdkbox/services/TrackingLocalStorage;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingAsyncTask;-><init>(Lcom/sdkbox/services/TrackingLocalStorage;Lcom/sdkbox/services/TrackingLocalStorage$1;)V

    invoke-static {v0, v1}, Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingTask;->access$002(Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingTask;Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingAsyncTask;)Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingAsyncTask;

    .line 256
    iget-object v0, p0, Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingTask$1;->this$1:Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingTask;

    invoke-static {v0}, Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingTask;->access$000(Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingTask;)Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingAsyncTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
