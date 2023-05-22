.class public abstract Lcom/huawei/multimedia/audioengine/IHwAudioKaraokeFeature$Stub;
.super Landroid/os/Binder;
.source "IHwAudioKaraokeFeature.java"

# interfaces
.implements Lcom/huawei/multimedia/audioengine/IHwAudioKaraokeFeature;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/multimedia/audioengine/IHwAudioKaraokeFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/multimedia/audioengine/IHwAudioKaraokeFeature$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.huawei.multimedia.audioengine.IHwAudioKaraokeFeature"

.field static final TRANSACTION_enableKaraokeFeature:I = 0x2

.field static final TRANSACTION_getKaraokeLatency:I = 0x3

.field static final TRANSACTION_init:I = 0x5

.field static final TRANSACTION_isKaraokeFeatureSupport:I = 0x1

.field static final TRANSACTION_setParameter:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.huawei.multimedia.audioengine.IHwAudioKaraokeFeature"

    .line 21
    invoke-virtual {p0, p0, v0}, Lcom/huawei/multimedia/audioengine/IHwAudioKaraokeFeature$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huawei/multimedia/audioengine/IHwAudioKaraokeFeature;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.huawei.multimedia.audioengine.IHwAudioKaraokeFeature"

    .line 32
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 33
    instance-of v1, v0, Lcom/huawei/multimedia/audioengine/IHwAudioKaraokeFeature;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/huawei/multimedia/audioengine/IHwAudioKaraokeFeature;

    return-object v0

    .line 36
    :cond_1
    new-instance v0, Lcom/huawei/multimedia/audioengine/IHwAudioKaraokeFeature$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/huawei/multimedia/audioengine/IHwAudioKaraokeFeature$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.huawei.multimedia.audioengine.IHwAudioKaraokeFeature"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 48
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 91
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-virtual {p0, p1}, Lcom/huawei/multimedia/audioengine/IHwAudioKaraokeFeature$Stub;->init(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 79
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/huawei/multimedia/audioengine/IHwAudioKaraokeFeature$Stub;->setParameter(Ljava/lang/String;I)I

    move-result p1

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 71
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/huawei/multimedia/audioengine/IHwAudioKaraokeFeature$Stub;->getKaraokeLatency()I

    move-result p1

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 61
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 64
    :goto_0
    invoke-virtual {p0, p1}, Lcom/huawei/multimedia/audioengine/IHwAudioKaraokeFeature$Stub;->enableKaraokeFeature(Z)I

    move-result p1

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 53
    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/huawei/multimedia/audioengine/IHwAudioKaraokeFeature$Stub;->isKaraokeFeatureSupport()Z

    move-result p1

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1
.end method
