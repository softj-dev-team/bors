.class Lio/branch/referral/BranchPluginSupport$SystemObserverInstance;
.super Lio/branch/referral/SystemObserver;
.source "BranchPluginSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/BranchPluginSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemObserverInstance"
.end annotation


# instance fields
.field final synthetic this$0:Lio/branch/referral/BranchPluginSupport;


# direct methods
.method public constructor <init>(Lio/branch/referral/BranchPluginSupport;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lio/branch/referral/BranchPluginSupport$SystemObserverInstance;->this$0:Lio/branch/referral/BranchPluginSupport;

    .line 96
    invoke-direct {p0}, Lio/branch/referral/SystemObserver;-><init>()V

    return-void
.end method
