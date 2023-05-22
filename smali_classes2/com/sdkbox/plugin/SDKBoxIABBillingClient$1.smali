.class Lcom/sdkbox/plugin/SDKBoxIABBillingClient$1;
.super Ljava/lang/Object;
.source "SDKBoxIABBillingClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->initIAP(Ljava/util/Map;Ljava/lang/String;)V
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

    .line 119
    iput-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$1;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$1;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->access$102(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$1;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->access$200(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$1;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->access$300(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$1;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$1;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->access$202(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;Lcom/android/billingclient/api/BillingClient;)Lcom/android/billingclient/api/BillingClient;

    .line 128
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$1;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->access$200(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SDKBoxIABBillingClient"

    const-string v1, "BillingClient: Start connection..."

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$1;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->access$200(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    new-instance v1, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$1$1;

    invoke-direct {v1, p0}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$1$1;-><init>(Lcom/sdkbox/plugin/SDKBoxIABBillingClient$1;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    :cond_1
    return-void
.end method
