.class final Lcom/sdkbox/plugin/AdsWrapper$2;
.super Ljava/lang/Object;
.source "AdsWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/AdsWrapper;->onPlayerGetPoints(Lcom/sdkbox/plugin/InterfaceAds;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Lcom/sdkbox/plugin/InterfaceAds;

.field final synthetic val$points:I


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/InterfaceAds;I)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/sdkbox/plugin/AdsWrapper$2;->val$adapter:Lcom/sdkbox/plugin/InterfaceAds;

    iput p2, p0, Lcom/sdkbox/plugin/AdsWrapper$2;->val$points:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/sdkbox/plugin/AdsWrapper$2;->val$adapter:Lcom/sdkbox/plugin/InterfaceAds;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    .line 76
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sdkbox/plugin/AdsWrapper$2;->val$points:I

    invoke-static {v0, v1}, Lcom/sdkbox/plugin/AdsWrapper;->nativeOnPlayerGetPoints(Ljava/lang/String;I)V

    return-void
.end method
