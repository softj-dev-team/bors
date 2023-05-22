.class public Lcom/coloros/ocs/base/common/ConnectionResult;
.super Ljava/lang/Object;


# instance fields
.field private mErrorCode:I

.field private mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/coloros/ocs/base/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method protected constructor <init>(ILandroid/app/PendingIntent;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/coloros/ocs/base/common/ConnectionResult;->mErrorCode:I

    .line 27
    iput-object p2, p0, Lcom/coloros/ocs/base/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/coloros/ocs/base/common/ConnectionResult;->mErrorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 35
    iget v0, p0, Lcom/coloros/ocs/base/common/ConnectionResult;->mErrorCode:I

    invoke-static {v0}, Lcom/coloros/ocs/base/common/constant/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getResolution()Landroid/app/PendingIntent;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/coloros/ocs/base/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method protected hasResolution()Z
    .locals 1

    .line 43
    iget v0, p0, Lcom/coloros/ocs/base/common/ConnectionResult;->mErrorCode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/ocs/base/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected startResolutionForResult(Landroid/app/Activity;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/coloros/ocs/base/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 52
    invoke-static {p0}, Lcom/coloros/ocs/base/a/e;->a(Ljava/lang/Object;)Lcom/coloros/ocs/base/a/e$a;

    move-result-object v0

    iget v1, p0, Lcom/coloros/ocs/base/common/ConnectionResult;->mErrorCode:I

    invoke-static {v1}, Lcom/coloros/ocs/base/common/constant/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "statusCode"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/ocs/base/a/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/coloros/ocs/base/a/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/ocs/base/a/e$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
