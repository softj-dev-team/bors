.class Lcom/sdkbox/plugin/firebase/Analytics/Analytics$5;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->setScreenName(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/plugin/firebase/Analytics/Analytics;

.field final synthetic val$screen:Ljava/lang/String;

.field final synthetic val$screenClass:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/firebase/Analytics/Analytics;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$5;->this$0:Lcom/sdkbox/plugin/firebase/Analytics/Analytics;

    iput-object p2, p0, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$5;->val$screen:Ljava/lang/String;

    iput-object p3, p0, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$5;->val$screenClass:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$5;->this$0:Lcom/sdkbox/plugin/firebase/Analytics/Analytics;

    invoke-static {v0}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->access$000(Lcom/sdkbox/plugin/firebase/Analytics/Analytics;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$5;->this$0:Lcom/sdkbox/plugin/firebase/Analytics/Analytics;

    invoke-virtual {v1}, Lcom/sdkbox/plugin/firebase/Analytics/Analytics;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$5;->val$screen:Ljava/lang/String;

    iget-object v3, p0, Lcom/sdkbox/plugin/firebase/Analytics/Analytics$5;->val$screenClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
