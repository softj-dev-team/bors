.class Lzendesk/support/SupportSdkModule$1;
.super Ljava/lang/Object;
.source "SupportSdkModule.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/SupportSdkModule;->mainThreadExecutor()Ljava/util/concurrent/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field handler:Landroid/os/Handler;

.field final synthetic this$0:Lzendesk/support/SupportSdkModule;


# direct methods
.method constructor <init>(Lzendesk/support/SupportSdkModule;)V
    .locals 1

    .line 100
    iput-object p1, p0, Lzendesk/support/SupportSdkModule$1;->this$0:Lzendesk/support/SupportSdkModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lzendesk/support/SupportSdkModule$1;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lzendesk/support/SupportSdkModule$1;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
