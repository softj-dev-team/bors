.class public Lcom/coloros/ocs/base/common/AuthResult;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/coloros/ocs/base/common/AuthResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Lcom/coloros/ocs/base/common/AuthResult$1;

    invoke-direct {v0}, Lcom/coloros/ocs/base/common/AuthResult$1;-><init>()V

    sput-object v0, Lcom/coloros/ocs/base/common/AuthResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/ocs/base/common/AuthResult;->a:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coloros/ocs/base/common/AuthResult;->b:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coloros/ocs/base/common/AuthResult;->c:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coloros/ocs/base/common/AuthResult;->d:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/ocs/base/common/AuthResult;->e:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III[B)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/coloros/ocs/base/common/AuthResult;->a:Ljava/lang/String;

    .line 27
    iput p2, p0, Lcom/coloros/ocs/base/common/AuthResult;->b:I

    .line 28
    iput p3, p0, Lcom/coloros/ocs/base/common/AuthResult;->c:I

    .line 29
    iput p4, p0, Lcom/coloros/ocs/base/common/AuthResult;->d:I

    .line 30
    iput-object p5, p0, Lcom/coloros/ocs/base/common/AuthResult;->e:[B

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "AuthResult errorCode is "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/coloros/ocs/base/common/AuthResult;->d:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AuthResult"

    invoke-static {p2, p1}, Lcom/coloros/ocs/base/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getErrrorCode()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/coloros/ocs/base/common/AuthResult;->d:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/coloros/ocs/base/common/AuthResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPermitBits()[B
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/coloros/ocs/base/common/AuthResult;->e:[B

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/coloros/ocs/base/common/AuthResult;->c:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/coloros/ocs/base/common/AuthResult;->b:I

    return v0
.end method

.method public setErrrorCode(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/coloros/ocs/base/common/AuthResult;->d:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/coloros/ocs/base/common/AuthResult;->a:Ljava/lang/String;

    return-void
.end method

.method public setPermitBits([B)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/coloros/ocs/base/common/AuthResult;->e:[B

    return-void
.end method

.method public setPid(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/coloros/ocs/base/common/AuthResult;->c:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/coloros/ocs/base/common/AuthResult;->b:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 102
    iget-object p2, p0, Lcom/coloros/ocs/base/common/AuthResult;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget p2, p0, Lcom/coloros/ocs/base/common/AuthResult;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget p2, p0, Lcom/coloros/ocs/base/common/AuthResult;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget p2, p0, Lcom/coloros/ocs/base/common/AuthResult;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object p2, p0, Lcom/coloros/ocs/base/common/AuthResult;->e:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
