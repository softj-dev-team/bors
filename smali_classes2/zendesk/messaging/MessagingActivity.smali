.class public Lzendesk/messaging/MessagingActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MessagingActivity.java"


# static fields
.field private static final COMPONENT_KEY:Ljava/lang/String; = "messaging_component"

.field private static final LOG_TAG:Ljava/lang/String; = "MessagingActivity"

.field static final NO_ENGINES_ERROR_LOG:Ljava/lang/String; = "No Engines found in MessagingConfiguration. Please use MessagingActivity.builder()"


# instance fields
.field eventFactory:Lzendesk/messaging/EventFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field messagingCellFactory:Lzendesk/messaging/ui/MessagingCellFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field messagingComposer:Lzendesk/messaging/ui/MessagingComposer;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field messagingDialog:Lzendesk/messaging/MessagingDialog;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private messagingView:Lzendesk/messaging/ui/MessagingView;

.field picasso:Lcom/squareup/picasso/Picasso;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field viewModel:Lzendesk/messaging/MessagingViewModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lzendesk/messaging/MessagingActivity;)Lzendesk/messaging/ui/MessagingView;
    .locals 0

    .line 37
    iget-object p0, p0, Lzendesk/messaging/MessagingActivity;->messagingView:Lzendesk/messaging/ui/MessagingView;

    return-object p0
.end method

