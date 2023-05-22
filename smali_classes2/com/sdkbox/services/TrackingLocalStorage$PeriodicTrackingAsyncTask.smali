.class Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingAsyncTask;
.super Landroid/os/AsyncTask;
.source "TrackingLocalStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdkbox/services/TrackingLocalStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeriodicTrackingAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/services/TrackingLocalStorage;


# direct methods
.method private constructor <init>(Lcom/sdkbox/services/TrackingLocalStorage;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingAsyncTask;->this$0:Lcom/sdkbox/services/TrackingLocalStorage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sdkbox/services/TrackingLocalStorage;Lcom/sdkbox/services/TrackingLocalStorage$1;)V
    .locals 0

    .line 225
    invoke-direct {p0, p1}, Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingAsyncTask;-><init>(Lcom/sdkbox/services/TrackingLocalStorage;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 225
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 232
    new-instance p1, Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingAsyncTask$1;

    invoke-direct {p1, p0}, Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingAsyncTask$1;-><init>(Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingAsyncTask;)V

    invoke-static {p1}, Lcom/sdkbox/plugin/SDKBox;->runOnGLThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1
.end method
