.class public abstract Lcom/sdkbox/plugin/Security$VerificationListener;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdkbox/plugin/Security;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VerificationListener"
.end annotation


# instance fields
.field _purchase:Lcom/android/billingclient/api/Purchase;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/Purchase;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sdkbox/plugin/Security$VerificationListener;->_purchase:Lcom/android/billingclient/api/Purchase;

    return-void
.end method


# virtual methods
.method notifyFail(Ljava/lang/String;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/sdkbox/plugin/Security$VerificationListener;->_purchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p0, v0, p1}, Lcom/sdkbox/plugin/Security$VerificationListener;->onSignatureVerificationFailed(Lcom/android/billingclient/api/Purchase;Ljava/lang/String;)V

    return-void
.end method

.method notifySuccess()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/sdkbox/plugin/Security$VerificationListener;->_purchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p0, v0}, Lcom/sdkbox/plugin/Security$VerificationListener;->onSignatureVerificationSuccess(Lcom/android/billingclient/api/Purchase;)V

    return-void
.end method

.method public abstract onSignatureVerificationFailed(Lcom/android/billingclient/api/Purchase;Ljava/lang/String;)V
.end method

.method public abstract onSignatureVerificationSuccess(Lcom/android/billingclient/api/Purchase;)V
.end method
