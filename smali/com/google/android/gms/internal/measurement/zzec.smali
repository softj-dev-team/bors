.class public final Lcom/google/android/gms/internal/measurement/zzec;
.super Lcom/google/android/gms/internal/measurement/zzhr;
.source "com.google.android.gms:play-services-measurement@@18.0.3"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzix;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhr<",
        "Lcom/google/android/gms/internal/measurement/zzec;",
        "Lcom/google/android/gms/internal/measurement/zzeb;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzix;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/measurement/zzec;


# instance fields
.field private zza:I

.field private zze:Lcom/google/android/gms/internal/measurement/zzhy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhy<",
            "Lcom/google/android/gms/internal/measurement/zzeh;",
            ">;"
        }
    .end annotation
.end field

.field private zzf:Lcom/google/android/gms/internal/measurement/zzdy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzec;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzec;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzec;->zzg:Lcom/google/android/gms/internal/measurement/zzec;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzec;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzhr;->zzby(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzhr;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhr;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzec;->zzbE()Lcom/google/android/gms/internal/measurement/zzhy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzec;->zze:Lcom/google/android/gms/internal/measurement/zzhy;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/measurement/zzec;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzec;->zzg:Lcom/google/android/gms/internal/measurement/zzec;

    return-object v0
.end method


# virtual methods
.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 p2, 0x0

    if-eq p1, p3, :cond_1

    const/4 p3, 0x5

    if-eq p1, p3, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzec;->zzg:Lcom/google/android/gms/internal/measurement/zzec;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzeb;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzeb;-><init>(Lcom/google/android/gms/internal/measurement/zzdw;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzec;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzec;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v2, "zza"

    aput-object v2, p1, p3

    const-string/jumbo p3, "zze"

    aput-object p3, p1, p2

    .line 0
    const-class p2, Lcom/google/android/gms/internal/measurement/zzeh;

    aput-object p2, p1, v1

    const-string/jumbo p2, "zzf"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzec;->zzg:Lcom/google/android/gms/internal/measurement/zzec;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u1009\u0000"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzec;->zzbz(Lcom/google/android/gms/internal/measurement/zziw;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
