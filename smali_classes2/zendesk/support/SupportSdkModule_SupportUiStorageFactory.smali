.class public final Lzendesk/support/SupportSdkModule_SupportUiStorageFactory;
.super Ljava/lang/Object;
.source "SupportSdkModule_SupportUiStorageFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/support/SupportUiStorage;",
        ">;"
    }
.end annotation


# instance fields
.field private final diskLruCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/jakewharton/disklrucache/DiskLruCache;",
            ">;"
        }
    .end annotation
.end field

.field private final gsonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lzendesk/support/SupportSdkModule;


# direct methods
.method public constructor <init>(Lzendesk/support/SupportSdkModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportSdkModule;",
            "Ljavax/inject/Provider<",
            "Lcom/jakewharton/disklrucache/DiskLruCache;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lzendesk/support/SupportSdkModule_SupportUiStorageFactory;->module:Lzendesk/support/SupportSdkModule;

    .line 30
    iput-object p2, p0, Lzendesk/support/SupportSdkModule_SupportUiStorageFactory;->diskLruCacheProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lzendesk/support/SupportSdkModule_SupportUiStorageFactory;->gsonProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lzendesk/support/SupportSdkModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/support/SupportSdkModule_SupportUiStorageFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportSdkModule;",
            "Ljavax/inject/Provider<",
            "Lcom/jakewharton/disklrucache/DiskLruCache;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;)",
            "Lzendesk/support/SupportSdkModule_SupportUiStorageFactory;"
        }
    .end annotation

    .line 41
    new-instance v0, Lzendesk/support/SupportSdkModule_SupportUiStorageFactory;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/support/SupportSdkModule_SupportUiStorageFactory;-><init>(Lzendesk/support/SupportSdkModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static supportUiStorage(Lzendesk/support/SupportSdkModule;Lcom/jakewharton/disklrucache/DiskLruCache;Lcom/google/gson/Gson;)Lzendesk/support/SupportUiStorage;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lzendesk/support/SupportSdkModule;->supportUiStorage(Lcom/jakewharton/disklrucache/DiskLruCache;Lcom/google/gson/Gson;)Lzendesk/support/SupportUiStorage;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/support/SupportUiStorage;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lzendesk/support/SupportSdkModule_SupportUiStorageFactory;->get()Lzendesk/support/SupportUiStorage;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/SupportUiStorage;
    .locals 3

    .line 36
    iget-object v0, p0, Lzendesk/support/SupportSdkModule_SupportUiStorageFactory;->module:Lzendesk/support/SupportSdkModule;

    iget-object v1, p0, Lzendesk/support/SupportSdkModule_SupportUiStorageFactory;->diskLruCacheProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jakewharton/disklrucache/DiskLruCache;

    iget-object v2, p0, Lzendesk/support/SupportSdkModule_SupportUiStorageFactory;->gsonProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/Gson;

    invoke-static {v0, v1, v2}, Lzendesk/support/SupportSdkModule_SupportUiStorageFactory;->supportUiStorage(Lzendesk/support/SupportSdkModule;Lcom/jakewharton/disklrucache/DiskLruCache;Lcom/google/gson/Gson;)Lzendesk/support/SupportUiStorage;

    move-result-object v0

    return-object v0
.end method
