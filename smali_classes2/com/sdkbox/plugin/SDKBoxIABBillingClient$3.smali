.class Lcom/sdkbox/plugin/SDKBoxIABBillingClient$3;
.super Ljava/lang/Object;
.source "SDKBoxIABBillingClient.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchaseHistoryResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->getPurchaseHistory()V
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

    .line 315
    iput-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$3;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPurchaseHistoryResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
            ">;)V"
        }
    .end annotation

    .line 317
    iget-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$3;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-static {p1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->access$700(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$3;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->access$700(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->purchaseHistoryAddIf(Ljava/util/List;Ljava/util/List;)V

    .line 319
    iget-object p2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$3;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-static {p2}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->access$1408(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)I

    .line 320
    iget-object p2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$3;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-static {p2}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->access$800(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    .line 321
    iget-object p2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$3;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-static {p2}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->access$700(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->handlePurchaseHistory(Ljava/util/List;)V

    .line 323
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
