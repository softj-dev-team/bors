.class public final Lzendesk/support/request/RequestModule_ProvidesAsyncMiddlewareFactory;
.super Ljava/lang/Object;
.source "RequestModule_ProvidesAsyncMiddlewareFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/RequestModule_ProvidesAsyncMiddlewareFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/support/request/AsyncMiddleware;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lzendesk/support/request/RequestModule_ProvidesAsyncMiddlewareFactory;
    .locals 1

    .line 24
    invoke-static {}, Lzendesk/support/request/RequestModule_ProvidesAsyncMiddlewareFactory$InstanceHolder;->access$000()Lzendesk/support/request/RequestModule_ProvidesAsyncMiddlewareFactory;

    move-result-object v0

    return-object v0
.end method

.method public static providesAsyncMiddleware()Lzendesk/support/request/AsyncMiddleware;
    .locals 1

    .line 28
    invoke-static {}, Lzendesk/support/request/RequestModule;->providesAsyncMiddleware()Lzendesk/support/request/AsyncMiddleware;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/request/AsyncMiddleware;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lzendesk/support/request/RequestModule_ProvidesAsyncMiddlewareFactory;->get()Lzendesk/support/request/AsyncMiddleware;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/request/AsyncMiddleware;
    .locals 1

    .line 20
    invoke-static {}, Lzendesk/support/request/RequestModule_ProvidesAsyncMiddlewareFactory;->providesAsyncMiddleware()Lzendesk/support/request/AsyncMiddleware;

    move-result-object v0

    return-object v0
.end method
