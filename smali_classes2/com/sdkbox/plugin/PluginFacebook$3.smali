.class Lcom/sdkbox/plugin/PluginFacebook$3;
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
        "Lcom/facebook/share/widget/GameRequestDialog$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/plugin/PluginFacebook;


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/PluginFacebook;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginFacebook$3;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    const/4 v0, 0x1

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/sdkbox/plugin/PluginFacebook$3;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-static {v1}, Lcom/sdkbox/plugin/PluginFacebook;->access$200(Lcom/sdkbox/plugin/PluginFacebook;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Cancel"

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 222
    :try_start_1
    invoke-static {v3, v2}, Lcom/sdkbox/plugin/PluginFacebook;->onInviteFriendsWithInviteIdsResult(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 223
    iget-object v1, p0, Lcom/sdkbox/plugin/PluginFacebook$3;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-static {v1}, Lcom/sdkbox/plugin/PluginFacebook;->access$200(Lcom/sdkbox/plugin/PluginFacebook;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 224
    invoke-static {v3, v2}, Lcom/sdkbox/plugin/PluginFacebook;->onAskGiftResult(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 225
    iget-object v1, p0, Lcom/sdkbox/plugin/PluginFacebook$3;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-static {v1}, Lcom/sdkbox/plugin/PluginFacebook;->access$200(Lcom/sdkbox/plugin/PluginFacebook;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 226
    invoke-static {v3, v2}, Lcom/sdkbox/plugin/PluginFacebook;->onSendGiftResult(ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 229
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

    :cond_2
    :goto_0
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 3

    const/4 v0, 0x1

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/sdkbox/plugin/PluginFacebook$3;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-static {v1}, Lcom/sdkbox/plugin/PluginFacebook;->access$200(Lcom/sdkbox/plugin/PluginFacebook;)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 236
    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sdkbox/plugin/PluginFacebook;->onInviteFriendsWithInviteIdsResult(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 237
    iget-object v1, p0, Lcom/sdkbox/plugin/PluginFacebook$3;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-static {v1}, Lcom/sdkbox/plugin/PluginFacebook;->access$200(Lcom/sdkbox/plugin/PluginFacebook;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 238
    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sdkbox/plugin/PluginFacebook;->onAskGiftResult(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 239
    iget-object v1, p0, Lcom/sdkbox/plugin/PluginFacebook$3;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-static {v1}, Lcom/sdkbox/plugin/PluginFacebook;->access$200(Lcom/sdkbox/plugin/PluginFacebook;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 240
    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sdkbox/plugin/PluginFacebook;->onSendGiftResult(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t find native method"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sdkbox/plugin/PluginFacebook;->LogD(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/facebook/share/widget/GameRequestDialog$Result;)V
    .locals 3

    .line 205
    invoke-virtual {p1}, Lcom/facebook/share/widget/GameRequestDialog$Result;->getRequestId()Ljava/lang/String;

    move-result-object p1

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook$3;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-static {v0}, Lcom/sdkbox/plugin/PluginFacebook;->access$200(Lcom/sdkbox/plugin/PluginFacebook;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 208
    invoke-static {v1, p1}, Lcom/sdkbox/plugin/PluginFacebook;->onInviteFriendsWithInviteIdsResult(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 209
    iget-object v2, p0, Lcom/sdkbox/plugin/PluginFacebook$3;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-static {v2}, Lcom/sdkbox/plugin/PluginFacebook;->access$200(Lcom/sdkbox/plugin/PluginFacebook;)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 210
    invoke-static {v1, p1}, Lcom/sdkbox/plugin/PluginFacebook;->onAskGiftResult(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 211
    iget-object v2, p0, Lcom/sdkbox/plugin/PluginFacebook$3;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-static {v2}, Lcom/sdkbox/plugin/PluginFacebook;->access$200(Lcom/sdkbox/plugin/PluginFacebook;)I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 212
    invoke-static {v1, p1}, Lcom/sdkbox/plugin/PluginFacebook;->onSendGiftResult(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t find native method"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sdkbox/plugin/PluginFacebook;->LogD(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 203
    check-cast p1, Lcom/facebook/share/widget/GameRequestDialog$Result;

    invoke-virtual {p0, p1}, Lcom/sdkbox/plugin/PluginFacebook$3;->onSuccess(Lcom/facebook/share/widget/GameRequestDialog$Result;)V

    return-void
.end method
