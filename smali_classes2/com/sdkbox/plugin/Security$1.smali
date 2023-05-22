.class final Lcom/sdkbox/plugin/Security$1;
.super Ljava/lang/Object;
.source "Security.java"

# interfaces
.implements Lcom/sdkbox/services/HttpRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/Security;->remoteVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sdkbox/plugin/Security$VerificationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$base64PublicKey:Ljava/lang/String;

.field final synthetic val$receipt:Ljava/lang/String;

.field final synthetic val$signature:Ljava/lang/String;

.field final synthetic val$vl:Lcom/sdkbox/plugin/Security$VerificationListener;


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/Security$VerificationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/sdkbox/plugin/Security$1;->val$vl:Lcom/sdkbox/plugin/Security$VerificationListener;

    iput-object p2, p0, Lcom/sdkbox/plugin/Security$1;->val$base64PublicKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/sdkbox/plugin/Security$1;->val$receipt:Ljava/lang/String;

    iput-object p4, p0, Lcom/sdkbox/plugin/Security$1;->val$signature:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbort(Lcom/sdkbox/services/HttpRequest;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "IABUtil/Security"

    const-string v1, "Remote verification Abort"

    .line 120
    invoke-static {v0, v1, p1}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    iget-object p1, p0, Lcom/sdkbox/plugin/Security$1;->val$vl:Lcom/sdkbox/plugin/Security$VerificationListener;

    const-string v0, "User abort"

    invoke-virtual {p1, v0}, Lcom/sdkbox/plugin/Security$VerificationListener;->notifyFail(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Lcom/sdkbox/services/HttpRequest;Ljava/lang/String;)V
    .locals 2

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Remote verification Error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Switch to local."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "IABUtil/Security"

    invoke-static {v0, p1, p2}, Lcom/sdkbox/plugin/SdkboxLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object p1, p0, Lcom/sdkbox/plugin/Security$1;->val$base64PublicKey:Ljava/lang/String;

    iget-object p2, p0, Lcom/sdkbox/plugin/Security$1;->val$receipt:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdkbox/plugin/Security$1;->val$signature:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdkbox/plugin/Security$1;->val$vl:Lcom/sdkbox/plugin/Security$VerificationListener;

    invoke-static {p1, p2, v0, v1}, Lcom/sdkbox/plugin/Security;->localVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sdkbox/plugin/Security$VerificationListener;)Z

    return-void
.end method

.method public onLoad(Lcom/sdkbox/services/HttpRequest;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "IABUtil/Security"

    const-string v3, "Remote verification Loaded"

    .line 125
    invoke-static {v2, v3, v1}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-interface {p1}, Lcom/sdkbox/services/HttpRequest;->getResponseText()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ok"

    .line 127
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "reason"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "    verification Success"

    .line 128
    invoke-static {v2, v0, p1}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget-object p1, p0, Lcom/sdkbox/plugin/Security$1;->val$vl:Lcom/sdkbox/plugin/Security$VerificationListener;

    invoke-virtual {p1}, Lcom/sdkbox/plugin/Security$VerificationListener;->notifySuccess()V

    return-void

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "    verification fail. fallback to local verify"

    .line 132
    invoke-static {v2, v0, p1}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    iget-object p1, p0, Lcom/sdkbox/plugin/Security$1;->val$base64PublicKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdkbox/plugin/Security$1;->val$receipt:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdkbox/plugin/Security$1;->val$signature:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdkbox/plugin/Security$1;->val$vl:Lcom/sdkbox/plugin/Security$VerificationListener;

    invoke-static {p1, v0, v1, v2}, Lcom/sdkbox/plugin/Security;->localVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sdkbox/plugin/Security$VerificationListener;)Z

    return-void
.end method

.method public onProgress(Lcom/sdkbox/services/HttpRequest;F)V
    .locals 0

    return-void
.end method

.method public onReadyStateChange(Lcom/sdkbox/services/HttpRequest;Lcom/sdkbox/services/HttpRequestReadyState;)V
    .locals 0

    return-void
.end method

.method public onTimeout(Lcom/sdkbox/services/HttpRequest;)V
    .locals 3

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "IABUtil/Security"

    const-string v1, "Remote verification Timeout. Switch to local."

    .line 142
    invoke-static {v0, v1, p1}, Lcom/sdkbox/plugin/SdkboxLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    iget-object p1, p0, Lcom/sdkbox/plugin/Security$1;->val$base64PublicKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdkbox/plugin/Security$1;->val$receipt:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdkbox/plugin/Security$1;->val$signature:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdkbox/plugin/Security$1;->val$vl:Lcom/sdkbox/plugin/Security$VerificationListener;

    invoke-static {p1, v0, v1, v2}, Lcom/sdkbox/plugin/Security;->localVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sdkbox/plugin/Security$VerificationListener;)Z

    return-void
.end method
