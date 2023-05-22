.class Lio/branch/referral/GAdsPrefetchTask$1;
.super Ljava/lang/Object;
.source "GAdsPrefetchTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/referral/GAdsPrefetchTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/branch/referral/GAdsPrefetchTask;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lio/branch/referral/GAdsPrefetchTask;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lio/branch/referral/GAdsPrefetchTask$1;->this$0:Lio/branch/referral/GAdsPrefetchTask;

    iput-object p2, p0, Lio/branch/referral/GAdsPrefetchTask$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 36
    iget-object v0, p0, Lio/branch/referral/GAdsPrefetchTask$1;->this$0:Lio/branch/referral/GAdsPrefetchTask;

    invoke-static {v0}, Lio/branch/referral/GAdsPrefetchTask;->access$000(Lio/branch/referral/GAdsPrefetchTask;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_2

    const/16 v1, -0x13

    .line 38
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 39
    iget-object v1, p0, Lio/branch/referral/GAdsPrefetchTask$1;->this$0:Lio/branch/referral/GAdsPrefetchTask;

    invoke-static {v1, v0}, Lio/branch/referral/GAdsPrefetchTask;->access$100(Lio/branch/referral/GAdsPrefetchTask;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    .line 41
    invoke-static {}, Lio/branch/referral/DeviceInfo;->getInstance()Lio/branch/referral/DeviceInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 42
    new-instance v2, Lio/branch/referral/DeviceInfo;

    invoke-direct {v2, v0}, Lio/branch/referral/DeviceInfo;-><init>(Landroid/content/Context;)V

    .line 44
    :cond_0
    invoke-virtual {v2}, Lio/branch/referral/DeviceInfo;->getSystemObserver()Lio/branch/referral/SystemObserver;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 46
    iget-object v2, p0, Lio/branch/referral/GAdsPrefetchTask$1;->this$0:Lio/branch/referral/GAdsPrefetchTask;

    invoke-static {v2, v0, v1}, Lio/branch/referral/GAdsPrefetchTask;->access$200(Lio/branch/referral/GAdsPrefetchTask;Lio/branch/referral/SystemObserver;Ljava/lang/Object;)V

    .line 48
    invoke-virtual {v0}, Lio/branch/referral/SystemObserver;->getLATVal()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1}, Lio/branch/referral/SystemObserver;->setGAID(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_1
    iget-object v2, p0, Lio/branch/referral/GAdsPrefetchTask$1;->this$0:Lio/branch/referral/GAdsPrefetchTask;

    invoke-static {v2, v0, v1}, Lio/branch/referral/GAdsPrefetchTask;->access$300(Lio/branch/referral/GAdsPrefetchTask;Lio/branch/referral/SystemObserver;Ljava/lang/Object;)V

    .line 55
    :cond_2
    :goto_0
    iget-object v0, p0, Lio/branch/referral/GAdsPrefetchTask$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
