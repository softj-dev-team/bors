.class public final Lzendesk/support/StorageModule_ProvideRequestSessionCacheFactory;
.super Ljava/lang/Object;
.source "StorageModule_ProvideRequestSessionCacheFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/support/RequestSessionCache;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/support/StorageModule;


# direct methods
.method public constructor <init>(Lzendesk/support/StorageModule;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lzendesk/support/StorageModule_ProvideRequestSessionCacheFactory;->module:Lzendesk/support/StorageModule;

    return-void
.end method

.method public static create(Lzendesk/support/StorageModule;)Lzendesk/support/StorageModule_ProvideRequestSessionCacheFactory;
    .locals 1

    .line 30
    new-instance v0, Lzendesk/support/StorageModule_ProvideRequestSessionCacheFactory;

    invoke-direct {v0, p0}, Lzendesk/support/StorageModule_ProvideRequestSessionCacheFactory;-><init>(Lzendesk/support/StorageModule;)V

    return-object v0
.end method

.method public static provideRequestSessionCache(Lzendesk/support/StorageModule;)Lzendesk/support/RequestSessionCache;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lzendesk/support/StorageModule;->provideRequestSessionCache()Lzendesk/support/RequestSessionCache;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/support/RequestSessionCache;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lzendesk/support/StorageModule_ProvideRequestSessionCacheFactory;->get()Lzendesk/support/RequestSessionCache;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/RequestSessionCache;
    .locals 1

    .line 26
    iget-object v0, p0, Lzendesk/support/StorageModule_ProvideRequestSessionCacheFactory;->module:Lzendesk/support/StorageModule;

    invoke-static {v0}, Lzendesk/support/StorageModule_ProvideRequestSessionCacheFactory;->provideRequestSessionCache(Lzendesk/support/StorageModule;)Lzendesk/support/RequestSessionCache;

    move-result-object v0

    return-object v0
.end method
