.class Lcom/sdkbox/plugin/SDKBoxIABBillingClient$1$1;
.super Ljava/lang/Object;
.source "SDKBoxIABBillingClient.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/SDKBoxIABBillingClient$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sdkbox/plugin/SDKBoxIABBillingClient$1;


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/SDKBoxIABBillingClient$1;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$1$1;->this$1:Lcom/sdkbox/plugin/SDKBoxIABBillingClient$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    const-string v0, "SDKBoxIABBillingClient"

    const-string v1, "onBillingServiceDisconected"

    .line 143
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$1$1;->this$1:Lcom/sdkbox/plugin/SDKBoxIABBillingClient$1;

    iget-object v0, v0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$1;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-static {v0, v1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->access$102(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 145
    invoke-static {v0}, Lcom/sdkbox/plugin/IAPWrapper;->onInitialized(Z)V

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 3

    .line 132
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBillingSetupFinished: responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SDKBoxIABBillingClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 135
    invoke-static {p1}, Lcom/sdkbox/plugin/IAPWrapper;->onInitialized(Z)V

    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$1$1;->this$1:Lcom/sdkbox/plugin/SDKBoxIABBillingClient$1;

    iget-object v0, v0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$1;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->access$102(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x0

    .line 139
    invoke-static {p1}, Lcom/sdkbox/plugin/IAPWrapper;->onInitialized(Z)V

    return-void
.end method
