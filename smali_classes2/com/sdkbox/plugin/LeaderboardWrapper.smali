.class public Lcom/sdkbox/plugin/LeaderboardWrapper;
.super Ljava/lang/Object;
.source "LeaderboardWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeOnComplete(Ljava/lang/String;)V
.end method

.method public static native nativeOnFailed()V
.end method

.method public static onComplete(Ljava/lang/String;)V
    .locals 1

    .line 12
    new-instance v0, Lcom/sdkbox/plugin/LeaderboardWrapper$1;

    invoke-direct {v0, p0}, Lcom/sdkbox/plugin/LeaderboardWrapper$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onFail()V
    .locals 1

    .line 21
    new-instance v0, Lcom/sdkbox/plugin/LeaderboardWrapper$2;

    invoke-direct {v0}, Lcom/sdkbox/plugin/LeaderboardWrapper$2;-><init>()V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method
