.class Lio/branch/referral/DeviceInfo$SystemObserverInstance;
.super Lio/branch/referral/SystemObserver;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemObserverInstance"
.end annotation


# instance fields
.field final synthetic this$0:Lio/branch/referral/DeviceInfo;


# direct methods
.method public constructor <init>(Lio/branch/referral/DeviceInfo;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lio/branch/referral/DeviceInfo$SystemObserverInstance;->this$0:Lio/branch/referral/DeviceInfo;

    .line 318
    invoke-direct {p0}, Lio/branch/referral/SystemObserver;-><init>()V

    return-void
.end method
