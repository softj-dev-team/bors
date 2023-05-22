.class Lio/branch/referral/BranchActivityLifecycleObserver;
.super Ljava/lang/Object;
.source "BranchActivityLifecycleObserver.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private activitiesOnStack_:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private activityCnt_:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lio/branch/referral/BranchActivityLifecycleObserver;->activityCnt_:I

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/branch/referral/BranchActivityLifecycleObserver;->activitiesOnStack_:Ljava/util/Set;

    return-void
.end method

.method private maybeRefreshAdvertisingID(Landroid/content/Context;)V
    .locals 3

    .line 128
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-virtual {v0}, Lio/branch/referral/Branch;->getTrackingController()Lio/branch/referral/TrackingController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 132
    invoke-virtual {v0}, Lio/branch/referral/Branch;->getDeviceInfo()Lio/branch/referral/DeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lio/branch/referral/Branch;->getDeviceInfo()Lio/branch/referral/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/referral/DeviceInfo;->getSystemObserver()Lio/branch/referral/SystemObserver;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 133
    invoke-virtual {v0}, Lio/branch/referral/Branch;->getPrefHelper()Lio/branch/referral/PrefHelper;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lio/branch/referral/Branch;->getPrefHelper()Lio/branch/referral/PrefHelper;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/referral/PrefHelper;->getSessionID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    return-void

    .line 136
    :cond_2
    invoke-virtual {v0}, Lio/branch/referral/Branch;->getDeviceInfo()Lio/branch/referral/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/referral/DeviceInfo;->getSystemObserver()Lio/branch/referral/SystemObserver;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/referral/SystemObserver;->getAIDInitializationSessionID()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual {v0}, Lio/branch/referral/Branch;->getPrefHelper()Lio/branch/referral/PrefHelper;

    move-result-object v2

    invoke-virtual {v2}, Lio/branch/referral/PrefHelper;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 139
    invoke-virtual {v0}, Lio/branch/referral/Branch;->isGAParamsFetchInProgress()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lio/branch/referral/Branch;->getTrackingController()Lio/branch/referral/TrackingController;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/referral/TrackingController;->isTrackingDisabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 140
    invoke-virtual {v0}, Lio/branch/referral/Branch;->getDeviceInfo()Lio/branch/referral/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/referral/DeviceInfo;->getSystemObserver()Lio/branch/referral/SystemObserver;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lio/branch/referral/SystemObserver;->prefetchAdsParams(Landroid/content/Context;Lio/branch/referral/SystemObserver$AdsParamsFetchEvents;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lio/branch/referral/Branch;->setGAParamsFetchInProgress(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method isCurrentActivityLaunchedFromStack()Z
    .locals 2

    .line 145
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {v0}, Lio/branch/referral/Branch;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    iget-object v1, p0, Lio/branch/referral/BranchActivityLifecycleObserver;->activitiesOnStack_:Ljava/util/Set;

    invoke-virtual {v0}, Lio/branch/referral/Branch;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityCreated, activity = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 32
    :cond_0
    sget-object v0, Lio/branch/referral/Branch$INTENT_STATE;->PENDING:Lio/branch/referral/Branch$INTENT_STATE;

    invoke-virtual {p2, v0}, Lio/branch/referral/Branch;->setIntentState(Lio/branch/referral/Branch$INTENT_STATE;)V

    .line 33
    invoke-static {}, Lio/branch/referral/BranchViewHandler;->getInstance()Lio/branch/referral/BranchViewHandler;

    move-result-object p2

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/branch/referral/BranchViewHandler;->isInstallOrOpenBranchViewPending(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 34
    invoke-static {}, Lio/branch/referral/BranchViewHandler;->getInstance()Lio/branch/referral/BranchViewHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/branch/referral/BranchViewHandler;->showPendingBranchView(Landroid/content/Context;)Z

    :cond_1
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityDestroyed, activity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-virtual {v0}, Lio/branch/referral/Branch;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 120
    iget-object v0, v0, Lio/branch/referral/Branch;->currentActivityReference_:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 122
    :cond_1
    invoke-static {}, Lio/branch/referral/BranchViewHandler;->getInstance()Lio/branch/referral/BranchViewHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/branch/referral/BranchViewHandler;->onCurrentActivityDestroyed(Landroid/app/Activity;)V

    .line 124
    iget-object v0, p0, Lio/branch/referral/BranchActivityLifecycleObserver;->activitiesOnStack_:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityPaused, activity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-virtual {p1}, Lio/branch/referral/Branch;->getShareLinkManager()Lio/branch/referral/ShareLinkManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p1}, Lio/branch/referral/Branch;->getShareLinkManager()Lio/branch/referral/ShareLinkManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lio/branch/referral/ShareLinkManager;->cancelShareLinkDialog(Z)V

    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResumed, activity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-static {}, Lio/branch/referral/Branch;->bypassCurrentActivityIntentState()Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    invoke-virtual {v0, p1}, Lio/branch/referral/Branch;->onIntentReady(Landroid/app/Activity;)V

    .line 68
    :cond_1
    invoke-virtual {v0}, Lio/branch/referral/Branch;->getInitState()Lio/branch/referral/Branch$SESSION_STATE;

    move-result-object v0

    sget-object v1, Lio/branch/referral/Branch$SESSION_STATE;->UNINITIALISED:Lio/branch/referral/Branch$SESSION_STATE;

    if-ne v0, v1, :cond_3

    sget-boolean v0, Lio/branch/referral/Branch;->disableAutoSessionInitialization:Z

    if-nez v0, :cond_3

    .line 69
    invoke-static {}, Lio/branch/referral/Branch;->getPluginName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "initializing session on user\'s behalf (onActivityResumed called but SESSION_STATE = UNINITIALISED)"

    .line 72
    invoke-static {v0}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    .line 73
    invoke-static {p1}, Lio/branch/referral/Branch;->sessionBuilder(Landroid/app/Activity;)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/branch/referral/Branch$InitSessionBuilder;->isAutoInitialization(Z)Lio/branch/referral/Branch$InitSessionBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/referral/Branch$InitSessionBuilder;->init()V

    goto :goto_0

    .line 75
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResumed called and SESSION_STATE = UNINITIALISED, however this is a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/branch/referral/Branch;->getPluginName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " plugin, so we are NOT initializing session on user\'s behalf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    .line 81
    :cond_3
    :goto_0
    iget-object v0, p0, Lio/branch/referral/BranchActivityLifecycleObserver;->activitiesOnStack_:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityStarted, activity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lio/branch/referral/Branch;->currentActivityReference_:Ljava/lang/ref/WeakReference;

    .line 50
    sget-object v1, Lio/branch/referral/Branch$INTENT_STATE;->PENDING:Lio/branch/referral/Branch$INTENT_STATE;

    invoke-virtual {v0, v1}, Lio/branch/referral/Branch;->setIntentState(Lio/branch/referral/Branch$INTENT_STATE;)V

    .line 51
    iget v0, p0, Lio/branch/referral/BranchActivityLifecycleObserver;->activityCnt_:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/branch/referral/BranchActivityLifecycleObserver;->activityCnt_:I

    .line 53
    invoke-direct {p0, p1}, Lio/branch/referral/BranchActivityLifecycleObserver;->maybeRefreshAdvertisingID(Landroid/content/Context;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityStopped, activity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lio/branch/referral/Branch;->getInstance()Lio/branch/referral/Branch;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 102
    :cond_0
    iget v0, p0, Lio/branch/referral/BranchActivityLifecycleObserver;->activityCnt_:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lio/branch/referral/BranchActivityLifecycleObserver;->activityCnt_:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p1, v0}, Lio/branch/referral/Branch;->setInstantDeepLinkPossible(Z)V

    .line 105
    invoke-virtual {p1}, Lio/branch/referral/Branch;->closeSessionInternal()V

    :cond_1
    return-void
.end method
