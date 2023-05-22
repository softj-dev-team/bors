.class public Lcom/sdkbox/services/TrackingLocalStorage$TrackingSyncWorker;
.super Ljava/lang/Object;
.source "TrackingLocalStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdkbox/services/TrackingLocalStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrackingSyncWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/services/TrackingLocalStorage;

.field private final url:Ljava/lang/String;

.field private final workerListener:Lcom/sdkbox/services/TrackingLocalStorage$SyncWorkerListener;


# direct methods
.method constructor <init>(Lcom/sdkbox/services/TrackingLocalStorage;Ljava/lang/String;Lcom/sdkbox/services/TrackingLocalStorage$SyncWorkerListener;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/sdkbox/services/TrackingLocalStorage$TrackingSyncWorker;->this$0:Lcom/sdkbox/services/TrackingLocalStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p3, p0, Lcom/sdkbox/services/TrackingLocalStorage$TrackingSyncWorker;->workerListener:Lcom/sdkbox/services/TrackingLocalStorage$SyncWorkerListener;

    .line 122
    iput-object p2, p0, Lcom/sdkbox/services/TrackingLocalStorage$TrackingSyncWorker;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 149
    invoke-static {}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->IsNetworkAvailable()Z

    move-result v0

    const-string v1, "SDKBOX_CORE"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Network not available while _syncing pending tracking."

    .line 150
    invoke-static {v1, v3, v0}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 152
    :cond_0
    new-instance v0, Lcom/sdkbox/services/TrackingLocalStorage$Condition;

    iget-object v3, p0, Lcom/sdkbox/services/TrackingLocalStorage$TrackingSyncWorker;->this$0:Lcom/sdkbox/services/TrackingLocalStorage;

    invoke-direct {v0, v3}, Lcom/sdkbox/services/TrackingLocalStorage$Condition;-><init>(Lcom/sdkbox/services/TrackingLocalStorage;)V

    .line 153
    new-instance v3, Lcom/sdkbox/services/XMLHttpRequest;

    invoke-direct {v3}, Lcom/sdkbox/services/XMLHttpRequest;-><init>()V

    .line 154
    new-instance v4, Lcom/sdkbox/services/TrackingLocalStorage$TrackingSyncWorker$1;

    invoke-direct {v4, p0, v0}, Lcom/sdkbox/services/TrackingLocalStorage$TrackingSyncWorker$1;-><init>(Lcom/sdkbox/services/TrackingLocalStorage$TrackingSyncWorker;Lcom/sdkbox/services/TrackingLocalStorage$Condition;)V

    invoke-virtual {v3, v4}, Lcom/sdkbox/services/XMLHttpRequest;->addEventListener(Lcom/sdkbox/services/HttpRequestListener;)V

    .line 184
    iget-object v4, p0, Lcom/sdkbox/services/TrackingLocalStorage$TrackingSyncWorker;->url:Ljava/lang/String;

    const-string v5, "GET"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v4, v6}, Lcom/sdkbox/services/XMLHttpRequest;->send(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v3, 0x7d0

    .line 186
    :try_start_0
    invoke-virtual {v0, v3, v4}, Lcom/sdkbox/services/TrackingLocalStorage$Condition;->waitForTrue(J)V

    .line 187
    invoke-virtual {v0}, Lcom/sdkbox/services/TrackingLocalStorage$Condition;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    .line 190
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Track pending request error:\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sdkbox/services/TrackingLocalStorage$TrackingSyncWorker;->url:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Tracking storage timeout."

    .line 195
    invoke-static {v1, v3, v0}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Tracking storage interrupted exception."

    .line 193
    invoke-static {v1, v3, v0}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    :goto_0
    iget-object v0, p0, Lcom/sdkbox/services/TrackingLocalStorage$TrackingSyncWorker;->workerListener:Lcom/sdkbox/services/TrackingLocalStorage$SyncWorkerListener;

    invoke-interface {v0, v2}, Lcom/sdkbox/services/TrackingLocalStorage$SyncWorkerListener;->onSynchronizationEnds(Z)V

    return-void
.end method

.method public setTrackingStatus(I)V
    .locals 2

    .line 127
    invoke-static {p1}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->setMask(I)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-gez p1, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 132
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "SDKBOX_CORE"

    const-string v1, "tracking status set to unknown value: %d."

    invoke-static {p1, v1, v0}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 135
    :cond_1
    sget p1, Lcom/sdkbox/plugin/TrackingInfoAndroid;->FLAG_INSTALLED_APPS:I

    invoke-static {p1}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->isTrackingEnable(I)Z

    move-result p1

    const-string v0, "track_d"

    if-nez p1, :cond_2

    .line 136
    sget p1, Lcom/sdkbox/plugin/TrackingInfoAndroid;->FLAG_INSTALLED_APPS:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sdkbox/jnibridge/NativeBridge;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    :cond_2
    sget p1, Lcom/sdkbox/plugin/TrackingInfoAndroid;->FLAG_ACCOUNTS:I

    invoke-static {p1}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->isTrackingEnable(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 139
    sget p1, Lcom/sdkbox/plugin/TrackingInfoAndroid;->FLAG_ACCOUNTS:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sdkbox/jnibridge/NativeBridge;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    :cond_3
    sget p1, Lcom/sdkbox/plugin/TrackingInfoAndroid;->FLAG_FACEBOOK_ID:I

    invoke-static {p1}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->isTrackingEnable(I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 142
    sget p1, Lcom/sdkbox/plugin/TrackingInfoAndroid;->FLAG_FACEBOOK_ID:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sdkbox/jnibridge/NativeBridge;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
