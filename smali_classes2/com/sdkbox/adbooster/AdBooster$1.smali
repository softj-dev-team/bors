.class Lcom/sdkbox/adbooster/AdBooster$1;
.super Ljava/lang/Object;
.source "AdBooster.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/adbooster/AdBooster;-><init>(Landroid/content/Context;)V
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

    .line 46
    iput-object p1, p0, Lcom/sdkbox/adbooster/AdBooster$1;->this$0:Lcom/sdkbox/adbooster/AdBooster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/sdkbox/adbooster/AdBooster$1;->this$0:Lcom/sdkbox/adbooster/AdBooster;

    new-instance v1, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;

    iget-object v2, p0, Lcom/sdkbox/adbooster/AdBooster$1;->this$0:Lcom/sdkbox/adbooster/AdBooster;

    invoke-static {v2}, Lcom/sdkbox/adbooster/AdBooster;->access$100(Lcom/sdkbox/adbooster/AdBooster;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/sdkbox/adbooster/AdBooster;->access$002(Lcom/sdkbox/adbooster/AdBooster;Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;)Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;

    return-void
.end method