.method public static builder()Lzendesk/messaging/MessagingConfiguration$Builder;
    .locals 1

    .line 49
    new-instance v0, Lzendesk/messaging/MessagingConfiguration$Builder;

    invoke-direct {v0}, Lzendesk/messaging/MessagingConfiguration$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 185
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 186
    iget-object v0, p0, Lzendesk/messaging/MessagingActivity;->viewModel:Lzendesk/messaging/MessagingViewModel;

    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Lzendesk/messaging/MessagingActivity;->eventFactory:Lzendesk/messaging/EventFactory;

    invoke-virtual {v1, p1, p2, p3}, Lzendesk/messaging/EventFactory;->onActivityResult(IILandroid/content/Intent;)Lzendesk/messaging/Event;

    move-result-object p1

    invoke-virtual {v0, p1}, Lzendesk/messaging/MessagingViewModel;->onEvent(Lzendesk/messaging/Event;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 74
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lzendesk/messaging/MessagingActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v0, Lzendesk/messaging/R$style;->ZendeskActivityDefaultTheme:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 78
    new-instance p1, Lzendesk/configurations/ConfigurationHelper;

    invoke-direct {p1}, Lzendesk/configurations/ConfigurationHelper;-><init>()V

    .line 81
    invoke-virtual {p0}, Lzendesk/messaging/MessagingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lzendesk/messaging/MessagingConfiguration;

    invoke-virtual {p1, v0, v1}, Lzendesk/configurations/ConfigurationHelper;->fromBundle(Landroid/os/Bundle;Ljava/lang/Class;)Lzendesk/configurations/Configuration;

    move-result-object p1

    check-cast p1, Lzendesk/messaging/MessagingConfiguration;

    const/4 v0, 0x0

    const-string v1, "MessagingActivity"

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "No configuration found. Please use MessagingActivity.builder()"

    .line 84
    invoke-static {v1, v0, p1}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p0}, Lzendesk/messaging/MessagingActivity;->finish()V

    return-void

    .line 89
    :cond_0
    invoke-static {p0}, Lzendesk/commonui/CacheFragment;->from(Landroidx/fragment/app/FragmentActivity;)Lzendesk/commonui/CacheFragment;

    move-result-object v2

    const-string v3, "messaging_component"

    .line 91
    invoke-virtual {v2, v3}, Lzendesk/commonui/CacheFragment;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzendesk/messaging/MessagingComponent;

    if-nez v4, :cond_2

    .line 94
    invoke-virtual {p1}, Lzendesk/messaging/MessagingConfiguration;->getEngines()Ljava/util/List;

    move-result-object v4

    .line 96
    invoke-static {v4}, Lcom/zendesk/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "No Engines found in MessagingConfiguration. Please use MessagingActivity.builder()"

    .line 97
    invoke-static {v1, v0, p1}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p0}, Lzendesk/messaging/MessagingActivity;->finish()V

    return-void

    .line 103
    :cond_1
    invoke-static {}, Lzendesk/messaging/DaggerMessagingComponent;->builder()Lzendesk/messaging/MessagingComponent$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lzendesk/messaging/MessagingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lzendesk/messaging/MessagingComponent$Builder;->appContext(Landroid/content/Context;)Lzendesk/messaging/MessagingComponent$Builder;

    move-result-object v0

    .line 105
    invoke-interface {v0, v4}, Lzendesk/messaging/MessagingComponent$Builder;->engines(Ljava/util/List;)Lzendesk/messaging/MessagingComponent$Builder;

    move-result-object v0

    .line 106
    invoke-interface {v0, p1}, Lzendesk/messaging/MessagingComponent$Builder;->messagingConfiguration(Lzendesk/messaging/MessagingConfiguration;)Lzendesk/messaging/MessagingComponent$Builder;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Lzendesk/messaging/MessagingComponent$Builder;->build()Lzendesk/messaging/MessagingComponent;

    move-result-object v4

    .line 109
    invoke-interface {v4}, Lzendesk/messaging/MessagingComponent;->messagingViewModel()Lzendesk/messaging/MessagingViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/messaging/MessagingViewModel;->start()V

    .line 111
    invoke-virtual {v2, v3, v4}, Lzendesk/commonui/CacheFragment;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    :cond_2
    invoke-static {}, Lzendesk/messaging/DaggerMessagingActivityComponent;->builder()Lzendesk/messaging/MessagingActivityComponent$Builder;

    move-result-object v0

    .line 116
    invoke-interface {v0, v4}, Lzendesk/messaging/MessagingActivityComponent$Builder;->messagingComponent(Lzendesk/messaging/MessagingComponent;)Lzendesk/messaging/MessagingActivityComponent$Builder;

    move-result-object v0

    .line 117
    invoke-interface {v0, p0}, Lzendesk/messaging/MessagingActivityComponent$Builder;->activity(Landroidx/appcompat/app/AppCompatActivity;)Lzendesk/messaging/MessagingActivityComponent$Builder;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Lzendesk/messaging/MessagingActivityComponent$Builder;->build()Lzendesk/messaging/MessagingActivityComponent;

    move-result-object v0

    .line 119
    invoke-interface {v0, p0}, Lzendesk/messaging/MessagingActivityComponent;->inject(Lzendesk/messaging/MessagingActivity;)V

    .line 121
    sget v0, Lzendesk/messaging/R$layout;->zui_activity_messaging:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/MessagingActivity;->setContentView(I)V

    .line 122
    sget v0, Lzendesk/messaging/R$id;->zui_view_messaging:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/MessagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzendesk/messaging/ui/MessagingView;

    iput-object v0, p0, Lzendesk/messaging/MessagingActivity;->messagingView:Lzendesk/messaging/ui/MessagingView;

    .line 123
    sget v0, Lzendesk/messaging/R$id;->zui_toolbar:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/MessagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 124
    invoke-virtual {p0, v0}, Lzendesk/messaging/MessagingActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 125
    new-instance v1, Lzendesk/messaging/MessagingActivity$1;

    invoke-direct {v1, p0}, Lzendesk/messaging/MessagingActivity$1;-><init>(Lzendesk/messaging/MessagingActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-virtual {p0}, Lzendesk/messaging/MessagingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lzendesk/messaging/MessagingConfiguration;->getToolbarTitle(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    sget p1, Lzendesk/messaging/R$id;->zui_input_box:I

    invoke-virtual {p0, p1}, Lzendesk/messaging/MessagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lzendesk/messaging/ui/InputBox;

    .line 134
    iget-object v0, p0, Lzendesk/messaging/MessagingActivity;->messagingComposer:Lzendesk/messaging/ui/MessagingComposer;

    invoke-virtual {v0, p1}, Lzendesk/messaging/ui/MessagingComposer;->bind(Lzendesk/messaging/ui/InputBox;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .line 193
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 195
    iget-object v0, p0, Lzendesk/messaging/MessagingActivity;->viewModel:Lzendesk/messaging/MessagingViewModel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 199
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 201
    iget-object v0, p0, Lzendesk/messaging/MessagingActivity;->viewModel:Lzendesk/messaging/MessagingViewModel;

    invoke-virtual {v0}, Lzendesk/messaging/MessagingViewModel;->getLiveMenuItems()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 203
    invoke-static {v0}, Lcom/zendesk/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    const-string v3, "MessagingActivity"

    if-eqz v2, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Menu: no items, hiding..."

    .line 204
    invoke-static {v3, v0, p1}, Lcom/zendesk/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 208
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/messaging/MenuItem;

    .line 209
    invoke-virtual {v2}, Lzendesk/messaging/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v2}, Lzendesk/messaging/MenuItem;->getLabelId()I

    move-result v2

    invoke-interface {p1, v1, v4, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Menu: items updated."

    .line 212
    invoke-static {v3, v0, p1}, Lcom/zendesk/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 3

    .line 226
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 228
    invoke-virtual {p0}, Lzendesk/messaging/MessagingActivity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lzendesk/messaging/MessagingActivity;->viewModel:Lzendesk/messaging/MessagingViewModel;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MessagingActivity"

    const-string v2, "onDestroy() called, clearing..."

    .line 233
    invoke-static {v1, v2, v0}, Lcom/zendesk/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lzendesk/messaging/MessagingActivity;->viewModel:Lzendesk/messaging/MessagingViewModel;

    invoke-virtual {v0}, Lzendesk/messaging/MessagingViewModel;->onCleared()V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 219
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 220
    iget-object v0, p0, Lzendesk/messaging/MessagingActivity;->viewModel:Lzendesk/messaging/MessagingViewModel;

    iget-object v1, p0, Lzendesk/messaging/MessagingActivity;->eventFactory:Lzendesk/messaging/EventFactory;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v1, p1}, Lzendesk/messaging/EventFactory;->menuItemClicked(I)Lzendesk/messaging/Event;

    move-result-object p1

    invoke-virtual {v0, p1}, Lzendesk/messaging/MessagingViewModel;->onEvent(Lzendesk/messaging/Event;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onStart()V
    .locals 2

    .line 139
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 140
    iget-object v0, p0, Lzendesk/messaging/MessagingActivity;->viewModel:Lzendesk/messaging/MessagingViewModel;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lzendesk/messaging/MessagingViewModel;->getLiveMessagingState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lzendesk/messaging/MessagingActivity$2;

    invoke-direct {v1, p0}, Lzendesk/messaging/MessagingActivity$2;-><init>(Lzendesk/messaging/MessagingActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 148
    iget-object v0, p0, Lzendesk/messaging/MessagingActivity;->viewModel:Lzendesk/messaging/MessagingViewModel;

    invoke-virtual {v0}, Lzendesk/messaging/MessagingViewModel;->getLiveNavigationStream()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lzendesk/messaging/MessagingActivity$3;

    invoke-direct {v1, p0}, Lzendesk/messaging/MessagingActivity$3;-><init>(Lzendesk/messaging/MessagingActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 157
    iget-object v0, p0, Lzendesk/messaging/MessagingActivity;->viewModel:Lzendesk/messaging/MessagingViewModel;

    invoke-virtual {v0}, Lzendesk/messaging/MessagingViewModel;->getLiveInterfaceUpdateItems()Lzendesk/messaging/SingleLiveEvent;

    move-result-object v0

    new-instance v1, Lzendesk/messaging/MessagingActivity$4;

    invoke-direct {v1, p0}, Lzendesk/messaging/MessagingActivity$4;-><init>(Lzendesk/messaging/MessagingActivity;)V

    invoke-virtual {v0, p0, v1}, Lzendesk/messaging/SingleLiveEvent;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 172
    iget-object v0, p0, Lzendesk/messaging/MessagingActivity;->viewModel:Lzendesk/messaging/MessagingViewModel;

    invoke-virtual {v0}, Lzendesk/messaging/MessagingViewModel;->getLiveMenuItems()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lzendesk/messaging/MessagingActivity$5;

    invoke-direct {v1, p0}, Lzendesk/messaging/MessagingActivity$5;-><init>(Lzendesk/messaging/MessagingActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 179
    iget-object v0, p0, Lzendesk/messaging/MessagingActivity;->viewModel:Lzendesk/messaging/MessagingViewModel;

    invoke-virtual {v0}, Lzendesk/messaging/MessagingViewModel;->getDialogUpdates()Lzendesk/messaging/SingleLiveEvent;

    move-result-object v0

    iget-object v1, p0, Lzendesk/messaging/MessagingActivity;->messagingDialog:Lzendesk/messaging/MessagingDialog;

    invoke-virtual {v0, p0, v1}, Lzendesk/messaging/SingleLiveEvent;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method
