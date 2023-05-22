.class Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingAsyncTask$1;
.super Ljava/lang/Object;
.source "TrackingLocalStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingAsyncTask;


# direct methods
.method constructor <init>(Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingAsyncTask;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingAsyncTask$1;->this$1:Lcom/sdkbox/services/TrackingLocalStorage$PeriodicTrackingAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sdkbox/services/TrackingLocalStorage;->periodicTrackRequest(J)V

    return-void
.end method
