.class final Lcom/sdkbox/services/jni/RequestManager$1;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/services/jni/RequestManager;->callRemove(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ptr_nativeXHR:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 12
    iput-wide p1, p0, Lcom/sdkbox/services/jni/RequestManager$1;->val$ptr_nativeXHR:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/sdkbox/services/jni/RequestManager$1;->val$ptr_nativeXHR:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "XHRRemove"

    invoke-static {v1, v0}, Lcom/sdkbox/jnibridge/NativeBridge;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
