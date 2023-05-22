.class Lzendesk/support/requestlist/RequestListViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RequestListViewHolder.java"


# instance fields
.field private final avatarRadius:I

.field private final avatarView:Lzendesk/support/ZendeskAvatarView;

.field private final commentText:Landroid/widget/TextView;

.field private final context:Landroid/content/Context;

.field private final listener:Lzendesk/support/requestlist/RequestListView$OnItemClick;

.field private final picasso:Lcom/squareup/picasso/Picasso;

.field private final subjectText:Landroid/widget/TextView;

.field private final timeText:Landroid/widget/TextView;

.field private final userText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;Lzendesk/support/requestlist/RequestListView$OnItemClick;Lcom/squareup/picasso/Picasso;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 50
    iput-object p2, p0, Lzendesk/support/requestlist/RequestListViewHolder;->listener:Lzendesk/support/requestlist/RequestListView$OnItemClick;

    .line 51
    iput-object p3, p0, Lzendesk/support/requestlist/RequestListViewHolder;->picasso:Lcom/squareup/picasso/Picasso;

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lzendesk/support/requestlist/RequestListViewHolder;->context:Landroid/content/Context;

    .line 54
    sget p3, Lcom/zendesk/sdk/R$id;->request_list_item_avatar:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lzendesk/support/ZendeskAvatarView;

    iput-object p3, p0, Lzendesk/support/requestlist/RequestListViewHolder;->avatarView:Lzendesk/support/ZendeskAvatarView;

    .line 56
    sget p3, Lcom/zendesk/sdk/R$id;->request_list_item_time:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lzendesk/support/requestlist/RequestListViewHolder;->timeText:Landroid/widget/TextView;

    .line 57
    sget p3, Lcom/zendesk/sdk/R$id;->request_list_item_user:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lzendesk/support/requestlist/RequestListViewHolder;->userText:Landroid/widget/TextView;

    .line 58
    sget p3, Lcom/zendesk/sdk/R$id;->request_list_item_subject:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lzendesk/support/requestlist/RequestListViewHolder;->subjectText:Landroid/widget/TextView;

    .line 59
    sget p3, Lcom/zendesk/sdk/R$id;->request_list_item_body:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lzendesk/support/requestlist/RequestListViewHolder;->commentText:Landroid/widget/TextView;

    .line 61
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/zendesk/sdk/R$dimen;->zs_request_list_avatar_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lzendesk/support/requestlist/RequestListViewHolder;->avatarRadius:I

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/requestlist/RequestListViewHolder;)Lzendesk/support/requestlist/RequestListView$OnItemClick;
    .locals 0

    .line 27
    iget-object p0, p0, Lzendesk/support/requestlist/RequestListViewHolder;->listener:Lzendesk/support/requestlist/RequestListView$OnItemClick;

    return-object p0
.end method

