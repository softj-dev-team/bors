.class Lio/branch/referral/ServerRequestQueue;
.super Ljava/lang/Object;
.source "ServerRequestQueue.java"


# static fields
.field private static final MAX_ITEMS:I = 0x19

.field private static final PREF_KEY:Ljava/lang/String; = "BNCServerRequestQueue"

.field private static SharedInstance:Lio/branch/referral/ServerRequestQueue;

.field private static final reqQueueLockObject:Ljava/lang/Object;


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private final queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/referral/ServerRequest;",
            ">;"
        }
    .end annotation
.end field

.field private sharedPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/branch/referral/ServerRequestQueue;->reqQueueLockObject:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BNC_Server_Request_Queue"

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/ServerRequestQueue;->sharedPref:Landroid/content/SharedPreferences;

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/ServerRequestQueue;->editor:Landroid/content/SharedPreferences$Editor;

    .line 71
    invoke-direct {p0, p1}, Lio/branch/referral/ServerRequestQueue;->retrieve(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/branch/referral/ServerRequestQueue;->queue:Ljava/util/List;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lio/branch/referral/ServerRequestQueue;
    .locals 2

    .line 44
    sget-object v0, Lio/branch/referral/ServerRequestQueue;->SharedInstance:Lio/branch/referral/ServerRequestQueue;

    if-nez v0, :cond_1

    .line 45
    const-class v0, Lio/branch/referral/ServerRequestQueue;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lio/branch/referral/ServerRequestQueue;->SharedInstance:Lio/branch/referral/ServerRequestQueue;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lio/branch/referral/ServerRequestQueue;

    invoke-direct {v1, p0}, Lio/branch/referral/ServerRequestQueue;-><init>(Landroid/content/Context;)V

    sput-object v1, Lio/branch/referral/ServerRequestQueue;->SharedInstance:Lio/branch/referral/ServerRequestQueue;

    .line 49
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 51
    :cond_1
    :goto_0
    sget-object p0, Lio/branch/referral/ServerRequestQueue;->SharedInstance:Lio/branch/referral/ServerRequestQueue;

    return-object p0
.end method

.method private persist()V
    .locals 5

    .line 76
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 77
    sget-object v1, Lio/branch/referral/ServerRequestQueue;->reqQueueLockObject:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :try_start_1
    iget-object v2, p0, Lio/branch/referral/ServerRequestQueue;->queue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/referral/ServerRequest;

    .line 79
    invoke-virtual {v3}, Lio/branch/referral/ServerRequest;->isPersistable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    invoke-virtual {v3}, Lio/branch/referral/ServerRequest;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 82
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 86
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :try_start_2
    iget-object v1, p0, Lio/branch/referral/ServerRequestQueue;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "BNCServerRequestQueue"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 86
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to persist queue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private retrieve(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lio/branch/referral/ServerRequest;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lio/branch/referral/ServerRequestQueue;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "BNCServerRequestQueue"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 98
    sget-object v2, Lio/branch/referral/ServerRequestQueue;->reqQueueLockObject:Ljava/lang/Object;

    monitor-enter v2

    if-eqz v0, :cond_1

    .line 101
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 102
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/16 v5, 0x19

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_0
    if-ge v0, v4, :cond_1

    .line 103
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 104
    invoke-static {v5, p1}, Lio/branch/referral/ServerRequest;->fromJSON(Lorg/json/JSONObject;Landroid/content/Context;)Lio/branch/referral/ServerRequest;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 106
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :catch_0
    :cond_1
    :try_start_1
    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static shutDown()V
    .locals 2

    .line 56
    sget-object v0, Lio/branch/referral/ServerRequestQueue;->reqQueueLockObject:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 57
    :try_start_0
    sput-object v1, Lio/branch/referral/ServerRequestQueue;->SharedInstance:Lio/branch/referral/ServerRequestQueue;

    .line 58
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method clear()V
    .locals 2

    .line 251
    sget-object v0, Lio/branch/referral/ServerRequestQueue;->reqQueueLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_0
    iget-object v1, p0, Lio/branch/referral/ServerRequestQueue;->queue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 254
    invoke-direct {p0}, Lio/branch/referral/ServerRequestQueue;->persist()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 257
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method enqueue(Lio/branch/referral/ServerRequest;)V
    .locals 2

    .line 135
    sget-object v0, Lio/branch/referral/ServerRequestQueue;->reqQueueLockObject:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 137
    :try_start_0
    iget-object v1, p0, Lio/branch/referral/ServerRequestQueue;->queue:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {p0}, Lio/branch/referral/ServerRequestQueue;->getSize()I

    move-result p1

    const/16 v1, 0x19

    if-lt p1, v1, :cond_0

    .line 139
    iget-object p1, p0, Lio/branch/referral/ServerRequestQueue;->queue:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 141
    :cond_0
    invoke-direct {p0}, Lio/branch/referral/ServerRequestQueue;->persist()V

    .line 143
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getSelfInitRequest()Lio/branch/referral/ServerRequestInitSession;
    .locals 4

    .line 268
    sget-object v0, Lio/branch/referral/ServerRequestQueue;->reqQueueLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_0
    iget-object v1, p0, Lio/branch/referral/ServerRequestQueue;->queue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/referral/ServerRequest;

    .line 270
    instance-of v3, v2, Lio/branch/referral/ServerRequestInitSession;

    if-eqz v3, :cond_0

    .line 271
    check-cast v2, Lio/branch/referral/ServerRequestInitSession;

    .line 272
    iget-boolean v3, v2, Lio/branch/referral/ServerRequestInitSession;->initiatedByClient:Z

    if-eqz v3, :cond_0

    .line 273
    monitor-exit v0

    return-object v2

    .line 277
    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSize()I
    .locals 2

    .line 124
    sget-object v0, Lio/branch/referral/ServerRequestQueue;->reqQueueLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_0
    iget-object v1, p0, Lio/branch/referral/ServerRequestQueue;->queue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 126
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method insert(Lio/branch/referral/ServerRequest;I)V
    .locals 2

    .line 194
    sget-object v0, Lio/branch/referral/ServerRequestQueue;->reqQueueLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object v1, p0, Lio/branch/referral/ServerRequestQueue;->queue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, p2, :cond_0

    .line 197
    iget-object p2, p0, Lio/branch/referral/ServerRequestQueue;->queue:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 199
    :cond_0
    iget-object v1, p0, Lio/branch/referral/ServerRequestQueue;->queue:Ljava/util/List;

    invoke-interface {v1, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 200
    invoke-direct {p0}, Lio/branch/referral/ServerRequestQueue;->persist()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 203
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method peek()Lio/branch/referral/ServerRequest;
    .locals 3

    .line 154
    sget-object v0, Lio/branch/referral/ServerRequestQueue;->reqQueueLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Lio/branch/referral/ServerRequestQueue;->queue:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/referral/ServerRequest;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    const/4 v1, 0x0

    .line 159
    :goto_0
    :try_start_1
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method peekAt(I)Lio/branch/referral/ServerRequest;
    .locals 2

    .line 175
    sget-object v0, Lio/branch/referral/ServerRequestQueue;->reqQueueLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Lio/branch/referral/ServerRequestQueue;->queue:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/referral/ServerRequest;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    .line 180
    :goto_0
    :try_start_1
    monitor-exit v0

    return-object p1

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public remove(Lio/branch/referral/ServerRequest;)Z
    .locals 3

    .line 237
    sget-object v0, Lio/branch/referral/ServerRequestQueue;->reqQueueLockObject:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 239
    :try_start_0
    iget-object v2, p0, Lio/branch/referral/ServerRequestQueue;->queue:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 240
    invoke-direct {p0}, Lio/branch/referral/ServerRequestQueue;->persist()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 243
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeAt(I)Lio/branch/referral/ServerRequest;
    .locals 3

    .line 218
    sget-object v0, Lio/branch/referral/ServerRequestQueue;->reqQueueLockObject:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 220
    :try_start_0
    iget-object v2, p0, Lio/branch/referral/ServerRequestQueue;->queue:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/referral/ServerRequest;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :try_start_1
    invoke-direct {p0}, Lio/branch/referral/ServerRequestQueue;->persist()V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-object v1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    :goto_0
    move-object p1, v1

    .line 224
    :goto_1
    :try_start_2
    monitor-exit v0

    return-object p1

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method setStrongMatchWaitLock()V
    .locals 4

    .line 298
    sget-object v0, Lio/branch/referral/ServerRequestQueue;->reqQueueLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_0
    iget-object v1, p0, Lio/branch/referral/ServerRequestQueue;->queue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/referral/ServerRequest;

    if-eqz v2, :cond_0

    .line 301
    instance-of v3, v2, Lio/branch/referral/ServerRequestInitSession;

    if-eqz v3, :cond_0

    .line 302
    sget-object v3, Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;->STRONG_MATCH_PENDING_WAIT_LOCK:Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;

    invoke-virtual {v2, v3}, Lio/branch/referral/ServerRequest;->addProcessWaitLock(Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;)V

    goto :goto_0

    .line 306
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unlockProcessWait(Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;)V
    .locals 3

    .line 285
    sget-object v0, Lio/branch/referral/ServerRequestQueue;->reqQueueLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_0
    iget-object v1, p0, Lio/branch/referral/ServerRequestQueue;->queue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/referral/ServerRequest;

    if-eqz v2, :cond_0

    .line 288
    invoke-virtual {v2, p1}, Lio/branch/referral/ServerRequest;->removeProcessWaitLock(Lio/branch/referral/ServerRequest$PROCESS_WAIT_LOCK;)V

    goto :goto_0

    .line 291
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
