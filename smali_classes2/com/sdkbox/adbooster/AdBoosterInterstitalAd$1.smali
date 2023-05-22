.class Lcom/sdkbox/adbooster/AdBoosterInterstitalAd$1;
.super Ljava/lang/Object;
.source "AdBoosterInterstitalAd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->setupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;


# direct methods
.method constructor <init>(Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd$1;->this$0:Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 45
    iget-object p1, p0, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd$1;->this$0:Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->setVisibility(I)V

    return-void
.end method
