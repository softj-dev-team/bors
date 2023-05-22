.class public final Lzendesk/core/CoreModule_GetScheduledExecutorServiceFactory;
.super Ljava/lang/Object;
.source "CoreModule_GetScheduledExecutorServiceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/concurrent/ScheduledExecutorService;",
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
    iput-object p1, p0, Lzendesk/core/CoreModule_GetScheduledExecutorServiceFactory;->module:Lzendesk/core/CoreModule;

    return-void
.end method

.method public static create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetScheduledExecutorServiceFactory;
    .locals 1

    .line 31
    new-instance v0, Lzendesk/core/CoreModule_GetScheduledExecutorServiceFactory;

    invoke-direct {v0, p0}, Lzendesk/core/CoreModule_GetScheduledExecutorServiceFactory;-><init>(Lzendesk/core/CoreModule;)V

    return-object v0
.end method

.method public static getScheduledExecutorService(Lzendesk/core/CoreModule;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lzendesk/core/CoreModule;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lzendesk/core/CoreModule_GetScheduledExecutorServiceFactory;->get()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 27
    iget-object v0, p0, Lzendesk/core/CoreModule_GetScheduledExecutorServiceFactory;->module:Lzendesk/core/CoreModule;

    invoke-static {v0}, Lzendesk/core/CoreModule_GetScheduledExecutorServiceFactory;->getScheduledExecutorService(Lzendesk/core/CoreModule;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method
