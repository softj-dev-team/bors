.class final Lcom/google/android/gms/internal/safetynet/zzw;
.super Lcom/google/android/gms/internal/safetynet/zzd;
.source "com.google.android.gms:play-services-safetynet@@17.0.1"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/safetynet/zzx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/safetynet/zzx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/safetynet/zzw;->zza:Lcom/google/android/gms/internal/safetynet/zzx;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/safetynet/zzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzh(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zzf;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/safetynet/zzw;->zza:Lcom/google/android/gms/internal/safetynet/zzx;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/safetynet/zzab;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/safetynet/zzab;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zzf;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/safetynet/zzx;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
