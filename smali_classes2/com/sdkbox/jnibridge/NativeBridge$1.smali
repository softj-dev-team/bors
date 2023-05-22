.class final Lcom/sdkbox/jnibridge/NativeBridge$1;
.super Ljava/lang/Object;
.source "NativeBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/jnibridge/NativeBridge;->emit(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$event:Ljava/lang/String;

.field final synthetic val$params:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/sdkbox/jnibridge/NativeBridge$1;->val$event:Ljava/lang/String;

    iput-object p2, p0, Lcom/sdkbox/jnibridge/NativeBridge$1;->val$params:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 50
    invoke-static {}, Lcom/sdkbox/jnibridge/NativeBridge;->access$000()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/sdkbox/jnibridge/NativeBridge$1;->val$event:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "SDKBOX_CORE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 52
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 53
    array-length v4, v0

    if-nez v4, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    .line 54
    iget-object v3, p0, Lcom/sdkbox/jnibridge/NativeBridge$1;->val$event:Ljava/lang/String;

    aput-object v3, v0, v2

    const-string v2, "Emit native event: %s for 0 observers."

    invoke-static {v1, v2, v0}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 57
    :cond_0
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 58
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/sdkbox/jnibridge/NativeBridge$1;->val$event:Ljava/lang/String;

    iget-object v6, p0, Lcom/sdkbox/jnibridge/NativeBridge$1;->val$params:Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lcom/sdkbox/jnibridge/NativeBridge;->emitNative(JLjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-array v0, v3, [Ljava/lang/Object;

    .line 62
    iget-object v3, p0, Lcom/sdkbox/jnibridge/NativeBridge$1;->val$event:Ljava/lang/String;

    aput-object v3, v0, v2

    const-string v2, "Emit \'%s\' w/o registered observers."

    invoke-static {v1, v2, v0}, Lcom/sdkbox/plugin/SdkboxLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
