.class Lzendesk/support/guide/HelpAdapterPresenter;
.super Ljava/lang/Object;
.source "HelpAdapterPresenter.java"

# interfaces
.implements Lzendesk/support/guide/HelpMvp$Presenter;


# static fields
.field private static final RETRY_ACTION_ID:Ljava/lang/Integer;


# instance fields
.field private callback:Lcom/zendesk/service/ZendeskCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/service/ZendeskCallback<",
            "Ljava/util/List<",
            "Lzendesk/support/HelpItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private contentPresenter:Lzendesk/support/guide/HelpCenterMvp$Presenter;

.field private filteredItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/HelpItem;",
            ">;"
        }
    .end annotation
.end field

.field private hasError:Z

.field private helpCenterUiConfig:Lzendesk/support/guide/HelpCenterConfiguration;

.field private helpItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/HelpItem;",
            ">;"
        }
    .end annotation
.end field

.field private model:Lzendesk/support/guide/HelpMvp$Model;

.field private networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

.field private noResults:Z

.field private retryAction:Lzendesk/core/RetryAction;

.field private view:Lzendesk/support/guide/HelpMvp$View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lzendesk/support/guide/HelpAdapterPresenter;->RETRY_ACTION_ID:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lzendesk/support/guide/HelpMvp$View;Lzendesk/support/guide/HelpMvp$Model;Lzendesk/core/NetworkInfoProvider;Lzendesk/support/guide/HelpCenterConfiguration;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->helpItems:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->filteredItems:Ljava/util/List;

    .line 168
    new-instance v0, Lzendesk/support/guide/HelpAdapterPresenter$2;

    invoke-direct {v0, p0}, Lzendesk/support/guide/HelpAdapterPresenter$2;-><init>(Lzendesk/support/guide/HelpAdapterPresenter;)V

    iput-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->callback:Lcom/zendesk/service/ZendeskCallback;

    .line 60
    iput-object p1, p0, Lzendesk/support/guide/HelpAdapterPresenter;->view:Lzendesk/support/guide/HelpMvp$View;

    .line 61
    iput-object p2, p0, Lzendesk/support/guide/HelpAdapterPresenter;->model:Lzendesk/support/guide/HelpMvp$Model;

    .line 62
    iput-object p3, p0, Lzendesk/support/guide/HelpAdapterPresenter;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    .line 63
    iput-object p4, p0, Lzendesk/support/guide/HelpAdapterPresenter;->helpCenterUiConfig:Lzendesk/support/guide/HelpCenterConfiguration;

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/guide/HelpAdapterPresenter;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lzendesk/support/guide/HelpAdapterPresenter;->requestHelpContent()V

    return-void
.end method

