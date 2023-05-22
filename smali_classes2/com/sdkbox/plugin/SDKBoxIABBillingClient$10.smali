.class Lcom/sdkbox/plugin/SDKBoxIABBillingClient$10;
.super Ljava/lang/Object;
.source "SDKBoxIABBillingClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

.field final synthetic val$billingResult:Lcom/android/billingclient/api/BillingResult;

.field final synthetic val$purchases:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    .line 796
    iput-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$10;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    iput-object p2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$10;->val$billingResult:Lcom/android/billingclient/api/BillingResult;

    iput-object p3, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$10;->val$purchases:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 799
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$10;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    iget-object v1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$10;->val$billingResult:Lcom/android/billingclient/api/BillingResult;

    iget-object v2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$10;->val$purchases:Ljava/util/List;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->handlePurchaseResult(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Z)V

    return-void
.end method
