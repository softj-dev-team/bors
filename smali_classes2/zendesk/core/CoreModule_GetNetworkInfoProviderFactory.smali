.class public final Lzendesk/core/CoreModule_GetNetworkInfoProviderFactory;
.super Ljava/lang/Object;
.source "CoreModule_GetNetworkInfoProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/core/NetworkInfoProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/core/CoreModule;


# direct methods
.method public constructor <init>(Lzendesk/core/CoreModule;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lzendesk/core/CoreModule_GetNetworkInfoProviderFactory;->module:Lzendesk/core/CoreModule;

    return-void
.end method

.method public static create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetNetworkInfoProviderFactory;
    .locals 1

    .line 30
    new-instance v0, Lzendesk/core/CoreModule_GetNetworkInfoProviderFactory;

    invoke-direct {v0, p0}, Lzendesk/core/CoreModule_GetNetworkInfoProviderFactory;-><init>(Lzendesk/core/CoreModule;)V

    return-object v0
.end method

.method public static getNetworkInfoProvider(Lzendesk/core/CoreModule;)Lzendesk/core/NetworkInfoProvider;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lzendesk/core/CoreModule;->getNetworkInfoProvider()Lzendesk/core/NetworkInfoProvider;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/core/NetworkInfoProvider;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lzendesk/core/CoreModule_GetNetworkInfoProviderFactory;->get()Lzendesk/core/NetworkInfoProvider;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/NetworkInfoProvider;
    .locals 1

    .line 26
    iget-object v0, p0, Lzendesk/core/CoreModule_GetNetworkInfoProviderFactory;->module:Lzendesk/core/CoreModule;

    invoke-static {v0}, Lzendesk/core/CoreModule_GetNetworkInfoProviderFactory;->getNetworkInfoProvider(Lzendesk/core/CoreModule;)Lzendesk/core/NetworkInfoProvider;

    move-result-object v0

    return-object v0
.end method
