.class Lcom/sdkbox/plugin/PluginFacebook$15;
.super Ljava/lang/Object;
.source "PluginFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/PluginFacebook;->onSharedSuccessWrapper(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/plugin/PluginFacebook;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/PluginFacebook;Ljava/lang/String;)V
    .locals 0

    .line 766
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginFacebook$15;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    iput-object p2, p0, Lcom/sdkbox/plugin/PluginFacebook$15;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 770
    :try_start_0
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook$15;->val$data:Ljava/lang/String;

    invoke-static {v0}, Lcom/sdkbox/plugin/PluginFacebook;->onSharedSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t find native method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sdkbox/plugin/PluginFacebook;->LogD(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
