.class final Lcom/google/android/gms/internal/safetynet/zzl;
.super Lcom/google/android/gms/internal/safetynet/zzt;
.source "com.google.android.gms:play-services-safetynet@@17.0.1"


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/safetynet/zzae;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/safetynet/zzt;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/safetynet/zzaf;

    iget-object v0, p0, Lcom/google/android/gms/internal/safetynet/zzl;->zza:Lcom/google/android/gms/internal/safetynet/zzg;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/safetynet/zzaf;->getService()Landroid/os/IInterface;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/safetynet/zzh;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/safetynet/zzh;->zzf(Lcom/google/android/gms/internal/safetynet/zzg;)V

    return-void
.end method
