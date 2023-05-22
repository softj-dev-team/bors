.class Lcom/sdkbox/plugin/firebase/Analytics/Analytics$6;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->logEvent(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/plugin/firebase/Analytics/Analytics;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$event:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/firebase/Analytics/Analytics;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$6;->this$0:Lcom/sdkbox/plugin/firebase/Analytics/Analytics;

    iput-object p2, p0, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$6;->val$event:Ljava/lang/String;

    iput-object p3, p0, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$6;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$6;->this$0:Lcom/sdkbox/plugin/firebase/Analytics/Analytics;

    invoke-static {v0}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->access$000(Lcom/sdkbox/plugin/firebase/Analytics/Analytics;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$6;->val$event:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$6;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
