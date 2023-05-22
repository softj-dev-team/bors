.class public Lcom/sdkbox/services/TrackingLocalStorage;
.super Ljava/lang/Object;
.source "TrackingLocalStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingTask;,
        Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingAsyncTask;,
        Lcom/sdkbox/services/TrackingLocalStorage$TrackingDescriptor;,
        Lcom/sdkbox/services/TrackingLocalStorage$TrackingSyncWorker;,
        Lcom/sdkbox/services/TrackingLocalStorage$TrackingLocalStorageThreadFactory;,
        Lcom/sdkbox/services/TrackingLocalStorage$Condition;,
        Lcom/sdkbox/services/TrackingLocalStorage$SyncWorkerListener;
    }
.end annotation


# static fields
.field public static final MAX_SIZE:I = 0x64

.field public static final TAG:Ljava/lang/String; = "SDKBOX_CORE"

.field public static final TRACKING_FILE:Ljava/lang/String; = "sdkbox_track"


# instance fields
.field private _elements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sdkbox/services/TrackingLocalStorage$TrackingDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private _serial_queue:Ljava/util/concurrent/ExecutorService;

.field private _syncing:Z

.field private _timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/sdkbox/services/TrackingLocalStorage;->_syncing:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sdkbox/services/TrackingLocalStorage;->_elements:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 263
    iput-object v0, p0, Lcom/sdkbox/services/TrackingLocalStorage;->_serial_queue:Ljava/util/concurrent/ExecutorService;

    .line 264
    new-instance v1, Lcom/sdkbox/services/TrackingLocalStorage$TrackingLocalStorageThreadFactory;

    invoke-direct {v1, p0, v0}, Lcom/sdkbox/services/TrackingLocalStorage$TrackingLocalStorageThreadFactory;-><init>(Lcom/sdkbox/services/TrackingLocalStorage;Lcom/sdkbox/services/TrackingLocalStorage$1;)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sdkbox/services/TrackingLocalStorage;->_serial_queue:Ljava/util/concurrent/ExecutorService;

    .line 265
    invoke-direct {p0}, Lcom/sdkbox/services/TrackingLocalStorage;->loadTracking()V

    .line 266
    invoke-virtual {p0}, Lcom/sdkbox/services/TrackingLocalStorage;->sync()V

    return-void
.end method

