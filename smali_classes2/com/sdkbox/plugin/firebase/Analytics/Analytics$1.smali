.class Lcom/sdkbox/plugin/firebase/Analytics/Analytics$1;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->setUserID(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/plugin/firebase/Analytics/Analytics;

.field final synthetic val$userID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/firebase/Analytics/Analytics;Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$1;->this$0:Lcom/sdkbox/plugin/firebase/Analytics/Analytics;

    iput-object p2, p0, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$1;->val$userID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$1;->this$0:Lcom/sdkbox/plugin/firebase/Analytics/Analytics;

    invoke-static {v0}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->access$000(Lcom/sdkbox/plugin/firebase/Analytics/Analytics;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$1;->val$userID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserId(Ljava/lang/String;)V

    return-void
.end method
