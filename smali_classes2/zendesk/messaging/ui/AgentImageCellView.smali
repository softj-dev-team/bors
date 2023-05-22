.class public Lzendesk/messaging/ui/AgentImageCellView;
.super Landroid/widget/LinearLayout;
.source "AgentImageCellView.java"

# interfaces
.implements Lzendesk/messaging/ui/Updatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/messaging/ui/AgentImageCellView$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lzendesk/messaging/ui/Updatable<",
        "Lzendesk/messaging/ui/AgentImageCellView$State;",
        ">;"
    }
.end annotation


# instance fields
.field private avatarView:Lzendesk/messaging/ui/AvatarView;

.field private botLabel:Landroid/view/View;

.field private cornerRadius:I

.field private imageView:Landroid/widget/ImageView;

.field private labelContainer:Landroid/view/View;

.field private labelField:Landroid/widget/TextView;

.field private final placeholder:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentImageCellView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lzendesk/messaging/R$drawable;->zui_background_agent_cell:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/ui/AgentImageCellView;->placeholder:Landroid/graphics/drawable/Drawable;

    .line 36
    invoke-direct {p0}, Lzendesk/messaging/ui/AgentImageCellView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentImageCellView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lzendesk/messaging/R$drawable;->zui_background_agent_cell:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/ui/AgentImageCellView;->placeholder:Landroid/graphics/drawable/Drawable;

    .line 41
    invoke-direct {p0}, Lzendesk/messaging/ui/AgentImageCellView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentImageCellView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lzendesk/messaging/R$drawable;->zui_background_agent_cell:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/ui/AgentImageCellView;->placeholder:Landroid/graphics/drawable/Drawable;

    .line 46
    invoke-direct {p0}, Lzendesk/messaging/ui/AgentImageCellView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/AgentImageCellView;->setOrientation(I)V

    .line 51
    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentImageCellView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lzendesk/messaging/R$layout;->zui_view_agent_image_cell_content:I

    invoke-static {v0, v1, p0}, Lzendesk/messaging/ui/AgentImageCellView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 52
    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentImageCellView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzendesk/messaging/R$dimen;->zui_cell_bubble_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lzendesk/messaging/ui/AgentImageCellView;->cornerRadius:I

    return-void
.end method

.method private loadImageIntoImageView(Lzendesk/messaging/ui/AgentImageCellView$State;)V
    .locals 4

    .line 90
    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentImageCellView$State;->getPicasso()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    .line 91
    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentImageCellView$State;->getAttachment()Lzendesk/messaging/Attachment;

    move-result-object p1

    invoke-virtual {p1}, Lzendesk/messaging/Attachment;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lzendesk/messaging/ui/AgentImageCellView;->imageView:Landroid/widget/ImageView;

    iget v2, p0, Lzendesk/messaging/ui/AgentImageCellView;->cornerRadius:I

    iget-object v3, p0, Lzendesk/messaging/ui/AgentImageCellView;->placeholder:Landroid/graphics/drawable/Drawable;

    .line 89
    invoke-static {v0, p1, v1, v2, v3}, Lzendesk/messaging/ui/UtilsCellView;->loadImageWithRoundedCorners(Lcom/squareup/picasso/Picasso;Ljava/lang/String;Landroid/widget/ImageView;ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 58
    sget v0, Lzendesk/messaging/R$id;->zui_agent_message_avatar:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/AgentImageCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzendesk/messaging/ui/AvatarView;

    iput-object v0, p0, Lzendesk/messaging/ui/AgentImageCellView;->avatarView:Lzendesk/messaging/ui/AvatarView;

    .line 59
    sget v0, Lzendesk/messaging/R$id;->zui_image_cell_image:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/AgentImageCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lzendesk/messaging/ui/AgentImageCellView;->imageView:Landroid/widget/ImageView;

    .line 60
    sget v0, Lzendesk/messaging/R$id;->zui_cell_status_view:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/AgentImageCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzendesk/messaging/ui/AgentImageCellView;->labelContainer:Landroid/view/View;

    .line 61
    sget v0, Lzendesk/messaging/R$id;->zui_cell_label_text_field:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/AgentImageCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzendesk/messaging/ui/AgentImageCellView;->labelField:Landroid/widget/TextView;

    .line 62
    sget v0, Lzendesk/messaging/R$id;->zui_cell_label_supplementary_label:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/AgentImageCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzendesk/messaging/ui/AgentImageCellView;->botLabel:Landroid/view/View;

    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lzendesk/messaging/ui/AgentImageCellView$State;

    invoke-virtual {p0, p1}, Lzendesk/messaging/ui/AgentImageCellView;->update(Lzendesk/messaging/ui/AgentImageCellView$State;)V

    return-void
.end method

.method public update(Lzendesk/messaging/ui/AgentImageCellView$State;)V
    .locals 3

    .line 67
    invoke-direct {p0, p1}, Lzendesk/messaging/ui/AgentImageCellView;->loadImageIntoImageView(Lzendesk/messaging/ui/AgentImageCellView$State;)V

    .line 69
    iget-object v0, p0, Lzendesk/messaging/ui/AgentImageCellView;->labelField:Landroid/widget/TextView;

    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentImageCellView$State;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lzendesk/messaging/ui/AgentImageCellView;->botLabel:Landroid/view/View;

    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentImageCellView$State;->isBot()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lzendesk/messaging/ui/AgentImageCellView;->imageView:Landroid/widget/ImageView;

    new-instance v1, Lzendesk/messaging/ui/AgentImageCellView$1;

    invoke-direct {v1, p0, p1}, Lzendesk/messaging/ui/AgentImageCellView$1;-><init>(Lzendesk/messaging/ui/AgentImageCellView;Lzendesk/messaging/ui/AgentImageCellView$State;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentImageCellView$State;->getAvatarStateRenderer()Lzendesk/messaging/ui/AvatarStateRenderer;

    move-result-object v0

    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentImageCellView$State;->getAvatarState()Lzendesk/messaging/ui/AvatarState;

    move-result-object v1

    iget-object v2, p0, Lzendesk/messaging/ui/AgentImageCellView;->avatarView:Lzendesk/messaging/ui/AvatarView;

    invoke-virtual {v0, v1, v2}, Lzendesk/messaging/ui/AvatarStateRenderer;->render(Lzendesk/messaging/ui/AvatarState;Lzendesk/messaging/ui/AvatarView;)V

    .line 80
    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentImageCellView$State;->getProps()Lzendesk/messaging/ui/MessagingCellProps;

    move-result-object p1

    iget-object v0, p0, Lzendesk/messaging/ui/AgentImageCellView;->labelContainer:Landroid/view/View;

    iget-object v1, p0, Lzendesk/messaging/ui/AgentImageCellView;->avatarView:Lzendesk/messaging/ui/AvatarView;

    invoke-virtual {p1, p0, v0, v1}, Lzendesk/messaging/ui/MessagingCellProps;->apply(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
