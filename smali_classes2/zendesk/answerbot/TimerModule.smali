.class Lzendesk/answerbot/TimerModule;
.super Ljava/lang/Object;
.source "TimerModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideHandler()Landroid/os/Handler;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method timerFactory(Landroid/os/Handler;)Lzendesk/messaging/components/Timer$Factory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 17
    new-instance v0, Lzendesk/messaging/components/Timer$Factory;

    invoke-direct {v0, p1}, Lzendesk/messaging/components/Timer$Factory;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method
