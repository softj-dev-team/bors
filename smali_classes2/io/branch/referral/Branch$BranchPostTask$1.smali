.class Lio/branch/referral/Branch$BranchPostTask$1;
.super Ljava/lang/Object;
.source "Branch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/referral/Branch$BranchPostTask;->onPostExecuteInner(Lio/branch/referral/ServerResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/branch/referral/Branch$BranchPostTask;


# direct methods
.method constructor <init>(Lio/branch/referral/Branch$BranchPostTask;)V
    .locals 0

    .line 2240
    iput-object p1, p0, Lio/branch/referral/Branch$BranchPostTask$1;->this$1:Lio/branch/referral/Branch$BranchPostTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2243
    iget-object v0, p0, Lio/branch/referral/Branch$BranchPostTask$1;->this$1:Lio/branch/referral/Branch$BranchPostTask;

    iget-object v0, v0, Lio/branch/referral/Branch$BranchPostTask;->this$0:Lio/branch/referral/Branch;

    invoke-virtual {v0}, Lio/branch/referral/Branch;->processNextQueueItem()V

    return-void
.end method
