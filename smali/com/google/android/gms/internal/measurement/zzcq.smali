.class public final Lcom/google/android/gms/internal/measurement/zzcq;
.super Lcom/google/android/gms/internal/measurement/zzhr;
.source "com.google.android.gms:play-services-measurement@@18.0.3"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzix;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhr<",
        "Lcom/google/android/gms/internal/measurement/zzcq;",
        "Lcom/google/android/gms/internal/measurement/zzcp;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzix;"
    }
.end annotation


# static fields
.field private static final zzn:Lcom/google/android/gms/internal/measurement/zzcq;


# instance fields
.field private zza:I

.field private zze:J

.field private zzf:Ljava/lang/String;

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/measurement/zzhy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhy<",
            "Lcom/google/android/gms/internal/measurement/zzcs;",
            ">;"
        }
    .end annotation
.end field

.field private zzi:Lcom/google/android/gms/internal/measurement/zzhy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhy<",
            "Lcom/google/android/gms/internal/measurement/zzco;",
            ">;"
        }
    .end annotation
.end field

.field private zzj:Lcom/google/android/gms/internal/measurement/zzhy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhy<",
            "Lcom/google/android/gms/internal/measurement/zzbv;",
            ">;"
        }
    .end annotation
.end field

.field private zzk:Ljava/lang/String;

.field private zzl:Z

.field private zzm:Lcom/google/android/gms/internal/measurement/zzhy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhy<",
            "Lcom/google/android/gms/internal/measurement/zzec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcq;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcq;->zzn:Lcom/google/android/gms/internal/measurement/zzcq;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzcq;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzhr;->zzby(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzhr;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhr;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcq;->zzf:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcq;->zzbE()Lcom/google/android/gms/internal/measurement/zzhy;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzcq;->zzh:Lcom/google/android/gms/internal/measurement/zzhy;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcq;->zzbE()Lcom/google/android/gms/internal/measurement/zzhy;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzcq;->zzi:Lcom/google/android/gms/internal/measurement/zzhy;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcq;->zzbE()Lcom/google/android/gms/internal/measurement/zzhy;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzcq;->zzj:Lcom/google/android/gms/internal/measurement/zzhy;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcq;->zzk:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcq;->zzbE()Lcom/google/android/gms/internal/measurement/zzhy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcq;->zzm:Lcom/google/android/gms/internal/measurement/zzhy;

    return-void
.end method

.method public static zzj()Lcom/google/android/gms/internal/measurement/zzcp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcq;->zzn:Lcom/google/android/gms/internal/measurement/zzcq;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhr;->zzbt()Lcom/google/android/gms/internal/measurement/zzhn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcp;

    return-object v0
.end method

.method public static zzk()Lcom/google/android/gms/internal/measurement/zzcq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcq;->zzn:Lcom/google/android/gms/internal/measurement/zzcq;

    return-object v0
.end method

.method static synthetic zzm()Lcom/google/android/gms/internal/measurement/zzcq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcq;->zzn:Lcom/google/android/gms/internal/measurement/zzcq;

    return-object v0
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/measurement/zzcq;ILcom/google/android/gms/internal/measurement/zzco;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcq;->zzi:Lcom/google/android/gms/internal/measurement/zzhy;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzhy;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzhr;->zzbF(Lcom/google/android/gms/internal/measurement/zzhy;)Lcom/google/android/gms/internal/measurement/zzhy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcq;->zzi:Lcom/google/android/gms/internal/measurement/zzhy;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzcq;->zzi:Lcom/google/android/gms/internal/measurement/zzhy;

    .line 4
    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzhy;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic zzo(Lcom/google/android/gms/internal/measurement/zzcq;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcq;->zzbE()Lcom/google/android/gms/internal/measurement/zzhy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcq;->zzj:Lcom/google/android/gms/internal/measurement/zzhy;

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcq;->zza:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzcq;->zze:J

    return-wide v0
.end method

.method public final zzc()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzcq;->zza:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcq;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzcs;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcq;->zzh:Lcom/google/android/gms/internal/measurement/zzhy;

    return-object v0
.end method

.method public final zzf()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcq;->zzi:Lcom/google/android/gms/internal/measurement/zzhy;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzhy;->size()I

    move-result v0

    return v0
.end method

.method public final zzg(I)Lcom/google/android/gms/internal/measurement/zzco;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcq;->zzi:Lcom/google/android/gms/internal/measurement/zzhy;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhy;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzco;

    return-object p1
.end method

.method public final zzh()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzbv;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcq;->zzj:Lcom/google/android/gms/internal/measurement/zzhy;

    return-object v0
.end method

.method public final zzi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzcq;->zzl:Z

    return v0
.end method

.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzcq;->zzn:Lcom/google/android/gms/internal/measurement/zzcq;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzcp;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzcp;-><init>(Lcom/google/android/gms/internal/measurement/zzcm;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzcq;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzcq;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xe

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zza"

    aput-object v4, p1, v3

    const-string/jumbo v3, "zze"

    aput-object v3, p1, p2

    const-string/jumbo p2, "zzf"

    aput-object p2, p1, v2

    const-string/jumbo p2, "zzg"

    aput-object p2, p1, v1

    const-string/jumbo p2, "zzh"

    aput-object p2, p1, v0

    .line 0
    const-class p2, Lcom/google/android/gms/internal/measurement/zzcs;

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string/jumbo p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lcom/google/android/gms/internal/measurement/zzco;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string/jumbo p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-class p3, Lcom/google/android/gms/internal/measurement/zzbv;

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string/jumbo p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string/jumbo p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string/jumbo p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-class p3, Lcom/google/android/gms/internal/measurement/zzec;

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzcq;->zzn:Lcom/google/android/gms/internal/measurement/zzcq;

    const-string p3, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0004\u0000\u0001\u1002\u0000\u0002\u1008\u0001\u0003\u1004\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007\u1008\u0003\u0008\u1007\u0004\t\u001b"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzcq;->zzbz(Lcom/google/android/gms/internal/measurement/zziw;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
