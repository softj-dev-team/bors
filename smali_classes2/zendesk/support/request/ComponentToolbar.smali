.class Lzendesk/support/request/ComponentToolbar;
.super Ljava/lang/Object;
.source "ComponentToolbar.java"

# interfaces
.implements Lzendesk/support/suas/Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/ComponentToolbar$ToolbarSelector;,
        Lzendesk/support/request/ComponentToolbar$ToolbarModel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzendesk/support/suas/Listener<",
        "Lzendesk/support/request/ComponentToolbar$ToolbarModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final avatarContainer:Lzendesk/support/request/ViewToolbarAvatar;

.field private final container:Landroid/view/View;

.field private final context:Landroid/content/Context;

.field private final fadeTransition:Landroidx/transition/Fade;

.field private final picasso:Lcom/squareup/picasso/Picasso;

.field private final progressBar:Lzendesk/support/request/ViewAlmostRealProgressBar;

.field private final subTitle:Landroid/widget/TextView;

.field private final title:Landroid/widget/TextView;

.field private final toolbar:Landroidx/appcompat/widget/Toolbar;

.field private toolbarModel:Lzendesk/support/request/ComponentToolbar$ToolbarModel;

.field private final toolbarSelector:Lzendesk/support/request/ComponentToolbar$ToolbarSelector;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Picasso;Landroidx/appcompat/widget/Toolbar;Lzendesk/support/request/ViewAlmostRealProgressBar;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroidx/transition/Fade;

    invoke-direct {v0}, Landroidx/transition/Fade;-><init>()V

    iput-object v0, p0, Lzendesk/support/request/ComponentToolbar;->fadeTransition:Landroidx/transition/Fade;

    .line 55
    iput-object p1, p0, Lzendesk/support/request/ComponentToolbar;->picasso:Lcom/squareup/picasso/Picasso;

    .line 56
    iput-object p3, p0, Lzendesk/support/request/ComponentToolbar;->progressBar:Lzendesk/support/request/ViewAlmostRealProgressBar;

    .line 57
    iput-object p2, p0, Lzendesk/support/request/ComponentToolbar;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 58
    invoke-virtual {p2}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/ComponentToolbar;->context:Landroid/content/Context;

    .line 59
    new-instance p1, Lzendesk/support/request/ComponentToolbar$ToolbarSelector;

    invoke-direct {p1}, Lzendesk/support/request/ComponentToolbar$ToolbarSelector;-><init>()V

    iput-object p1, p0, Lzendesk/support/request/ComponentToolbar;->toolbarSelector:Lzendesk/support/request/ComponentToolbar$ToolbarSelector;

    .line 60
    sget p1, Lcom/zendesk/sdk/R$id;->activity_request_toolbar_container:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/ComponentToolbar;->container:Landroid/view/View;

    .line 61
    sget p1, Lcom/zendesk/sdk/R$id;->activity_request_toolbar_custom_title:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lzendesk/support/request/ComponentToolbar;->title:Landroid/widget/TextView;

    .line 62
    sget p1, Lcom/zendesk/sdk/R$id;->activity_request_toolbar_custom_sub_title:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lzendesk/support/request/ComponentToolbar;->subTitle:Landroid/widget/TextView;

    .line 63
    sget p1, Lcom/zendesk/sdk/R$id;->activity_request_toolbar_avatar_holder:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lzendesk/support/request/ViewToolbarAvatar;

    iput-object p1, p0, Lzendesk/support/request/ComponentToolbar;->avatarContainer:Lzendesk/support/request/ViewToolbarAvatar;

    return-void
.end method

