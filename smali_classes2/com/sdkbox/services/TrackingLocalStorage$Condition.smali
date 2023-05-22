.class Lcom/sdkbox/services/TrackingLocalStorage$Condition;
.super Ljava/lang/Object;
.source "TrackingLocalStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdkbox/services/TrackingLocalStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Condition"
.end annotation


# instance fields
.field private condition:Z

.field private isFalse:Z

.field final synthetic this$0:Lcom/sdkbox/services/TrackingLocalStorage;


# direct methods
.method constructor <init>(Lcom/sdkbox/services/TrackingLocalStorage;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/sdkbox/services/TrackingLocalStorage$Condition;->this$0:Lcom/sdkbox/services/TrackingLocalStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/sdkbox/services/TrackingLocalStorage$Condition;->condition:Z

    .line 47
    iput-boolean p1, p0, Lcom/sdkbox/services/TrackingLocalStorage$Condition;->isFalse:Z

    return-void
.end method


# virtual methods
.method public isFalse()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/sdkbox/services/TrackingLocalStorage$Condition;->condition:Z

    return v0
.end method

.method public isTrue()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/sdkbox/services/TrackingLocalStorage$Condition;->condition:Z

    return v0
.end method

.method public declared-synchronized setFalse()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 58
    :try_start_0
    iput-boolean v0, p0, Lcom/sdkbox/services/TrackingLocalStorage$Condition;->isFalse:Z

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTrue()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 53
    :try_start_0
    iput-boolean v0, p0, Lcom/sdkbox/services/TrackingLocalStorage$Condition;->condition:Z

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized waitForTrue()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    const-wide v0, 0x7fffffffffffffffL

    .line 63
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/sdkbox/services/TrackingLocalStorage$Condition;->waitForTrue(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized waitForTrue(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    .line 67
    :try_start_0
    iget-boolean v0, p0, Lcom/sdkbox/services/TrackingLocalStorage$Condition;->condition:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    .line 72
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 75
    :goto_0
    iget-boolean v4, p0, Lcom/sdkbox/services/TrackingLocalStorage$Condition;->condition:Z

    if-nez v4, :cond_2

    cmp-long v4, v0, p1

    if-gez v4, :cond_2

    iget-boolean v4, p0, Lcom/sdkbox/services/TrackingLocalStorage$Condition;->isFalse:Z

    if-eqz v4, :cond_1

    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v2, v4, v2

    add-long/2addr v0, v2

    move-wide v2, v4

    goto :goto_0

    :cond_2
    :goto_1
    cmp-long v2, v0, p1

    if-gez v2, :cond_3

    .line 86
    monitor-exit p0

    return-void

    .line 84
    :cond_3
    :try_start_2
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
