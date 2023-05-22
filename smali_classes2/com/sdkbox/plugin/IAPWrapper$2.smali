.class final Lcom/sdkbox/plugin/IAPWrapper$2;
.super Ljava/lang/Object;
.source "IAPWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/IAPWrapper;->onPayResult(Lcom/sdkbox/plugin/InterfaceIAP;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$classname:Ljava/lang/String;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$ret:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/sdkbox/plugin/IAPWrapper$2;->val$classname:Ljava/lang/String;

    iput p2, p0, Lcom/sdkbox/plugin/IAPWrapper$2;->val$ret:I

    iput-object p3, p0, Lcom/sdkbox/plugin/IAPWrapper$2;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/sdkbox/plugin/IAPWrapper$2;->val$classname:Ljava/lang/String;

    iget v1, p0, Lcom/sdkbox/plugin/IAPWrapper$2;->val$ret:I

    iget-object v2, p0, Lcom/sdkbox/plugin/IAPWrapper$2;->val$msg:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/sdkbox/plugin/IAPWrapper;->nativeOnPayResult(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
