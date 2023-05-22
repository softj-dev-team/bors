.class Lzendesk/support/requestlist/RequestListPresenter;
.super Ljava/lang/Object;
.source "RequestListPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/requestlist/RequestListPresenter$SettingsCallback;
    }
.end annotation


# instance fields
.field private final callbacks:Lzendesk/support/requestlist/CancelableCompositeCallback;

.field private final model:Lzendesk/support/requestlist/RequestListModel;

.field private view:Lzendesk/support/requestlist/RequestListView;


# direct methods
.method public constructor <init>(Lzendesk/support/requestlist/RequestListModel;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lzendesk/support/requestlist/CancelableCompositeCallback;

    invoke-direct {v0}, Lzendesk/support/requestlist/CancelableCompositeCallback;-><init>()V

    iput-object v0, p0, Lzendesk/support/requestlist/RequestListPresenter;->callbacks:Lzendesk/support/requestlist/CancelableCompositeCallback;

    .line 28
    iput-object p1, p0, Lzendesk/support/requestlist/RequestListPresenter;->model:Lzendesk/support/requestlist/RequestListModel;

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/requestlist/RequestListPresenter;)Lzendesk/support/requestlist/RequestListView;
    .locals 0

    .line 19
    iget-object p0, p0, Lzendesk/support/requestlist/RequestListPresenter;->view:Lzendesk/support/requestlist/RequestListView;

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/support/requestlist/RequestListPresenter;Lzendesk/support/requestlist/RequestListView;ZLjava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lzendesk/support/requestlist/RequestListPresenter;->setupLogoView(Lzendesk/support/requestlist/RequestListView;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lzendesk/support/requestlist/RequestListPresenter;)Lzendesk/support/requestlist/RequestListModel;
    .locals 0

    .line 19
    iget-object p0, p0, Lzendesk/support/requestlist/RequestListPresenter;->model:Lzendesk/support/requestlist/RequestListModel;

    return-object p0
.end method

