.class Lcom/sdkbox/adbooster/AdBooster$2;
.super Ljava/lang/Object;
.source "AdBooster.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/adbooster/AdBooster;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/adbooster/AdBooster;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$link:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sdkbox/adbooster/AdBooster;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/sdkbox/adbooster/AdBooster$2;->this$0:Lcom/sdkbox/adbooster/AdBooster;

    iput-object p2, p0, Lcom/sdkbox/adbooster/AdBooster$2;->val$link:Ljava/lang/String;

    iput-object p3, p0, Lcom/sdkbox/adbooster/AdBooster$2;->val$id:Ljava/lang/String;

    iput-object p4, p0, Lcom/sdkbox/adbooster/AdBooster$2;->val$filename:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/sdkbox/adbooster/AdBooster$2;->this$0:Lcom/sdkbox/adbooster/AdBooster;

    invoke-static {v0}, Lcom/sdkbox/adbooster/AdBooster;->access$000(Lcom/sdkbox/adbooster/AdBooster;)Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/sdkbox/adbooster/AdBooster$2;->this$0:Lcom/sdkbox/adbooster/AdBooster;

    invoke-static {v0}, Lcom/sdkbox/adbooster/AdBooster;->access$000(Lcom/sdkbox/adbooster/AdBooster;)Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;

    move-result-object v0

    iget-object v1, p0, Lcom/sdkbox/adbooster/AdBooster$2;->val$link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->setLink(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/sdkbox/adbooster/AdBooster$2;->this$0:Lcom/sdkbox/adbooster/AdBooster;

    invoke-static {v0}, Lcom/sdkbox/adbooster/AdBooster;->access$000(Lcom/sdkbox/adbooster/AdBooster;)Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;

    move-result-object v0

    iget-object v1, p0, Lcom/sdkbox/adbooster/AdBooster$2;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdkbox/adbooster/AdBooster$2;->this$0:Lcom/sdkbox/adbooster/AdBooster;

    invoke-static {v2}, Lcom/sdkbox/adbooster/AdBooster;->access$200(Lcom/sdkbox/adbooster/AdBooster;)Lcom/sdkbox/adbooster/ImageCache;

    move-result-object v2

    iget-object v3, p0, Lcom/sdkbox/adbooster/AdBooster$2;->val$filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sdkbox/adbooster/ImageCache;->generateFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->setImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/sdkbox/adbooster/AdBooster$2;->this$0:Lcom/sdkbox/adbooster/AdBooster;

    invoke-virtual {v0}, Lcom/sdkbox/adbooster/AdBooster;->show()V

    :cond_0
    return-void
.end method
