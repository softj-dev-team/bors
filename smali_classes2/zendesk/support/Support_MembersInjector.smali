.class public final Lzendesk/support/Support_MembersInjector;
.super Ljava/lang/Object;
.source "Support_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lzendesk/support/Support;",
        ">;"
    }
.end annotation


# instance fields
.field private final actionHandlerRegistryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ActionHandlerRegistry;",
            ">;"
        }
    .end annotation
.end field

.field private final authenticationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/AuthenticationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final blipsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportBlipsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final providerStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/ProviderStore;",
            ">;"
        }
    .end annotation
.end field

.field private final requestMigratorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/RequestMigrator;",
            ">;"
        }
    .end annotation
.end field

.field private final requestProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/RequestProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final supportModuleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/ProviderStore;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportModule;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/RequestMigrator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportBlipsProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ActionHandlerRegistry;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/RequestProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/AuthenticationProvider;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lzendesk/support/Support_MembersInjector;->providerStoreProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p2, p0, Lzendesk/support/Support_MembersInjector;->supportModuleProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p3, p0, Lzendesk/support/Support_MembersInjector;->requestMigratorProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p4, p0, Lzendesk/support/Support_MembersInjector;->blipsProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p5, p0, Lzendesk/support/Support_MembersInjector;->actionHandlerRegistryProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p6, p0, Lzendesk/support/Support_MembersInjector;->requestProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p7, p0, Lzendesk/support/Support_MembersInjector;->authenticationProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/ProviderStore;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportModule;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/RequestMigrator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportBlipsProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ActionHandlerRegistry;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/RequestProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/AuthenticationProvider;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lzendesk/support/Support;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v8, Lzendesk/support/Support_MembersInjector;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lzendesk/support/Support_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static injectActionHandlerRegistry(Lzendesk/support/Support;Lzendesk/core/ActionHandlerRegistry;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lzendesk/support/Support;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    return-void
.end method

.method public static injectAuthenticationProvider(Lzendesk/support/Support;Lzendesk/core/AuthenticationProvider;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lzendesk/support/Support;->authenticationProvider:Lzendesk/core/AuthenticationProvider;

    return-void
.end method

.method public static injectBlipsProvider(Lzendesk/support/Support;Lzendesk/support/SupportBlipsProvider;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lzendesk/support/Support;->blipsProvider:Lzendesk/support/SupportBlipsProvider;

    return-void
.end method

.method public static injectProviderStore(Lzendesk/support/Support;Lzendesk/support/ProviderStore;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lzendesk/support/Support;->providerStore:Lzendesk/support/ProviderStore;

    return-void
.end method

.method public static injectRequestMigrator(Lzendesk/support/Support;Ljava/lang/Object;)V
    .locals 0

    .line 82
    check-cast p1, Lzendesk/support/RequestMigrator;

    iput-object p1, p0, Lzendesk/support/Support;->requestMigrator:Lzendesk/support/RequestMigrator;

    return-void
.end method

.method public static injectRequestProvider(Lzendesk/support/Support;Lzendesk/support/RequestProvider;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lzendesk/support/Support;->requestProvider:Lzendesk/support/RequestProvider;

    return-void
.end method

.method public static injectSupportModule(Lzendesk/support/Support;Lzendesk/support/SupportModule;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lzendesk/support/Support;->supportModule:Lzendesk/support/SupportModule;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lzendesk/support/Support;

    invoke-virtual {p0, p1}, Lzendesk/support/Support_MembersInjector;->injectMembers(Lzendesk/support/Support;)V

    return-void
.end method

.method public injectMembers(Lzendesk/support/Support;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lzendesk/support/Support_MembersInjector;->providerStoreProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/ProviderStore;

    invoke-static {p1, v0}, Lzendesk/support/Support_MembersInjector;->injectProviderStore(Lzendesk/support/Support;Lzendesk/support/ProviderStore;)V

    .line 62
    iget-object v0, p0, Lzendesk/support/Support_MembersInjector;->supportModuleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/SupportModule;

    invoke-static {p1, v0}, Lzendesk/support/Support_MembersInjector;->injectSupportModule(Lzendesk/support/Support;Lzendesk/support/SupportModule;)V

    .line 63
    iget-object v0, p0, Lzendesk/support/Support_MembersInjector;->requestMigratorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/Support_MembersInjector;->injectRequestMigrator(Lzendesk/support/Support;Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lzendesk/support/Support_MembersInjector;->blipsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/SupportBlipsProvider;

    invoke-static {p1, v0}, Lzendesk/support/Support_MembersInjector;->injectBlipsProvider(Lzendesk/support/Support;Lzendesk/support/SupportBlipsProvider;)V

    .line 65
    iget-object v0, p0, Lzendesk/support/Support_MembersInjector;->actionHandlerRegistryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/core/ActionHandlerRegistry;

    invoke-static {p1, v0}, Lzendesk/support/Support_MembersInjector;->injectActionHandlerRegistry(Lzendesk/support/Support;Lzendesk/core/ActionHandlerRegistry;)V

    .line 66
    iget-object v0, p0, Lzendesk/support/Support_MembersInjector;->requestProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/RequestProvider;

    invoke-static {p1, v0}, Lzendesk/support/Support_MembersInjector;->injectRequestProvider(Lzendesk/support/Support;Lzendesk/support/RequestProvider;)V

    .line 67
    iget-object v0, p0, Lzendesk/support/Support_MembersInjector;->authenticationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/core/AuthenticationProvider;

    invoke-static {p1, v0}, Lzendesk/support/Support_MembersInjector;->injectAuthenticationProvider(Lzendesk/support/Support;Lzendesk/core/AuthenticationProvider;)V

    return-void
.end method
