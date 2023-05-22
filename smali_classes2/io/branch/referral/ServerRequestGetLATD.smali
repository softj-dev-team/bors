.class public Lio/branch/referral/ServerRequestGetLATD;
.super Lio/branch/referral/ServerRequest;
.source "ServerRequestGetLATD.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/referral/ServerRequestGetLATD$BranchLastAttributedTouchDataListener;
    }
.end annotation


# static fields
.field protected static final defaultAttributionWindow:I = -0x1


# instance fields
.field private attributionWindow:I

.field private callback:Lio/branch/referral/ServerRequestGetLATD$BranchLastAttributedTouchDataListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/branch/referral/Defines$RequestPath;Lio/branch/referral/ServerRequestGetLATD$BranchLastAttributedTouchDataListener;)V
    .locals 1

    .line 16
    invoke-static {p1}, Lio/branch/referral/PrefHelper;->getInstance(Landroid/content/Context;)Lio/branch/referral/PrefHelper;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/referral/PrefHelper;->getLATDAttributionWindow()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/branch/referral/ServerRequestGetLATD;-><init>(Landroid/content/Context;Lio/branch/referral/Defines$RequestPath;Lio/branch/referral/ServerRequestGetLATD$BranchLastAttributedTouchDataListener;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lio/branch/referral/Defines$RequestPath;Lio/branch/referral/ServerRequestGetLATD$BranchLastAttributedTouchDataListener;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lio/branch/referral/ServerRequest;-><init>(Landroid/content/Context;Lio/branch/referral/Defines$RequestPath;)V

    .line 22
    iput-object p3, p0, Lio/branch/referral/ServerRequestGetLATD;->callback:Lio/branch/referral/ServerRequestGetLATD$BranchLastAttributedTouchDataListener;

    .line 23
    iput p4, p0, Lio/branch/referral/ServerRequestGetLATD;->attributionWindow:I

    .line 24
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 26
    :try_start_0
    invoke-virtual {p0, p2}, Lio/branch/referral/ServerRequestGetLATD;->setPost(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 28
    invoke-virtual {p3}, Lorg/json/JSONException;->printStackTrace()V

    .line 30
    :goto_0
    invoke-virtual {p0, p1, p2}, Lio/branch/referral/ServerRequestGetLATD;->updateEnvironment(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public clearCallbacks()V
    .locals 1

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lio/branch/referral/ServerRequestGetLATD;->callback:Lio/branch/referral/ServerRequestGetLATD$BranchLastAttributedTouchDataListener;

    return-void
.end method

.method protected getAttributionWindow()I
    .locals 1

    .line 34
    iget v0, p0, Lio/branch/referral/ServerRequestGetLATD;->attributionWindow:I

    return v0
.end method

.method public getBranchRemoteAPIVersion()Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;
    .locals 1

    .line 74
    sget-object v0, Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;->V1_LATD:Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;

    return-object v0
.end method

.method public handleErrors(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public handleFailure(ILjava/lang/String;)V
    .locals 3

    .line 57
    iget-object p2, p0, Lio/branch/referral/ServerRequestGetLATD;->callback:Lio/branch/referral/ServerRequestGetLATD$BranchLastAttributedTouchDataListener;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 58
    new-instance v1, Lio/branch/referral/BranchError;

    const-string v2, "Failed to get last attributed touch data"

    invoke-direct {v1, v2, p1}, Lio/branch/referral/BranchError;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, v0, v1}, Lio/branch/referral/ServerRequestGetLATD$BranchLastAttributedTouchDataListener;->onDataFetched(Lorg/json/JSONObject;Lio/branch/referral/BranchError;)V

    :cond_0
    return-void
.end method

.method public isGetRequest()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRequestSucceeded(Lio/branch/referral/ServerResponse;Lio/branch/referral/Branch;)V
    .locals 1

    .line 44
    iget-object p2, p0, Lio/branch/referral/ServerRequestGetLATD;->callback:Lio/branch/referral/ServerRequestGetLATD$BranchLastAttributedTouchDataListener;

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p1}, Lio/branch/referral/ServerResponse;->getObject()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lio/branch/referral/ServerRequestGetLATD$BranchLastAttributedTouchDataListener;->onDataFetched(Lorg/json/JSONObject;Lio/branch/referral/BranchError;)V

    goto :goto_0

    :cond_1
    const/16 p1, -0x74

    const-string p2, "Failed to get last attributed touch data"

    .line 51
    invoke-virtual {p0, p1, p2}, Lio/branch/referral/ServerRequestGetLATD;->handleFailure(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected shouldUpdateLimitFacebookTracking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
