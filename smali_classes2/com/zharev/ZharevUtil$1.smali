.class Lcom/zharev/ZharevUtil$1;
.super Ljava/lang/Object;
.source "ZharevUtil.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zharev/ZharevUtil;->Init(Lcom/sdkbox/plugin/SDKBoxActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zharev/ZharevUtil;


# direct methods
.method constructor <init>(Lcom/zharev/ZharevUtil;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/zharev/ZharevUtil$1;->this$0:Lcom/zharev/ZharevUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 133
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, "FirebaseMessagingService"

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    const-string v0, "Fetching FCM registration token failed"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 139
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sput-object p1, Lcom/zharev/ZharevUtil;->pushToken:Ljava/lang/String;

    .line 141
    invoke-static {}, Lcom/zharev/ZharevUtil;->access$000()Lcom/sdkbox/plugin/SDKBoxActivity;

    move-result-object p1

    new-instance v0, Lcom/zharev/ZharevUtil$1$1;

    invoke-direct {v0, p0}, Lcom/zharev/ZharevUtil$1$1;-><init>(Lcom/zharev/ZharevUtil$1;)V

    invoke-virtual {p1, v0}, Lcom/sdkbox/plugin/SDKBoxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 148
    sget-object p1, Lcom/zharev/ZharevUtil;->pushToken:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
