.class public Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionChangeBroadcastReceiver.java"


# instance fields
.field private mCommonUtility:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/agora/rtc/internal/CommonUtility;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/agora/rtc/internal/CommonUtility;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cu"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;->mCommonUtility:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 17
    iget-object p1, p0, Lio/agora/rtc/internal/ConnectionChangeBroadcastReceiver;->mCommonUtility:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtc/internal/CommonUtility;

    if-nez p1, :cond_0

    const-string p1, "rtc engine is not ready"

    .line 19
    invoke-static {p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;)V

    return-void

    .line 22
    :cond_0
    invoke-virtual {p1}, Lio/agora/rtc/internal/CommonUtility;->notifyNetworkChange()V

    return-void
.end method
