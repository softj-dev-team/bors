.class public Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingTask;
.super Ljava/util/TimerTask;
.source "TrackingLocalStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdkbox/services/TrackingLocalStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PeriodicTrackingTask"
.end annotation


# instance fields
.field private _async_task:Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingAsyncTask;

.field final synthetic this$0:Lcom/sdkbox/services/TrackingLocalStorage;


# direct methods
.method private constructor <init>(Lcom/sdkbox/services/TrackingLocalStorage;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingTask;->this$0:Lcom/sdkbox/services/TrackingLocalStorage;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sdkbox/services/TrackingLocalStorage;Lcom/sdkbox/services/TrackingLocalStorage$1;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1}, Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingTask;-><init>(Lcom/sdkbox/services/TrackingLocalStorage;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingTask;)Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingAsyncTask;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingTask;->_async_task:Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingAsyncTask;

    return-object p0
.end method

.method static synthetic access$002(Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingTask;Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingAsyncTask;)Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingAsyncTask;
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingTask;->_async_task:Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingAsyncTask;

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 252
    new-instance v0, Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingTask$1;

    invoke-direct {v0, p0}, Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingTask$1;-><init>(Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingTask;)V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
