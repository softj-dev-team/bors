.class Lzendesk/belvedere/IntentRegistry;
.super Ljava/lang/Object;
.source "IntentRegistry.java"


# static fields
.field private static final END_REQUEST_CODE:I = 0x672

.field private static final START_REQUEST_CODE:I = 0x640


# instance fields
.field private pendingIntents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lzendesk/belvedere/MediaResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lzendesk/belvedere/IntentRegistry;->pendingIntents:Landroid/util/SparseArray;

    return-void
.end method

.method private getRequestCode()I
    .locals 2

    const/16 v0, 0x640

    :goto_0
    const/16 v1, 0x672

    if-ge v0, v1, :cond_1

    .line 45
    iget-object v1, p0, Lzendesk/belvedere/IntentRegistry;->pendingIntents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "Belvedere"

    const-string v1, "No slot free. Clearing registry."

    .line 50
    invoke-static {v0, v1}, Lzendesk/belvedere/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lzendesk/belvedere/IntentRegistry;->pendingIntents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 52
    invoke-direct {p0}, Lzendesk/belvedere/IntentRegistry;->getRequestCode()I

    move-result v0

    return v0
.end method


# virtual methods
.method freeSlot(I)V
    .locals 1

    .line 26
    monitor-enter p0

    .line 27
    :try_start_0
    iget-object v0, p0, Lzendesk/belvedere/IntentRegistry;->pendingIntents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 28
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getForRequestCode(I)Lzendesk/belvedere/MediaResult;
    .locals 1

    .line 38
    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p0, Lzendesk/belvedere/IntentRegistry;->pendingIntents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/belvedere/MediaResult;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 40
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method reserveSlot()I
    .locals 3

    .line 18
    monitor-enter p0

    .line 19
    :try_start_0
    invoke-direct {p0}, Lzendesk/belvedere/IntentRegistry;->getRequestCode()I

    move-result v0

    .line 20
    iget-object v1, p0, Lzendesk/belvedere/IntentRegistry;->pendingIntents:Landroid/util/SparseArray;

    invoke-static {}, Lzendesk/belvedere/MediaResult;->empty()Lzendesk/belvedere/MediaResult;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateRequestCode(ILzendesk/belvedere/MediaResult;)V
    .locals 1

    .line 32
    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v0, p0, Lzendesk/belvedere/IntentRegistry;->pendingIntents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
