.class final Lcom/google/firebase/appindexing/internal/zzl;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
        "Lcom/google/firebase/appindexing/internal/zze;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzew:Lcom/google/firebase/appindexing/internal/zzj;


# direct methods
.method constructor <init>(Lcom/google/firebase/appindexing/internal/zzj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/appindexing/internal/zzl;->zzew:Lcom/google/firebase/appindexing/internal/zzj;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/TaskApiCall;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/firebase/appindexing/internal/zze;

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/appindexing/internal/zze;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/appindexing/internal/zzr;

    .line 4
    new-instance v0, Lcom/google/firebase/appindexing/internal/zzo;

    invoke-direct {v0, p0, p2}, Lcom/google/firebase/appindexing/internal/zzo;-><init>(Lcom/google/firebase/appindexing/internal/zzl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 5
    iget-object v1, p0, Lcom/google/firebase/appindexing/internal/zzl;->zzew:Lcom/google/firebase/appindexing/internal/zzj;

    invoke-static {v1}, Lcom/google/firebase/appindexing/internal/zzj;->zzb(Lcom/google/firebase/appindexing/internal/zzj;)Lcom/google/firebase/appindexing/internal/zzy;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/appindexing/internal/zzr;->zza(Lcom/google/android/gms/common/api/internal/IStatusCallback;Lcom/google/firebase/appindexing/internal/zzy;)Lcom/google/firebase/appindexing/internal/zzg;

    move-result-object p1

    const/4 v0, 0x2

    if-nez p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    .line 6
    :cond_0
    iget p1, p1, Lcom/google/firebase/appindexing/internal/zzg;->status:I

    :goto_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v1, :cond_4

    const-string p1, "Queue was full. API call will be retried."

    const/4 v1, 0x4

    .line 10
    invoke-static {v1}, Lcom/google/firebase/appindexing/internal/zzt;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "FirebaseAppIndex"

    .line 11
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_1
    invoke-virtual {p2, v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 15
    iget-object p1, p0, Lcom/google/firebase/appindexing/internal/zzl;->zzew:Lcom/google/firebase/appindexing/internal/zzj;

    iget-object p1, p1, Lcom/google/firebase/appindexing/internal/zzj;->zzet:Lcom/google/firebase/appindexing/internal/zzk;

    invoke-static {p1}, Lcom/google/firebase/appindexing/internal/zzk;->zza(Lcom/google/firebase/appindexing/internal/zzk;)Ljava/util/Queue;

    move-result-object p1

    monitor-enter p1

    .line 16
    :try_start_0
    iget-object p2, p0, Lcom/google/firebase/appindexing/internal/zzl;->zzew:Lcom/google/firebase/appindexing/internal/zzj;

    iget-object p2, p2, Lcom/google/firebase/appindexing/internal/zzj;->zzet:Lcom/google/firebase/appindexing/internal/zzk;

    invoke-static {p2}, Lcom/google/firebase/appindexing/internal/zzk;->zzb(Lcom/google/firebase/appindexing/internal/zzk;)I

    move-result p2

    if-nez p2, :cond_3

    .line 17
    iget-object p2, p0, Lcom/google/firebase/appindexing/internal/zzl;->zzew:Lcom/google/firebase/appindexing/internal/zzj;

    iget-object p2, p2, Lcom/google/firebase/appindexing/internal/zzj;->zzet:Lcom/google/firebase/appindexing/internal/zzk;

    invoke-static {p2}, Lcom/google/firebase/appindexing/internal/zzk;->zza(Lcom/google/firebase/appindexing/internal/zzk;)Ljava/util/Queue;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lcom/google/firebase/appindexing/internal/zzj;

    .line 18
    iget-object p2, p0, Lcom/google/firebase/appindexing/internal/zzl;->zzew:Lcom/google/firebase/appindexing/internal/zzj;

    if-ne v4, p2, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    goto :goto_1

    .line 19
    :cond_3
    iget-object p2, p0, Lcom/google/firebase/appindexing/internal/zzl;->zzew:Lcom/google/firebase/appindexing/internal/zzj;

    iget-object p2, p2, Lcom/google/firebase/appindexing/internal/zzj;->zzet:Lcom/google/firebase/appindexing/internal/zzk;

    invoke-static {p2, v0}, Lcom/google/firebase/appindexing/internal/zzk;->zza(Lcom/google/firebase/appindexing/internal/zzk;I)I

    .line 20
    :goto_1
    monitor-exit p1

    goto :goto_3

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_4
    if-eq p1, v3, :cond_6

    const/16 v0, 0x29

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "API call failed. Status code: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    .line 23
    invoke-static {v0}, Lcom/google/firebase/appindexing/internal/zzt;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "FirebaseAppIndex"

    .line 24
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_5
    invoke-virtual {p2, v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 28
    iget-object p1, p0, Lcom/google/firebase/appindexing/internal/zzl;->zzew:Lcom/google/firebase/appindexing/internal/zzj;

    invoke-static {p1}, Lcom/google/firebase/appindexing/internal/zzj;->zza(Lcom/google/firebase/appindexing/internal/zzj;)Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object p1

    new-instance p2, Lcom/google/firebase/appindexing/FirebaseAppIndexingException;

    const-string v0, "Indexing error."

    invoke-direct {p2, v0}, Lcom/google/firebase/appindexing/FirebaseAppIndexingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 29
    :cond_6
    iget-object p1, p0, Lcom/google/firebase/appindexing/internal/zzl;->zzew:Lcom/google/firebase/appindexing/internal/zzj;

    iget-object p1, p1, Lcom/google/firebase/appindexing/internal/zzj;->zzet:Lcom/google/firebase/appindexing/internal/zzk;

    invoke-static {p1}, Lcom/google/firebase/appindexing/internal/zzk;->zza(Lcom/google/firebase/appindexing/internal/zzk;)Ljava/util/Queue;

    move-result-object p1

    monitor-enter p1

    .line 30
    :try_start_1
    iget-object p2, p0, Lcom/google/firebase/appindexing/internal/zzl;->zzew:Lcom/google/firebase/appindexing/internal/zzj;

    iget-object p2, p2, Lcom/google/firebase/appindexing/internal/zzj;->zzet:Lcom/google/firebase/appindexing/internal/zzk;

    invoke-static {p2}, Lcom/google/firebase/appindexing/internal/zzk;->zza(Lcom/google/firebase/appindexing/internal/zzk;)Ljava/util/Queue;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/appindexing/internal/zzj;

    .line 31
    iget-object v0, p0, Lcom/google/firebase/appindexing/internal/zzl;->zzew:Lcom/google/firebase/appindexing/internal/zzj;

    if-ne p2, v0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 32
    iget-object p2, p0, Lcom/google/firebase/appindexing/internal/zzl;->zzew:Lcom/google/firebase/appindexing/internal/zzj;

    iget-object p2, p2, Lcom/google/firebase/appindexing/internal/zzj;->zzet:Lcom/google/firebase/appindexing/internal/zzk;

    invoke-static {p2}, Lcom/google/firebase/appindexing/internal/zzk;->zza(Lcom/google/firebase/appindexing/internal/zzk;)Ljava/util/Queue;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lcom/google/firebase/appindexing/internal/zzj;

    .line 33
    iget-object p2, p0, Lcom/google/firebase/appindexing/internal/zzl;->zzew:Lcom/google/firebase/appindexing/internal/zzj;

    iget-object p2, p2, Lcom/google/firebase/appindexing/internal/zzj;->zzet:Lcom/google/firebase/appindexing/internal/zzk;

    invoke-static {p2, v2}, Lcom/google/firebase/appindexing/internal/zzk;->zza(Lcom/google/firebase/appindexing/internal/zzk;I)I

    .line 34
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_8
    :goto_3
    if-eqz v4, :cond_9

    .line 36
    invoke-virtual {v4}, Lcom/google/firebase/appindexing/internal/zzj;->execute()V

    :cond_9
    return-void

    :catchall_1
    move-exception p2

    .line 34
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p2
.end method
