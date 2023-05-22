.class public final Lzendesk/support/requestlist/RequestListActivity_MembersInjector;
.super Ljava/lang/Object;
.source "RequestListActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lzendesk/support/requestlist/RequestListActivity;",
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

.field private final modelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/requestlist/RequestListModel;",
            ">;"
        }
    .end annotation
.end field

.field private final presenterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/requestlist/RequestListPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private final syncHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/requestlist/RequestListSyncHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final viewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/requestlist/RequestListView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/requestlist/RequestListPresenter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/requestlist/RequestListView;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/requestlist/RequestListModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ActionHandlerRegistry;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/requestlist/RequestListSyncHandler;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->presenterProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p2, p0, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->viewProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p3, p0, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->modelProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p4, p0, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->actionHandlerRegistryProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p5, p0, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->syncHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/requestlist/RequestListPresenter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/requestlist/RequestListView;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/requestlist/RequestListModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ActionHandlerRegistry;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/requestlist/RequestListSyncHandler;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lzendesk/support/requestlist/RequestListActivity;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v6, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static injectActionHandlerRegistry(Lzendesk/support/requestlist/RequestListActivity;Lzendesk/core/ActionHandlerRegistry;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lzendesk/support/requestlist/RequestListActivity;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    return-void
.end method

.method public static injectModel(Lzendesk/support/requestlist/RequestListActivity;Ljava/lang/Object;)V
    .locals 0

    .line 68
    check-cast p1, Lzendesk/support/requestlist/RequestListModel;

    iput-object p1, p0, Lzendesk/support/requestlist/RequestListActivity;->model:Lzendesk/support/requestlist/RequestListModel;

    return-void
.end method

.method public static injectPresenter(Lzendesk/support/requestlist/RequestListActivity;Ljava/lang/Object;)V
    .locals 0

    .line 58
    check-cast p1, Lzendesk/support/requestlist/RequestListPresenter;

    iput-object p1, p0, Lzendesk/support/requestlist/RequestListActivity;->presenter:Lzendesk/support/requestlist/RequestListPresenter;

    return-void
.end method

.method public static injectSyncHandler(Lzendesk/support/requestlist/RequestListActivity;Ljava/lang/Object;)V
    .locals 0

    .line 79
    check-cast p1, Lzendesk/support/requestlist/RequestListSyncHandler;

    iput-object p1, p0, Lzendesk/support/requestlist/RequestListActivity;->syncHandler:Lzendesk/support/requestlist/RequestListSyncHandler;

    return-void
.end method

.method public static injectView(Lzendesk/support/requestlist/RequestListActivity;Ljava/lang/Object;)V
    .locals 0

    .line 63
    check-cast p1, Lzendesk/support/requestlist/RequestListView;

    iput-object p1, p0, Lzendesk/support/requestlist/RequestListActivity;->view:Lzendesk/support/requestlist/RequestListView;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lzendesk/support/requestlist/RequestListActivity;

    invoke-virtual {p0, p1}, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->injectMembers(Lzendesk/support/requestlist/RequestListActivity;)V

    return-void
.end method

.method public injectMembers(Lzendesk/support/requestlist/RequestListActivity;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->presenterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->injectPresenter(Lzendesk/support/requestlist/RequestListActivity;Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->viewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->injectView(Lzendesk/support/requestlist/RequestListActivity;Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->modelProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->injectModel(Lzendesk/support/requestlist/RequestListActivity;Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->actionHandlerRegistryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/core/ActionHandlerRegistry;

    invoke-static {p1, v0}, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->injectActionHandlerRegistry(Lzendesk/support/requestlist/RequestListActivity;Lzendesk/core/ActionHandlerRegistry;)V

    .line 53
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->syncHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/requestlist/RequestListActivity_MembersInjector;->injectSyncHandler(Lzendesk/support/requestlist/RequestListActivity;Ljava/lang/Object;)V

    return-void
.end method
