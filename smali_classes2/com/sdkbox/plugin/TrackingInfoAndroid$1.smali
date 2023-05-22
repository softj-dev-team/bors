.class final Lcom/sdkbox/plugin/TrackingInfoAndroid$1;
.super Ljava/lang/Object;
.source "TrackingInfoAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/TrackingInfoAndroid;->reqAdvertisingIdentifier()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 139
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 140
    new-instance v1, Lcom/sdkbox/plugin/TrackingInfoAndroid$1$1;

    invoke-direct {v1, p0}, Lcom/sdkbox/plugin/TrackingInfoAndroid$1$1;-><init>(Lcom/sdkbox/plugin/TrackingInfoAndroid$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    const/4 v2, 0x0

    .line 163
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-wide/16 v4, 0x3

    const/4 v6, 0x1

    .line 165
    :try_start_0
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v7}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception v4

    .line 167
    invoke-interface {v1, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reqAdvertisingIdentifier Error:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "TrackingInfo"

    invoke-static {v4, v1, v2}, Lcom/sdkbox/plugin/SdkboxLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 171
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-static {v6}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->access$102(I)I

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    .line 174
    invoke-static {v0}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->access$102(I)I

    .line 176
    :goto_1
    invoke-static {}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->access$000()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "00000000-0000-0000-0000-000000000001"

    .line 177
    invoke-static {v0}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    :cond_2
    invoke-static {}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->sendCacheTracking()V

    .line 180
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 181
    new-instance v1, Lcom/sdkbox/plugin/TrackingInfoAndroid$1$2;

    invoke-direct {v1, p0, v0}, Lcom/sdkbox/plugin/TrackingInfoAndroid$1$2;-><init>(Lcom/sdkbox/plugin/TrackingInfoAndroid$1;Z)V

    invoke-static {v1}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method
