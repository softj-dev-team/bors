.class public Lzendesk/support/request/RequestActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "RequestActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/RequestActivity$RefreshRequestActionHandler;,
        Lzendesk/support/request/RequestActivity$MoveUpWithSnackbarBehaviour;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "RequestActivity"

.field private static final SAVED_STATE:Ljava/lang/String; = "saved_state"


# instance fields
.field private accessibilityHerald:Lzendesk/support/request/RequestAccessibilityHerald;

.field actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field af:Lzendesk/support/request/ActionFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field headlessComponentListener:Lzendesk/support/request/HeadlessComponentListener;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field picasso:Lcom/squareup/picasso/Picasso;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private refreshActionHandler:Lzendesk/support/request/RequestActivity$RefreshRequestActionHandler;

.field private requestComponent:Lzendesk/support/request/RequestComponent;

.field private requestRouter:Lzendesk/support/request/ComponentRequestRouter;

.field store:Lzendesk/support/suas/Store;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private subscription:Lzendesk/support/suas/Subscription;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$001(Lzendesk/support/request/RequestActivity;)V
    .locals 0

    .line 46
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method private bindComponents(Z)Lzendesk/support/suas/Subscription;
    .locals 5

    .line 195
    invoke-direct {p0}, Lzendesk/support/request/RequestActivity;->bindToolbar()Lzendesk/support/request/ComponentToolbar;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lzendesk/support/request/RequestActivity;->store:Lzendesk/support/suas/Store;

    iget-object v2, p0, Lzendesk/support/request/RequestActivity;->af:Lzendesk/support/request/ActionFactory;

    invoke-static {p0, v1, v2}, Lzendesk/support/request/ComponentError;->create(Landroid/app/Activity;Lzendesk/support/suas/Dispatcher;Lzendesk/support/request/ActionFactory;)Lzendesk/support/request/ComponentError;

    move-result-object v1

    .line 197
    iget-object v2, p0, Lzendesk/support/request/RequestActivity;->requestComponent:Lzendesk/support/request/RequestComponent;

    invoke-static {p0, p1, v2}, Lzendesk/support/request/ComponentRequestRouter;->create(Landroidx/appcompat/app/AppCompatActivity;ZLzendesk/support/request/RequestComponent;)Lzendesk/support/request/ComponentRequestRouter;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/RequestActivity;->requestRouter:Lzendesk/support/request/ComponentRequestRouter;

    .line 198
    invoke-static {p0}, Lzendesk/support/request/RequestAccessibilityHerald;->create(Lzendesk/support/request/RequestActivity;)Lzendesk/support/request/RequestAccessibilityHerald;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/RequestActivity;->accessibilityHerald:Lzendesk/support/request/RequestAccessibilityHerald;

    .line 200
    iget-object p1, p0, Lzendesk/support/request/RequestActivity;->store:Lzendesk/support/suas/Store;

    invoke-virtual {v0}, Lzendesk/support/request/ComponentToolbar;->getToolbarSelector()Lzendesk/support/request/ComponentToolbar$ToolbarSelector;

    move-result-object v2

    invoke-interface {p1, v2, v0}, Lzendesk/support/suas/Store;->addListener(Lzendesk/support/suas/StateSelector;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;

    move-result-object p1

    .line 201
    iget-object v0, p0, Lzendesk/support/request/RequestActivity;->store:Lzendesk/support/suas/Store;

    iget-object v2, p0, Lzendesk/support/request/RequestActivity;->requestRouter:Lzendesk/support/request/ComponentRequestRouter;

    invoke-virtual {v2}, Lzendesk/support/request/ComponentRequestRouter;->getSelector()Lzendesk/support/suas/StateSelector;

    move-result-object v2

    iget-object v3, p0, Lzendesk/support/request/RequestActivity;->requestRouter:Lzendesk/support/request/ComponentRequestRouter;

    invoke-interface {v0, v2, v3}, Lzendesk/support/suas/Store;->addListener(Lzendesk/support/suas/StateSelector;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;

    move-result-object v0

    .line 202
    iget-object v2, p0, Lzendesk/support/request/RequestActivity;->store:Lzendesk/support/suas/Store;

    invoke-static {}, Lzendesk/support/request/ComponentError;->getSelector()Lzendesk/support/suas/StateSelector;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lzendesk/support/suas/Store;->addListener(Lzendesk/support/suas/StateSelector;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;

    move-result-object v1

    .line 203
    iget-object v2, p0, Lzendesk/support/request/RequestActivity;->store:Lzendesk/support/suas/Store;

    iget-object v3, p0, Lzendesk/support/request/RequestActivity;->accessibilityHerald:Lzendesk/support/request/RequestAccessibilityHerald;

    invoke-interface {v2, v3}, Lzendesk/support/suas/Store;->addActionListener(Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Lzendesk/support/suas/Subscription;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    const/4 p1, 0x2

    aput-object v1, v3, p1

    const/4 p1, 0x3

    aput-object v2, v3, p1

    .line 205
    invoke-static {v3}, Lzendesk/support/suas/CombinedSubscription;->from([Lzendesk/support/suas/Subscription;)Lzendesk/support/suas/Subscription;

    move-result-object p1

    return-object p1
.end method

.method private bindToolbar()Lzendesk/support/request/ComponentToolbar;
    .locals 4

    .line 269
    sget v0, Lcom/zendesk/sdk/R$id;->activity_request_toolbar:I

    invoke-virtual {p0, v0}, Lzendesk/support/request/RequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 270
    sget v1, Lcom/zendesk/sdk/R$id;->activity_request_progressbar:I

    invoke-virtual {p0, v1}, Lzendesk/support/request/RequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lzendesk/support/request/ViewAlmostRealProgressBar;

    .line 271
    invoke-virtual {p0, v0}, Lzendesk/support/request/RequestActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 272
    new-instance v2, Lzendesk/support/request/RequestActivity$3;

    invoke-direct {v2, p0}, Lzendesk/support/request/RequestActivity$3;-><init>(Lzendesk/support/request/RequestActivity;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    sget v2, Lcom/zendesk/sdk/R$id;->activity_request_compat_toolbar_shadow:I

    invoke-virtual {p0, v2}, Lzendesk/support/request/RequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    .line 280
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 282
    new-instance v2, Lzendesk/support/request/ComponentToolbar;

    iget-object v3, p0, Lzendesk/support/request/RequestActivity;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-direct {v2, v3, v0, v1}, Lzendesk/support/request/ComponentToolbar;-><init>(Lcom/squareup/picasso/Picasso;Landroidx/appcompat/widget/Toolbar;Lzendesk/support/request/ViewAlmostRealProgressBar;)V

    return-object v2
.end method

.method public static builder()Lzendesk/support/request/RequestConfiguration$Builder;
    .locals 1

    .line 54
    new-instance v0, Lzendesk/support/request/RequestConfiguration$Builder;

    invoke-direct {v0}, Lzendesk/support/request/RequestConfiguration$Builder;-><init>()V

    return-object v0
.end method

.method private initViews()V
    .locals 2

    .line 286
    sget v0, Lcom/zendesk/sdk/R$id;->activity_request_root:I

    invoke-virtual {p0, v0}, Lzendesk/support/request/RequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 288
    new-instance v1, Lzendesk/support/request/RequestActivity$MoveUpWithSnackbarBehaviour;

    invoke-direct {v1}, Lzendesk/support/request/RequestActivity$MoveUpWithSnackbarBehaviour;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    return-void
.end method

.method private initializeStoreAndDependencies(Landroid/os/Bundle;Lzendesk/support/request/RequestConfiguration;)Z
    .locals 0

    .line 209
    invoke-direct {p0, p2}, Lzendesk/support/request/RequestActivity;->injectDependencies(Lzendesk/support/request/RequestConfiguration;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 213
    invoke-direct {p0, p1}, Lzendesk/support/request/RequestActivity;->restoreState(Landroid/os/Bundle;)Lzendesk/support/suas/State;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 218
    iget-object p2, p0, Lzendesk/support/request/RequestActivity;->store:Lzendesk/support/suas/Store;

    invoke-interface {p2, p1}, Lzendesk/support/suas/Store;->reset(Lzendesk/support/suas/State;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private injectDependencies(Lzendesk/support/request/RequestConfiguration;)Z
    .locals 3

    .line 247
    invoke-virtual {p0}, Lzendesk/support/request/RequestActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lzendesk/support/request/HeadlessFragment;->getData(Landroidx/fragment/app/FragmentManager;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/request/RequestComponent;

    iput-object v0, p0, Lzendesk/support/request/RequestActivity;->requestComponent:Lzendesk/support/request/RequestComponent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 256
    sget-object v1, Lzendesk/support/SdkDependencyProvider;->INSTANCE:Lzendesk/support/SdkDependencyProvider;

    .line 257
    invoke-virtual {v1}, Lzendesk/support/SdkDependencyProvider;->provideSupportSdkComponent()Lzendesk/support/SupportSdkComponent;

    move-result-object v1

    new-instance v2, Lzendesk/support/request/RequestModule;

    invoke-direct {v2, p1}, Lzendesk/support/request/RequestModule;-><init>(Lzendesk/configurations/Configuration;)V

    .line 258
    invoke-interface {v1, v2}, Lzendesk/support/SupportSdkComponent;->plus(Lzendesk/support/request/RequestModule;)Lzendesk/support/request/RequestComponent;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/RequestActivity;->requestComponent:Lzendesk/support/request/RequestComponent;

    .line 260
    invoke-virtual {p0}, Lzendesk/support/request/RequestActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v1, p0, Lzendesk/support/request/RequestActivity;->requestComponent:Lzendesk/support/request/RequestComponent;

    invoke-static {p1, v1}, Lzendesk/support/request/HeadlessFragment;->install(Landroidx/fragment/app/FragmentManager;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 263
    :goto_0
    iget-object p1, p0, Lzendesk/support/request/RequestActivity;->requestComponent:Lzendesk/support/request/RequestComponent;

    invoke-interface {p1, p0}, Lzendesk/support/request/RequestComponent;->inject(Lzendesk/support/request/RequestActivity;)V

    return v0
.end method

.method private restoreState(Landroid/os/Bundle;)Lzendesk/support/suas/State;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "saved_state"

    .line 232
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lzendesk/support/suas/State;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 164
    iget-object v0, p0, Lzendesk/support/request/RequestActivity;->requestRouter:Lzendesk/support/request/ComponentRequestRouter;

    invoke-virtual {v0}, Lzendesk/support/request/ComponentRequestRouter;->getCurrentScreen()Lzendesk/support/request/RequestView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v0}, Lzendesk/support/request/RequestView;->hasUnsavedInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/zendesk/sdk/R$string;->request_dialog_title_unsaved_changes:I

    .line 167
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/zendesk/sdk/R$string;->request_dialog_body_unsaved_changes:I

    .line 168
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/zendesk/sdk/R$string;->request_dialog_button_label_delete:I

    new-instance v2, Lzendesk/support/request/RequestActivity$2;

    invoke-direct {v2, p0}, Lzendesk/support/request/RequestActivity$2;-><init>(Lzendesk/support/request/RequestActivity;)V

    .line 169
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/zendesk/sdk/R$string;->request_dialog_button_label_cancel:I

    new-instance v2, Lzendesk/support/request/RequestActivity$1;

    invoke-direct {v2, p0}, Lzendesk/support/request/RequestActivity$1;-><init>(Lzendesk/support/request/RequestActivity;)V

    .line 176
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 184
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 82
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lzendesk/support/request/RequestActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lcom/zendesk/sdk/R$style;->ZendeskActivityDefaultTheme:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 84
    sget v0, Lcom/zendesk/sdk/R$layout;->zs_activity_request:I

    invoke-virtual {p0, v0}, Lzendesk/support/request/RequestActivity;->setContentView(I)V

    .line 85
    invoke-static {p0}, Lzendesk/belvedere/BelvedereUi;->install(Landroidx/appcompat/app/AppCompatActivity;)Lzendesk/belvedere/ImageStream;

    .line 86
    invoke-direct {p0}, Lzendesk/support/request/RequestActivity;->initViews()V

    .line 88
    sget-object v0, Lzendesk/support/SdkDependencyProvider;->INSTANCE:Lzendesk/support/SdkDependencyProvider;

    invoke-virtual {v0}, Lzendesk/support/SdkDependencyProvider;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "RequestActivity"

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Zendesk is not initialized or no identity was set. Make sure Zendesk.INSTANCE.init(...), Zendesk.INSTANCE.setIdentity(...), Support.INSTANCE.init(...) was called "

    .line 89
    invoke-static {v2, v0, p1}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0}, Lzendesk/support/request/RequestActivity;->finish()V

    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lzendesk/support/request/RequestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-class v3, Lzendesk/support/request/RequestConfiguration;

    invoke-static {v0, v3}, Lzendesk/configurations/ConfigurationUtil;->fromBundle(Landroid/os/Bundle;Ljava/lang/Class;)Lzendesk/configurations/Configuration;

    move-result-object v0

    check-cast v0, Lzendesk/support/request/RequestConfiguration;

    if-nez v0, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "No configuration found. Please use RequestActivity.builder()"

    .line 99
    invoke-static {v2, v0, p1}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p0}, Lzendesk/support/request/RequestActivity;->finish()V

    return-void

    .line 104
    :cond_1
    new-instance v1, Lzendesk/support/request/RequestActivity$RefreshRequestActionHandler;

    invoke-virtual {v0}, Lzendesk/support/request/RequestConfiguration;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lzendesk/support/request/RequestActivity$RefreshRequestActionHandler;-><init>(Lzendesk/support/request/RequestActivity;Ljava/lang/String;)V

    iput-object v1, p0, Lzendesk/support/request/RequestActivity;->refreshActionHandler:Lzendesk/support/request/RequestActivity$RefreshRequestActionHandler;

    .line 107
    invoke-direct {p0, p1, v0}, Lzendesk/support/request/RequestActivity;->initializeStoreAndDependencies(Landroid/os/Bundle;Lzendesk/support/request/RequestConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 111
    iget-object v1, p0, Lzendesk/support/request/RequestActivity;->headlessComponentListener:Lzendesk/support/request/HeadlessComponentListener;

    iget-object v2, p0, Lzendesk/support/request/RequestActivity;->store:Lzendesk/support/suas/Store;

    invoke-virtual {v1, v2}, Lzendesk/support/request/HeadlessComponentListener;->startListening(Lzendesk/support/suas/Store;)V

    .line 114
    iget-object v1, p0, Lzendesk/support/request/RequestActivity;->store:Lzendesk/support/suas/Store;

    iget-object v2, p0, Lzendesk/support/request/RequestActivity;->af:Lzendesk/support/request/ActionFactory;

    invoke-virtual {v2, v0}, Lzendesk/support/request/ActionFactory;->installStartConfigAsync(Lzendesk/support/request/RequestConfiguration;)Lzendesk/support/suas/Action;

    move-result-object v0

    invoke-interface {v1, v0}, Lzendesk/support/suas/Store;->dispatch(Lzendesk/support/suas/Action;)V

    .line 117
    iget-object v0, p0, Lzendesk/support/request/RequestActivity;->store:Lzendesk/support/suas/Store;

    iget-object v1, p0, Lzendesk/support/request/RequestActivity;->af:Lzendesk/support/request/ActionFactory;

    invoke-virtual {v1}, Lzendesk/support/request/ActionFactory;->loadSettingsAsync()Lzendesk/support/suas/Action;

    move-result-object v1

    invoke-interface {v0, v1}, Lzendesk/support/suas/Store;->dispatch(Lzendesk/support/suas/Action;)V

    .line 120
    :cond_2
    invoke-direct {p0, p1}, Lzendesk/support/request/RequestActivity;->bindComponents(Z)Lzendesk/support/suas/Subscription;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/RequestActivity;->subscription:Lzendesk/support/suas/Subscription;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 125
    iget-object v0, p0, Lzendesk/support/request/RequestActivity;->requestRouter:Lzendesk/support/request/ComponentRequestRouter;

    invoke-virtual {v0}, Lzendesk/support/request/ComponentRequestRouter;->getCurrentScreen()Lzendesk/support/request/RequestView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lzendesk/support/request/RequestActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lzendesk/support/request/RequestView;->inflateMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 131
    iget-object v0, p0, Lzendesk/support/request/RequestActivity;->requestRouter:Lzendesk/support/request/ComponentRequestRouter;

    invoke-virtual {v0}, Lzendesk/support/request/ComponentRequestRouter;->getCurrentScreen()Lzendesk/support/request/RequestView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0, p1}, Lzendesk/support/request/RequestView;->onOptionsItemClicked(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 135
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 150
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 151
    iget-object v0, p0, Lzendesk/support/request/RequestActivity;->store:Lzendesk/support/suas/Store;

    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Lzendesk/support/request/RequestActivity;->af:Lzendesk/support/request/ActionFactory;

    invoke-virtual {v1}, Lzendesk/support/request/ActionFactory;->androidOnPause()Lzendesk/support/suas/Action;

    move-result-object v1

    invoke-interface {v0, v1}, Lzendesk/support/suas/Store;->dispatch(Lzendesk/support/suas/Action;)V

    .line 154
    :cond_0
    iget-object v0, p0, Lzendesk/support/request/RequestActivity;->subscription:Lzendesk/support/suas/Subscription;

    if-eqz v0, :cond_1

    .line 155
    invoke-interface {v0}, Lzendesk/support/suas/Subscription;->removeListener()V

    .line 157
    :cond_1
    iget-object v0, p0, Lzendesk/support/request/RequestActivity;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    if-eqz v0, :cond_2

    .line 158
    iget-object v1, p0, Lzendesk/support/request/RequestActivity;->refreshActionHandler:Lzendesk/support/request/RequestActivity$RefreshRequestActionHandler;

    invoke-interface {v0, v1}, Lzendesk/core/ActionHandlerRegistry;->remove(Lzendesk/core/ActionHandler;)V

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 141
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 142
    iget-object v0, p0, Lzendesk/support/request/RequestActivity;->store:Lzendesk/support/suas/Store;

    iget-object v1, p0, Lzendesk/support/request/RequestActivity;->af:Lzendesk/support/request/ActionFactory;

    invoke-virtual {v1}, Lzendesk/support/request/ActionFactory;->androidOnResume()Lzendesk/support/suas/Action;

    move-result-object v1

    invoke-interface {v0, v1}, Lzendesk/support/suas/Store;->dispatch(Lzendesk/support/suas/Action;)V

    .line 143
    iget-object v0, p0, Lzendesk/support/request/RequestActivity;->subscription:Lzendesk/support/suas/Subscription;

    invoke-interface {v0}, Lzendesk/support/suas/Subscription;->addListener()V

    .line 144
    iget-object v0, p0, Lzendesk/support/request/RequestActivity;->subscription:Lzendesk/support/suas/Subscription;

    invoke-interface {v0}, Lzendesk/support/suas/Subscription;->informWithCurrentState()V

    .line 145
    iget-object v0, p0, Lzendesk/support/request/RequestActivity;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    iget-object v1, p0, Lzendesk/support/request/RequestActivity;->refreshActionHandler:Lzendesk/support/request/RequestActivity$RefreshRequestActionHandler;

    invoke-interface {v0, v1}, Lzendesk/core/ActionHandlerRegistry;->add(Lzendesk/core/ActionHandler;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 190
    iget-object v0, p0, Lzendesk/support/request/RequestActivity;->store:Lzendesk/support/suas/Store;

    invoke-interface {v0}, Lzendesk/support/suas/Store;->getState()Lzendesk/support/suas/State;

    move-result-object v0

    const-string v1, "saved_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 191
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
