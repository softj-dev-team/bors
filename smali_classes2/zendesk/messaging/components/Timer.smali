.class public Lzendesk/messaging/components/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/messaging/components/Timer$Factory;
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private isCompleted:Z

.field private isEnabled:Z

.field private final runnable:Ljava/lang/Runnable;

.field private final timeout:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;I)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lzendesk/messaging/components/Timer;->isEnabled:Z

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lzendesk/messaging/components/Timer;->isCompleted:Z

    .line 31
    iput-object p1, p0, Lzendesk/messaging/components/Timer;->handler:Landroid/os/Handler;

    .line 32
    new-instance p1, Lzendesk/messaging/components/Timer$1;

    invoke-direct {p1, p0, p2}, Lzendesk/messaging/components/Timer$1;-><init>(Lzendesk/messaging/components/Timer;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lzendesk/messaging/components/Timer;->runnable:Ljava/lang/Runnable;

    .line 39
    iput p3, p0, Lzendesk/messaging/components/Timer;->timeout:I

    return-void
.end method

.method static synthetic access$002(Lzendesk/messaging/components/Timer;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lzendesk/messaging/components/Timer;->isCompleted:Z

    return p1
.end method


# virtual methods
.method public disable()V
    .locals 2

    .line 59
    iget-object v0, p0, Lzendesk/messaging/components/Timer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lzendesk/messaging/components/Timer;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lzendesk/messaging/components/Timer;->isEnabled:Z

    return-void
.end method

.method public start()Z
    .locals 4

    .line 49
    iget-boolean v0, p0, Lzendesk/messaging/components/Timer;->isEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lzendesk/messaging/components/Timer;->isCompleted:Z

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lzendesk/messaging/components/Timer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lzendesk/messaging/components/Timer;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    iget-object v0, p0, Lzendesk/messaging/components/Timer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lzendesk/messaging/components/Timer;->runnable:Ljava/lang/Runnable;

    iget v2, p0, Lzendesk/messaging/components/Timer;->timeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
