.class final Lcom/google/android/gms/internal/safetynet/zzo;
.super Lcom/google/android/gms/internal/safetynet/zzx;
.source "com.google.android.gms:play-services-safetynet@@17.0.1"


# instance fields
.field final synthetic zza:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/safetynet/zzae;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/safetynet/zzo;->zza:Ljava/lang/String;

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/safetynet/zzx;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/safetynet/zzaf;

    iget-object v0, p0, Lcom/google/android/gms/internal/safetynet/zzo;->zzb:Lcom/google/android/gms/internal/safetynet/zzg;

    iget-object v1, p0, Lcom/google/android/gms/internal/safetynet/zzo;->zza:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/safetynet/zzaf;->getService()Landroid/os/IInterface;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/safetynet/zzh;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/safetynet/zzh;->zzj(Lcom/google/android/gms/internal/safetynet/zzg;Ljava/lang/String;)V

    return-void
.end method
