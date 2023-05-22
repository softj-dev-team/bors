.class public final Lzendesk/support/SdkDependencyProvider_MembersInjector;
.super Ljava/lang/Object;
.source "SdkDependencyProvider_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lzendesk/support/SdkDependencyProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final actionHandlersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lzendesk/core/ActionHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private final registryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ActionHandlerRegistry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ActionHandlerRegistry;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lzendesk/core/ActionHandler;",
            ">;>;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lzendesk/support/SdkDependencyProvider_MembersInjector;->registryProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lzendesk/support/SdkDependencyProvider_MembersInjector;->actionHandlersProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ActionHandlerRegistry;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lzendesk/core/ActionHandler;",
            ">;>;)",
            "Ldagger/MembersInjector<",
            "Lzendesk/support/SdkDependencyProvider;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Lzendesk/support/SdkDependencyProvider_MembersInjector;

    invoke-direct {v0, p0, p1}, Lzendesk/support/SdkDependencyProvider_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectActionHandlers(Lzendesk/support/SdkDependencyProvider;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SdkDependencyProvider;",
            "Ljava/util/List<",
            "Lzendesk/core/ActionHandler;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lzendesk/support/SdkDependencyProvider;->actionHandlers:Ljava/util/List;

    return-void
.end method

.method public static injectRegistry(Lzendesk/support/SdkDependencyProvider;Lzendesk/core/ActionHandlerRegistry;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lzendesk/support/SdkDependencyProvider;->registry:Lzendesk/core/ActionHandlerRegistry;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lzendesk/support/SdkDependencyProvider;

    invoke-virtual {p0, p1}, Lzendesk/support/SdkDependencyProvider_MembersInjector;->injectMembers(Lzendesk/support/SdkDependencyProvider;)V

    return-void
.end method

.method public injectMembers(Lzendesk/support/SdkDependencyProvider;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lzendesk/support/SdkDependencyProvider_MembersInjector;->registryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/core/ActionHandlerRegistry;

    invoke-static {p1, v0}, Lzendesk/support/SdkDependencyProvider_MembersInjector;->injectRegistry(Lzendesk/support/SdkDependencyProvider;Lzendesk/core/ActionHandlerRegistry;)V

    .line 39
    iget-object v0, p0, Lzendesk/support/SdkDependencyProvider_MembersInjector;->actionHandlersProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p1, v0}, Lzendesk/support/SdkDependencyProvider_MembersInjector;->injectActionHandlers(Lzendesk/support/SdkDependencyProvider;Ljava/util/List;)V

    return-void
.end method
