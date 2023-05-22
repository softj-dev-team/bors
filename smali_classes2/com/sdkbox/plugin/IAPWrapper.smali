.class public Lcom/sdkbox/plugin/IAPWrapper;
.super Ljava/lang/Object;
.source "IAPWrapper.java"


# static fields
.field public static final NULL_PRODUCT_LIST:I = 0x3

.field public static final PAYRESULT_CANCEL:I = 0x2

.field public static final PAYRESULT_FAIL:I = 0x1

.field public static final PAYRESULT_NEEDS_VERIFICATION:I = 0x5

.field public static final PAYRESULT_RESTORE:I = 0x3

.field public static final PAYRESULT_SUCCESS:I = 0x0

.field public static final PAYRESULT_TIMEOUT:I = 0x4

.field public static final REQUEST_FAIL:I = 0x1

.field public static final REQUEST_SUCCESS:I = 0x0

.field public static final REQUEST_TIMEOUT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeOnConsumed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeOnInitialized(Z)V
.end method

.method public static native nativeOnPayResult(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeOnPayResult2(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeOnPurchaseHistory(Ljava/lang/String;)V
.end method

.method public static native nativeOnRequestResult(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeOnRestoreComplete(ZLjava/lang/String;)V
.end method

.method public static onConsumed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 125
    new-instance v6, Lcom/sdkbox/plugin/IAPWrapper$8;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sdkbox/plugin/IAPWrapper$8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onInitialized(Z)V
    .locals 1

    .line 38
    new-instance v0, Lcom/sdkbox/plugin/IAPWrapper$1;

    invoke-direct {v0, p0}, Lcom/sdkbox/plugin/IAPWrapper$1;-><init>(Z)V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onPayResult(Lcom/sdkbox/plugin/InterfaceIAP;ILjava/lang/String;)V
    .locals 2

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    .line 48
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 49
    new-instance v0, Lcom/sdkbox/plugin/IAPWrapper$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/sdkbox/plugin/IAPWrapper$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onPayResult(Lcom/sdkbox/plugin/InterfaceIAP;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    .line 59
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 60
    new-instance v0, Lcom/sdkbox/plugin/IAPWrapper$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sdkbox/plugin/IAPWrapper$3;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onPayResult(Lcom/sdkbox/plugin/InterfaceIAP;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    .line 70
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    .line 71
    new-instance p0, Lcom/sdkbox/plugin/IAPWrapper$4;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/sdkbox/plugin/IAPWrapper$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onPurchaseHistory(Ljava/lang/String;)V
    .locals 1

    .line 116
    new-instance v0, Lcom/sdkbox/plugin/IAPWrapper$7;

    invoke-direct {v0, p0}, Lcom/sdkbox/plugin/IAPWrapper$7;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onRequestResult(Lcom/sdkbox/plugin/InterfaceIAP;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    .line 97
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 98
    new-instance v0, Lcom/sdkbox/plugin/IAPWrapper$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sdkbox/plugin/IAPWrapper$5;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onRestoreComplete(ZLjava/lang/String;)V
    .locals 1

    .line 107
    new-instance v0, Lcom/sdkbox/plugin/IAPWrapper$6;

    invoke-direct {v0, p0, p1}, Lcom/sdkbox/plugin/IAPWrapper$6;-><init>(ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method
