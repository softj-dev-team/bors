.class public final Lzendesk/support/SupportSdkModule_ProvidesRequestDiskLruCacheFactory;
.super Ljava/lang/Object;
.source "SupportSdkModule_ProvidesRequestDiskLruCacheFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/jakewharton/disklrucache/DiskLruCache;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/support/SupportSdkModule;

.field private final sessionStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/SessionStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzendesk/support/SupportSdkModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportSdkModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/SessionStorage;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lzendesk/support/SupportSdkModule_ProvidesRequestDiskLruCacheFactory;->module:Lzendesk/support/SupportSdkModule;

    .line 28
    iput-object p2, p0, Lzendesk/support/SupportSdkModule_ProvidesRequestDiskLruCacheFactory;->sessionStorageProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lzendesk/support/SupportSdkModule;Ljavax/inject/Provider;)Lzendesk/support/SupportSdkModule_ProvidesRequestDiskLruCacheFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportSdkModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/SessionStorage;",
            ">;)",
            "Lzendesk/support/SupportSdkModule_ProvidesRequestDiskLruCacheFactory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lzendesk/support/SupportSdkModule_ProvidesRequestDiskLruCacheFactory;

    invoke-direct {v0, p0, p1}, Lzendesk/support/SupportSdkModule_ProvidesRequestDiskLruCacheFactory;-><init>(Lzendesk/support/SupportSdkModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesRequestDiskLruCache(Lzendesk/support/SupportSdkModule;Lzendesk/core/SessionStorage;)Lcom/jakewharton/disklrucache/DiskLruCache;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lzendesk/support/SupportSdkModule;->providesRequestDiskLruCache(Lzendesk/core/SessionStorage;)Lcom/jakewharton/disklrucache/DiskLruCache;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jakewharton/disklrucache/DiskLruCache;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/jakewharton/disklrucache/DiskLruCache;
    .locals 2

    .line 33
    iget-object v0, p0, Lzendesk/support/SupportSdkModule_ProvidesRequestDiskLruCacheFactory;->module:Lzendesk/support/SupportSdkModule;

    iget-object v1, p0, Lzendesk/support/SupportSdkModule_ProvidesRequestDiskLruCacheFactory;->sessionStorageProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/core/SessionStorage;

    invoke-static {v0, v1}, Lzendesk/support/SupportSdkModule_ProvidesRequestDiskLruCacheFactory;->providesRequestDiskLruCache(Lzendesk/support/SupportSdkModule;Lzendesk/core/SessionStorage;)Lcom/jakewharton/disklrucache/DiskLruCache;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lzendesk/support/SupportSdkModule_ProvidesRequestDiskLruCacheFactory;->get()Lcom/jakewharton/disklrucache/DiskLruCache;

    move-result-object v0

    return-object v0
.end method
