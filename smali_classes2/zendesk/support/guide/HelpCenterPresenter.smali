.class Lzendesk/support/guide/HelpCenterPresenter;
.super Ljava/lang/Object;
.source "HelpCenterPresenter.java"

# interfaces
.implements Lzendesk/support/guide/HelpCenterMvp$Presenter;
.implements Lzendesk/core/NetworkAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback;
    }
.end annotation


# static fields
.field private static final NETWORK_AWARE_ID:Ljava/lang/Integer;

.field private static final RETRY_ACTION_ID:Ljava/lang/Integer;


# instance fields
.field private actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

.field private config:Lzendesk/support/guide/HelpCenterConfiguration;

.field private engines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/messaging/Engine;",
            ">;"
        }
    .end annotation
.end field

.field private helpCenterSettings:Lzendesk/support/HelpCenterSettings;

.field private internalRetryActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lzendesk/core/RetryAction;",
            ">;"
        }
    .end annotation
.end field

.field private model:Lzendesk/support/guide/HelpCenterMvp$Model;

.field private networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

.field private networkPreviouslyUnavailable:Z

.field private view:Lzendesk/support/guide/HelpCenterMvp$View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1f

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lzendesk/support/guide/HelpCenterPresenter;->NETWORK_AWARE_ID:Ljava/lang/Integer;

    const/16 v0, 0x21c2

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lzendesk/support/guide/HelpCenterPresenter;->RETRY_ACTION_ID:Ljava/lang/Integer;

    return-void
.end method

.method constructor <init>(Lzendesk/support/guide/HelpCenterMvp$View;Lzendesk/support/guide/HelpCenterMvp$Model;Lzendesk/core/NetworkInfoProvider;Lzendesk/core/ActionHandlerRegistry;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->internalRetryActions:Ljava/util/Set;

    .line 61
    iput-object p1, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    .line 62
    iput-object p2, p0, Lzendesk/support/guide/HelpCenterPresenter;->model:Lzendesk/support/guide/HelpCenterMvp$Model;

    .line 63
    iput-object p3, p0, Lzendesk/support/guide/HelpCenterPresenter;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    .line 64
    iput-object p4, p0, Lzendesk/support/guide/HelpCenterPresenter;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/guide/HelpCenterPresenter;)Lzendesk/support/guide/HelpCenterMvp$View;
    .locals 0

    .line 28
    iget-object p0, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/support/guide/HelpCenterPresenter;)Ljava/util/Set;
    .locals 0

    .line 28
    iget-object p0, p0, Lzendesk/support/guide/HelpCenterPresenter;->internalRetryActions:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$302(Lzendesk/support/guide/HelpCenterPresenter;Lzendesk/support/HelpCenterSettings;)Lzendesk/support/HelpCenterSettings;
    .locals 0

    .line 28
    iput-object p1, p0, Lzendesk/support/guide/HelpCenterPresenter;->helpCenterSettings:Lzendesk/support/HelpCenterSettings;

    return-object p1
.end method

.method static synthetic access$400(Lzendesk/support/guide/HelpCenterPresenter;)Lzendesk/support/guide/HelpCenterConfiguration;
    .locals 0

    .line 28
    iget-object p0, p0, Lzendesk/support/guide/HelpCenterPresenter;->config:Lzendesk/support/guide/HelpCenterConfiguration;

    return-object p0
.end method

.method static synthetic access$500(Lzendesk/support/guide/HelpCenterPresenter;)Lzendesk/core/ActionHandlerRegistry;
    .locals 0

    .line 28
    iget-object p0, p0, Lzendesk/support/guide/HelpCenterPresenter;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    return-object p0
.end method

.method private invokeRetryActions()V
    .locals 2

    .line 84
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->internalRetryActions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/core/RetryAction;

    .line 85
    invoke-interface {v1}, Lzendesk/core/RetryAction;->onRetry()V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->internalRetryActions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method


