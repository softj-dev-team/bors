.class public final Lzendesk/core/ZendeskStorageModule_ProvideIdentityManagerFactory;
.super Ljava/lang/Object;
.source "ZendeskStorageModule_ProvideIdentityManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/core/IdentityManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final identityStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/IdentityStorage;",
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
            "Lzendesk/core/IdentityStorage;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lzendesk/core/ZendeskStorageModule_ProvideIdentityManagerFactory;->identityStorageProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskStorageModule_ProvideIdentityManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/IdentityStorage;",
            ">;)",
            "Lzendesk/core/ZendeskStorageModule_ProvideIdentityManagerFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lzendesk/core/ZendeskStorageModule_ProvideIdentityManagerFactory;

    invoke-direct {v0, p0}, Lzendesk/core/ZendeskStorageModule_ProvideIdentityManagerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideIdentityManager(Ljava/lang/Object;)Lzendesk/core/IdentityManager;
    .locals 0

    .line 37
    check-cast p0, Lzendesk/core/IdentityStorage;

    invoke-static {p0}, Lzendesk/core/ZendeskStorageModule;->provideIdentityManager(Lzendesk/core/IdentityStorage;)Lzendesk/core/IdentityManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/core/IdentityManager;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lzendesk/core/ZendeskStorageModule_ProvideIdentityManagerFactory;->get()Lzendesk/core/IdentityManager;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/IdentityManager;
    .locals 1

    .line 28
    iget-object v0, p0, Lzendesk/core/ZendeskStorageModule_ProvideIdentityManagerFactory;->identityStorageProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lzendesk/core/ZendeskStorageModule_ProvideIdentityManagerFactory;->provideIdentityManager(Ljava/lang/Object;)Lzendesk/core/IdentityManager;

    move-result-object v0

    return-object v0
.end method
