.class public Lio/branch/referral/ServerRequestGetCPID;
.super Lio/branch/referral/ServerRequest;
.source "ServerRequestGetCPID.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/referral/ServerRequestGetCPID$BranchCrossPlatformIdListener;
    }
.end annotation


# instance fields
.field private callback:Lio/branch/referral/ServerRequestGetCPID$BranchCrossPlatformIdListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/branch/referral/ServerRequestGetCPID$BranchCrossPlatformIdListener;)V
    .locals 1

    .line 17
    sget-object v0, Lio/branch/referral/Defines$RequestPath;->GetCPID:Lio/branch/referral/Defines$RequestPath;

    invoke-direct {p0, p1, v0}, Lio/branch/referral/ServerRequest;-><init>(Landroid/content/Context;Lio/branch/referral/Defines$RequestPath;)V

    .line 18
    iput-object p2, p0, Lio/branch/referral/ServerRequestGetCPID;->callback:Lio/branch/referral/ServerRequestGetCPID$BranchCrossPlatformIdListener;

    .line 19
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 21
    :try_start_0
    invoke-virtual {p0, p2}, Lio/branch/referral/ServerRequestGetCPID;->setPost(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 25
    :goto_0
    invoke-virtual {p0, p1, p2}, Lio/branch/referral/ServerRequestGetCPID;->updateEnvironment(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public clearCallbacks()V
    .locals 1

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lio/branch/referral/ServerRequestGetCPID;->callback:Lio/branch/referral/ServerRequestGetCPID$BranchCrossPlatformIdListener;

    return-void
.end method

.method public getBranchRemoteAPIVersion()Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;
    .locals 1

    .line 69
    sget-object v0, Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;->V1_CPID:Lio/branch/referral/ServerRequest$BRANCH_API_VERSION;

    return-object v0
.end method

.method public handleErrors(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public handleFailure(ILjava/lang/String;)V
    .locals 3

    .line 50
    iget-object p2, p0, Lio/branch/referral/ServerRequestGetCPID;->callback:Lio/branch/referral/ServerRequestGetCPID$BranchCrossPlatformIdListener;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 54
    new-instance v1, Lio/branch/referral/BranchError;

    const-string v2, "Failed to get the Cross Platform IDs"

    invoke-direct {v1, v2, p1}, Lio/branch/referral/BranchError;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, v0, v1}, Lio/branch/referral/ServerRequestGetCPID$BranchCrossPlatformIdListener;->onDataFetched(Lio/branch/referral/util/BranchCPID;Lio/branch/referral/BranchError;)V

    return-void
.end method

.method public isGetRequest()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRequestSucceeded(Lio/branch/referral/ServerResponse;Lio/branch/referral/Branch;)V
    .locals 3

    .line 35
    iget-object p2, p0, Lio/branch/referral/ServerRequestGetCPID;->callback:Lio/branch/referral/ServerRequestGetCPID$BranchCrossPlatformIdListener;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 40
    new-instance v1, Lio/branch/referral/util/BranchCPID;

    invoke-virtual {p1}, Lio/branch/referral/ServerResponse;->getObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v1, p1}, Lio/branch/referral/util/BranchCPID;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {p2, v1, v0}, Lio/branch/referral/ServerRequestGetCPID$BranchCrossPlatformIdListener;->onDataFetched(Lio/branch/referral/util/BranchCPID;Lio/branch/referral/BranchError;)V

    goto :goto_0

    .line 42
    :cond_1
    new-instance p1, Lio/branch/referral/BranchError;

    const/16 v1, -0x74

    const-string v2, "Failed to get the Cross Platform IDs"

    invoke-direct {p1, v2, v1}, Lio/branch/referral/BranchError;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, v0, p1}, Lio/branch/referral/ServerRequestGetCPID$BranchCrossPlatformIdListener;->onDataFetched(Lio/branch/referral/util/BranchCPID;Lio/branch/referral/BranchError;)V

    :goto_0
    return-void
.end method

.method protected shouldUpdateLimitFacebookTracking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
