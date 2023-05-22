.class public final Lcom/google/android/gms/internal/safetynet/zzac;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-safetynet@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/safetynet/SafetyNetApi$SafeBrowsingResult;


# instance fields
.field private zza:Lcom/google/android/gms/common/api/Status;

.field private final zzb:Lcom/google/android/gms/safetynet/SafeBrowsingData;

.field private zzc:Ljava/lang/String;

.field private zzd:J

.field private zze:[B


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/SafeBrowsingData;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/safetynet/zzac;->zza:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/safetynet/zzac;->zzb:Lcom/google/android/gms/safetynet/SafeBrowsingData;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/safetynet/zzac;->zzc:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/safetynet/SafeBrowsingData;->getMetadata()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/safetynet/zzac;->zzc:Ljava/lang/String;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/safetynet/SafeBrowsingData;->getLastUpdateTimeMs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/safetynet/zzac;->zzd:J

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/safetynet/SafeBrowsingData;->getState()[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/safetynet/zzac;->zze:[B

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x8

    .line 5
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/safetynet/zzac;->zza:Lcom/google/android/gms/common/api/Status;

    :cond_1
    return-void
.end method


# virtual methods
.method public final getDetectedThreats()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/safetynet/SafeBrowsingThreat;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/safetynet/zzac;->zzc:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "matches"

    .line 3
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 5
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "threat_type"

    .line 6
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/google/android/gms/safetynet/SafeBrowsingThreat;

    .line 7
    invoke-direct {v4, v3}, Lcom/google/android/gms/safetynet/SafeBrowsingThreat;-><init>(I)V

    .line 8
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_1
    :cond_0
    return-object v0
.end method

.method public final getLastUpdateTimeMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/safetynet/zzac;->zzd:J

    return-wide v0
.end method

.method public final getMetadata()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/safetynet/zzac;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final getState()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/safetynet/zzac;->zze:[B

    return-object v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/safetynet/zzac;->zza:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