# virtual methods
.method public init(Lzendesk/support/guide/HelpCenterConfiguration;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/guide/HelpCenterConfiguration;",
            "Ljava/util/List<",
            "Lzendesk/messaging/Engine;",
            ">;)V"
        }
    .end annotation

    .line 253
    iput-object p1, p0, Lzendesk/support/guide/HelpCenterPresenter;->config:Lzendesk/support/guide/HelpCenterConfiguration;

    .line 254
    iput-object p2, p0, Lzendesk/support/guide/HelpCenterPresenter;->engines:Ljava/util/List;

    .line 256
    iget-object p1, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    invoke-interface {p1}, Lzendesk/support/guide/HelpCenterMvp$View;->showLoadingState()V

    .line 257
    iget-object p1, p0, Lzendesk/support/guide/HelpCenterPresenter;->model:Lzendesk/support/guide/HelpCenterMvp$Model;

    new-instance p2, Lzendesk/support/guide/HelpCenterPresenter$5;

    invoke-direct {p2, p0}, Lzendesk/support/guide/HelpCenterPresenter$5;-><init>(Lzendesk/support/guide/HelpCenterPresenter;)V

    invoke-interface {p1, p2}, Lzendesk/support/guide/HelpCenterMvp$Model;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method public onErrorWithRetry(Lzendesk/support/guide/HelpCenterMvp$ErrorType;Lzendesk/core/RetryAction;)V
    .locals 2

    .line 197
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0}, Lzendesk/support/guide/HelpCenterMvp$View;->isShowingHelp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    invoke-interface {v0}, Lzendesk/support/guide/HelpCenterMvp$View;->hideLoadingState()V

    .line 200
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    invoke-interface {v0, p1, p2}, Lzendesk/support/guide/HelpCenterMvp$View;->showLoadArticleErrorWithRetry(Lzendesk/support/guide/HelpCenterMvp$ErrorType;Lzendesk/core/RetryAction;)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->internalRetryActions:Ljava/util/Set;

    new-instance v1, Lzendesk/support/guide/HelpCenterPresenter$3;

    invoke-direct {v1, p0, p1, p2}, Lzendesk/support/guide/HelpCenterPresenter$3;-><init>(Lzendesk/support/guide/HelpCenterPresenter;Lzendesk/support/guide/HelpCenterMvp$ErrorType;Lzendesk/core/RetryAction;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onLoad()V
    .locals 2

    .line 169
    invoke-virtual {p0}, Lzendesk/support/guide/HelpCenterPresenter;->shouldShowContactUsButton()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v0}, Lzendesk/support/guide/HelpCenterMvp$View;->showContactUsButton()V

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->internalRetryActions:Ljava/util/Set;

    new-instance v1, Lzendesk/support/guide/HelpCenterPresenter$2;

    invoke-direct {v1, p0}, Lzendesk/support/guide/HelpCenterPresenter$2;-><init>(Lzendesk/support/guide/HelpCenterPresenter;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_1
    :goto_0
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    if-eqz v0, :cond_2

    .line 182
    invoke-interface {v0}, Lzendesk/support/guide/HelpCenterMvp$View;->announceContentLoaded()V

    :cond_2
    return-void
.end method

.method public onNetworkAvailable()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "HelpCenterActivity"

    const-string v3, "Network is available."

    .line 217
    invoke-static {v2, v3, v1}, Lcom/zendesk/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    iget-boolean v1, p0, Lzendesk/support/guide/HelpCenterPresenter;->networkPreviouslyUnavailable:Z

    if-nez v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Network was not previously unavailable, no need to dismiss Snackbar"

    .line 220
    invoke-static {v2, v1, v0}, Lcom/zendesk/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 224
    :cond_0
    iput-boolean v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->networkPreviouslyUnavailable:Z

    .line 226
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 227
    invoke-interface {v0, v1}, Lzendesk/support/guide/HelpCenterMvp$View;->setSearchEnabled(Z)V

    .line 228
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    invoke-interface {v0}, Lzendesk/support/guide/HelpCenterMvp$View;->dismissError()V

    goto :goto_0

    .line 230
    :cond_1
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->internalRetryActions:Ljava/util/Set;

    new-instance v1, Lzendesk/support/guide/HelpCenterPresenter$4;

    invoke-direct {v1, p0}, Lzendesk/support/guide/HelpCenterPresenter$4;-><init>(Lzendesk/support/guide/HelpCenterPresenter;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public onNetworkUnavailable()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "HelpCenterActivity"

    const-string v3, "Network is unavailable."

    .line 241
    invoke-static {v2, v3, v1}, Lcom/zendesk/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 242
    iput-boolean v1, p0, Lzendesk/support/guide/HelpCenterPresenter;->networkPreviouslyUnavailable:Z

    .line 244
    iget-object v1, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    if-eqz v1, :cond_0

    .line 245
    invoke-interface {v1, v0}, Lzendesk/support/guide/HelpCenterMvp$View;->setSearchEnabled(Z)V

    .line 246
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    invoke-interface {v0}, Lzendesk/support/guide/HelpCenterMvp$View;->showNoConnectionError()V

    .line 247
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    invoke-interface {v0}, Lzendesk/support/guide/HelpCenterMvp$View;->hideLoadingState()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    .line 94
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    sget-object v1, Lzendesk/support/guide/HelpCenterPresenter;->NETWORK_AWARE_ID:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Lzendesk/core/NetworkInfoProvider;->removeNetworkAwareListener(Ljava/lang/Integer;)V

    .line 95
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    sget-object v1, Lzendesk/support/guide/HelpCenterPresenter;->RETRY_ACTION_ID:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Lzendesk/core/NetworkInfoProvider;->removeRetryAction(Ljava/lang/Integer;)V

    .line 96
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    invoke-interface {v0}, Lzendesk/core/NetworkInfoProvider;->unregister()V

    return-void
.end method

.method public onResume(Lzendesk/support/guide/HelpCenterMvp$View;)V
    .locals 2

    .line 69
    iput-object p1, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    .line 71
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    sget-object v1, Lzendesk/support/guide/HelpCenterPresenter;->NETWORK_AWARE_ID:Ljava/lang/Integer;

    invoke-interface {v0, v1, p0}, Lzendesk/core/NetworkInfoProvider;->addNetworkAwareListener(Ljava/lang/Integer;Lzendesk/core/NetworkAware;)V

    .line 72
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    invoke-interface {v0}, Lzendesk/core/NetworkInfoProvider;->register()V

    .line 74
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    invoke-interface {v0}, Lzendesk/core/NetworkInfoProvider;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-interface {p1}, Lzendesk/support/guide/HelpCenterMvp$View;->showNoConnectionError()V

    .line 76
    invoke-interface {p1}, Lzendesk/support/guide/HelpCenterMvp$View;->hideLoadingState()V

    const/4 p1, 0x1

    .line 77
    iput-boolean p1, p0, Lzendesk/support/guide/HelpCenterPresenter;->networkPreviouslyUnavailable:Z

    .line 80
    :cond_0
    invoke-direct {p0}, Lzendesk/support/guide/HelpCenterPresenter;->invokeRetryActions()V

    return-void
.end method

.method public onSearchSubmit(Ljava/lang/String;)V
    .locals 7

    .line 101
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    invoke-interface {v0}, Lzendesk/core/NetworkInfoProvider;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    invoke-interface {v0}, Lzendesk/support/guide/HelpCenterMvp$View;->dismissError()V

    .line 103
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    invoke-interface {v0}, Lzendesk/support/guide/HelpCenterMvp$View;->showLoadingState()V

    .line 104
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->view:Lzendesk/support/guide/HelpCenterMvp$View;

    invoke-interface {v0}, Lzendesk/support/guide/HelpCenterMvp$View;->clearSearchResults()V

    .line 106
    iget-object v1, p0, Lzendesk/support/guide/HelpCenterPresenter;->model:Lzendesk/support/guide/HelpCenterMvp$Model;

    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->config:Lzendesk/support/guide/HelpCenterConfiguration;

    invoke-virtual {v0}, Lzendesk/support/guide/HelpCenterConfiguration;->getCategoryIds()Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->config:Lzendesk/support/guide/HelpCenterConfiguration;

    invoke-virtual {v0}, Lzendesk/support/guide/HelpCenterConfiguration;->getSectionIds()Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->config:Lzendesk/support/guide/HelpCenterConfiguration;

    .line 107
    invoke-virtual {v0}, Lzendesk/support/guide/HelpCenterConfiguration;->getLabelNames()[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback;

    invoke-direct {v6, p0, p1}, Lzendesk/support/guide/HelpCenterPresenter$ViewSafeRetryZendeskCallback;-><init>(Lzendesk/support/guide/HelpCenterPresenter;Ljava/lang/String;)V

    move-object v4, p1

    .line 106
    invoke-interface/range {v1 .. v6}, Lzendesk/support/guide/HelpCenterMvp$Model;->search(Ljava/util/List;Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V

    goto :goto_0

    .line 109
    :cond_0
    new-instance v0, Lzendesk/support/guide/HelpCenterPresenter$1;

    invoke-direct {v0, p0, p1}, Lzendesk/support/guide/HelpCenterPresenter$1;-><init>(Lzendesk/support/guide/HelpCenterPresenter;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lzendesk/support/guide/HelpCenterPresenter;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    sget-object v1, Lzendesk/support/guide/HelpCenterPresenter;->RETRY_ACTION_ID:Ljava/lang/Integer;

    invoke-interface {p1, v1, v0}, Lzendesk/core/NetworkInfoProvider;->addRetryAction(Ljava/lang/Integer;Lzendesk/core/RetryAction;)V

    :goto_0
    return-void
.end method

.method shouldShowContactUsButton()Z
    .locals 5

    .line 188
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    const-string v1, "action_contact_option"

    .line 189
    invoke-interface {v0, v1}, Lzendesk/core/ActionHandlerRegistry;->handlerByAction(Ljava/lang/String;)Lzendesk/core/ActionHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 190
    :goto_0
    iget-object v3, p0, Lzendesk/support/guide/HelpCenterPresenter;->engines:Ljava/util/List;

    invoke-static {v3}, Lcom/zendesk/util/CollectionUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v3

    .line 192
    iget-object v4, p0, Lzendesk/support/guide/HelpCenterPresenter;->config:Lzendesk/support/guide/HelpCenterConfiguration;

    invoke-virtual {v4}, Lzendesk/support/guide/HelpCenterConfiguration;->isContactUsButtonVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v0, :cond_2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method

.method public shouldShowConversationsMenuItem()Z
    .locals 2

    .line 382
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    const-string v1, "action_conversation_list"

    invoke-interface {v0, v1}, Lzendesk/core/ActionHandlerRegistry;->handlerByAction(Ljava/lang/String;)Lzendesk/core/ActionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->config:Lzendesk/support/guide/HelpCenterConfiguration;

    .line 383
    invoke-virtual {v0}, Lzendesk/support/guide/HelpCenterConfiguration;->isShowConversationsMenuButton()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldShowSearchMenuItem()Z
    .locals 1

    .line 388
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterPresenter;->helpCenterSettings:Lzendesk/support/HelpCenterSettings;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzendesk/support/HelpCenterSettings;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
