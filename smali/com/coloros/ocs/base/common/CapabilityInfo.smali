.class public Lcom/coloros/ocs/base/common/CapabilityInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/coloros/ocs/base/common/CapabilityInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/ocs/base/common/Feature;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Lcom/coloros/ocs/base/common/AuthResult;

.field private d:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lcom/coloros/ocs/base/common/CapabilityInfo$1;

    invoke-direct {v0}, Lcom/coloros/ocs/base/common/CapabilityInfo$1;-><init>()V

    sput-object v0, Lcom/coloros/ocs/base/common/CapabilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-class v0, Lcom/coloros/ocs/base/common/Feature;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/ocs/base/common/CapabilityInfo;->a:Ljava/util/List;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coloros/ocs/base/common/CapabilityInfo;->b:I

    .line 59
    const-class v0, Lcom/coloros/ocs/base/common/AuthResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/coloros/ocs/base/common/AuthResult;

    iput-object v0, p0, Lcom/coloros/ocs/base/common/CapabilityInfo;->c:Lcom/coloros/ocs/base/common/AuthResult;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/ocs/base/common/CapabilityInfo;->d:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILcom/coloros/ocs/base/common/AuthResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/ocs/base/common/Feature;",
            ">;I",
            "Lcom/coloros/ocs/base/common/AuthResult;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/ocs/base/common/CapabilityInfo;-><init>(Ljava/util/List;ILcom/coloros/ocs/base/common/AuthResult;Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILcom/coloros/ocs/base/common/AuthResult;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/ocs/base/common/Feature;",
            ">;I",
            "Lcom/coloros/ocs/base/common/AuthResult;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/coloros/ocs/base/common/CapabilityInfo;->a:Ljava/util/List;

    .line 30
    iput p2, p0, Lcom/coloros/ocs/base/common/CapabilityInfo;->b:I

    .line 31
    iput-object p3, p0, Lcom/coloros/ocs/base/common/CapabilityInfo;->c:Lcom/coloros/ocs/base/common/AuthResult;

    .line 32
    iput-object p4, p0, Lcom/coloros/ocs/base/common/CapabilityInfo;->d:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthResult()Lcom/coloros/ocs/base/common/AuthResult;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/coloros/ocs/base/common/CapabilityInfo;->c:Lcom/coloros/ocs/base/common/AuthResult;

    return-object v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/coloros/ocs/base/common/CapabilityInfo;->d:Landroid/os/IBinder;

    return-object v0
.end method

.method public getFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coloros/ocs/base/common/Feature;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/coloros/ocs/base/common/CapabilityInfo;->a:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/coloros/ocs/base/common/CapabilityInfo;->b:I

    return v0
.end method

.method public setBinder(Landroid/os/IBinder;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/coloros/ocs/base/common/CapabilityInfo;->d:Landroid/os/IBinder;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 83
    iget-object p2, p0, Lcom/coloros/ocs/base/common/CapabilityInfo;->a:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 84
    iget p2, p0, Lcom/coloros/ocs/base/common/CapabilityInfo;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-object p2, p0, Lcom/coloros/ocs/base/common/CapabilityInfo;->c:Lcom/coloros/ocs/base/common/AuthResult;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 86
    iget-object p2, p0, Lcom/coloros/ocs/base/common/CapabilityInfo;->d:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
