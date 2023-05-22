.class Lcom/sdkbox/adbooster/AdBooster$3;
.super Ljava/lang/Object;
.source "AdBooster.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/adbooster/AdBooster;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/adbooster/AdBooster;


# direct methods
.method constructor <init>(Lcom/sdkbox/adbooster/AdBooster;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/sdkbox/adbooster/AdBooster$3;->this$0:Lcom/sdkbox/adbooster/AdBooster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/sdkbox/adbooster/AdBooster$3;->this$0:Lcom/sdkbox/adbooster/AdBooster;

    invoke-static {v0}, Lcom/sdkbox/adbooster/AdBooster;->access$000(Lcom/sdkbox/adbooster/AdBooster;)Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/sdkbox/adbooster/AdBooster$3;->this$0:Lcom/sdkbox/adbooster/AdBooster;

    invoke-static {v0}, Lcom/sdkbox/adbooster/AdBooster;->access$000(Lcom/sdkbox/adbooster/AdBooster;)Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->setVisibility(I)V

    :cond_0
    return-void
.end method
