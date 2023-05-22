.class public Lzendesk/support/requestlist/RequestListActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "RequestListActivity.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RequestListActivity"


# instance fields
.field actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field model:Lzendesk/support/requestlist/RequestListModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field presenter:Lzendesk/support/requestlist/RequestListPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field syncHandler:Lzendesk/support/requestlist/RequestListSyncHandler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field view:Lzendesk/support/requestlist/RequestListView;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static builder()Lzendesk/support/requestlist/RequestListConfiguration$Builder;
    .locals 1

    .line 34
    new-instance v0, Lzendesk/support/requestlist/RequestListConfiguration$Builder;

    invoke-direct {v0}, Lzendesk/support/requestlist/RequestListConfiguration$Builder;-><init>()V

    return-object v0
.end method

.method public static refresh(Landroid/content/Context;Lzendesk/core/ActionHandlerRegistry;)V
    .locals 1

    const-string v0, "request_list_refresh"

    .line 41
    invoke-interface {p1, v0}, Lzendesk/core/ActionHandlerRegistry;->handlerByAction(Ljava/lang/String;)Lzendesk/core/ActionHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 43
    invoke-interface {p1, v0, p0}, Lzendesk/core/ActionHandler;->handle(Ljava/util/Map;Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 64
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lzendesk/support/requestlist/RequestListActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lcom/zendesk/sdk/R$style;->ZendeskActivityDefaultTheme:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 67
    sget-object v0, Lzendesk/support/SdkDependencyProvider;->INSTANCE:Lzendesk/support/SdkDependencyProvider;

    invoke-virtual {v0}, Lzendesk/support/SdkDependencyProvider;->isInitialized()Z

    move-result v0

    const-string v1, "RequestListActivity"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "Zendesk is not initialized or no identity was set. Make sure Zendesk.INSTANCE.init(...), Zendesk.INSTANCE.setIdentity(...), Support.INSTANCE.init(...) was called "

    .line 68
    invoke-static {v1, v0, p1}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p0}, Lzendesk/support/requestlist/RequestListActivity;->finish()V

    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lzendesk/support/requestlist/RequestListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-class v4, Lzendesk/support/requestlist/RequestListConfiguration;

    invoke-static {v0, v4}, Lzendesk/configurations/ConfigurationUtil;->fromBundle(Landroid/os/Bundle;Ljava/lang/Class;)Lzendesk/configurations/Configuration;

    move-result-object v0

    check-cast v0, Lzendesk/support/requestlist/RequestListConfiguration;

    if-nez v0, :cond_1

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "No configuration found. Please use RequestListActivity.builder()"

    .line 78
    invoke-static {v1, v0, p1}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p0}, Lzendesk/support/requestlist/RequestListActivity;->finish()V

    return-void

    .line 83
    :cond_1
    sget-object v1, Lzendesk/support/SdkDependencyProvider;->INSTANCE:Lzendesk/support/SdkDependencyProvider;

    invoke-virtual {v1, p0, v0}, Lzendesk/support/SdkDependencyProvider;->provideRequestListComponent(Lzendesk/support/requestlist/RequestListActivity;Lzendesk/support/requestlist/RequestListConfiguration;)Lzendesk/support/requestlist/RequestListComponent;

    move-result-object v0

    .line 84
    invoke-interface {v0, p0}, Lzendesk/support/requestlist/RequestListComponent;->inject(Lzendesk/support/requestlist/RequestListActivity;)V

    .line 86
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListActivity;->view:Lzendesk/support/requestlist/RequestListView;

    invoke-virtual {p0, v0}, Lzendesk/support/requestlist/RequestListActivity;->setContentView(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListActivity;->presenter:Lzendesk/support/requestlist/RequestListPresenter;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListActivity;->view:Lzendesk/support/requestlist/RequestListView;

    invoke-virtual {v0, v2, p1}, Lzendesk/support/requestlist/RequestListPresenter;->onCreate(ZLzendesk/support/requestlist/RequestListView;)V

    .line 88
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListActivity;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    iget-object v0, p0, Lzendesk/support/requestlist/RequestListActivity;->syncHandler:Lzendesk/support/requestlist/RequestListSyncHandler;

    invoke-interface {p1, v0}, Lzendesk/core/ActionHandlerRegistry;->add(Lzendesk/core/ActionHandler;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 117
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 118
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListActivity;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Lzendesk/support/requestlist/RequestListActivity;->syncHandler:Lzendesk/support/requestlist/RequestListSyncHandler;

    invoke-interface {v0, v1}, Lzendesk/core/ActionHandlerRegistry;->remove(Lzendesk/core/ActionHandler;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListActivity;->presenter:Lzendesk/support/requestlist/RequestListPresenter;

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lzendesk/support/requestlist/RequestListActivity;->isChangingConfigurations()Z

    move-result v1

    invoke-virtual {v0, v1}, Lzendesk/support/requestlist/RequestListPresenter;->onDestroy(Z)V

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 105
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 106
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListActivity;->syncHandler:Lzendesk/support/requestlist/RequestListSyncHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzendesk/support/requestlist/RequestListSyncHandler;->setRunning(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 99
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 100
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListActivity;->syncHandler:Lzendesk/support/requestlist/RequestListSyncHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lzendesk/support/requestlist/RequestListSyncHandler;->setRunning(Z)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 93
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 94
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListActivity;->view:Lzendesk/support/requestlist/RequestListView;

    invoke-virtual {v0}, Lzendesk/support/requestlist/RequestListView;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 111
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 112
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListActivity;->view:Lzendesk/support/requestlist/RequestListView;

    invoke-virtual {v0}, Lzendesk/support/requestlist/RequestListView;->onStop()V

    return-void
.end method