.method private fetchSettingsFromNetwork(Lzendesk/support/requestlist/RequestListPresenter$SettingsCallback;)V
    .locals 2

    .line 139
    new-instance v0, Lzendesk/support/requestlist/RequestListPresenter$4;

    invoke-direct {v0, p0, p1}, Lzendesk/support/requestlist/RequestListPresenter$4;-><init>(Lzendesk/support/requestlist/RequestListPresenter;Lzendesk/support/requestlist/RequestListPresenter$SettingsCallback;)V

    .line 140
    invoke-static {v0}, Lcom/zendesk/service/SafeZendeskCallback;->from(Lcom/zendesk/service/ZendeskCallback;)Lcom/zendesk/service/SafeZendeskCallback;

    move-result-object p1

    .line 155
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListPresenter;->callbacks:Lzendesk/support/requestlist/CancelableCompositeCallback;

    invoke-virtual {v0, p1}, Lzendesk/support/requestlist/CancelableCompositeCallback;->add(Lcom/zendesk/service/SafeZendeskCallback;)V

    .line 156
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListPresenter;->view:Lzendesk/support/requestlist/RequestListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lzendesk/support/requestlist/RequestListView;->setLoading(Z)V

    .line 157
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListPresenter;->model:Lzendesk/support/requestlist/RequestListModel;

    invoke-virtual {v0, p1}, Lzendesk/support/requestlist/RequestListModel;->loadSettings(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method private loadSettings(Lzendesk/support/requestlist/RequestListPresenter$SettingsCallback;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListPresenter;->model:Lzendesk/support/requestlist/RequestListModel;

    invoke-virtual {v0}, Lzendesk/support/requestlist/RequestListModel;->getCachedSettings()Lzendesk/support/SupportSdkSettings;

    move-result-object v0

    if-nez v0, :cond_0

    .line 132
    invoke-direct {p0, p1}, Lzendesk/support/requestlist/RequestListPresenter;->fetchSettingsFromNetwork(Lzendesk/support/requestlist/RequestListPresenter$SettingsCallback;)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-interface {p1, v0}, Lzendesk/support/requestlist/RequestListPresenter$SettingsCallback;->onSettings(Lzendesk/support/SupportSdkSettings;)V

    :goto_0
    return-void
.end method

.method private setupCreateTicketClickListener()V
    .locals 2

    .line 218
    new-instance v0, Lzendesk/support/requestlist/RequestListPresenter$9;

    invoke-direct {v0, p0}, Lzendesk/support/requestlist/RequestListPresenter$9;-><init>(Lzendesk/support/requestlist/RequestListPresenter;)V

    .line 224
    iget-object v1, p0, Lzendesk/support/requestlist/RequestListPresenter;->view:Lzendesk/support/requestlist/RequestListView;

    invoke-virtual {v1, v0}, Lzendesk/support/requestlist/RequestListView;->setCreateRequestListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupErrorClickListener()V
    .locals 2

    .line 178
    new-instance v0, Lzendesk/support/requestlist/RequestListPresenter$6;

    invoke-direct {v0, p0}, Lzendesk/support/requestlist/RequestListPresenter$6;-><init>(Lzendesk/support/requestlist/RequestListPresenter;)V

    .line 184
    iget-object v1, p0, Lzendesk/support/requestlist/RequestListPresenter;->view:Lzendesk/support/requestlist/RequestListView;

    invoke-virtual {v1, v0}, Lzendesk/support/requestlist/RequestListView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupItemClickListener()V
    .locals 2

    .line 191
    new-instance v0, Lzendesk/support/requestlist/RequestListPresenter$7;

    invoke-direct {v0, p0}, Lzendesk/support/requestlist/RequestListPresenter$7;-><init>(Lzendesk/support/requestlist/RequestListPresenter;)V

    .line 198
    iget-object v1, p0, Lzendesk/support/requestlist/RequestListPresenter;->view:Lzendesk/support/requestlist/RequestListView;

    invoke-virtual {v1, v0}, Lzendesk/support/requestlist/RequestListView;->setItemClickListener(Lzendesk/support/requestlist/RequestListView$OnItemClick;)V

    return-void
.end method

.method private setupLogoView(Lzendesk/support/requestlist/RequestListView;ZLjava/lang/String;)V
    .locals 1

    .line 228
    new-instance v0, Lzendesk/support/requestlist/RequestListPresenter$10;

    invoke-direct {v0, p0, p1, p3}, Lzendesk/support/requestlist/RequestListPresenter$10;-><init>(Lzendesk/support/requestlist/RequestListPresenter;Lzendesk/support/requestlist/RequestListView;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lzendesk/support/requestlist/RequestListView;->setLogoClickListener(ZLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupNavigationClickListener()V
    .locals 2

    .line 164
    new-instance v0, Lzendesk/support/requestlist/RequestListPresenter$5;

    invoke-direct {v0, p0}, Lzendesk/support/requestlist/RequestListPresenter$5;-><init>(Lzendesk/support/requestlist/RequestListPresenter;)V

    .line 170
    iget-object v1, p0, Lzendesk/support/requestlist/RequestListPresenter;->view:Lzendesk/support/requestlist/RequestListView;

    invoke-virtual {v1, v0}, Lzendesk/support/requestlist/RequestListView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupPullToRefreshListener()V
    .locals 2

    .line 205
    new-instance v0, Lzendesk/support/requestlist/RequestListPresenter$8;

    invoke-direct {v0, p0}, Lzendesk/support/requestlist/RequestListPresenter$8;-><init>(Lzendesk/support/requestlist/RequestListPresenter;)V

    .line 211
    iget-object v1, p0, Lzendesk/support/requestlist/RequestListPresenter;->view:Lzendesk/support/requestlist/RequestListView;

    invoke-virtual {v1, v0}, Lzendesk/support/requestlist/RequestListView;->setSwipeRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method


# virtual methods
.method loadItems(ZLzendesk/support/SupportSdkSettings;)V
    .locals 3

    .line 94
    new-instance v0, Lzendesk/support/requestlist/RequestListPresenter$3;

    invoke-direct {v0, p0}, Lzendesk/support/requestlist/RequestListPresenter$3;-><init>(Lzendesk/support/requestlist/RequestListPresenter;)V

    .line 106
    iget-object v1, p0, Lzendesk/support/requestlist/RequestListPresenter;->callbacks:Lzendesk/support/requestlist/CancelableCompositeCallback;

    invoke-static {v0}, Lcom/zendesk/service/SafeZendeskCallback;->from(Lcom/zendesk/service/ZendeskCallback;)Lcom/zendesk/service/SafeZendeskCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzendesk/support/requestlist/CancelableCompositeCallback;->add(Lcom/zendesk/service/SafeZendeskCallback;)V

    .line 107
    iget-object v1, p0, Lzendesk/support/requestlist/RequestListPresenter;->view:Lzendesk/support/requestlist/RequestListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lzendesk/support/requestlist/RequestListView;->setLoading(Z)V

    .line 108
    iget-object v1, p0, Lzendesk/support/requestlist/RequestListPresenter;->model:Lzendesk/support/requestlist/RequestListModel;

    invoke-virtual {v1, p1, p2, v0}, Lzendesk/support/requestlist/RequestListModel;->loadItems(ZLzendesk/support/SupportSdkSettings;Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method onCreate(ZLzendesk/support/requestlist/RequestListView;)V
    .locals 0

    .line 33
    iput-object p2, p0, Lzendesk/support/requestlist/RequestListPresenter;->view:Lzendesk/support/requestlist/RequestListView;

    .line 36
    invoke-direct {p0}, Lzendesk/support/requestlist/RequestListPresenter;->setupItemClickListener()V

    .line 37
    invoke-direct {p0}, Lzendesk/support/requestlist/RequestListPresenter;->setupPullToRefreshListener()V

    .line 38
    invoke-direct {p0}, Lzendesk/support/requestlist/RequestListPresenter;->setupNavigationClickListener()V

    .line 39
    invoke-direct {p0}, Lzendesk/support/requestlist/RequestListPresenter;->setupErrorClickListener()V

    .line 40
    invoke-direct {p0}, Lzendesk/support/requestlist/RequestListPresenter;->setupCreateTicketClickListener()V

    .line 42
    new-instance p2, Lzendesk/support/requestlist/RequestListPresenter$1;

    invoke-direct {p2, p0, p1}, Lzendesk/support/requestlist/RequestListPresenter$1;-><init>(Lzendesk/support/requestlist/RequestListPresenter;Z)V

    invoke-direct {p0, p2}, Lzendesk/support/requestlist/RequestListPresenter;->loadSettings(Lzendesk/support/requestlist/RequestListPresenter$SettingsCallback;)V

    return-void
.end method

.method onDestroy(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 86
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListPresenter;->model:Lzendesk/support/requestlist/RequestListModel;

    invoke-virtual {p1}, Lzendesk/support/requestlist/RequestListModel;->cleanup()V

    :cond_0
    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Lzendesk/support/requestlist/RequestListPresenter;->view:Lzendesk/support/requestlist/RequestListView;

    .line 89
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListPresenter;->callbacks:Lzendesk/support/requestlist/CancelableCompositeCallback;

    invoke-virtual {p1}, Lzendesk/support/requestlist/CancelableCompositeCallback;->cancel()V

    return-void
.end method

.method refresh()V
    .locals 1

    .line 64
    new-instance v0, Lzendesk/support/requestlist/RequestListPresenter$2;

    invoke-direct {v0, p0}, Lzendesk/support/requestlist/RequestListPresenter$2;-><init>(Lzendesk/support/requestlist/RequestListPresenter;)V

    invoke-direct {p0, v0}, Lzendesk/support/requestlist/RequestListPresenter;->loadSettings(Lzendesk/support/requestlist/RequestListPresenter$SettingsCallback;)V

    return-void
.end method

.method showError(Lcom/zendesk/service/ErrorResponse;)V
    .locals 1

    .line 121
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListPresenter;->view:Lzendesk/support/requestlist/RequestListView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p1, v0}, Lzendesk/support/requestlist/RequestListView;->setLoading(Z)V

    .line 123
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListPresenter;->view:Lzendesk/support/requestlist/RequestListView;

    invoke-virtual {p1}, Lzendesk/support/requestlist/RequestListView;->showErrorMessage()V

    :cond_0
    return-void
.end method

.method showRequestList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/requestlist/RequestListItem;",
            ">;)V"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListPresenter;->view:Lzendesk/support/requestlist/RequestListView;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p1}, Lzendesk/support/requestlist/RequestListView;->showRequestList(Ljava/util/List;)V

    .line 115
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListPresenter;->view:Lzendesk/support/requestlist/RequestListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lzendesk/support/requestlist/RequestListView;->setLoading(Z)V

    :cond_0
    return-void
.end method
