.class Lcom/sdkbox/plugin/PluginFacebook$4;
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
        "Lcom/facebook/share/widget/AppInviteDialog$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/plugin/PluginFacebook;


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/PluginFacebook;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginFacebook$4;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "Cancel"

    .line 259
    invoke-static {v0, v1}, Lcom/sdkbox/plugin/PluginFacebook;->onInviteFriendsResult(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 261
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

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 2

    const/4 v0, 0x0

    .line 267
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sdkbox/plugin/PluginFacebook;->onInviteFriendsResult(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 269
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

    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/facebook/share/widget/AppInviteDialog$Result;)V
    .locals 2

    const/4 p1, 0x1

    :try_start_0
    const-string v0, "ok"

    .line 251
    invoke-static {p1, v0}, Lcom/sdkbox/plugin/PluginFacebook;->onInviteFriendsResult(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 253
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

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 248
    check-cast p1, Lcom/facebook/share/widget/AppInviteDialog$Result;

    invoke-virtual {p0, p1}, Lcom/sdkbox/plugin/PluginFacebook$4;->onSuccess(Lcom/facebook/share/widget/AppInviteDialog$Result;)V

    return-void
.end method
