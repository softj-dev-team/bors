.class Lio/branch/referral/ServerRequestRegisterOpen;
.super Lio/branch/referral/ServerRequestInitSession;
.source "ServerRequestRegisterOpen.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/branch/referral/Branch$BranchReferralInitListener;Z)V
    .locals 1

    .line 24
    sget-object v0, Lio/branch/referral/Defines$RequestPath;->RegisterOpen:Lio/branch/referral/Defines$RequestPath;

    invoke-direct {p0, p1, v0, p3}, Lio/branch/referral/ServerRequestInitSession;-><init>(Landroid/content/Context;Lio/branch/referral/Defines$RequestPath;Z)V

    .line 25
    iput-object p2, p0, Lio/branch/referral/ServerRequestRegisterOpen;->callback_:Lio/branch/referral/Branch$BranchReferralInitListener;

    .line 26
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 28
    :try_start_0
    sget-object p2, Lio/branch/referral/Defines$Jsonkey;->RandomizedDeviceToken:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p2}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lio/branch/referral/ServerRequestRegisterOpen;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {p3}, Lio/branch/referral/PrefHelper;->getRandomizedDeviceToken()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    sget-object p2, Lio/branch/referral/Defines$Jsonkey;->RandomizedBundleToken:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {p2}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lio/branch/referral/ServerRequestRegisterOpen;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {p3}, Lio/branch/referral/PrefHelper;->getRandomizedBundleToken()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    invoke-virtual {p0, p1}, Lio/branch/referral/ServerRequestRegisterOpen;->setPost(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lio/branch/referral/ServerRequestRegisterOpen;->constructError_:Z

    :goto_0
    return-void
.end method

.method constructor <init>(Lio/branch/referral/Defines$RequestPath;Lorg/json/JSONObject;Landroid/content/Context;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lio/branch/referral/ServerRequestInitSession;-><init>(Lio/branch/referral/Defines$RequestPath;Lorg/json/JSONObject;Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public clearCallbacks()V
    .locals 1

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lio/branch/referral/ServerRequestRegisterOpen;->callback_:Lio/branch/referral/Branch$BranchReferralInitListener;

    return-void
.end method

.method public getRequestActionName()Ljava/lang/String;
    .locals 1

    const-string v0, "open"

    return-object v0
.end method

.method public handleErrors(Landroid/content/Context;)Z
    .locals 4

    .line 101
    invoke-super {p0, p1}, Lio/branch/referral/ServerRequestInitSession;->doesAppHasInternetPermission(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 102
    iget-object p1, p0, Lio/branch/referral/ServerRequestRegisterOpen;->callback_:Lio/branch/referral/Branch$BranchReferralInitListener;

    if-eqz p1, :cond_0

    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/referral/Branch;->isIDLSession()Z

    move-result p1

    if-nez p1, :cond_0

    .line 103
    iget-object p1, p0, Lio/branch/referral/ServerRequestRegisterOpen;->callback_:Lio/branch/referral/Branch$BranchReferralInitListener;

    const/4 v0, 0x0

    new-instance v1, Lio/branch/referral/BranchError;

    const/16 v2, -0x66

    const-string v3, "Trouble initializing Branch."

    invoke-direct {v1, v3, v2}, Lio/branch/referral/BranchError;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v0, v1}, Lio/branch/referral/Branch$BranchReferralInitListener;->onInitFinished(Lorg/json/JSONObject;Lio/branch/referral/BranchError;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public handleFailure(ILjava/lang/String;)V
    .locals 5

    .line 88
    iget-object v0, p0, Lio/branch/referral/ServerRequestRegisterOpen;->callback_:Lio/branch/referral/Branch$BranchReferralInitListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/referral/Branch;->isIDLSession()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "error_message"

    const-string v2, "Trouble reaching server. Please try again in a few minutes"

    .line 91
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 93
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 95
    :goto_0
    iget-object v1, p0, Lio/branch/referral/ServerRequestRegisterOpen;->callback_:Lio/branch/referral/Branch$BranchReferralInitListener;

    new-instance v2, Lio/branch/referral/BranchError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trouble initializing Branch. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2, p1}, Lio/branch/referral/BranchError;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v0, v2}, Lio/branch/referral/Branch$BranchReferralInitListener;->onInitFinished(Lorg/json/JSONObject;Lio/branch/referral/BranchError;)V

    :cond_0
    return-void
.end method

.method public isGetRequest()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPreExecute()V
    .locals 3

    .line 44
    invoke-super {p0}, Lio/branch/referral/ServerRequestInitSession;->onPreExecute()V

    .line 48
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/referral/Branch;->isInstantDeepLinkPossible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lio/branch/referral/ServerRequestRegisterOpen;->callback_:Lio/branch/referral/Branch$BranchReferralInitListener;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lio/branch/referral/ServerRequestRegisterOpen;->callback_:Lio/branch/referral/Branch$BranchReferralInitListener;

    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/referral/Branch;->getLatestReferringParams()Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lio/branch/referral/Branch$BranchReferralInitListener;->onInitFinished(Lorg/json/JSONObject;Lio/branch/referral/BranchError;)V

    .line 52
    :cond_0
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object v0

    sget-object v1, Lio/branch/referral/Defines$Jsonkey;->InstantDeepLinkSession:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lio/branch/referral/Branch;->addExtraInstrumentationData(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/branch/referral/Branch;->setInstantDeepLinkPossible(Z)V

    :cond_1
    return-void
.end method

.method public onRequestSucceeded(Lio/branch/referral/ServerResponse;Lio/branch/referral/Branch;)V
    .locals 4

    .line 59
    invoke-super {p0, p1, p2}, Lio/branch/referral/ServerRequestInitSession;->onRequestSucceeded(Lio/branch/referral/ServerResponse;Lio/branch/referral/Branch;)V

    .line 61
    :try_start_0
    invoke-virtual {p1}, Lio/branch/referral/ServerResponse;->getObject()Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lio/branch/referral/Defines$Jsonkey;->LinkClickID:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "bnc_no_value"

    if-eqz v0, :cond_0

    .line 62
    :try_start_1
    iget-object v0, p0, Lio/branch/referral/ServerRequestRegisterOpen;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {p1}, Lio/branch/referral/ServerResponse;->getObject()Lorg/json/JSONObject;

    move-result-object v2

    sget-object v3, Lio/branch/referral/Defines$Jsonkey;->LinkClickID:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v3}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/branch/referral/PrefHelper;->setLinkClickID(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lio/branch/referral/ServerRequestRegisterOpen;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v0, v1}, Lio/branch/referral/PrefHelper;->setLinkClickID(Ljava/lang/String;)V

    .line 67
    :goto_0
    invoke-virtual {p1}, Lio/branch/referral/ServerResponse;->getObject()Lorg/json/JSONObject;

    move-result-object v0

    sget-object v2, Lio/branch/referral/Defines$Jsonkey;->Data:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v2}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p1}, Lio/branch/referral/ServerResponse;->getObject()Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lio/branch/referral/Defines$Jsonkey;->Data:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lio/branch/referral/ServerRequestRegisterOpen;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v1, v0}, Lio/branch/referral/PrefHelper;->setSessionParams(Ljava/lang/String;)V

    goto :goto_1

    .line 71
    :cond_1
    iget-object v0, p0, Lio/branch/referral/ServerRequestRegisterOpen;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-virtual {v0, v1}, Lio/branch/referral/PrefHelper;->setSessionParams(Ljava/lang/String;)V

    .line 74
    :goto_1
    iget-object v0, p0, Lio/branch/referral/ServerRequestRegisterOpen;->callback_:Lio/branch/referral/Branch$BranchReferralInitListener;

    if-eqz v0, :cond_2

    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/referral/Branch;->isIDLSession()Z

    move-result v0

    if-nez v0, :cond_2

    .line 75
    iget-object v0, p0, Lio/branch/referral/ServerRequestRegisterOpen;->callback_:Lio/branch/referral/Branch$BranchReferralInitListener;

    invoke-virtual {p2}, Lio/branch/referral/Branch;->getLatestReferringParams()Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lio/branch/referral/Branch$BranchReferralInitListener;->onInitFinished(Lorg/json/JSONObject;Lio/branch/referral/BranchError;)V

    .line 78
    :cond_2
    iget-object v0, p0, Lio/branch/referral/ServerRequestRegisterOpen;->prefHelper_:Lio/branch/referral/PrefHelper;

    invoke-static {}, Lio/branch/referral/DeviceInfo;->getInstance()Lio/branch/referral/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/referral/DeviceInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/branch/referral/PrefHelper;->setAppVersion(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    :goto_2
    invoke-virtual {p0, p1, p2}, Lio/branch/referral/ServerRequestRegisterOpen;->onInitSessionCompleted(Lio/branch/referral/ServerResponse;Lio/branch/referral/Branch;)V

    return-void
.end method

.method public shouldRetryOnFail()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
