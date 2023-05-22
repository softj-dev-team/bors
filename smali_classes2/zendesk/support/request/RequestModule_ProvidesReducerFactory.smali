.class public final Lzendesk/support/request/RequestModule_ProvidesReducerFactory;
.super Ljava/lang/Object;
.source "RequestModule_ProvidesReducerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/RequestModule_ProvidesReducerFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/List<",
        "Lzendesk/support/suas/Reducer;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lzendesk/support/request/RequestModule_ProvidesReducerFactory;
    .locals 1

    .line 26
    invoke-static {}, Lzendesk/support/request/RequestModule_ProvidesReducerFactory$InstanceHolder;->access$000()Lzendesk/support/request/RequestModule_ProvidesReducerFactory;

    move-result-object v0

    return-object v0
.end method

.method public static providesReducer()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/support/suas/Reducer;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-static {}, Lzendesk/support/request/RequestModule;->providesReducer()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lzendesk/support/request/RequestModule_ProvidesReducerFactory;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/support/suas/Reducer;",
            ">;"
        }
    .end annotation

    .line 22
    invoke-static {}, Lzendesk/support/request/RequestModule_ProvidesReducerFactory;->providesReducer()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
