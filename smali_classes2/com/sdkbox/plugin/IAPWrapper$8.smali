.class final Lcom/sdkbox/plugin/IAPWrapper$8;
.super Ljava/lang/Object;
.source "IAPWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/IAPWrapper;->onConsumed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$error:Ljava/lang/String;

.field final synthetic val$orderid:Ljava/lang/String;

.field final synthetic val$originJson:Ljava/lang/String;

.field final synthetic val$signature:Ljava/lang/String;

.field final synthetic val$sku:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/sdkbox/plugin/IAPWrapper$8;->val$sku:Ljava/lang/String;

    iput-object p2, p0, Lcom/sdkbox/plugin/IAPWrapper$8;->val$originJson:Ljava/lang/String;

    iput-object p3, p0, Lcom/sdkbox/plugin/IAPWrapper$8;->val$signature:Ljava/lang/String;

    iput-object p4, p0, Lcom/sdkbox/plugin/IAPWrapper$8;->val$orderid:Ljava/lang/String;

    iput-object p5, p0, Lcom/sdkbox/plugin/IAPWrapper$8;->val$error:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 128
    iget-object v0, p0, Lcom/sdkbox/plugin/IAPWrapper$8;->val$sku:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdkbox/plugin/IAPWrapper$8;->val$originJson:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdkbox/plugin/IAPWrapper$8;->val$signature:Ljava/lang/String;

    iget-object v3, p0, Lcom/sdkbox/plugin/IAPWrapper$8;->val$orderid:Ljava/lang/String;

    iget-object v4, p0, Lcom/sdkbox/plugin/IAPWrapper$8;->val$error:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sdkbox/plugin/IAPWrapper;->nativeOnConsumed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
