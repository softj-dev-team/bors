.class public Lcom/coloros/ocs/mediaunit/IKaraokeService$Default;
.super Ljava/lang/Object;
.source "IKaraokeService.java"

# interfaces
.implements Lcom/coloros/ocs/mediaunit/IKaraokeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/ocs/mediaunit/IKaraokeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abandonAudioLoopback(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public requestAudioLoopback(Landroid/os/IBinder;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
