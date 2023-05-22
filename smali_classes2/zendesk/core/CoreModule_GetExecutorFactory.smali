.class public final Lzendesk/core/CoreModule_GetExecutorFactory;
.super Ljava/lang/Object;
.source "CoreModule_GetExecutorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/concurrent/Executor;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/core/CoreModule;


# direct methods
.method public constructor <init>(Lzendesk/core/CoreModule;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lzendesk/core/CoreModule_GetExecutorFactory;->module:Lzendesk/core/CoreModule;

    return-void
.end method

.method public static create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetExecutorFactory;
    .locals 1

    .line 31
    new-instance v0, Lzendesk/core/CoreModule_GetExecutorFactory;

    invoke-direct {v0, p0}, Lzendesk/core/CoreModule_GetExecutorFactory;-><init>(Lzendesk/core/CoreModule;)V

    return-object v0
.end method

.method public static getExecutor(Lzendesk/core/CoreModule;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lzendesk/core/CoreModule;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lzendesk/core/CoreModule_GetExecutorFactory;->get()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/concurrent/Executor;
    .locals 1

    .line 27
    iget-object v0, p0, Lzendesk/core/CoreModule_GetExecutorFactory;->module:Lzendesk/core/CoreModule;

    invoke-static {v0}, Lzendesk/core/CoreModule_GetExecutorFactory;->getExecutor(Lzendesk/core/CoreModule;)Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method
