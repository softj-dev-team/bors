.class public Lio/branch/referral/util/BranchCPID$ProbabilisticCPID;
.super Ljava/lang/Object;
.source "BranchCPID.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/util/BranchCPID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProbabilisticCPID"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public probability:Ljava/lang/Double;

.field final synthetic this$0:Lio/branch/referral/util/BranchCPID;


# direct methods
.method public constructor <init>(Lio/branch/referral/util/BranchCPID;Ljava/lang/String;Ljava/lang/Double;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lio/branch/referral/util/BranchCPID$ProbabilisticCPID;->this$0:Lio/branch/referral/util/BranchCPID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Lio/branch/referral/util/BranchCPID$ProbabilisticCPID;->id:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lio/branch/referral/util/BranchCPID$ProbabilisticCPID;->probability:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public getCPID()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lio/branch/referral/util/BranchCPID$ProbabilisticCPID;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lio/branch/referral/util/BranchCPID$ProbabilisticCPID;->id:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCPIDProbablity()Ljava/lang/Double;
    .locals 1

    .line 95
    iget-object v0, p0, Lio/branch/referral/util/BranchCPID$ProbabilisticCPID;->probability:Ljava/lang/Double;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
