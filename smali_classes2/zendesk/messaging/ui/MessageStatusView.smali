.class public Lzendesk/messaging/ui/MessageStatusView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "MessageStatusView.java"


# instance fields
.field private deliveredIconColor:I

.field private failedIconColor:I

.field private pendingIconColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0}, Lzendesk/messaging/ui/MessageStatusView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0}, Lzendesk/messaging/ui/MessageStatusView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0}, Lzendesk/messaging/ui/MessageStatusView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 39
    sget v0, Lzendesk/messaging/R$attr;->colorPrimary:I

    .line 40
    invoke-virtual {p0}, Lzendesk/messaging/ui/MessageStatusView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lzendesk/messaging/R$color;->zui_color_primary:I

    .line 39
    invoke-static {v0, v1, v2}, Lzendesk/commonui/UiUtils;->themeAttributeToColor(ILandroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lzendesk/messaging/ui/MessageStatusView;->deliveredIconColor:I

    .line 41
    sget v0, Lzendesk/messaging/R$color;->zui_error_text_color:I

    invoke-virtual {p0}, Lzendesk/messaging/ui/MessageStatusView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lzendesk/commonui/UiUtils;->resolveColor(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lzendesk/messaging/ui/MessageStatusView;->failedIconColor:I

    .line 42
    sget v0, Lzendesk/messaging/R$color;->zui_cell_pending_indicator_color:I

    invoke-virtual {p0}, Lzendesk/messaging/ui/MessageStatusView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lzendesk/commonui/UiUtils;->resolveColor(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lzendesk/messaging/ui/MessageStatusView;->pendingIconColor:I

    return-void
.end method


# virtual methods
.method public setStatus(Lzendesk/messaging/MessagingItem$Query$Status;)V
    .locals 1

    .line 46
    sget-object v0, Lzendesk/messaging/ui/MessageStatusView$1;->$SwitchMap$zendesk$messaging$MessagingItem$Query$Status:[I

    invoke-virtual {p1}, Lzendesk/messaging/MessagingItem$Query$Status;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    .line 61
    invoke-virtual {p0, p1}, Lzendesk/messaging/ui/MessageStatusView;->setImageResource(I)V

    goto :goto_0

    .line 57
    :cond_0
    iget p1, p0, Lzendesk/messaging/ui/MessageStatusView;->pendingIconColor:I

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 58
    sget p1, Lzendesk/messaging/R$drawable;->zui_ic_status_pending:I

    invoke-virtual {p0, p1}, Lzendesk/messaging/ui/MessageStatusView;->setImageResource(I)V

    goto :goto_0

    .line 53
    :cond_1
    iget p1, p0, Lzendesk/messaging/ui/MessageStatusView;->deliveredIconColor:I

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 54
    sget p1, Lzendesk/messaging/R$drawable;->zui_ic_status_sent:I

    invoke-virtual {p0, p1}, Lzendesk/messaging/ui/MessageStatusView;->setImageResource(I)V

    goto :goto_0

    .line 49
    :cond_2
    iget p1, p0, Lzendesk/messaging/ui/MessageStatusView;->failedIconColor:I

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 50
    sget p1, Lzendesk/messaging/R$drawable;->zui_ic_status_fail:I

    invoke-virtual {p0, p1}, Lzendesk/messaging/ui/MessageStatusView;->setImageResource(I)V

    :goto_0
    return-void
.end method
