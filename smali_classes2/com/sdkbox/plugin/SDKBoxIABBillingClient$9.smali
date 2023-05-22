.class Lcom/sdkbox/plugin/SDKBoxIABBillingClient$9;
.super Ljava/lang/Object;
.source "SDKBoxIABBillingClient.java"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->toConsum(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)V
    .locals 0

    .line 761
    iput-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$9;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 4

    .line 763
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$9;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->access$1002(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;Z)Z

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "consume product response code:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SDKBoxIABBillingClient"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$9;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-virtual {v0, p2}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->findPurchaseByToken(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 767
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object p2

    iget-object v3, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$9;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-virtual {v3, p1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->getDescriptionOfResult(Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v2, p2, p1}, Lcom/sdkbox/plugin/IAPWrapper;->onConsumed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Consume success, but not find purchase"

    .line 769
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
