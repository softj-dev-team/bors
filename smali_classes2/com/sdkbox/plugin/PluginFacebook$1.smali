.class Lcom/sdkbox/plugin/PluginFacebook$1;
.super Ljava/lang/Object;
.source "PluginFacebook.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/PluginFacebook;->configure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/plugin/PluginFacebook;


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/PluginFacebook;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginFacebook$1;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook$1;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-virtual {v0}, Lcom/sdkbox/plugin/PluginFacebook;->isLoggedIn()Z

    move-result v0

    const-string v1, "cancel"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook$1;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-virtual {v0, v2, v1}, Lcom/sdkbox/plugin/PluginFacebook;->onPermissionWrapper(ZLjava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook$1;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-virtual {v0, v2, v1}, Lcom/sdkbox/plugin/PluginFacebook;->onLoginWrapper(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook$1;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-virtual {v0}, Lcom/sdkbox/plugin/PluginFacebook;->isLoggedIn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook$1;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sdkbox/plugin/PluginFacebook;->onPermissionWrapper(ZLjava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook$1;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sdkbox/plugin/PluginFacebook;->onLoginWrapper(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 158
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/sdkbox/plugin/PluginFacebook$1;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
