.class Lcom/sdkbox/plugin/SDKBoxIABBillingClient$5;
.super Ljava/lang/Object;
.source "SDKBoxIABBillingClient.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->sortPurchaseList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/billingclient/api/Purchase;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$5;->this$0:Lcom/sdkbox/plugin/SDKBoxIABBillingClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/billingclient/api/Purchase;Lcom/android/billingclient/api/Purchase;)I
    .locals 3

    .line 619
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide p1

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-lez v2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 617
    check-cast p1, Lcom/android/billingclient/api/Purchase;

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p0, p1, p2}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$5;->compare(Lcom/android/billingclient/api/Purchase;Lcom/android/billingclient/api/Purchase;)I

    move-result p1

    return p1
.end method
