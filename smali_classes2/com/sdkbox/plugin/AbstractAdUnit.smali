.class public abstract Lcom/sdkbox/plugin/AbstractAdUnit;
.super Ljava/lang/Object;
.source "AbstractAdUnit.java"

# interfaces
.implements Lcom/sdkbox/reflect/AdUnit;


# static fields
.field public static final ADTYPE_BANNER:Ljava/lang/String; = "BANNER"

.field public static final ADTYPE_INTERSTITIAL:Ljava/lang/String; = "INTERSTITIAL"

.field public static final ADTYPE_REWARDED:Ljava/lang/String; = "REWARDED"

.field public static final ADTYPE_VIDEO:Ljava/lang/String; = "VIDEO"


# instance fields
.field protected _adunit_config:Lcom/sdkbox/plugin/JSON;

.field protected _availability_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sdkbox/reflect/AdUnitAvailabilityObserver;",
            ">;"
        }
    .end annotation
.end field

.field protected _context:Landroid/content/Context;

.field protected _observers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sdkbox/reflect/AdUnitObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdkbox/plugin/AbstractAdUnit;->_observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdkbox/plugin/AbstractAdUnit;->_availability_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/sdkbox/plugin/AbstractAdUnit;->_adunit_config:Lcom/sdkbox/plugin/JSON;

    .line 23
    iput-object p1, p0, Lcom/sdkbox/plugin/AbstractAdUnit;->_context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public cache(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public configure(Lcom/sdkbox/plugin/JSON;)V
    .locals 1

    .line 28
    iput-object p1, p0, Lcom/sdkbox/plugin/AbstractAdUnit;->_adunit_config:Lcom/sdkbox/plugin/JSON;

    .line 29
    invoke-static {p0}, Lcom/sdkbox/plugin/SDKBox;->addListener(Lcom/sdkbox/plugin/PluginListener;)V

    .line 30
    invoke-virtual {p0}, Lcom/sdkbox/plugin/AbstractAdUnit;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sdkbox/plugin/AbstractAdUnit;->traceInit(Ljava/lang/String;Lcom/sdkbox/plugin/JSON;)V

    return-void
.end method

.method public hide(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected notifyAvailability(ZLjava/lang/String;)V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/sdkbox/plugin/AbstractAdUnit;->_availability_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sdkbox/reflect/AdUnitAvailabilityObserver;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sdkbox/reflect/AdUnitAvailabilityObserver;

    check-cast v0, [Lcom/sdkbox/reflect/AdUnitAvailabilityObserver;

    .line 62
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 63
    invoke-interface {v3, p0, p1, p2}, Lcom/sdkbox/reflect/AdUnitAvailabilityObserver;->onAdAvailable(Lcom/sdkbox/reflect/AdUnit;ZLjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyPlayAdResult(Ljava/lang/String;Lcom/sdkbox/reflect/AdActionType;Ljava/lang/Object;)V
    .locals 5

    .line 47
    iget-object v0, p0, Lcom/sdkbox/plugin/AbstractAdUnit;->_observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sdkbox/reflect/AdUnitObserver;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sdkbox/reflect/AdUnitObserver;

    check-cast v0, [Lcom/sdkbox/reflect/AdUnitObserver;

    .line 48
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 49
    invoke-virtual {p0}, Lcom/sdkbox/plugin/AbstractAdUnit;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p1, p2, p3}, Lcom/sdkbox/reflect/AdUnitObserver;->onPlayAdResult(Ljava/lang/String;Ljava/lang/String;Lcom/sdkbox/reflect/AdActionType;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyRewardResult(Ljava/lang/String;FZ)V
    .locals 5

    .line 54
    iget-object v0, p0, Lcom/sdkbox/plugin/AbstractAdUnit;->_observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sdkbox/reflect/AdUnitObserver;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sdkbox/reflect/AdUnitObserver;

    check-cast v0, [Lcom/sdkbox/reflect/AdUnitObserver;

    .line 55
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 56
    invoke-virtual {p0}, Lcom/sdkbox/plugin/AbstractAdUnit;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p1, p2, p3}, Lcom/sdkbox/reflect/AdUnitObserver;->onRewardResult(Ljava/lang/String;Ljava/lang/String;FZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public observe(Lcom/sdkbox/reflect/AdUnitObserver;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/sdkbox/plugin/AbstractAdUnit;->_observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public observeAvailability(Lcom/sdkbox/reflect/AdUnitAvailabilityObserver;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/sdkbox/plugin/AbstractAdUnit;->_availability_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public stopObserving(Lcom/sdkbox/reflect/AdUnitObserver;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/sdkbox/plugin/AbstractAdUnit;->_observers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public stopObservingAvailability(Lcom/sdkbox/reflect/AdUnitAvailabilityObserver;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/sdkbox/plugin/AbstractAdUnit;->_availability_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected traceInit(Ljava/lang/String;Lcom/sdkbox/plugin/JSON;)V
    .locals 0

    return-void
.end method