.method static synthetic access$300(Lcom/sdkbox/services/TrackingLocalStorage;)Ljava/util/ArrayList;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/sdkbox/services/TrackingLocalStorage;->_elements:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$402(Lcom/sdkbox/services/TrackingLocalStorage;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/sdkbox/services/TrackingLocalStorage;->_syncing:Z

    return p1
.end method

.method public static disablePeriodicTracking()V
    .locals 1

    .line 420
    sget-object v0, Lcom/sdkbox/plugin/TrackingInfoAndroid;->tls:Lcom/sdkbox/services/TrackingLocalStorage;

    invoke-virtual {v0}, Lcom/sdkbox/services/TrackingLocalStorage;->disablePeriodicTrackingImpl()V

    return-void
.end method

.method public static enablePeriodicTracking(J)V
    .locals 3

    .line 416
    sget-object v0, Lcom/sdkbox/plugin/TrackingInfoAndroid;->tls:Lcom/sdkbox/services/TrackingLocalStorage;

    const-wide/16 v1, 0x3e8

    mul-long p0, p0, v1

    invoke-virtual {v0, p0, p1}, Lcom/sdkbox/services/TrackingLocalStorage;->enablePeriodicTrackingImpl(J)V

    return-void
.end method

.method private loadTracking()V
    .locals 7

    const-string v0, "SDKBOX_CORE"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 273
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    const-string v5, "sdkbox_track"

    invoke-static {v5}, Lcom/sdkbox/services/FileUtils;->getFileInputAtInternalFolderPath(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 274
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->available()I

    move-result v2

    if-lez v2, :cond_0

    .line 275
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 276
    new-instance v4, Lcom/sdkbox/services/TrackingLocalStorage$TrackingDescriptor;

    invoke-direct {v4, p0, v2}, Lcom/sdkbox/services/TrackingLocalStorage$TrackingDescriptor;-><init>(Lcom/sdkbox/services/TrackingLocalStorage;Ljava/lang/String;)V

    .line 277
    iget-object v2, p0, Lcom/sdkbox/services/TrackingLocalStorage;->_elements:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sdkbox/services/TrackingLocalStorage;->_elements:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " tracking info _elements."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catchall_1
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    :goto_1
    if-eqz v3, :cond_1

    .line 289
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 293
    :catch_0
    :cond_1
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v2

    .line 296
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t load tracking info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_2

    .line 299
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_2
    :goto_2
    return-void
.end method

.method public static native periodicTrackRequest(J)V
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/sdkbox/services/TrackingLocalStorage;->_serial_queue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sdkbox/services/TrackingLocalStorage$1;

    invoke-direct {v1, p0, p1}, Lcom/sdkbox/services/TrackingLocalStorage$1;-><init>(Lcom/sdkbox/services/TrackingLocalStorage;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public disablePeriodicTrackingImpl()V
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/sdkbox/services/TrackingLocalStorage;->_timer:Ljava/util/Timer;

    const/4 v1, 0x0

    const-string v2, "SDKBOX_CORE"

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 408
    iput-object v0, p0, Lcom/sdkbox/services/TrackingLocalStorage;->_timer:Ljava/util/Timer;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Disabling heartbeat."

    .line 409
    invoke-static {v2, v1, v0}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "heartbeat not initialized."

    .line 412
    invoke-static {v2, v1, v0}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public enablePeriodicTrackingImpl(J)V
    .locals 9

    .line 396
    iget-object v0, p0, Lcom/sdkbox/services/TrackingLocalStorage;->_timer:Ljava/util/Timer;

    const/4 v1, 0x0

    const-string v2, "SDKBOX_CORE"

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 397
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "Creating heartbeat every \'%d\'."

    invoke-static {v2, v1, v0}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Lcom/sdkbox/services/TrackingLocalStorage;->_timer:Ljava/util/Timer;

    .line 399
    new-instance v4, Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingTask;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingTask;-><init>(Lcom/sdkbox/services/TrackingLocalStorage;Lcom/sdkbox/services/TrackingLocalStorage$1;)V

    const-wide/16 v5, 0x1388

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "heartbeat already initialized."

    .line 402
    invoke-static {v2, p2, p1}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected removeFront()V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/sdkbox/services/TrackingLocalStorage;->_serial_queue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sdkbox/services/TrackingLocalStorage$2;

    invoke-direct {v1, p0}, Lcom/sdkbox/services/TrackingLocalStorage$2;-><init>(Lcom/sdkbox/services/TrackingLocalStorage;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected saveTracking()V
    .locals 5

    const/4 v0, 0x0

    .line 310
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    const-string v3, "sdkbox_track"

    invoke-static {v3}, Lcom/sdkbox/services/FileUtils;->getFileOutputAtInternalFolderPath(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 311
    :try_start_1
    iget-object v0, p0, Lcom/sdkbox/services/TrackingLocalStorage;->_elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 312
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdkbox/services/TrackingLocalStorage$TrackingDescriptor;

    .line 314
    iget-object v2, v2, Lcom/sdkbox/services/TrackingLocalStorage$TrackingDescriptor;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 318
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    if-eqz v1, :cond_1

    .line 325
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 329
    :catch_0
    :cond_1
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t save tracking info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "SDKBOX_CORE"

    invoke-static {v3, v0, v2}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_2

    .line 335
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_2
    :goto_2
    return-void
.end method

.method public declared-synchronized sync()V
    .locals 4

    monitor-enter p0

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/sdkbox/services/TrackingLocalStorage;->_elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sdkbox/plugin/TrackingInfoAndroid;->IsNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 373
    :cond_0
    iget-boolean v0, p0, Lcom/sdkbox/services/TrackingLocalStorage;->_syncing:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 375
    iput-boolean v0, p0, Lcom/sdkbox/services/TrackingLocalStorage;->_syncing:Z

    .line 376
    iget-object v0, p0, Lcom/sdkbox/services/TrackingLocalStorage;->_serial_queue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sdkbox/services/TrackingLocalStorage$TrackingSyncWorker;

    iget-object v3, p0, Lcom/sdkbox/services/TrackingLocalStorage;->_elements:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdkbox/services/TrackingLocalStorage$TrackingDescriptor;

    iget-object v1, v1, Lcom/sdkbox/services/TrackingLocalStorage$TrackingDescriptor;->url:Ljava/lang/String;

    new-instance v3, Lcom/sdkbox/services/TrackingLocalStorage$3;

    invoke-direct {v3, p0}, Lcom/sdkbox/services/TrackingLocalStorage$3;-><init>(Lcom/sdkbox/services/TrackingLocalStorage;)V

    invoke-direct {v2, p0, v1, v3}, Lcom/sdkbox/services/TrackingLocalStorage$TrackingSyncWorker;-><init>(Lcom/sdkbox/services/TrackingLocalStorage;Ljava/lang/String;Lcom/sdkbox/services/TrackingLocalStorage$SyncWorkerListener;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 371
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/sdkbox/services/TrackingLocalStorage;->_syncing:Z

    .line 372
    invoke-virtual {p0}, Lcom/sdkbox/services/TrackingLocalStorage;->saveTracking()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
