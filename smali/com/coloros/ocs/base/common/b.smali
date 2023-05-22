.class final Lcom/coloros/ocs/base/common/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/coloros/ocs/base/common/Status;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 10

    .line 3131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2136
    invoke-static {p1, v0}, Lcom/coloros/ocs/base/internal/safeparcel/a;->b(Landroid/os/Parcel;I)I

    move-result v1

    .line 2137
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    const v3, 0xffff

    and-int v4, v0, v3

    const/16 v5, 0x4f45

    if-ne v4, v5, :cond_9

    add-int/2addr v1, v2

    if-lt v1, v2, :cond_8

    .line 2141
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    if-gt v1, v0, :cond_8

    const/4 v0, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    const/4 v2, 0x0

    .line 2023
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-lt v7, v1, :cond_1

    .line 2024
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 2047
    new-instance p1, Lcom/coloros/ocs/base/common/Status;

    invoke-direct {p1, v0, v2, v5, v6}, Lcom/coloros/ocs/base/common/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;)V

    return-object p1

    .line 2025
    :cond_0
    new-instance p1, Lcom/coloros/ocs/base/internal/safeparcel/a$a;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Overread allowed size end="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/coloros/ocs/base/internal/safeparcel/a$a;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4131
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    and-int v8, v7, v3

    const/4 v9, 0x1

    if-eq v8, v9, :cond_7

    const/4 v9, 0x2

    if-eq v8, v9, :cond_5

    const/4 v9, 0x3

    if-eq v8, v9, :cond_3

    const/16 v9, 0x3e8

    if-eq v8, v9, :cond_2

    .line 5207
    invoke-static {p1, v7}, Lcom/coloros/ocs/base/internal/safeparcel/a;->b(Landroid/os/Parcel;I)I

    move-result v7

    .line 5208
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0

    .line 2036
    :cond_2
    invoke-static {p1, v7}, Lcom/coloros/ocs/base/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v0

    goto :goto_0

    .line 2044
    :cond_3
    sget-object v6, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7116
    invoke-static {p1, v7}, Lcom/coloros/ocs/base/internal/safeparcel/a;->b(Landroid/os/Parcel;I)I

    move-result v7

    .line 7117
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    if-nez v7, :cond_4

    move-object v6, v4

    goto :goto_1

    .line 7120
    :cond_4
    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    add-int/2addr v8, v7

    .line 7121
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2044
    :goto_1
    check-cast v6, Landroid/app/PendingIntent;

    goto :goto_0

    .line 6157
    :cond_5
    invoke-static {p1, v7}, Lcom/coloros/ocs/base/internal/safeparcel/a;->b(Landroid/os/Parcel;I)I

    move-result v5

    .line 6158
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-nez v5, :cond_6

    move-object v5, v4

    goto :goto_0

    .line 6161
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    add-int/2addr v7, v5

    .line 6162
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v5, v8

    goto :goto_0

    .line 2033
    :cond_7
    invoke-static {p1, v7}, Lcom/coloros/ocs/base/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_0

    .line 2142
    :cond_8
    new-instance p1, Lcom/coloros/ocs/base/internal/safeparcel/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Size read is invalid start="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " end="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/coloros/ocs/base/internal/safeparcel/a$a;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2139
    :cond_9
    new-instance p1, Lcom/coloros/ocs/base/internal/safeparcel/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected object header. Got 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/coloros/ocs/base/internal/safeparcel/a$a;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1053
    new-array p1, p1, [Lcom/coloros/ocs/base/common/Status;

    return-object p1
.end method
