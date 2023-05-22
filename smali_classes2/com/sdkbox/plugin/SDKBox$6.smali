.class final Lcom/sdkbox/plugin/SDKBox$6;
.super Ljava/lang/Object;
.source "SDKBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/SDKBox;->onActivityResult(IILandroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$data:Landroid/content/Intent;

.field final synthetic val$requestCode:I

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(IILandroid/content/Intent;)V
    .locals 0

    .line 152
    iput p1, p0, Lcom/sdkbox/plugin/SDKBox$6;->val$requestCode:I

    iput p2, p0, Lcom/sdkbox/plugin/SDKBox$6;->val$resultCode:I

    iput-object p3, p0, Lcom/sdkbox/plugin/SDKBox$6;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 155
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lcom/sdkbox/plugin/SDKBox$6;->val$requestCode:I

    iget v2, p0, Lcom/sdkbox/plugin/SDKBox$6;->val$resultCode:I

    iget-object v3, p0, Lcom/sdkbox/plugin/SDKBox$6;->val$data:Landroid/content/Intent;

    invoke-static {v0, v1, v2, v3}, Lcom/sdkbox/plugin/SDKBox;->nOnActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    return-void
.end method
