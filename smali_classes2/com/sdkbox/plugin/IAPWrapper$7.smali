.class final Lcom/sdkbox/plugin/IAPWrapper$7;
.super Ljava/lang/Object;
.source "IAPWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/IAPWrapper;->onPurchaseHistory(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$purchases:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/sdkbox/plugin/IAPWrapper$7;->val$purchases:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/sdkbox/plugin/IAPWrapper$7;->val$purchases:Ljava/lang/String;

    invoke-static {v0}, Lcom/sdkbox/plugin/IAPWrapper;->nativeOnPurchaseHistory(Ljava/lang/String;)V

    return-void
.end method
