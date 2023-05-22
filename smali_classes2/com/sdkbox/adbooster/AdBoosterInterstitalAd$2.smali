.class Lcom/sdkbox/adbooster/AdBoosterInterstitalAd$2;
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

    .line 51
    iput-object p1, p0, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd$2;->this$0:Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 54
    new-instance p1, Lcom/sdkbox/adbooster/AdBoosterEvent;

    iget-object v0, p0, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd$2;->this$0:Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;

    invoke-static {v0}, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->access$000(Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd$2;->this$0:Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;

    invoke-static {v1}, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->access$100(Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/sdkbox/adbooster/AdBoosterEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AdBooster_click"

    invoke-static {v0, p1}, Lcom/sdkbox/jnibridge/NativeBridge;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
