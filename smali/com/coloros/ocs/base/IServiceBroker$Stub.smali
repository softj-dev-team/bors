.class public abstract Lcom/coloros/ocs/base/IServiceBroker$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/coloros/ocs/base/IServiceBroker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/ocs/base/IServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/ocs/base/IServiceBroker$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.coloros.ocs.base.IServiceBroker"

.field static final TRANSACTION_getBinder:I = 0x2

.field static final TRANSACTION_handleAuthentication:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.coloros.ocs.base.IServiceBroker"

    .line 35
    invoke-virtual {p0, p0, v0}, Lcom/coloros/ocs/base/IServiceBroker$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/coloros/ocs/base/IServiceBroker;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.coloros.ocs.base.IServiceBroker"

    .line 46
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    instance-of v1, v0, Lcom/coloros/ocs/base/IServiceBroker;

    if-eqz v1, :cond_1

    .line 48
    check-cast v0, Lcom/coloros/ocs/base/IServiceBroker;

    return-object v0

    .line 50
    :cond_1
    new-instance v0, Lcom/coloros/ocs/base/IServiceBroker$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/coloros/ocs/base/IServiceBroker$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/coloros/ocs/base/IServiceBroker;
    .locals 1

    .line 171
    sget-object v0, Lcom/coloros/ocs/base/IServiceBroker$Stub$Proxy;->sDefaultImpl:Lcom/coloros/ocs/base/IServiceBroker;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/coloros/ocs/base/IServiceBroker;)Z
    .locals 1

    .line 164
    sget-object v0, Lcom/coloros/ocs/base/IServiceBroker$Stub$Proxy;->sDefaultImpl:Lcom/coloros/ocs/base/IServiceBroker;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 165
    sput-object p0, Lcom/coloros/ocs/base/IServiceBroker$Stub$Proxy;->sDefaultImpl:Lcom/coloros/ocs/base/IServiceBroker;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
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

    const/4 v0, 0x1

    const-string v1, "com.coloros.ocs.base.IServiceBroker"

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 63
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 81
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/coloros/ocs/base/IServiceBroker$Stub;->getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v0

    .line 68
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/coloros/ocs/base/IAuthenticationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/coloros/ocs/base/IAuthenticationListener;

    move-result-object p2

    .line 75
    invoke-virtual {p0, p1, p4, p2}, Lcom/coloros/ocs/base/IServiceBroker$Stub;->handleAuthentication(Ljava/lang/String;Ljava/lang/String;Lcom/coloros/ocs/base/IAuthenticationListener;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
