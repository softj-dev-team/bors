.class public Lzendesk/messaging/ui/AgentMessageView;
.super Landroid/widget/LinearLayout;
.source "AgentMessageView.java"

# interfaces
.implements Lzendesk/messaging/ui/Updatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/messaging/ui/AgentMessageView$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lzendesk/messaging/ui/Updatable<",
        "Lzendesk/messaging/ui/AgentMessageView$State;",
        ">;"
    }
.end annotation


# instance fields
.field private avatarView:Lzendesk/messaging/ui/AvatarView;

.field private botLabel:Landroid/view/View;

.field private labelContainer:Landroid/view/View;

.field private labelField:Landroid/widget/TextView;

.field private textField:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0}, Lzendesk/messaging/ui/AgentMessageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0}, Lzendesk/messaging/ui/AgentMessageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0}, Lzendesk/messaging/ui/AgentMessageView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/AgentMessageView;->setOrientation(I)V

    .line 41
    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentMessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lzendesk/messaging/R$layout;->zui_view_text_response_content:I

    invoke-static {v1, v2, p0}, Lzendesk/messaging/ui/AgentMessageView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/AgentMessageView;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .line 47
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 48
    sget v0, Lzendesk/messaging/R$id;->zui_agent_message_avatar:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/AgentMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzendesk/messaging/ui/AvatarView;

    iput-object v0, p0, Lzendesk/messaging/ui/AgentMessageView;->avatarView:Lzendesk/messaging/ui/AvatarView;

    .line 49
    sget v0, Lzendesk/messaging/R$id;->zui_agent_message_cell_text_field:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/AgentMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzendesk/messaging/ui/AgentMessageView;->textField:Landroid/widget/TextView;

    .line 50
    sget v0, Lzendesk/messaging/R$id;->zui_cell_status_view:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/AgentMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzendesk/messaging/ui/AgentMessageView;->labelContainer:Landroid/view/View;

    .line 51
    sget v0, Lzendesk/messaging/R$id;->zui_cell_label_text_field:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/AgentMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzendesk/messaging/ui/AgentMessageView;->labelField:Landroid/widget/TextView;

    .line 52
    sget v0, Lzendesk/messaging/R$id;->zui_cell_label_supplementary_label:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/AgentMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzendesk/messaging/ui/AgentMessageView;->botLabel:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lzendesk/messaging/ui/AgentMessageView;->labelField:Landroid/widget/TextView;

    sget v1, Lzendesk/messaging/R$color;->zui_text_color_dark_secondary:I

    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentMessageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lzendesk/commonui/UiUtils;->resolveColor(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    iget-object v0, p0, Lzendesk/messaging/ui/AgentMessageView;->textField:Landroid/widget/TextView;

    sget v1, Lzendesk/messaging/R$color;->zui_text_color_dark_primary:I

    invoke-virtual {p0}, Lzendesk/messaging/ui/AgentMessageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lzendesk/commonui/UiUtils;->resolveColor(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lzendesk/messaging/ui/AgentMessageView$State;

    invoke-virtual {p0, p1}, Lzendesk/messaging/ui/AgentMessageView;->update(Lzendesk/messaging/ui/AgentMessageView$State;)V

    return-void
.end method

.method public update(Lzendesk/messaging/ui/AgentMessageView$State;)V
    .locals 3

    .line 60
    iget-object v0, p0, Lzendesk/messaging/ui/AgentMessageView;->textField:Landroid/widget/TextView;

    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentMessageView$State;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lzendesk/messaging/ui/AgentMessageView;->textField:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 62
    iget-object v0, p0, Lzendesk/messaging/ui/AgentMessageView;->labelField:Landroid/widget/TextView;

    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentMessageView$State;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lzendesk/messaging/ui/AgentMessageView;->botLabel:Landroid/view/View;

    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentMessageView$State;->isBot()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentMessageView$State;->getAvatarStateRenderer()Lzendesk/messaging/ui/AvatarStateRenderer;

    move-result-object v0

    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentMessageView$State;->getAvatarState()Lzendesk/messaging/ui/AvatarState;

    move-result-object v1

    iget-object v2, p0, Lzendesk/messaging/ui/AgentMessageView;->avatarView:Lzendesk/messaging/ui/AvatarView;

    invoke-virtual {v0, v1, v2}, Lzendesk/messaging/ui/AvatarStateRenderer;->render(Lzendesk/messaging/ui/AvatarState;Lzendesk/messaging/ui/AvatarView;)V

    .line 65
    invoke-virtual {p1}, Lzendesk/messaging/ui/AgentMessageView$State;->getProps()Lzendesk/messaging/ui/MessagingCellProps;

    move-result-object p1

    iget-object v0, p0, Lzendesk/messaging/ui/AgentMessageView;->labelContainer:Landroid/view/View;

    iget-object v1, p0, Lzendesk/messaging/ui/AgentMessageView;->avatarView:Lzendesk/messaging/ui/AvatarView;

    invoke-virtual {p1, p0, v0, v1}, Lzendesk/messaging/ui/MessagingCellProps;->apply(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
