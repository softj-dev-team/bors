.class public final synthetic Lcom/google/android/gms/safetynet/zzl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-safetynet@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/safetynet/SafetyNetClient;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/safetynet/SafetyNetClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/safetynet/zzl;->zza:Lcom/google/android/gms/safetynet/SafetyNetClient;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/safetynet/zzl;->zza:Lcom/google/android/gms/safetynet/SafetyNetClient;

    check-cast p1, Lcom/google/android/gms/internal/safetynet/zzaf;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Lcom/google/android/gms/safetynet/zzp;

    .line 1
    invoke-direct {v1, v0, p2}, Lcom/google/android/gms/safetynet/zzp;-><init>(Lcom/google/android/gms/safetynet/SafetyNetClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/safetynet/zzaf;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/safetynet/zzh;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/safetynet/zzh;->zze(Lcom/google/android/gms/internal/safetynet/zzg;)V

    return-void
.end method
