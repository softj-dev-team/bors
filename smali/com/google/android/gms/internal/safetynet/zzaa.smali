.class final Lcom/google/android/gms/internal/safetynet/zzaa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-safetynet@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResult;


# instance fields
.field private final zza:Lcom/google/android/gms/common/api/Status;

.field private final zzb:Lcom/google/android/gms/safetynet/zzd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zzd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/safetynet/zzaa;->zza:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/safetynet/zzaa;->zzb:Lcom/google/android/gms/safetynet/zzd;

    return-void
.end method


# virtual methods
.method public final getHarmfulAppsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/safetynet/HarmfulAppsData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/safetynet/zzaa;->zzb:Lcom/google/android/gms/safetynet/zzd;

    if-nez v0, :cond_0

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/safetynet/zzd;->zzb:[Lcom/google/android/gms/safetynet/HarmfulAppsData;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getHoursSinceLastScanWithHarmfulApp()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/safetynet/zzaa;->zzb:Lcom/google/android/gms/safetynet/zzd;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, v0, Lcom/google/android/gms/safetynet/zzd;->zzc:I

    return v0
.end method

.method public final getLastScanTimeMs()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/safetynet/zzaa;->zzb:Lcom/google/android/gms/safetynet/zzd;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-wide v0, v0, Lcom/google/android/gms/safetynet/zzd;->zza:J

    return-wide v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/safetynet/zzaa;->zza:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
