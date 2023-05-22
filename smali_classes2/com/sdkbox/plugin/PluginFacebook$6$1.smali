.class Lcom/sdkbox/plugin/PluginFacebook$6$1;
.super Ljava/lang/Object;
.source "PluginFacebook.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/PluginFacebook$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/share/Sharer$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sdkbox/plugin/PluginFacebook$6;


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/PluginFacebook$6;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginFacebook$6$1;->this$1:Lcom/sdkbox/plugin/PluginFacebook$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook$6$1;->this$1:Lcom/sdkbox/plugin/PluginFacebook$6;

    iget-object v0, v0, Lcom/sdkbox/plugin/PluginFacebook$6;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-virtual {v0}, Lcom/sdkbox/plugin/PluginFacebook;->onSharedCancelWrapper()V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook$6$1;->this$1:Lcom/sdkbox/plugin/PluginFacebook$6;

    iget-object v0, v0, Lcom/sdkbox/plugin/PluginFacebook$6;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sdkbox/plugin/PluginFacebook;->onSharedFailedWrapper(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/facebook/share/Sharer$Result;)V
    .locals 2

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"postId\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/share/Sharer$Result;->getPostId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 359
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook$6$1;->this$1:Lcom/sdkbox/plugin/PluginFacebook$6;

    iget-object v0, v0, Lcom/sdkbox/plugin/PluginFacebook$6;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-virtual {v0, p1}, Lcom/sdkbox/plugin/PluginFacebook;->onSharedSuccessWrapper(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 356
    check-cast p1, Lcom/facebook/share/Sharer$Result;

    invoke-virtual {p0, p1}, Lcom/sdkbox/plugin/PluginFacebook$6$1;->onSuccess(Lcom/facebook/share/Sharer$Result;)V

    return-void
.end method
