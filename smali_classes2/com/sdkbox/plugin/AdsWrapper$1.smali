.class final Lcom/sdkbox/plugin/AdsWrapper$1;
.super Ljava/lang/Object;
.source "AdsWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/AdsWrapper;->onAdsResult(Lcom/sdkbox/plugin/InterfaceAds;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Lcom/sdkbox/plugin/InterfaceAds;

.field final synthetic val$code:I

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/InterfaceAds;ILjava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/sdkbox/plugin/AdsWrapper$1;->val$adapter:Lcom/sdkbox/plugin/InterfaceAds;

    iput p2, p0, Lcom/sdkbox/plugin/AdsWrapper$1;->val$code:I

    iput-object p3, p0, Lcom/sdkbox/plugin/AdsWrapper$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/sdkbox/plugin/AdsWrapper$1;->val$adapter:Lcom/sdkbox/plugin/InterfaceAds;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    .line 66
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sdkbox/plugin/AdsWrapper$1;->val$code:I

    iget-object v2, p0, Lcom/sdkbox/plugin/AdsWrapper$1;->val$msg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdkbox/plugin/AdsWrapper;->nativeOnAdsResult(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
