.class Lcom/sdkbox/plugin/SDKBoxIABBillingClient$11;
.super Ljava/lang/Object;
.source "SDKBoxIABBillingClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->onPurchaseHistoryResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

.field final synthetic val$billingResult:Lcom/android/billingclient/api/BillingResult;


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    .line 805
    iput-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$11;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    iput-object p2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$11;->val$billingResult:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 808
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$11;->val$billingResult:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 809
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$11;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->access$1100(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$11;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->access$1100(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 811
    iget-object v2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$11;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-static {v2}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->access$1100(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 812
    iget-object v1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$11;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-static {v1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->access$200(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    iget-object v2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$11;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchaseHistoryAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    return-void

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$11;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->access$200(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v2

    const-string v3, "inapp"

    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/BillingClient;->queryPurchases(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getPurchasesList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->addPurchaseList(Ljava/util/List;)V

    .line 816
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$11;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->access$200(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    const-string v2, "subs"

    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchases(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;

    move-result-object v0

    .line 817
    iget-object v2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$11;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getBillingResult()Lcom/android/billingclient/api/BillingResult;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getPurchasesList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->handlePurchaseResult(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Z)V

    return-void

    .line 820
    :cond_1
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$11;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->access$1100(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 821
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$11;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    iget-object v2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$11;->val$billingResult:Lcom/android/billingclient/api/BillingResult;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->handlePurchaseResult(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Z)V

    return-void
.end method
