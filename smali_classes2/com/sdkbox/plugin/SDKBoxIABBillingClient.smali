.class public Lcom/sdkbox/plugin/SDKBoxIABBillingClient;
.super Ljava/lang/Object;
.source "SDKBoxIABBillingClient.java"

# interfaces
.implements Lcom/sdkbox/plugin/InterfaceIAP;
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;
.implements Lcom/android/billingclient/api/PurchaseHistoryResponseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdkbox/plugin/SDKBoxIABBillingClient$AnonymousClass2;,
        Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SDKBoxIABBillingClient"


# instance fields
.field private _initializedErrMsg:Ljava/lang/String;

.field private autoConsume:Z

.field private billingClient:Lcom/android/billingclient/api/BillingClient;

.field private mConsumeToken:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConsumeing:Z

.field private mContext:Landroid/content/Context;

.field private mCurPurchaseItem:Ljava/lang/String;

.field private mProductMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;",
            ">;"
        }
    .end annotation
.end field

.field private mPurchaseHistoryQueryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPurchaseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field private mPurchaseListLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mSkuDetailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mSkuDetailQueryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetailsParams;",
            ">;"
        }
    .end annotation
.end field

.field private obfuscatedAccountId:Ljava/lang/String;

.field private obfuscatedProfileId:Ljava/lang/String;

.field private publicKey:Ljava/lang/String;

.field private purchaseHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
            ">;"
        }
    .end annotation
.end field

.field private purchaseHistoryFlag:I

