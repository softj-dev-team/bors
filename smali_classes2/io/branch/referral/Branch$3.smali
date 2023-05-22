.class Lio/branch/referral/Branch$3;
.super Ljava/lang/Object;
.source "Branch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/referral/Branch;->initializeSession(Lio/branch/referral/ServerRequestInitSession;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/branch/referral/Branch;


# direct methods
.method constructor <init>(Lio/branch/referral/Branch;)V
    .locals 0

    .line 1787
    iput-object p1, p0, Lio/branch/referral/Branch$3;->this$0:Lio/branch/referral/Branch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1789
    iget-object v0, p0, Lio/branch/referral/Branch$3;->this$0:Lio/branch/referral/Branch;

    invoke-virtual {v0}, Lio/branch/referral/Branch;->removeSessionInitializationDelay()V

    return-void
.end method
