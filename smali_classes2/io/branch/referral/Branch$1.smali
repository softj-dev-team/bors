.class Lio/branch/referral/Branch$1;
.super Ljava/lang/Object;
.source "Branch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/referral/Branch;->executeTimedBranchPostTask(Lio/branch/referral/ServerRequest;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/branch/referral/Branch;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$postTask:Lio/branch/referral/Branch$BranchPostTask;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lio/branch/referral/Branch;Ljava/util/concurrent/CountDownLatch;ILio/branch/referral/Branch$BranchPostTask;)V
    .locals 0

    .line 1618
    iput-object p1, p0, Lio/branch/referral/Branch$1;->this$0:Lio/branch/referral/Branch;

    iput-object p2, p0, Lio/branch/referral/Branch$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput p3, p0, Lio/branch/referral/Branch$1;->val$timeout:I

    iput-object p4, p0, Lio/branch/referral/Branch$1;->val$postTask:Lio/branch/referral/Branch$BranchPostTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1620
    iget-object v0, p0, Lio/branch/referral/Branch$1;->this$0:Lio/branch/referral/Branch;

    iget-object v1, p0, Lio/branch/referral/Branch$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iget v2, p0, Lio/branch/referral/Branch$1;->val$timeout:I

    iget-object v3, p0, Lio/branch/referral/Branch$1;->val$postTask:Lio/branch/referral/Branch$BranchPostTask;

    invoke-static {v0, v1, v2, v3}, Lio/branch/referral/Branch;->access$100(Lio/branch/referral/Branch;Ljava/util/concurrent/CountDownLatch;ILio/branch/referral/Branch$BranchPostTask;)V

    return-void
.end method
