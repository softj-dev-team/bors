.class Lcom/coloros/ocs/mediaunit/MediaUnitClient$2;
.super Ljava/lang/Object;
.source "MediaUnitClient.java"

# interfaces
.implements Lcom/coloros/ocs/base/common/api/TaskListenerHolder$SuccessNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/ocs/mediaunit/MediaUnitClient;->requestAudioLoopback()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/coloros/ocs/base/common/api/TaskListenerHolder$SuccessNotifier<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/ocs/mediaunit/MediaUnitClient;


# direct methods
.method constructor <init>(Lcom/coloros/ocs/mediaunit/MediaUnitClient;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/coloros/ocs/mediaunit/MediaUnitClient$2;->this$0:Lcom/coloros/ocs/mediaunit/MediaUnitClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyListener(Lcom/coloros/ocs/base/task/TaskImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/ocs/base/task/TaskImpl<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 103
    iget-object p1, p0, Lcom/coloros/ocs/mediaunit/MediaUnitClient$2;->this$0:Lcom/coloros/ocs/mediaunit/MediaUnitClient;

    invoke-static {p1}, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->access$000(Lcom/coloros/ocs/mediaunit/MediaUnitClient;)Lcom/coloros/ocs/mediaunit/IKaraokeService;

    move-result-object p1

    if-nez p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/coloros/ocs/mediaunit/MediaUnitClient$2;->this$0:Lcom/coloros/ocs/mediaunit/MediaUnitClient;

    invoke-static {p1}, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->access$300(Lcom/coloros/ocs/mediaunit/MediaUnitClient;)V

    return-void

    .line 108
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/coloros/ocs/mediaunit/MediaUnitClient$2;->this$0:Lcom/coloros/ocs/mediaunit/MediaUnitClient;

    invoke-static {p1}, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->access$000(Lcom/coloros/ocs/mediaunit/MediaUnitClient;)Lcom/coloros/ocs/mediaunit/IKaraokeService;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/ocs/mediaunit/MediaUnitClient$2;->this$0:Lcom/coloros/ocs/mediaunit/MediaUnitClient;

    invoke-static {v0}, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->access$100(Lcom/coloros/ocs/mediaunit/MediaUnitClient;)Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/ocs/mediaunit/MediaUnitClient$2;->this$0:Lcom/coloros/ocs/mediaunit/MediaUnitClient;

    invoke-static {v1}, Lcom/coloros/ocs/mediaunit/MediaUnitClient;->access$200(Lcom/coloros/ocs/mediaunit/MediaUnitClient;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/coloros/ocs/mediaunit/IKaraokeService;->requestAudioLoopback(Landroid/os/IBinder;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 110
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
