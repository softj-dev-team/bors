.class public final synthetic Lcom/google/android/gms/safetynet/zzn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-safetynet@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/safetynet/zzn;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/safetynet/zzn;

    invoke-direct {v0}, Lcom/google/android/gms/safetynet/zzn;-><init>()V

    sput-object v0, Lcom/google/android/gms/safetynet/zzn;->zza:Lcom/google/android/gms/safetynet/zzn;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/safetynet/zzaf;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    sget p2, Lcom/google/android/gms/safetynet/SafetyNetClient;->zza:I

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/safetynet/zzaf;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/safetynet/zzh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/safetynet/zzh;->zzi()V

    return-void
.end method
