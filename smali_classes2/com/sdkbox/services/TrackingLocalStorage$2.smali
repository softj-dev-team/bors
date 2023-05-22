.class Lcom/sdkbox/services/TrackingLocalStorage$2;
.super Ljava/lang/Object;
.source "TrackingLocalStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/services/TrackingLocalStorage;->removeFront()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/services/TrackingLocalStorage;


# direct methods
.method constructor <init>(Lcom/sdkbox/services/TrackingLocalStorage;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/sdkbox/services/TrackingLocalStorage$2;->this$0:Lcom/sdkbox/services/TrackingLocalStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/sdkbox/services/TrackingLocalStorage$2;->this$0:Lcom/sdkbox/services/TrackingLocalStorage;

    invoke-static {v0}, Lcom/sdkbox/services/TrackingLocalStorage;->access$300(Lcom/sdkbox/services/TrackingLocalStorage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/sdkbox/services/TrackingLocalStorage$2;->this$0:Lcom/sdkbox/services/TrackingLocalStorage;

    invoke-static {v0}, Lcom/sdkbox/services/TrackingLocalStorage;->access$300(Lcom/sdkbox/services/TrackingLocalStorage;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method