.method static synthetic access$102(Lzendesk/support/guide/HelpAdapterPresenter;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lzendesk/support/guide/HelpAdapterPresenter;->hasError:Z

    return p1
.end method

.method static synthetic access$200(Lzendesk/support/guide/HelpAdapterPresenter;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->helpItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lzendesk/support/guide/HelpAdapterPresenter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 26
    iput-object p1, p0, Lzendesk/support/guide/HelpAdapterPresenter;->helpItems:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lzendesk/support/guide/HelpAdapterPresenter;)Lzendesk/support/guide/HelpCenterConfiguration;
    .locals 0

    .line 26
    iget-object p0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->helpCenterUiConfig:Lzendesk/support/guide/HelpCenterConfiguration;

    return-object p0
.end method

.method static synthetic access$400(Lzendesk/support/guide/HelpAdapterPresenter;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->filteredItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$402(Lzendesk/support/guide/HelpAdapterPresenter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 26
    iput-object p1, p0, Lzendesk/support/guide/HelpAdapterPresenter;->filteredItems:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lzendesk/support/guide/HelpAdapterPresenter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lzendesk/support/guide/HelpAdapterPresenter;->getCollapsedCategories(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$602(Lzendesk/support/guide/HelpAdapterPresenter;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lzendesk/support/guide/HelpAdapterPresenter;->noResults:Z

    return p1
.end method

.method static synthetic access$700(Lzendesk/support/guide/HelpAdapterPresenter;)Lzendesk/support/guide/HelpMvp$View;
    .locals 0

    .line 26
    iget-object p0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->view:Lzendesk/support/guide/HelpMvp$View;

    return-object p0
.end method

.method static synthetic access$800(Lzendesk/support/guide/HelpAdapterPresenter;)Lzendesk/support/guide/HelpCenterMvp$Presenter;
    .locals 0

    .line 26
    iget-object p0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->contentPresenter:Lzendesk/support/guide/HelpCenterMvp$Presenter;

    return-object p0
.end method

.method static synthetic access$900(Lzendesk/support/guide/HelpAdapterPresenter;Lzendesk/support/SeeAllArticlesItem;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lzendesk/support/guide/HelpAdapterPresenter;->loadMoreArticles(Lzendesk/support/SeeAllArticlesItem;)V

    return-void
.end method

.method private addItem(ILzendesk/support/HelpItem;)V
    .locals 1

    .line 260
    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->filteredItems:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->view:Lzendesk/support/guide/HelpMvp$View;

    invoke-interface {v0, p1, p2}, Lzendesk/support/guide/HelpMvp$View;->addItem(ILzendesk/support/HelpItem;)V

    return-void
.end method

.method private collapseItem(I)V
    .locals 2

    .line 247
    invoke-virtual {p0}, Lzendesk/support/guide/HelpAdapterPresenter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    add-int/2addr p1, v1

    .line 253
    :goto_0
    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->filteredItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->filteredItems:Ljava/util/List;

    .line 254
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/HelpItem;

    invoke-interface {v0}, Lzendesk/support/HelpItem;->getViewType()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 255
    invoke-direct {p0, p1}, Lzendesk/support/guide/HelpAdapterPresenter;->removeItem(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private expandItem(Lzendesk/support/CategoryItem;I)V
    .locals 4

    add-int/lit8 p2, p2, 0x1

    .line 231
    invoke-virtual {p1}, Lzendesk/support/CategoryItem;->getSections()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/HelpItem;

    .line 232
    invoke-direct {p0, p2, v0}, Lzendesk/support/guide/HelpAdapterPresenter;->addItem(ILzendesk/support/HelpItem;)V

    add-int/lit8 p2, p2, 0x1

    .line 235
    :try_start_0
    check-cast v0, Lzendesk/support/SectionItem;

    .line 236
    invoke-virtual {v0}, Lzendesk/support/SectionItem;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/HelpItem;

    .line 237
    invoke-direct {p0, p2, v1}, Lzendesk/support/guide/HelpAdapterPresenter;->addItem(ILzendesk/support/HelpItem;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "HelpCenterActivity"

    const-string v3, "Error expanding item"

    .line 241
    invoke-static {v2, v3, v0, v1}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getCollapsedCategories(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/HelpItem;",
            ">;)",
            "Ljava/util/List<",
            "Lzendesk/support/HelpItem;",
            ">;"
        }
    .end annotation

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 216
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 220
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 221
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzendesk/support/HelpItem;

    invoke-interface {v4}, Lzendesk/support/HelpItem;->getViewType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v5, v4, :cond_1

    .line 222
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzendesk/support/HelpItem;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzendesk/support/CategoryItem;

    invoke-virtual {v4, v2}, Lzendesk/support/CategoryItem;->setExpanded(Z)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private getPaddingItemCount()I
    .locals 1

    .line 126
    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->helpCenterUiConfig:Lzendesk/support/guide/HelpCenterConfiguration;

    invoke-virtual {v0}, Lzendesk/support/guide/HelpCenterConfiguration;->isContactUsButtonVisible()Z

    move-result v0

    return v0
.end method

.method private loadMoreArticles(Lzendesk/support/SeeAllArticlesItem;)V
    .locals 5

    .line 271
    invoke-virtual {p1}, Lzendesk/support/SeeAllArticlesItem;->getSection()Lzendesk/support/SectionItem;

    move-result-object v0

    .line 273
    new-instance v1, Lzendesk/support/guide/HelpAdapterPresenter$3;

    invoke-direct {v1, p0, p1}, Lzendesk/support/guide/HelpAdapterPresenter$3;-><init>(Lzendesk/support/guide/HelpAdapterPresenter;Lzendesk/support/SeeAllArticlesItem;)V

    .line 280
    iget-object v2, p0, Lzendesk/support/guide/HelpAdapterPresenter;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    invoke-interface {v2}, Lzendesk/core/NetworkInfoProvider;->isNetworkAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    iget-object v2, p0, Lzendesk/support/guide/HelpAdapterPresenter;->model:Lzendesk/support/guide/HelpMvp$Model;

    iget-object v3, p0, Lzendesk/support/guide/HelpAdapterPresenter;->helpCenterUiConfig:Lzendesk/support/guide/HelpCenterConfiguration;

    invoke-virtual {v3}, Lzendesk/support/guide/HelpCenterConfiguration;->getLabelNames()[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lzendesk/support/guide/HelpAdapterPresenter$4;

    invoke-direct {v4, p0, p1, v0, v1}, Lzendesk/support/guide/HelpAdapterPresenter$4;-><init>(Lzendesk/support/guide/HelpAdapterPresenter;Lzendesk/support/SeeAllArticlesItem;Lzendesk/support/SectionItem;Lzendesk/core/RetryAction;)V

    invoke-interface {v2, v0, v3, v4}, Lzendesk/support/guide/HelpMvp$Model;->getArticlesForSection(Lzendesk/support/SectionItem;[Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V

    goto :goto_0

    .line 325
    :cond_0
    iput-object v1, p0, Lzendesk/support/guide/HelpAdapterPresenter;->retryAction:Lzendesk/core/RetryAction;

    .line 326
    iget-object p1, p0, Lzendesk/support/guide/HelpAdapterPresenter;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    sget-object v0, Lzendesk/support/guide/HelpAdapterPresenter;->RETRY_ACTION_ID:Ljava/lang/Integer;

    invoke-interface {p1, v0, v1}, Lzendesk/core/NetworkInfoProvider;->addRetryAction(Ljava/lang/Integer;Lzendesk/core/RetryAction;)V

    :goto_0
    return-void
.end method

.method private removeItem(I)V
    .locals 1

    .line 265
    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->filteredItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->view:Lzendesk/support/guide/HelpMvp$View;

    invoke-interface {v0, p1}, Lzendesk/support/guide/HelpMvp$View;->removeItem(I)V

    return-void
.end method

.method private requestHelpContent()V
    .locals 5

    .line 154
    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    invoke-interface {v0}, Lzendesk/core/NetworkInfoProvider;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lzendesk/support/guide/HelpAdapterPresenter$1;

    invoke-direct {v0, p0}, Lzendesk/support/guide/HelpAdapterPresenter$1;-><init>(Lzendesk/support/guide/HelpAdapterPresenter;)V

    iput-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->retryAction:Lzendesk/core/RetryAction;

    .line 161
    iget-object v1, p0, Lzendesk/support/guide/HelpAdapterPresenter;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    sget-object v2, Lzendesk/support/guide/HelpAdapterPresenter;->RETRY_ACTION_ID:Ljava/lang/Integer;

    invoke-interface {v1, v2, v0}, Lzendesk/core/NetworkInfoProvider;->addRetryAction(Ljava/lang/Integer;Lzendesk/core/RetryAction;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->model:Lzendesk/support/guide/HelpMvp$Model;

    iget-object v1, p0, Lzendesk/support/guide/HelpAdapterPresenter;->helpCenterUiConfig:Lzendesk/support/guide/HelpCenterConfiguration;

    invoke-virtual {v1}, Lzendesk/support/guide/HelpCenterConfiguration;->getCategoryIds()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lzendesk/support/guide/HelpAdapterPresenter;->helpCenterUiConfig:Lzendesk/support/guide/HelpCenterConfiguration;

    invoke-virtual {v2}, Lzendesk/support/guide/HelpCenterConfiguration;->getSectionIds()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lzendesk/support/guide/HelpAdapterPresenter;->helpCenterUiConfig:Lzendesk/support/guide/HelpCenterConfiguration;

    .line 165
    invoke-virtual {v3}, Lzendesk/support/guide/HelpCenterConfiguration;->getLabelNames()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lzendesk/support/guide/HelpAdapterPresenter;->callback:Lcom/zendesk/service/ZendeskCallback;

    .line 164
    invoke-interface {v0, v1, v2, v3, v4}, Lzendesk/support/guide/HelpMvp$Model;->getArticles(Ljava/util/List;Ljava/util/List;[Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method


# virtual methods
.method public getItem(I)Lzendesk/support/HelpItem;
    .locals 1

    .line 110
    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->filteredItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/support/HelpItem;

    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    .line 116
    iget-boolean v0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->hasError:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 122
    :cond_0
    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->filteredItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0}, Lzendesk/support/guide/HelpAdapterPresenter;->getPaddingItemCount()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getItemForBinding(I)Lzendesk/support/HelpItem;
    .locals 2

    .line 145
    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->filteredItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 146
    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->filteredItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->filteredItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lzendesk/support/HelpItem;

    :cond_0
    return-object v1
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 131
    iget-boolean v0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->noResults:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x7

    return p1

    .line 136
    :cond_0
    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->filteredItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->filteredItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->filteredItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/support/HelpItem;

    invoke-interface {p1}, Lzendesk/support/HelpItem;->getViewType()I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x5

    :goto_0
    return p1
.end method

.method public onAttached()V
    .locals 1

    .line 73
    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    invoke-interface {v0}, Lzendesk/core/NetworkInfoProvider;->register()V

    .line 75
    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->helpItems:Ljava/util/List;

    invoke-static {v0}, Lcom/zendesk/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lzendesk/support/guide/HelpAdapterPresenter;->requestHelpContent()V

    :cond_0
    return-void
.end method

.method public onCategoryClick(Lzendesk/support/CategoryItem;I)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 92
    :cond_0
    invoke-virtual {p1}, Lzendesk/support/CategoryItem;->isExpanded()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lzendesk/support/CategoryItem;->setExpanded(Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 95
    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->filteredItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lzendesk/support/guide/HelpAdapterPresenter;->expandItem(Lzendesk/support/CategoryItem;I)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->filteredItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p0, p1}, Lzendesk/support/guide/HelpAdapterPresenter;->collapseItem(I)V

    :goto_0
    return p2
.end method

.method public onDetached()V
    .locals 2

    .line 82
    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    sget-object v1, Lzendesk/support/guide/HelpAdapterPresenter;->RETRY_ACTION_ID:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Lzendesk/core/NetworkInfoProvider;->removeRetryAction(Ljava/lang/Integer;)V

    .line 83
    iget-object v0, p0, Lzendesk/support/guide/HelpAdapterPresenter;->networkInfoProvider:Lzendesk/core/NetworkInfoProvider;

    invoke-interface {v0}, Lzendesk/core/NetworkInfoProvider;->unregister()V

    return-void
.end method

.method public onSeeAllClick(Lzendesk/support/SeeAllArticlesItem;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lzendesk/support/guide/HelpAdapterPresenter;->loadMoreArticles(Lzendesk/support/SeeAllArticlesItem;)V

    return-void
.end method

.method public setContentPresenter(Lzendesk/support/guide/HelpCenterMvp$Presenter;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lzendesk/support/guide/HelpAdapterPresenter;->contentPresenter:Lzendesk/support/guide/HelpCenterMvp$Presenter;

    return-void
.end method
