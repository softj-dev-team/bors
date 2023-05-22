.class public Lcom/sdkbox/plugin/Security;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdkbox/plugin/Security$VerificationListener;
    }
.end annotation


# static fields
.field private static final KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"

.field private static final TAG:Ljava/lang/String; = "IABUtil/Security"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 4

    const-string v0, "IABUtil/Security"

    const/4 v1, 0x0

    .line 64
    :try_start_0
    invoke-static {p0}, Lcom/sdkbox/plugin/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    const-string v2, "RSA"

    .line 65
    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 66
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_0
    .catch Lcom/sdkbox/plugin/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Invalid key specification."

    .line 73
    invoke-static {v0, v2, v1}, Lcom/sdkbox/plugin/SdkboxLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 71
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Base64 decoding failed."

    .line 68
    invoke-static {v0, v2, v1}, Lcom/sdkbox/plugin/SdkboxLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected static localVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sdkbox/plugin/Security$VerificationListener;)Z
    .locals 4

    const-string v0, "Local Signature verification failed."

    const-string v1, "IABUtil/Security"

    .line 79
    invoke-static {p0}, Lcom/sdkbox/plugin/Security;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "SHA1withRSA"

    .line 82
    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    .line 83
    invoke-virtual {v3, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/security/Signature;->update([B)V

    .line 85
    invoke-static {p2}, Lcom/sdkbox/plugin/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    if-nez p0, :cond_0

    new-array p0, v2, [Ljava/lang/Object;

    .line 86
    invoke-static {v1, v0, p0}, Lcom/sdkbox/plugin/SdkboxLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p3, v0}, Lcom/sdkbox/plugin/Security$VerificationListener;->notifyFail(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p3}, Lcom/sdkbox/plugin/Security$VerificationListener;->notifySuccess()V
    :try_end_0
    .catch Lcom/sdkbox/plugin/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "Signature exception."

    .line 99
    invoke-static {v1, p1, p0}, Lcom/sdkbox/plugin/SdkboxLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "NoSuchAlgorithmException."

    .line 97
    invoke-static {v1, p1, p0}, Lcom/sdkbox/plugin/SdkboxLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "Invalid key specification."

    .line 95
    invoke-static {v1, p1, p0}, Lcom/sdkbox/plugin/SdkboxLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_3
    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "Base64 decoding failed."

    .line 93
    invoke-static {v1, p1, p0}, Lcom/sdkbox/plugin/SdkboxLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v2
.end method

.method protected static remoteVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sdkbox/plugin/Security$VerificationListener;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "IABUtil/Security"

    const-string v2, "Start remote signature verification."

    .line 105
    invoke-static {v1, v2, v0}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    new-instance v0, Lcom/sdkbox/services/XMLHttpRequest;

    invoke-direct {v0}, Lcom/sdkbox/services/XMLHttpRequest;-><init>()V

    .line 107
    invoke-virtual {v0}, Lcom/sdkbox/services/XMLHttpRequest;->setParamsAsBodyContents()V

    .line 108
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->getApplicationToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {v0, v2, v1}, Lcom/sdkbox/services/XMLHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "receipt"

    .line 109
    invoke-virtual {v0, v1, p1}, Lcom/sdkbox/services/XMLHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "signature"

    .line 110
    invoke-virtual {v0, v1, p2}, Lcom/sdkbox/services/XMLHttpRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2710

    .line 111
    invoke-virtual {v0, v1}, Lcom/sdkbox/services/XMLHttpRequest;->setTimeout(I)V

    .line 112
    new-instance v1, Lcom/sdkbox/plugin/Security$1;

    invoke-direct {v1, p3, p0, p1, p2}, Lcom/sdkbox/plugin/Security$1;-><init>(Lcom/sdkbox/plugin/Security$VerificationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sdkbox/services/XMLHttpRequest;->addEventListener(Lcom/sdkbox/services/HttpRequestListener;)V

    .line 146
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->getVerificationAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/AndroidValidator"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "POST"

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p0, p2}, Lcom/sdkbox/services/XMLHttpRequest;->send(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sdkbox/plugin/Security$VerificationListener;)V
    .locals 4

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->getApplicationToken()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Security"

    if-eqz v0, :cond_1

    const-string v3, ""

    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "IAP REMOTE verification."

    .line 54
    invoke-static {v2, v1, v0}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    invoke-static {p0, p1, p2, p3}, Lcom/sdkbox/plugin/Security;->remoteVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sdkbox/plugin/Security$VerificationListener;)V

    return-void

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "IAP local verification."

    .line 58
    invoke-static {v2, v1, v0}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    invoke-static {p0, p1, p2, p3}, Lcom/sdkbox/plugin/Security;->localVerify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sdkbox/plugin/Security$VerificationListener;)Z

    return-void

    :cond_2
    :goto_0
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "IABUtil/Security"

    const-string p2, "Purchase verification failed: missing data."

    .line 48
    invoke-static {p1, p2, p0}, Lcom/sdkbox/plugin/SdkboxLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p3, p2}, Lcom/sdkbox/plugin/Security$VerificationListener;->notifyFail(Ljava/lang/String;)V

    return-void
.end method