.method private updateProgressBar(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 115
    iget-object p1, p0, Lzendesk/support/request/ComponentToolbar;->progressBar:Lzendesk/support/request/ViewAlmostRealProgressBar;

    sget-object v0, Lzendesk/support/request/ViewAlmostRealProgressBar;->DONT_STOP_MOVING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lzendesk/support/request/ViewAlmostRealProgressBar;->start(Ljava/util/List;)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p0, Lzendesk/support/request/ComponentToolbar;->progressBar:Lzendesk/support/request/ViewAlmostRealProgressBar;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Lzendesk/support/request/ViewAlmostRealProgressBar;->stop(J)V

    :goto_0
    return-void
.end method

.method private updateToolbar(Lzendesk/support/request/ComponentToolbar$ToolbarModel;)V
    .locals 8

    .line 80
    invoke-virtual {p1}, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->getToolbarContentState()I

    move-result v0

    sget v1, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->STATE_LOADING:I

    const-string v2, ""

    const/16 v3, 0x8

    if-ne v0, v1, :cond_0

    .line 81
    iget-object p1, p0, Lzendesk/support/request/ComponentToolbar;->container:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object p1, p0, Lzendesk/support/request/ComponentToolbar;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 84
    :cond_0
    invoke-virtual {p1}, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->getToolbarContentState()I

    move-result v0

    sget v1, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->STATE_AGENT_INFO:I

    if-ne v0, v1, :cond_1

    .line 87
    iget-object v0, p0, Lzendesk/support/request/ComponentToolbar;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->getNameOfFirstAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lzendesk/support/request/ComponentToolbar;->context:Landroid/content/Context;

    .line 91
    invoke-virtual {p1}, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->getLastReply()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const/4 v1, 0x1

    invoke-static {v0, v3, v4, v1}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 92
    iget-object v3, p0, Lzendesk/support/request/ComponentToolbar;->subTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lzendesk/support/request/ComponentToolbar;->context:Landroid/content/Context;

    sget v5, Lcom/zendesk/sdk/R$string;->request_toolbar_last_reply:I

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v3, p0, Lzendesk/support/request/ComponentToolbar;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v2, p0, Lzendesk/support/request/ComponentToolbar;->avatarContainer:Lzendesk/support/request/ViewToolbarAvatar;

    iget-object v3, p0, Lzendesk/support/request/ComponentToolbar;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-virtual {p1}, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->getAvatarUrls()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lzendesk/support/request/ViewToolbarAvatar;->setImageUrls(Lcom/squareup/picasso/Picasso;Ljava/util/List;)V

    .line 99
    iget-object v2, p0, Lzendesk/support/request/ComponentToolbar;->toolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v3, p0, Lzendesk/support/request/ComponentToolbar;->fadeTransition:Landroidx/transition/Fade;

    invoke-static {v2, v3}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 100
    iget-object v2, p0, Lzendesk/support/request/ComponentToolbar;->container:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v2, p0, Lzendesk/support/request/ComponentToolbar;->container:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/zendesk/sdk/R$string;->zs_request_toolbar_accessibility:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 104
    invoke-virtual {p1}, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->getNameOfFirstAgent()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v7

    aput-object v0, v4, v1

    .line 103
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 105
    iget-object v0, p0, Lzendesk/support/request/ComponentToolbar;->container:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p1}, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->getToolbarContentState()I

    move-result p1

    sget v0, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->STATE_TITLE:I

    if-ne p1, v0, :cond_2

    .line 108
    iget-object p1, p0, Lzendesk/support/request/ComponentToolbar;->container:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object p1, p0, Lzendesk/support/request/ComponentToolbar;->toolbar:Landroidx/appcompat/widget/Toolbar;

    sget v0, Lcom/zendesk/sdk/R$string;->request_activity_title:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method getToolbarSelector()Lzendesk/support/request/ComponentToolbar$ToolbarSelector;
    .locals 1

    .line 76
    iget-object v0, p0, Lzendesk/support/request/ComponentToolbar;->toolbarSelector:Lzendesk/support/request/ComponentToolbar$ToolbarSelector;

    return-object v0
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lzendesk/support/request/ComponentToolbar$ToolbarModel;

    invoke-virtual {p0, p1}, Lzendesk/support/request/ComponentToolbar;->update(Lzendesk/support/request/ComponentToolbar$ToolbarModel;)V

    return-void
.end method

.method public update(Lzendesk/support/request/ComponentToolbar$ToolbarModel;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lzendesk/support/request/ComponentToolbar;->toolbarModel:Lzendesk/support/request/ComponentToolbar$ToolbarModel;

    invoke-virtual {p1, v0}, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iput-object p1, p0, Lzendesk/support/request/ComponentToolbar;->toolbarModel:Lzendesk/support/request/ComponentToolbar$ToolbarModel;

    .line 70
    invoke-virtual {p1}, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->isProgressEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lzendesk/support/request/ComponentToolbar;->updateProgressBar(Z)V

    .line 71
    invoke-direct {p0, p1}, Lzendesk/support/request/ComponentToolbar;->updateToolbar(Lzendesk/support/request/ComponentToolbar$ToolbarModel;)V

    :cond_0
    return-void
.end method
