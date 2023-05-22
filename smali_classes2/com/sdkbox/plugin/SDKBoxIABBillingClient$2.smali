.class Lcom/sdkbox/plugin/SDKBoxIABBillingClient$2;
.super Ljava/lang/Object;
.source "SDKBoxIABBillingClient.java"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->purchase(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

.field final synthetic val$sku:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$2;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    iput-object p2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$2;->val$sku:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    .line 221
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 222
    iget-object p2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$2;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-virtual {p2, p1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->getDescriptionOfResult(Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/sdkbox/plugin/IAPWrapper;->onPayResult(Lcom/sdkbox/plugin/InterfaceIAP;ILjava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    const-string p1, "SDKBoxIABBillingClient"

    if-eqz p2, :cond_5

    .line 223
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 227
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/SkuDetails;

    .line 228
    iget-object v1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$2;->val$sku:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$2;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-static {v1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->access$400(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 231
    iget-object v1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$2;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-static {v1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->access$400(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 233
    :cond_3
    iget-object v1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$2;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-static {v1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->access$500(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 234
    iget-object v1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$2;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-static {v1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->access$500(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedProfileId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 236
    :cond_4
    iget-object v1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$2;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    iget-object v2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$2;->val$sku:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->access$602(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    iget-object v1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$2;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-static {v1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->access$200(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    iget-object v2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$2;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-static {v2}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->access$300(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchBillingFlow result code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x7

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$2;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-virtual {v0}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->isAutoConsume()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$2;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    iget-object v1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$2;->val$sku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->isConsumable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$2;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    iget-object v1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$2;->val$sku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->consumeProduct(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    :goto_1
    const-string p2, "can\'t get sku detail, please check product id"

    .line 224
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$2;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-static {p1, v1, p2}, Lcom/sdkbox/plugin/IAPWrapper;->onPayResult(Lcom/sdkbox/plugin/InterfaceIAP;ILjava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method
