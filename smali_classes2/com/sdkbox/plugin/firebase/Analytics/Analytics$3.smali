.class Lcom/sdkbox/plugin/firebase/Analytics/Analytics$3;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->resetAnalyticsData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/plugin/firebase/Analytics/Analytics;


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/firebase/Analytics/Analytics;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$3;->this$0:Lcom/sdkbox/plugin/firebase/Analytics/Analytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$3;->this$0:Lcom/sdkbox/plugin/firebase/Analytics/Analytics;

    invoke-static {v0}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->access$000(Lcom/sdkbox/plugin/firebase/Analytics/Analytics;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->resetAnalyticsData()V

    return-void
.end method
