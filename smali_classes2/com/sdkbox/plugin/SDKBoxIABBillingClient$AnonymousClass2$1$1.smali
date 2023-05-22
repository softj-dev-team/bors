.class Lcom/sdkbox/plugin/SDKBoxIABBillingClient$AnonymousClass2$1$1;
.super Ljava/lang/Object;
.source "SDKBoxIABBillingClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/SDKBoxIABBillingClient$AnonymousClass2$1;->onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sdkbox/plugin/SDKBoxIABBillingClient$AnonymousClass2$1;


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/SDKBoxIABBillingClient$AnonymousClass2$1;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$AnonymousClass2$1$1;->this$2:Lcom/sdkbox/plugin/SDKBoxIABBillingClient$AnonymousClass2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$AnonymousClass2$1$1;->this$2:Lcom/sdkbox/plugin/SDKBoxIABBillingClient$AnonymousClass2$1;

    iget-object v0, v0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$AnonymousClass2$1;->this$1:Lcom/sdkbox/plugin/SDKBoxIABBillingClient$AnonymousClass2;

    iget-object v0, v0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$AnonymousClass2;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    iget-object v1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$AnonymousClass2$1$1;->this$2:Lcom/sdkbox/plugin/SDKBoxIABBillingClient$AnonymousClass2$1;

    iget-object v1, v1, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$AnonymousClass2$1;->this$1:Lcom/sdkbox/plugin/SDKBoxIABBillingClient$AnonymousClass2;

    iget-object v1, v1, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$AnonymousClass2;->val$skuDetailsList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->sendSkuDetailListToNative(Ljava/util/List;)V

    return-void
.end method
