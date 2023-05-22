.class public Lcom/sdkbox/services/jni/RequestManager;
.super Ljava/lang/Object;
.source "RequestManager.java"


# static fields
.field static dispatcher:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 9
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sdkbox/services/jni/RequestManager;->dispatcher:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callRemove(J)V
    .locals 2

    .line 12
    sget-object v0, Lcom/sdkbox/services/jni/RequestManager;->dispatcher:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sdkbox/services/jni/RequestManager$1;

    invoke-direct {v1, p0, p1}, Lcom/sdkbox/services/jni/RequestManager$1;-><init>(J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
