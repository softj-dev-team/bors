.class Lcom/sdkbox/services/TrackingLocalStorage$TrackingSyncWorker$1;
.super Lcom/sdkbox/services/HttpRequestListenerAdapter;
.source "TrackingLocalStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/services/TrackingLocalStorage$TrackingSyncWorker;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sdkbox/services/TrackingLocalStorage$TrackingSyncWorker;

.field final synthetic val$c:Lcom/sdkbox/services/TrackingLocalStorage$Condition;


# direct methods
.method constructor <init>(Lcom/sdkbox/services/TrackingLocalStorage$TrackingSyncWorker;Lcom/sdkbox/services/TrackingLocalStorage$Condition;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/sdkbox/services/TrackingLocalStorage$TrackingSyncWorker$1;->this$1:Lcom/sdkbox/services/TrackingLocalStorage$TrackingSyncWorker;

    iput-object p2, p0, Lcom/sdkbox/services/TrackingLocalStorage$TrackingSyncWorker$1;->val$c:Lcom/sdkbox/services/TrackingLocalStorage$Condition;

    invoke-direct {p0}, Lcom/sdkbox/services/HttpRequestListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbort(Lcom/sdkbox/services/HttpRequest;)V
    .locals 0

    .line 157
    iget-object p1, p0, Lcom/sdkbox/services/TrackingLocalStorage$TrackingSyncWorker$1;->val$c:Lcom/sdkbox/services/TrackingLocalStorage$Condition;

    invoke-virtual {p1}, Lcom/sdkbox/services/TrackingLocalStorage$Condition;->setFalse()V

    return-void
.end method

.method public onError(Lcom/sdkbox/services/HttpRequest;Ljava/lang/String;)V
    .locals 0

    .line 176
    iget-object p1, p0, Lcom/sdkbox/services/TrackingLocalStorage$TrackingSyncWorker$1;->val$c:Lcom/sdkbox/services/TrackingLocalStorage$Condition;

    invoke-virtual {p1}, Lcom/sdkbox/services/TrackingLocalStorage$Condition;->setFalse()V

    return-void
.end method

.method public onLoad(Lcom/sdkbox/services/HttpRequest;)V
    .locals 2

    .line 162
    invoke-interface {p1}, Lcom/sdkbox/services/HttpRequest;->getResponseText()Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 165
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 166
    iget-object v0, p0, Lcom/sdkbox/services/TrackingLocalStorage$TrackingSyncWorker$1;->this$1:Lcom/sdkbox/services/TrackingLocalStorage$TrackingSyncWorker;

    invoke-virtual {v0, p1}, Lcom/sdkbox/services/TrackingLocalStorage$TrackingSyncWorker;->setTrackingStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrackRes error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SDKBOX_CORE"

    invoke-static {v1, p1, v0}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/sdkbox/services/TrackingLocalStorage$TrackingSyncWorker$1;->val$c:Lcom/sdkbox/services/TrackingLocalStorage$Condition;

    invoke-virtual {p1}, Lcom/sdkbox/services/TrackingLocalStorage$Condition;->setTrue()V

    return-void
.end method

.method public onTimeout(Lcom/sdkbox/services/HttpRequest;)V
    .locals 0

    .line 181
    iget-object p1, p0, Lcom/sdkbox/services/TrackingLocalStorage$TrackingSyncWorker$1;->val$c:Lcom/sdkbox/services/TrackingLocalStorage$Condition;

    invoke-virtual {p1}, Lcom/sdkbox/services/TrackingLocalStorage$Condition;->setFalse()V

    return-void
.end method