.field private userSideVerification:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->publicKey:Ljava/lang/String;

    const-string v1, ""

    .line 39
    iput-object v1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->_initializedErrMsg:Ljava/lang/String;

    const/4 v2, 0x0

    .line 40
    iput-boolean v2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->userSideVerification:Z

    const/4 v3, 0x1

    .line 41
    iput-boolean v3, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->autoConsume:Z

    .line 42
    iput-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 43
    iput-object v1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->obfuscatedAccountId:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->obfuscatedProfileId:Ljava/lang/String;

    .line 45
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mProductMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mSkuDetailQueryList:Ljava/util/List;

    .line 47
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseHistoryQueryList:Ljava/util/List;

    .line 48
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mSkuDetailList:Ljava/util/List;

    .line 49
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseList:Ljava/util/List;

    .line 50
    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v3, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseListLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 51
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mConsumeToken:Ljava/util/List;

    .line 52
    iput-boolean v2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mConsumeing:Z

    .line 53
    iput-object v1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mCurPurchaseItem:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mContext:Landroid/content/Context;

    .line 82
    iput-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1002(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mConsumeing:Z

    return p1
.end method

.method static synthetic access$102(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->_initializedErrMsg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseHistoryQueryList:Ljava/util/List;

    return-object p0
.end method

.method static access$1408(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)I
    .locals 2

    .line 58
    iget v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->purchaseHistoryFlag:I

    add-int/lit8 v1, v0, 0x1

    .line 59
    iput v1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->purchaseHistoryFlag:I

    return v0
.end method

.method static synthetic access$200(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)Lcom/android/billingclient/api/BillingClient;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->billingClient:Lcom/android/billingclient/api/BillingClient;

    return-object p0
.end method

.method static synthetic access$202(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;Lcom/android/billingclient/api/BillingClient;)Lcom/android/billingclient/api/BillingClient;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->billingClient:Lcom/android/billingclient/api/BillingClient;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->obfuscatedAccountId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->obfuscatedProfileId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mCurPurchaseItem:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->purchaseHistory:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->purchaseHistoryFlag:I

    return p0
.end method

.method static synthetic access$900(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->consumProductByToken(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized acknowledgeProductByToken(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 716
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 719
    :cond_0
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object p1

    .line 720
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object p1

    new-instance v1, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$7;

    invoke-direct {v1, p0}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$7;-><init>(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 717
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method private addSkuDetailList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 556
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/SkuDetails;

    .line 557
    iget-object v1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mSkuDetailList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 558
    iget-object v2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mSkuDetailList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v2}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 559
    iget-object v2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mSkuDetailList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 562
    :cond_2
    iget-object v1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mSkuDetailList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private declared-synchronized consumProductByToken(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 728
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 731
    :cond_0
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p1

    .line 732
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object p1

    new-instance v1, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$8;

    invoke-direct {v1, p0}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$8;-><init>(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 729
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method private findPurchaseBySku(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase;
    .locals 5

    .line 675
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    .line 677
    :try_start_0
    iget-object v1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/Purchase;

    .line 678
    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 679
    iget-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    .line 683
    :cond_1
    iget-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    .line 689
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 690
    throw p1

    .line 686
    :catch_0
    iget-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0
.end method

.method private getDescriptionOfError(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, "error"

    goto :goto_0

    :pswitch_1
    const-string v0, "item not owned"

    goto :goto_0

    :pswitch_2
    const-string v0, "item already owned"

    goto :goto_0

    :pswitch_3
    const-string v0, "developer error"

    goto :goto_0

    :pswitch_4
    const-string v0, "item unavailable"

    goto :goto_0

    :pswitch_5
    const-string v0, "billing unavailable"

    goto :goto_0

    :pswitch_6
    const-string v0, "service unavailable"

    goto :goto_0

    :pswitch_7
    const-string v0, "user canceled"

    goto :goto_0

    :pswitch_8
    const-string v0, ""

    goto :goto_0

    :pswitch_9
    const-string v0, "service disconnected"

    goto :goto_0

    :pswitch_a
    const-string v0, "feature not support"

    :goto_0
    if-nez p1, :cond_0

    return-object v0

    .line 444
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getSkuByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 475
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mProductMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;

    .line 476
    iget-object v2, v1, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 477
    iget-object p1, v1, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;->sku:Ljava/lang/String;

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private getSkuDetails(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetails;
    .locals 3

    .line 579
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mSkuDetailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/SkuDetails;

    .line 580
    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSkuType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 463
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mProductMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;

    .line 464
    iget-object v2, v1, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;->sku:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 465
    iget p1, v1, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;->type:I

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iget v0, v1, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;->type:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "subs"

    return-object p1

    :cond_2
    :goto_0
    const-string p1, "inapp"

    return-object p1

    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method private isPurchaseExistInHistory(Ljava/util/List;Lcom/android/billingclient/api/PurchaseHistoryRecord;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
            ">;",
            "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
            ")Z"
        }
    .end annotation

    .line 356
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    .line 357
    invoke-virtual {v0}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private purchaseVerifiAndNotify(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string p1, "purchase failed"

    .line 637
    invoke-static {p0, v0, p1}, Lcom/sdkbox/plugin/IAPWrapper;->onPayResult(Lcom/sdkbox/plugin/InterfaceIAP;ILjava/lang/String;)V

    return-void

    .line 640
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 641
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 642
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->acknowledgeProductByToken(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->isConsumable(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "SDKBoxIABBillingClient"

    if-eqz v2, :cond_2

    .line 644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "auto consume flag:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->autoConsume:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-boolean v2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->autoConsume:Z

    if-eqz v2, :cond_2

    .line 646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "consume product:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->consumProductByToken(Ljava/lang/String;)V

    .line 650
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user side verification:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->userSideVerification:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-boolean v2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->userSideVerification:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->publicKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "user side verification disable"

    .line 652
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->publicKey:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$6;

    invoke-direct {v5, p0, v1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$6;-><init>(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;Lcom/android/billingclient/api/Purchase;)V

    invoke-static {v2, v3, v4, v5}, Lcom/sdkbox/plugin/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sdkbox/plugin/Security$VerificationListener;)V

    goto/16 :goto_0

    :cond_3
    const-string v2, "user side verification enable"

    .line 667
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .line 668
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v10

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lcom/sdkbox/plugin/IAPWrapper;->onPayResult(Lcom/sdkbox/plugin/InterfaceIAP;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private sortPurchaseList()V
    .locals 2

    .line 615
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 617
    :try_start_0
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseList:Ljava/util/List;

    new-instance v1, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$5;

    invoke-direct {v1, p0}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$5;-><init>(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 631
    iget-object v1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 632
    throw v0

    .line 631
    :catch_0
    :goto_0
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method private declared-synchronized toConsum(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 750
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mConsumeToken:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    iget-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mConsumeToken:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 755
    iget-boolean v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mConsumeing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 756
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 758
    :try_start_1
    iput-boolean v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mConsumeing:Z

    const-string v0, "SDKBoxIABBillingClient"

    const-string v1, "to consume product"

    .line 759
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object p1

    .line 761
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$9;

    invoke-direct {v1, p0}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$9;-><init>(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 773
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 751
    :cond_2
    :goto_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public addPurchaseList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 594
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    .line 595
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_1

    .line 596
    iget-object v1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_1
    if-ltz v1, :cond_3

    .line 597
    iget-object v2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 598
    iget-object v2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 601
    :cond_3
    iget-object v1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 604
    :cond_4
    iget-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 608
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 609
    throw p1

    .line 606
    :catch_0
    iget-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 611
    :goto_2
    invoke-direct {p0}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->sortPurchaseList()V

    return-void
.end method

.method public consumeProduct(Ljava/lang/String;)V
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->billingClient:Lcom/android/billingclient/api/BillingClient;

    const-string v1, "SDKBoxIABBillingClient"

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_6

    .line 286
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->billingClient:Lcom/android/billingclient/api/BillingClient;

    const-string v2, "inapp"

    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchases(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getPurchasesList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->addPurchaseList(Ljava/util/List;)V

    .line 290
    invoke-direct {p0, p1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->getSkuByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 294
    :goto_0
    invoke-direct {p0, p1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->findPurchaseBySku(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p1, "can\'t find purchase"

    .line 296
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 297
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->isConsumable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 298
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->consumProductByToken(Ljava/lang/String;)V

    goto :goto_2

    .line 300
    :cond_4
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->acknowledgeProductByToken(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    :goto_1
    const-string p1, "billingClient is null or not ready"

    .line 285
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method

.method public enableUserSideVerification(Z)V
    .locals 0

    .line 272
    iput-boolean p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->userSideVerification:Z

    return-void
.end method

.method public findPurchaseByToken(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase;
    .locals 4

    .line 696
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    .line 698
    :try_start_0
    iget-object v1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/Purchase;

    .line 699
    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 700
    iget-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    .line 704
    :cond_1
    iget-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    .line 710
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 711
    throw p1

    .line 707
    :catch_0
    iget-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0
.end method

.method public getDescriptionOfResult(Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;
    .locals 2

    .line 397
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 400
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInitializedErrMsg()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->_initializedErrMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseHistory()V
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->purchaseHistory:Ljava/util/List;

    if-nez v0, :cond_1

    .line 311
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->purchaseHistory:Ljava/util/List;

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->purchaseHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 314
    iput v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->purchaseHistoryFlag:I

    .line 315
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$3;

    invoke-direct {v1, p0}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$3;-><init>(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)V

    const-string v2, "inapp"

    invoke-virtual {v0, v2, v1}, Lcom/android/billingclient/api/BillingClient;->queryPurchaseHistoryAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    .line 326
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$4;

    invoke-direct {v1, p0}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$4;-><init>(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)V

    const-string v2, "subs"

    invoke-virtual {v0, v2, v1}, Lcom/android/billingclient/api/BillingClient;->queryPurchaseHistoryAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    return-void

    :cond_2
    :goto_0
    const-string v0, "SDKBoxIABBillingClient"

    const-string v1, "billingClient is null or not ready"

    .line 307
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getSkuList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 449
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 450
    iget-object v1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mProductMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;

    const-string v3, "inapp"

    .line 451
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 452
    iget v3, v2, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;->type:I

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    iget v4, v2, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;->type:I

    if-ne v3, v4, :cond_0

    .line 453
    :cond_1
    iget-object v2, v2, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;->sku:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    .line 455
    iget v4, v2, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;->type:I

    if-ne v3, v4, :cond_0

    .line 456
    iget-object v2, v2, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;->sku:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "0.0.1"

    return-object v0
.end method

.method public declared-synchronized handlePurchaseHistory(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 378
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 379
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 380
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/PurchaseHistoryRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "SDKBoxIABBillingClient"

    .line 384
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_3
    const-string p1, "purchaseHistory"

    .line 388
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    const-string v1, "SDKBoxIABBillingClient"

    .line 390
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sdkbox/plugin/IAPWrapper;->onPurchaseHistory(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 393
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public handlePurchaseResult(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;Z)V"
        }
    .end annotation

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePurchaseResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->getDescriptionOfResult(Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDKBoxIABBillingClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v3, :cond_5

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 532
    :cond_0
    invoke-virtual {p0}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->isAutoConsume()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    .line 534
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    .line 535
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v1

    if-ne v3, v1, :cond_1

    .line 536
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->toConsum(Ljava/lang/String;)V

    goto :goto_0

    .line 540
    :cond_2
    iget-object p2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mCurPurchaseItem:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->consumeProduct(Ljava/lang/String;)V

    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    .line 546
    invoke-virtual {p0, p1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->getDescriptionOfResult(Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sdkbox/plugin/IAPWrapper;->onRestoreComplete(ZLjava/lang/String;)V

    goto :goto_2

    .line 548
    :cond_4
    invoke-virtual {p0, p1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->getDescriptionOfResult(Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v3, p1}, Lcom/sdkbox/plugin/IAPWrapper;->onPayResult(Lcom/sdkbox/plugin/InterfaceIAP;ILjava/lang/String;)V

    :goto_2
    return-void

    :cond_5
    const-string p2, "User canceled the purchase"

    .line 523
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_6

    .line 525
    invoke-virtual {p0, p1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->getDescriptionOfResult(Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sdkbox/plugin/IAPWrapper;->onRestoreComplete(ZLjava/lang/String;)V

    return-void

    :cond_6
    const/4 p2, 0x2

    .line 528
    invoke-virtual {p0, p1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->getDescriptionOfResult(Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/sdkbox/plugin/IAPWrapper;->onPayResult(Lcom/sdkbox/plugin/InterfaceIAP;ILjava/lang/String;)V

    return-void

    :cond_7
    const-string p1, "billing response ok"

    .line 502
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {p0, p2}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->addPurchaseList(Ljava/util/List;)V

    if-eqz p3, :cond_9

    .line 505
    iget-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 507
    :try_start_0
    iget-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    const/4 v5, 0x3

    .line 508
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v6, p3

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/sdkbox/plugin/IAPWrapper;->onPayResult(Lcom/sdkbox/plugin/InterfaceIAP;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 510
    :cond_8
    iget-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 514
    iget-object p2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 515
    throw p1

    .line 512
    :catch_0
    iget-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_4
    const-string p1, ""

    .line 517
    invoke-static {v3, p1}, Lcom/sdkbox/plugin/IAPWrapper;->onRestoreComplete(ZLjava/lang/String;)V

    return-void

    .line 520
    :cond_9
    invoke-direct {p0, p2}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->purchaseVerifiAndNotify(Ljava/util/List;)V

    return-void
.end method

.method public declared-synchronized initIAP(Ljava/util/Map;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 90
    :try_start_0
    iget-object p2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mProductMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    const-string v0, "items"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 93
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 94
    new-instance v2, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;-><init>(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;Lcom/sdkbox/plugin/SDKBoxIABBillingClient$1;)V

    .line 95
    invoke-virtual {p2}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;->name:Ljava/lang/String;

    .line 96
    iget-object v3, v2, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "id"

    .line 97
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;->sku:Ljava/lang/String;

    const-string v4, "type"

    .line 98
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "type"

    .line 99
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "non"

    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 101
    iput v3, v2, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;->type:I

    goto :goto_1

    :cond_0
    const-string v4, "subs"

    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    .line 103
    iput v3, v2, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;->type:I

    goto :goto_1

    .line 105
    :cond_1
    iput v0, v2, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;->type:I

    goto :goto_1

    .line 108
    :cond_2
    iput v0, v2, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;->type:I

    .line 110
    :goto_1
    iget-object v3, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mProductMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v2, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string p2, "key"

    .line 112
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->publicKey:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 114
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 116
    :goto_2
    iget-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz p1, :cond_4

    const-string p1, "SDKBoxIABBillingClient"

    const-string p2, "Billingclient has inited"

    .line 117
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 119
    :cond_4
    new-instance p1, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$1;

    invoke-direct {p1, p0}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$1;-><init>(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;)V

    invoke-static {p1}, Lcom/sdkbox/plugin/SDKBox;->runOnMainThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public initStore(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public isAutoConsume()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->autoConsume:Z

    return v0
.end method

.method public isConsumable(Ljava/lang/String;)Z
    .locals 4

    .line 485
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mProductMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;

    .line 486
    iget-object v3, v1, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;->sku:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 487
    iget p1, v1, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$IABProduct;->type:I

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method public onPurchaseHistoryResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
            ">;)V"
        }
    .end annotation

    .line 805
    new-instance p2, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$11;

    invoke-direct {p2, p0, p1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$11;-><init>(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;Lcom/android/billingclient/api/BillingResult;)V

    invoke-static {p2}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 796
    new-instance v0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$10;-><init>(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public purchase(Ljava/lang/String;I)V
    .locals 2

    .line 203
    iget-object p2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->billingClient:Lcom/android/billingclient/api/BillingClient;

    const-string v0, "SDKBoxIABBillingClient"

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 207
    :cond_0
    invoke-direct {p0, p1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->getSkuByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 208
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, p2

    .line 212
    :goto_0
    invoke-direct {p0, p1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->getSkuType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 213
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 214
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t find product:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " type"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 217
    :cond_2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 218
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v1, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$2;

    invoke-direct {v1, p0, p1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$2;-><init>(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, v1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->querySkuDetails(Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    return-void

    :cond_3
    :goto_1
    const-string p1, "billingClient is null or not ready"

    .line 204
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized purchaseHistoryAddIf(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 369
    :cond_0
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    .line 370
    invoke-direct {p0, p1, v0}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->isPurchaseExistInHistory(Ljava/util/List;Lcom/android/billingclient/api/PurchaseHistoryRecord;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 371
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 374
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 367
    :cond_3
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public querySkuDetails(Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/billingclient/api/SkuDetailsResponseListener;",
            ")V"
        }
    .end annotation

    .line 568
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->billingClient:Lcom/android/billingclient/api/BillingClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 569
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->getDescriptionOfError(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    check-cast v1, Ljava/util/List;

    invoke-interface {p3, p1, v1}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    goto :goto_0

    .line 570
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 571
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    check-cast v1, Ljava/util/List;

    invoke-interface {p3, p1, v1}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    goto :goto_0

    .line 573
    :cond_1
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object p1

    .line 574
    iget-object p2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p2, p1, p3}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized requestProducts()V
    .locals 4

    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const-string v1, "inapp"

    .line 160
    invoke-virtual {p0, v1}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->getSkuList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v2, "inapp"

    .line 161
    new-instance v3, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$AnonymousClass2;

    invoke-direct {v3, p0, v0}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient$AnonymousClass2;-><init>(Lcom/sdkbox/plugin/SDKBoxIABBillingClient;Ljava/util/List;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->querySkuDetails(Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "SDKBoxIABBillingClient"

    const-string v1, "billingClient is null or not ready"

    .line 156
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public restorePurchase()V
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseHistoryQueryList:Ljava/util/List;

    const-string v1, "inapp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseHistoryQueryList:Ljava/util/List;

    const-string v1, "subs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseHistoryQueryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseHistoryQueryList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 258
    iget-object v2, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->mPurchaseHistoryQueryList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 259
    iget-object v1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v1, v0, p0}, Lcom/android/billingclient/api/BillingClient;->queryPurchaseHistoryAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string v0, "SDKBoxIABBillingClient"

    const-string v1, "billingClient is null or not ready"

    .line 251
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendSkuDetailListToNative(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    .line 778
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 779
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/SkuDetails;

    .line 780
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "id"

    .line 781
    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "title"

    .line 782
    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetails;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "desc"

    .line 783
    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetails;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "price"

    .line 784
    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "currencyCode"

    .line 785
    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "priceValue"

    .line 786
    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetails;->getPriceAmountMicros()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 787
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string v1, ""

    .line 789
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v1, v0}, Lcom/sdkbox/plugin/IAPWrapper;->onRequestResult(Lcom/sdkbox/plugin/InterfaceIAP;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 791
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SDKBoxIABBillingClient"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setAutoConsume(Z)V
    .locals 0

    .line 280
    iput-boolean p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->autoConsume:Z

    return-void
.end method

.method public setDeveloperId(Ljava/lang/String;)V
    .locals 1

    const-string p1, "SDKBoxIABBillingClient"

    const-string v0, "setDeveloperId is removed"

    .line 348
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDeveloperPayload(Ljava/lang/String;)V
    .locals 1

    const-string p1, "SDKBoxIABBillingClient"

    const-string v0, "setDeveloperPayload is removed"

    .line 340
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setObfuscatedAccountId(Ljava/lang/String;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->obfuscatedAccountId:Ljava/lang/String;

    return-void
.end method

.method public setObfuscatedProfileId(Ljava/lang/String;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/sdkbox/plugin/SDKBoxIABBillingClient;->obfuscatedProfileId:Ljava/lang/String;

    return-void
.end method
