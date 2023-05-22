.class public final Lzendesk/core/ZendeskStorageModule_ProvideIdentityStorageFactory;
.super Ljava/lang/Object;
.source "ZendeskStorageModule_ProvideIdentityStorageFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/core/IdentityStorage;",
        ">;"
    }
.end annotation


# instance fields
.field private final baseStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/BaseStorage;",
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
            "Lzendesk/core/BaseStorage;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lzendesk/core/ZendeskStorageModule_ProvideIdentityStorageFactory;->baseStorageProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskStorageModule_ProvideIdentityStorageFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/BaseStorage;",
            ">;)",
            "Lzendesk/core/ZendeskStorageModule_ProvideIdentityStorageFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lzendesk/core/ZendeskStorageModule_ProvideIdentityStorageFactory;

    invoke-direct {v0, p0}, Lzendesk/core/ZendeskStorageModule_ProvideIdentityStorageFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideIdentityStorage(Lzendesk/core/BaseStorage;)Lzendesk/core/IdentityStorage;
    .locals 0

    .line 37
    invoke-static {p0}, Lzendesk/core/ZendeskStorageModule;->provideIdentityStorage(Lzendesk/core/BaseStorage;)Lzendesk/core/IdentityStorage;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/core/IdentityStorage;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lzendesk/core/ZendeskStorageModule_ProvideIdentityStorageFactory;->get()Lzendesk/core/IdentityStorage;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/IdentityStorage;
    .locals 1

    .line 28
    iget-object v0, p0, Lzendesk/core/ZendeskStorageModule_ProvideIdentityStorageFactory;->baseStorageProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/core/BaseStorage;

    invoke-static {v0}, Lzendesk/core/ZendeskStorageModule_ProvideIdentityStorageFactory;->provideIdentityStorage(Lzendesk/core/BaseStorage;)Lzendesk/core/IdentityStorage;

    move-result-object v0

    return-object v0
.end method
