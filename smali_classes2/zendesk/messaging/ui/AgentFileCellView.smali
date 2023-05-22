.class public Lzendesk/messaging/ui/AgentFileCellView;
.super Landroid/widget/LinearLayout;
.source "AgentFileCellView.java"

# interfaces
.implements Lzendesk/messaging/ui/Updatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/messaging/ui/AgentFileCellView$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lzendesk/messaging/ui/Updatable<",
        "Lzendesk/messaging/ui/AgentFileCellView$State;",
        ">;"
    }
.end annotation


# instance fields
.field private appIcon:Landroid/widget/ImageView;

.field private avatarView:Lzendesk/messaging/ui/AvatarView;

.field private botLabel:Landroid/view/View;

.field private bubble:Landroid/widget/LinearLayout;

.field private defaultAppIcon:Landroid/graphics/drawable/Drawable;

.field private fileDescriptor:Landroid/widget/TextView;

.field private fileName:Landroid/widget/TextView;

.field private labelContainer:Landroid/view/View;

.field private labelField:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0}, Lzendesk/messaging/ui/AgentFileCellView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-direct {p0}, Lzendesk/messaging/ui/AgentFileCellView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    invoke-direct {p0}, Lzendesk/messaging/ui/AgentFileCellView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/AgentFileCellView;->setOrientation(I)V

    .line 59
    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentFileCellView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lzendesk/messaging/R$layout;->zui_view_agent_file_cell_content:I

    invoke-static {v0, v1, p0}, Lzendesk/messaging/ui/AgentFileCellView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private setBubbleClickListeners(Lzendesk/messaging/ui/AgentFileCellView$State;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lzendesk/messaging/ui/AgentFileCellView;->bubble:Landroid/widget/LinearLayout;

    new-instance v1, Lzendesk/messaging/ui/AgentFileCellView$1;

    invoke-direct {v1, p0, p1}, Lzendesk/messaging/ui/AgentFileCellView$1;-><init>(Lzendesk/messaging/ui/AgentFileCellView;Lzendesk/messaging/ui/AgentFileCellView$State;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .line 64
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 65
    sget v0, Lzendesk/messaging/R$id;->zui_agent_message_avatar:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/AgentFileCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzendesk/messaging/ui/AvatarView;

    iput-object v0, p0, Lzendesk/messaging/ui/AgentFileCellView;->avatarView:Lzendesk/messaging/ui/AvatarView;

    .line 66
    sget v0, Lzendesk/messaging/R$id;->zui_cell_file_container:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/AgentFileCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lzendesk/messaging/ui/AgentFileCellView;->bubble:Landroid/widget/LinearLayout;

    .line 67
    sget v0, Lzendesk/messaging/R$id;->zui_file_cell_name:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/AgentFileCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzendesk/messaging/ui/AgentFileCellView;->fileName:Landroid/widget/TextView;

    .line 68
    sget v0, Lzendesk/messaging/R$id;->zui_cell_file_description:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/AgentFileCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzendesk/messaging/ui/AgentFileCellView;->fileDescriptor:Landroid/widget/TextView;

    .line 69
    sget v0, Lzendesk/messaging/R$id;->zui_cell_file_app_icon:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/AgentFileCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lzendesk/messaging/ui/AgentFileCellView;->appIcon:Landroid/widget/ImageView;

    .line 70
    sget v0, Lzendesk/messaging/R$id;->zui_cell_status_view:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/AgentFileCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzendesk/messaging/ui/AgentFileCellView;->labelContainer:Landroid/view/View;

    .line 71
    sget v0, Lzendesk/messaging/R$id;->zui_cell_label_text_field:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/AgentFileCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzendesk/messaging/ui/AgentFileCellView;->labelField:Landroid/widget/TextView;

    .line 72
    sget v0, Lzendesk/messaging/R$id;->zui_cell_label_supplementary_label:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/AgentFileCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzendesk/messaging/ui/AgentFileCellView;->botLabel:Landroid/view/View;

    .line 74
    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentFileCellView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lzendesk/messaging/R$drawable;->zui_ic_insert_drive_file:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lzendesk/messaging/ui/AgentFileCellView;->defaultAppIcon:Landroid/graphics/drawable/Drawable;

    .line 75
    sget v0, Lzendesk/messaging/R$attr;->colorPrimary:I

    .line 76
    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentFileCellView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lzendesk/messaging/R$color;->zui_color_primary:I

    invoke-static {v0, v1, v2}, Lzendesk/commonui/UiUtils;->themeAttributeToColor(ILandroid/content/Context;I)I

    move-result v0

    .line 77
    iget-object v1, p0, Lzendesk/messaging/ui/AgentFileCellView;->defaultAppIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lzendesk/messaging/ui/AgentFileCellView;->appIcon:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lzendesk/commonui/UiUtils;->setTint(ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lzendesk/messaging/ui/AgentFileCellView$State;

    invoke-virtual {p0, p1}, Lzendesk/messaging/ui/AgentFileCellView;->update(Lzendesk/messaging/ui/AgentFileCellView$State;)V

    return-void
.end method

.method public update(Lzendesk/messaging/ui/AgentFileCellView$State;)V
    .locals 4

    .line 82
    iget-object v0, p0, Lzendesk/messaging/ui/AgentFileCellView;->fileName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentFileCellView$State;->getAttachment()Lzendesk/messaging/Attachment;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/messaging/Attachment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lzendesk/messaging/ui/AgentFileCellView;->fileDescriptor:Landroid/widget/TextView;

    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentFileCellView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lzendesk/messaging/ui/AgentFileCellView$State;->getFileDescriptor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lzendesk/messaging/ui/AgentFileCellView;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentFileCellView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentFileCellView$State;->getAttachment()Lzendesk/messaging/Attachment;

    move-result-object v2

    invoke-virtual {v2}, Lzendesk/messaging/Attachment;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lzendesk/messaging/ui/AgentFileCellView;->defaultAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v3}, Lzendesk/messaging/ui/UtilsAttachment;->getAppIconForFile(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    invoke-direct {p0, p1}, Lzendesk/messaging/ui/AgentFileCellView;->setBubbleClickListeners(Lzendesk/messaging/ui/AgentFileCellView$State;)V

    .line 89
    iget-object v0, p0, Lzendesk/messaging/ui/AgentFileCellView;->labelField:Landroid/widget/TextView;

    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentFileCellView$State;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lzendesk/messaging/ui/AgentFileCellView;->botLabel:Landroid/view/View;

    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentFileCellView$State;->isBot()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentFileCellView$State;->getAvatarStateRenderer()Lzendesk/messaging/ui/AvatarStateRenderer;

    move-result-object v0

    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentFileCellView$State;->getAvatarState()Lzendesk/messaging/ui/AvatarState;

    move-result-object v1

    iget-object v2, p0, Lzendesk/messaging/ui/AgentFileCellView;->avatarView:Lzendesk/messaging/ui/AvatarView;

    invoke-virtual {v0, v1, v2}, Lzendesk/messaging/ui/AvatarStateRenderer;->render(Lzendesk/messaging/ui/AvatarState;Lzendesk/messaging/ui/AvatarView;)V

    .line 93
    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentFileCellView$State;->getProps()Lzendesk/messaging/ui/MessagingCellProps;

    move-result-object p1

    iget-object v0, p0, Lzendesk/messaging/ui/AgentFileCellView;->labelContainer:Landroid/view/View;

    iget-object v1, p0, Lzendesk/messaging/ui/AgentFileCellView;->avatarView:Lzendesk/messaging/ui/AvatarView;

    invoke-virtual {p1, p0, v0, v1}, Lzendesk/messaging/ui/MessagingCellProps;->apply(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