.method private bindAvatar(ZLjava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 104
    invoke-static {p3}, Lcom/zendesk/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListViewHolder;->avatarView:Lzendesk/support/ZendeskAvatarView;

    iget-object v1, p0, Lzendesk/support/requestlist/RequestListViewHolder;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget v0, p0, Lzendesk/support/requestlist/RequestListViewHolder;->avatarRadius:I

    invoke-virtual {p1, v1, p3, p2, v0}, Lzendesk/support/ZendeskAvatarView;->showUserWithAvatarImage(Lcom/squareup/picasso/Picasso;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListViewHolder;->avatarView:Lzendesk/support/ZendeskAvatarView;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lzendesk/support/ZendeskAvatarView;->showUserWithName(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListViewHolder;->avatarView:Lzendesk/support/ZendeskAvatarView;

    sget p2, Lcom/zendesk/sdk/R$string;->request_list_me:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lzendesk/support/ZendeskAvatarView;->showUserWithIdentifier(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static create(Landroid/content/Context;Landroid/view/ViewGroup;Lzendesk/support/requestlist/RequestListView$OnItemClick;Lcom/squareup/picasso/Picasso;)Lzendesk/support/requestlist/RequestListViewHolder;
    .locals 2

    .line 31
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 32
    sget v0, Lcom/zendesk/sdk/R$layout;->zs_request_list_ticket_item:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 33
    new-instance p1, Lzendesk/support/requestlist/RequestListViewHolder;

    invoke-direct {p1, p0, p2, p3}, Lzendesk/support/requestlist/RequestListViewHolder;-><init>(Landroid/view/View;Lzendesk/support/requestlist/RequestListView$OnItemClick;Lcom/squareup/picasso/Picasso;)V

    return-object p1
.end method

.method private generateUserText(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 97
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, ", "

    .line 99
    invoke-static {p1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDateTimeString(Ljava/util/Date;)Ljava/lang/CharSequence;
    .locals 3

    .line 138
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListViewHolder;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private style(ZZZ)V
    .locals 2

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListViewHolder;->subjectText:Landroid/widget/TextView;

    const/4 p3, 0x1

    invoke-static {p3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 120
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListViewHolder;->userText:Landroid/widget/TextView;

    invoke-static {p3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 121
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListViewHolder;->commentText:Landroid/widget/TextView;

    iget-object p3, p0, Lzendesk/support/requestlist/RequestListViewHolder;->context:Landroid/content/Context;

    sget v0, Lcom/zendesk/sdk/R$color;->zs_request_list_dark_text_color:I

    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListViewHolder;->timeText:Landroid/widget/TextView;

    sget p3, Lcom/zendesk/sdk/R$attr;->colorPrimary:I

    iget-object v0, p0, Lzendesk/support/requestlist/RequestListViewHolder;->context:Landroid/content/Context;

    sget v1, Lcom/zendesk/sdk/R$color;->zs_request_list_light_text_color:I

    invoke-static {p3, v0, v1}, Lzendesk/support/UiUtils;->themeAttributeToColor(ILandroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListViewHolder;->subjectText:Landroid/widget/TextView;

    const/4 p3, 0x0

    invoke-static {p3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 126
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListViewHolder;->userText:Landroid/widget/TextView;

    invoke-static {p3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 127
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListViewHolder;->commentText:Landroid/widget/TextView;

    iget-object p3, p0, Lzendesk/support/requestlist/RequestListViewHolder;->context:Landroid/content/Context;

    sget v0, Lcom/zendesk/sdk/R$color;->zs_request_list_light_text_color:I

    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListViewHolder;->timeText:Landroid/widget/TextView;

    iget-object p3, p0, Lzendesk/support/requestlist/RequestListViewHolder;->context:Landroid/content/Context;

    sget v0, Lcom/zendesk/sdk/R$color;->zs_request_list_light_text_color:I

    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 132
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListViewHolder;->commentText:Landroid/widget/TextView;

    iget-object p2, p0, Lzendesk/support/requestlist/RequestListViewHolder;->context:Landroid/content/Context;

    sget p3, Lcom/zendesk/sdk/R$color;->zs_request_cell_label_color_error:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    :cond_1
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lzendesk/support/requestlist/RequestListViewHolder;->context:Landroid/content/Context;

    sget p3, Lcom/zendesk/sdk/R$color;->zs_request_list_white:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method bind(Lzendesk/support/requestlist/RequestListItem;)V
    .locals 6

    .line 65
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListViewHolder;->userText:Landroid/widget/TextView;

    iget-object v1, p0, Lzendesk/support/requestlist/RequestListViewHolder;->context:Landroid/content/Context;

    sget v2, Lcom/zendesk/sdk/R$string;->request_list_me:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {p1}, Lzendesk/support/requestlist/RequestListItem;->getLastCommentingAgentNames()Ljava/util/List;

    move-result-object v2

    .line 65
    invoke-direct {p0, v1, v2}, Lzendesk/support/requestlist/RequestListViewHolder;->generateUserText(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListViewHolder;->subjectText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lzendesk/support/requestlist/RequestListItem;->hasAgentReplied()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lzendesk/support/requestlist/RequestListViewHolder;->context:Landroid/content/Context;

    sget v2, Lcom/zendesk/sdk/R$string;->request_list_re:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lzendesk/support/requestlist/RequestListItem;->getFirstMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1}, Lzendesk/support/requestlist/RequestListItem;->getFirstMessage()Ljava/lang/String;

    move-result-object v1

    .line 67
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p1}, Lzendesk/support/requestlist/RequestListItem;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListViewHolder;->commentText:Landroid/widget/TextView;

    sget v1, Lcom/zendesk/sdk/R$string;->request_list_ticket_closed:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {p1}, Lzendesk/support/requestlist/RequestListItem;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListViewHolder;->commentText:Landroid/widget/TextView;

    sget v1, Lcom/zendesk/sdk/R$string;->ask_request_list_failed_request_message:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 76
    :cond_2
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListViewHolder;->commentText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lzendesk/support/requestlist/RequestListItem;->getLastMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :goto_1
    invoke-virtual {p1}, Lzendesk/support/requestlist/RequestListItem;->getLastUpdated()Ljava/util/Date;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lzendesk/support/requestlist/RequestListViewHolder;->timeText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lzendesk/support/requestlist/RequestListViewHolder;->getDateTimeString(Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p1}, Lzendesk/support/requestlist/RequestListItem;->hasAgentReplied()Z

    move-result v0

    invoke-virtual {p1}, Lzendesk/support/requestlist/RequestListItem;->getLastCommentingAgentNames()Ljava/util/List;

    move-result-object v1

    .line 83
    invoke-virtual {p1}, Lzendesk/support/requestlist/RequestListItem;->getAvatar()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-direct {p0, v0, v1, v2}, Lzendesk/support/requestlist/RequestListViewHolder;->bindAvatar(ZLjava/util/List;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Lzendesk/support/requestlist/RequestListItem;->isUnread()Z

    move-result v0

    invoke-virtual {p1}, Lzendesk/support/requestlist/RequestListItem;->isFailed()Z

    move-result v1

    invoke-virtual {p1}, Lzendesk/support/requestlist/RequestListItem;->isClosed()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lzendesk/support/requestlist/RequestListViewHolder;->style(ZZZ)V

    .line 86
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lzendesk/support/requestlist/RequestListViewHolder$1;

    invoke-direct {v1, p0, p1}, Lzendesk/support/requestlist/RequestListViewHolder$1;-><init>(Lzendesk/support/requestlist/RequestListViewHolder;Lzendesk/support/requestlist/RequestListItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
