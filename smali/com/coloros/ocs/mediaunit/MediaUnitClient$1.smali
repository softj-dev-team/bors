.class Lcom/coloros/ocs/mediaunit/MediaUnitClient$1;
.super Ljava/lang/Object;
.source "MediaUnitClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/ocs/mediaunit/MediaUnitClient;->bindService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/ocs/mediaunit/MediaUnitClient;


# direct methods
.method constructor <init>(Lcom/coloros/ocs/mediaunit/MediaUnitClient;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/coloros/ocs/mediaunit/MediaUnitClient$1;->this$0:Lcom/coloros/ocs/mediaunit/MediaUnitClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 80
    iget-object p1, p0, Lcom/coloros/ocs/mediaunit/MediaUnitClient$1;->this$0:Lcom/coloros/ocs/mediaunit/MediaUnitClient;

    invoke-static {p2}, Lcom/coloros/ocs/mediaunit/IKaraokeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/coloros/ocs/mediaunit/IKaraokeService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->access$002(Lcom/coloros/ocs/mediaunit/MediaUnitClient;Lcom/coloros/ocs/mediaunit/IKaraokeService;)Lcom/coloros/ocs/mediaunit/IKaraokeService;

    .line 82
    :try_start_0
    iget-object p1, p0, Lcom/coloros/ocs/mediaunit/MediaUnitClient$1;->this$0:Lcom/coloros/ocs/mediaunit/MediaUnitClient;

    invoke-static {p1}, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->access$000(Lcom/coloros/ocs/mediaunit/MediaUnitClient;)Lcom/coloros/ocs/mediaunit/IKaraokeService;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/ocs/mediaunit/MediaUnitClient$1;->this$0:Lcom/coloros/ocs/mediaunit/MediaUnitClient;

    invoke-static {p2}, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->access$100(Lcom/coloros/ocs/mediaunit/MediaUnitClient;)Landroid/os/IBinder;

    move-result-object p2

    iget-object v0, p0, Lcom/coloros/ocs/mediaunit/MediaUnitClient$1;->this$0:Lcom/coloros/ocs/mediaunit/MediaUnitClient;

    invoke-static {v0}, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->access$200(Lcom/coloros/ocs/mediaunit/MediaUnitClient;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/coloros/ocs/mediaunit/IKaraokeService;->requestAudioLoopback(Landroid/os/IBinder;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 84
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 89
    iget-object p1, p0, Lcom/coloros/ocs/mediaunit/MediaUnitClient$1;->this$0:Lcom/coloros/ocs/mediaunit/MediaUnitClient;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->access$002(Lcom/coloros/ocs/mediaunit/MediaUnitClient;Lcom/coloros/ocs/mediaunit/IKaraokeService;)Lcom/coloros/ocs/mediaunit/IKaraokeService;

    return-void
.end method
