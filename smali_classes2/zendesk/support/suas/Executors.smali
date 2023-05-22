.class Lzendesk/support/suas/Executors;
.super Ljava/lang/Object;
.source "Executors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/suas/Executors$AndroidExecutor;,
        Lzendesk/support/suas/Executors$DefaultCurrentThreadExecutor;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAndroidExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 17
    new-instance v0, Lzendesk/support/suas/Executors$AndroidExecutor;

    invoke-direct {v0}, Lzendesk/support/suas/Executors$AndroidExecutor;-><init>()V

    return-object v0
.end method

.method static getDefaultExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 13
    new-instance v0, Lzendesk/support/suas/Executors$DefaultCurrentThreadExecutor;

    invoke-direct {v0}, Lzendesk/support/suas/Executors$DefaultCurrentThreadExecutor;-><init>()V

    return-object v0
.end method
