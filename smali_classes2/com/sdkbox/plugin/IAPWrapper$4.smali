.class final Lcom/sdkbox/plugin/IAPWrapper$4;
.super Ljava/lang/Object;
.source "IAPWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/IAPWrapper;->onPayResult(Lcom/sdkbox/plugin/InterfaceIAP;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$classname:Ljava/lang/String;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$orderId:Ljava/lang/String;

.field final synthetic val$payload:Ljava/lang/String;

.field final synthetic val$receipt:Ljava/lang/String;

.field final synthetic val$ret:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/sdkbox/plugin/IAPWrapper$4;->val$msg:Ljava/lang/String;

    iput-object p2, p0, Lcom/sdkbox/plugin/IAPWrapper$4;->val$receipt:Ljava/lang/String;

    iput-object p3, p0, Lcom/sdkbox/plugin/IAPWrapper$4;->val$payload:Ljava/lang/String;

    iput-object p4, p0, Lcom/sdkbox/plugin/IAPWrapper$4;->val$orderId:Ljava/lang/String;

    iput-object p5, p0, Lcom/sdkbox/plugin/IAPWrapper$4;->val$classname:Ljava/lang/String;

    iput p6, p0, Lcom/sdkbox/plugin/IAPWrapper$4;->val$ret:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 78
    iget-object v0, p0, Lcom/sdkbox/plugin/IAPWrapper$4;->val$msg:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/sdkbox/plugin/IAPWrapper$4;->val$receipt:Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v1

    .line 84
    :goto_1
    iget-object v0, p0, Lcom/sdkbox/plugin/IAPWrapper$4;->val$payload:Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, v1

    .line 87
    :goto_2
    iget-object v0, p0, Lcom/sdkbox/plugin/IAPWrapper$4;->val$orderId:Ljava/lang/String;

    if-eqz v0, :cond_3

    move-object v7, v0

    goto :goto_3

    :cond_3
    move-object v7, v1

    .line 90
    :goto_3
    iget-object v2, p0, Lcom/sdkbox/plugin/IAPWrapper$4;->val$classname:Ljava/lang/String;

    iget v3, p0, Lcom/sdkbox/plugin/IAPWrapper$4;->val$ret:I

    invoke-static/range {v2 .. v7}, Lcom/sdkbox/plugin/IAPWrapper;->nativeOnPayResult2(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
