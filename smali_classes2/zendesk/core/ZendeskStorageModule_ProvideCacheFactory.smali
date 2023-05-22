.class public final Lzendesk/core/ZendeskStorageModule_ProvideCacheFactory;
.super Ljava/lang/Object;
.source "ZendeskStorageModule_ProvideCacheFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lokhttp3/Cache;",
        ">;"
    }
.end annotation


# instance fields
.field private final fileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lzendesk/core/ZendeskStorageModule_ProvideCacheFactory;->fileProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskStorageModule_ProvideCacheFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/io/File;",
            ">;)",
            "Lzendesk/core/ZendeskStorageModule_ProvideCacheFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lzendesk/core/ZendeskStorageModule_ProvideCacheFactory;

    invoke-direct {v0, p0}, Lzendesk/core/ZendeskStorageModule_ProvideCacheFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideCache(Ljava/io/File;)Lokhttp3/Cache;
    .locals 0

    .line 37
    invoke-static {p0}, Lzendesk/core/ZendeskStorageModule;->provideCache(Ljava/io/File;)Lokhttp3/Cache;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/Cache;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lzendesk/core/ZendeskStorageModule_ProvideCacheFactory;->get()Lokhttp3/Cache;

    move-result-object v0

    return-object v0
.end method

.method public get()Lokhttp3/Cache;
    .locals 1

    .line 29
    iget-object v0, p0, Lzendesk/core/ZendeskStorageModule_ProvideCacheFactory;->fileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Lzendesk/core/ZendeskStorageModule_ProvideCacheFactory;->provideCache(Ljava/io/File;)Lokhttp3/Cache;

    move-result-object v0

    return-object v0
.end method
