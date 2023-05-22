.class Lcom/sdkbox/plugin/SDKBoxIABBillingClient$AnonymousClass2;
.super Ljava/lang/Object;
.source "SDKBoxIABBillingClient.java"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdkbox/plugin/SDKBoxIABBillingClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnonymousClass2"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

.field final val$skuDetailsList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;Ljava/util/List;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$AnonymousClass2;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$AnonymousClass2;->val$skuDetailsList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    .line 174
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "query SkuDetails failed:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SDKBoxIABBillingClient"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 179
    iget-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$AnonymousClass2;->val$skuDetailsList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    :cond_1
    iget-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$AnonymousClass2;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    const-string p2, "subs"

    invoke-virtual {p1, p2}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->getSkuList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 182
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$AnonymousClass2;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    new-instance v1, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$AnonymousClass2$1;

    invoke-direct {v1, p0}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$AnonymousClass2$1;-><init>(Lcom/sdkbox/plugin/SDKBoxIABBillingClient$AnonymousClass2;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->querySkuDetails(Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    return-void
.end method
