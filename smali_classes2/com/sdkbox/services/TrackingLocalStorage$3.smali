.class Lcom/sdkbox/services/TrackingLocalStorage$3;
.super Ljava/lang/Object;
.source "TrackingLocalStorage.java"

# interfaces
.implements Lcom/sdkbox/services/TrackingLocalStorage$SyncWorkerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/services/TrackingLocalStorage;->sync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/services/TrackingLocalStorage;


# direct methods
.method constructor <init>(Lcom/sdkbox/services/TrackingLocalStorage;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/sdkbox/services/TrackingLocalStorage$3;->this$0:Lcom/sdkbox/services/TrackingLocalStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSynchronizationEnds(Z)V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/sdkbox/services/TrackingLocalStorage$3;->this$0:Lcom/sdkbox/services/TrackingLocalStorage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdkbox/services/TrackingLocalStorage;->access$402(Lcom/sdkbox/services/TrackingLocalStorage;Z)Z

    if-eqz p1, :cond_0

    .line 381
    iget-object p1, p0, Lcom/sdkbox/services/TrackingLocalStorage$3;->this$0:Lcom/sdkbox/services/TrackingLocalStorage;

    invoke-virtual {p1}, Lcom/sdkbox/services/TrackingLocalStorage;->removeFront()V

    .line 382
    iget-object p1, p0, Lcom/sdkbox/services/TrackingLocalStorage$3;->this$0:Lcom/sdkbox/services/TrackingLocalStorage;

    invoke-virtual {p1}, Lcom/sdkbox/services/TrackingLocalStorage;->saveTracking()V

    .line 384
    :cond_0
    iget-object p1, p0, Lcom/sdkbox/services/TrackingLocalStorage$3;->this$0:Lcom/sdkbox/services/TrackingLocalStorage;

    invoke-virtual {p1}, Lcom/sdkbox/services/TrackingLocalStorage;->sync()V

    .line 386
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v0, 0x9c4

    .line 387
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
