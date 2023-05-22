.class public final Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory;
.super Ljava/lang/Object;
.source "ZendeskStorageModule_ProvideMemoryCacheFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/core/MemoryCache;",
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

.method public static create()Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory;
    .locals 1

    .line 24
    invoke-static {}, Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory$InstanceHolder;->access$000()Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideMemoryCache()Lzendesk/core/MemoryCache;
    .locals 1

    .line 28
    invoke-static {}, Lzendesk/core/ZendeskStorageModule;->provideMemoryCache()Lzendesk/core/MemoryCache;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/core/MemoryCache;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory;->get()Lzendesk/core/MemoryCache;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/MemoryCache;
    .locals 1

    .line 20
    invoke-static {}, Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory;->provideMemoryCache()Lzendesk/core/MemoryCache;

    move-result-object v0

    return-object v0
.end method
