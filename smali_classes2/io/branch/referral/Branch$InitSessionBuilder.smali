.class public Lio/branch/referral/Branch$InitSessionBuilder;
.super Ljava/lang/Object;
.source "Branch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/Branch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitSessionBuilder"
.end annotation


# instance fields
.field private callback:Lio/branch/referral/Branch$BranchReferralInitListener;

.field private delay:I

.field private ignoreIntent:Ljava/lang/Boolean;

.field private isAutoInitialization:Z

.field private isReInitializing:Z

.field private uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 2870
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2871
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 2872
    invoke-virtual {v0}, Lio/branch/referral/Branch;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2873
    invoke-virtual {v0}, Lio/branch/referral/Branch;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2877
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lio/branch/referral/Branch;->currentActivityReference_:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Lio/branch/referral/Branch$1;)V
    .locals 0

    .line 2862
    invoke-direct {p0, p1}, Lio/branch/referral/Branch$InitSessionBuilder;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ignoreIntent(Z)Lio/branch/referral/Branch$InitSessionBuilder;
    .locals 0

    .line 2971
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lio/branch/referral/Branch$InitSessionBuilder;->ignoreIntent:Ljava/lang/Boolean;

    return-object p0
.end method

.method public init()V
    .locals 6

    .line 2980
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Branch is not setup properly, make sure to call getAutoInstance in your application class or declare BranchApp in your manifest."

    .line 2982
    invoke-static {v0}, Lio/branch/referral/PrefHelper;->LogAlways(Ljava/lang/String;)V

    return-void

    .line 2986
    :cond_0
    iget-object v1, p0, Lio/branch/referral/Branch$InitSessionBuilder;->ignoreIntent:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 2987
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lio/branch/referral/Branch;->bypassWaitingForIntent(Z)V

    .line 2990
    :cond_1
    invoke-virtual {v0}, Lio/branch/referral/Branch;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2991
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    .line 2993
    invoke-static {v1}, Landroidx/core/app/ActivityCompat;->getReferrer(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2994
    invoke-static {v1}, Lio/branch/referral/PrefHelper;->getInstance(Landroid/content/Context;)Lio/branch/referral/PrefHelper;

    move-result-object v4

    invoke-static {v1}, Landroidx/core/app/ActivityCompat;->getReferrer(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/branch/referral/PrefHelper;->setInitialReferrer(Ljava/lang/String;)V

    .line 2997
    :cond_3
    iget-object v4, p0, Lio/branch/referral/Branch$InitSessionBuilder;->uri:Landroid/net/Uri;

    if-eqz v4, :cond_4

    .line 2998
    invoke-static {v0, v4, v1}, Lio/branch/referral/Branch;->access$400(Lio/branch/referral/Branch;Landroid/net/Uri;Landroid/app/Activity;)V

    goto :goto_2

    .line 2999
    :cond_4
    iget-boolean v4, p0, Lio/branch/referral/Branch$InitSessionBuilder;->isReInitializing:Z

    if-eqz v4, :cond_6

    invoke-virtual {v0, v3}, Lio/branch/referral/Branch;->isRestartSessionRequested(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v3, :cond_5

    .line 3000
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    goto :goto_1

    :cond_5
    move-object v3, v2

    :goto_1
    invoke-static {v0, v3, v1}, Lio/branch/referral/Branch;->access$400(Lio/branch/referral/Branch;Landroid/net/Uri;Landroid/app/Activity;)V

    goto :goto_2

    .line 3001
    :cond_6
    iget-boolean v1, p0, Lio/branch/referral/Branch$InitSessionBuilder;->isReInitializing:Z

    if-eqz v1, :cond_8

    .line 3004
    iget-object v0, p0, Lio/branch/referral/Branch$InitSessionBuilder;->callback:Lio/branch/referral/Branch$BranchReferralInitListener;

    if-eqz v0, :cond_7

    new-instance v1, Lio/branch/referral/BranchError;

    const/16 v3, -0x77

    const-string v4, ""

    invoke-direct {v1, v4, v3}, Lio/branch/referral/BranchError;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v2, v1}, Lio/branch/referral/Branch$BranchReferralInitListener;->onInitFinished(Lorg/json/JSONObject;Lio/branch/referral/BranchError;)V

    :cond_7
    return-void

    .line 3009
    :cond_8
    :goto_2
    invoke-static {v0}, Lio/branch/referral/Branch;->access$500(Lio/branch/referral/Branch;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    .line 3011
    invoke-static {v0, v1}, Lio/branch/referral/Branch;->access$502(Lio/branch/referral/Branch;Z)Z

    .line 3014
    iget-object v1, p0, Lio/branch/referral/Branch$InitSessionBuilder;->callback:Lio/branch/referral/Branch$BranchReferralInitListener;

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lio/branch/referral/Branch;->getLatestReferringParams()Lorg/json/JSONObject;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Lio/branch/referral/Branch$BranchReferralInitListener;->onInitFinished(Lorg/json/JSONObject;Lio/branch/referral/BranchError;)V

    .line 3016
    :cond_9
    sget-object v1, Lio/branch/referral/Defines$Jsonkey;->InstantDeepLinkSession:Lio/branch/referral/Defines$Jsonkey;

    invoke-virtual {v1}, Lio/branch/referral/Defines$Jsonkey;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "true"

    invoke-virtual {v0, v1, v3}, Lio/branch/referral/Branch;->addExtraInstrumentationData(Ljava/lang/String;Ljava/lang/String;)V

    .line 3018
    invoke-virtual {v0}, Lio/branch/referral/Branch;->checkForAutoDeepLinkConfiguration()V

    .line 3021
    iput-object v2, p0, Lio/branch/referral/Branch$InitSessionBuilder;->callback:Lio/branch/referral/Branch$BranchReferralInitListener;

    .line 3024
    :cond_a
    iget v1, p0, Lio/branch/referral/Branch$InitSessionBuilder;->delay:I

    if-lez v1, :cond_b

    const/4 v1, 0x1

    .line 3025
    invoke-static {v1}, Lio/branch/referral/Branch;->expectDelayedSessionInitialization(Z)V

    .line 3028
    :cond_b
    iget-object v1, p0, Lio/branch/referral/Branch$InitSessionBuilder;->callback:Lio/branch/referral/Branch$BranchReferralInitListener;

    iget-boolean v2, p0, Lio/branch/referral/Branch$InitSessionBuilder;->isAutoInitialization:Z

    invoke-virtual {v0, v1, v2}, Lio/branch/referral/Branch;->getInstallOrOpenRequest(Lio/branch/referral/Branch$BranchReferralInitListener;Z)Lio/branch/referral/ServerRequestInitSession;

    move-result-object v1

    .line 3029
    iget v2, p0, Lio/branch/referral/Branch$InitSessionBuilder;->delay:I

    invoke-static {v0, v1, v2}, Lio/branch/referral/Branch;->access$600(Lio/branch/referral/Branch;Lio/branch/referral/ServerRequestInitSession;I)V

    return-void
.end method

.method isAutoInitialization(Z)Lio/branch/referral/Branch$InitSessionBuilder;
    .locals 0

    .line 2886
    iput-boolean p1, p0, Lio/branch/referral/Branch$InitSessionBuilder;->isAutoInitialization:Z

    return-object p0
.end method

.method public isReferrable(Z)Lio/branch/referral/Branch$InitSessionBuilder;
    .locals 0

    return-object p0
.end method

.method public reInit()V
    .locals 1

    const/4 v0, 0x1

    .line 3046
    iput-boolean v0, p0, Lio/branch/referral/Branch$InitSessionBuilder;->isReInitializing:Z

    .line 3047
    invoke-virtual {p0}, Lio/branch/referral/Branch$InitSessionBuilder;->init()V

    return-void
.end method

.method public withCallback(Lio/branch/referral/Branch$BranchReferralInitListener;)Lio/branch/referral/Branch$InitSessionBuilder;
    .locals 0

    .line 2930
    iput-object p1, p0, Lio/branch/referral/Branch$InitSessionBuilder;->callback:Lio/branch/referral/Branch$BranchReferralInitListener;

    return-object p0
.end method

.method public withCallback(Lio/branch/referral/Branch$BranchUniversalReferralInitListener;)Lio/branch/referral/Branch$InitSessionBuilder;
    .locals 1

    .line 2902
    new-instance v0, Lio/branch/referral/BranchUniversalReferralInitWrapper;

    invoke-direct {v0, p1}, Lio/branch/referral/BranchUniversalReferralInitWrapper;-><init>(Lio/branch/referral/Branch$BranchUniversalReferralInitListener;)V

    iput-object v0, p0, Lio/branch/referral/Branch$InitSessionBuilder;->callback:Lio/branch/referral/Branch$BranchReferralInitListener;

    return-object p0
.end method

.method public withData(Landroid/net/Uri;)Lio/branch/referral/Branch$InitSessionBuilder;
    .locals 0

    .line 2942
    iput-object p1, p0, Lio/branch/referral/Branch$InitSessionBuilder;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public withDelay(I)Lio/branch/referral/Branch$InitSessionBuilder;
    .locals 0

    .line 2914
    iput p1, p0, Lio/branch/referral/Branch$InitSessionBuilder;->delay:I

    return-object p0
.end method
