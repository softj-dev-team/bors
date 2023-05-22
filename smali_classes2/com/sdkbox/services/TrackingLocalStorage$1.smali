.class Lcom/sdkbox/services/TrackingLocalStorage$1;
.super Ljava/lang/Object;
.source "TrackingLocalStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/services/TrackingLocalStorage;->add(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/services/TrackingLocalStorage;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sdkbox/services/TrackingLocalStorage;Ljava/lang/String;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/sdkbox/services/TrackingLocalStorage$1;->this$0:Lcom/sdkbox/services/TrackingLocalStorage;

    iput-object p2, p0, Lcom/sdkbox/services/TrackingLocalStorage$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 346
    iget-object v0, p0, Lcom/sdkbox/services/TrackingLocalStorage$1;->this$0:Lcom/sdkbox/services/TrackingLocalStorage;

    invoke-static {v0}, Lcom/sdkbox/services/TrackingLocalStorage;->access$300(Lcom/sdkbox/services/TrackingLocalStorage;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/sdkbox/services/TrackingLocalStorage$1;->this$0:Lcom/sdkbox/services/TrackingLocalStorage;

    invoke-static {v0}, Lcom/sdkbox/services/TrackingLocalStorage;->access$300(Lcom/sdkbox/services/TrackingLocalStorage;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 350
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sdkbox/services/TrackingLocalStorage$1;->this$0:Lcom/sdkbox/services/TrackingLocalStorage;

    invoke-static {v0}, Lcom/sdkbox/services/TrackingLocalStorage;->access$300(Lcom/sdkbox/services/TrackingLocalStorage;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/sdkbox/services/TrackingLocalStorage$TrackingDescriptor;

    iget-object v2, p0, Lcom/sdkbox/services/TrackingLocalStorage$1;->this$0:Lcom/sdkbox/services/TrackingLocalStorage;

    iget-object v3, p0, Lcom/sdkbox/services/TrackingLocalStorage$1;->val$url:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/sdkbox/services/TrackingLocalStorage$TrackingDescriptor;-><init>(Lcom/sdkbox/services/TrackingLocalStorage;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :catch_0
    iget-object v0, p0, Lcom/sdkbox/services/TrackingLocalStorage$1;->this$0:Lcom/sdkbox/services/TrackingLocalStorage;

    invoke-virtual {v0}, Lcom/sdkbox/services/TrackingLocalStorage;->sync()V

    return-void
.end method
