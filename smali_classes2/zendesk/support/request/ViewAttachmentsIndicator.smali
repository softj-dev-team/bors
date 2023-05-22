.class public Lzendesk/support/request/ViewAttachmentsIndicator;
.super Landroid/widget/FrameLayout;
.source "ViewAttachmentsIndicator.java"


# static fields
.field private static final COUNT_THRESHOLD:I = 0x9

.field private static final COUNT_THRESHOLD_TEXT:Ljava/lang/String;


# instance fields
.field private attachmentsCount:I

.field private attachmentsIndicatorBottomBorder:Landroid/view/View;

.field private attachmentsIndicatorCounter:Landroid/widget/TextView;

.field private attachmentsIndicatorIcon:Landroid/widget/ImageView;

.field private colorActive:I

.field private colorInactive:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzendesk/support/request/ViewAttachmentsIndicator;->COUNT_THRESHOLD_TEXT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0, p1}, Lzendesk/support/request/ViewAttachmentsIndicator;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-virtual {p0, p1}, Lzendesk/support/request/ViewAttachmentsIndicator;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    invoke-virtual {p0, p1}, Lzendesk/support/request/ViewAttachmentsIndicator;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    invoke-virtual {p0, p1}, Lzendesk/support/request/ViewAttachmentsIndicator;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method enableActiveState(Z)V
    .locals 1

    .line 157
    iget-object v0, p0, Lzendesk/support/request/ViewAttachmentsIndicator;->attachmentsIndicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_0

    iget p1, p0, Lzendesk/support/request/ViewAttachmentsIndicator;->colorActive:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lzendesk/support/request/ViewAttachmentsIndicator;->colorInactive:I

    :goto_0
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 160
    iget-object p1, p0, Lzendesk/support/request/ViewAttachmentsIndicator;->attachmentsIndicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method getAttachmentsCount()I
    .locals 1

    .line 98
    iget v0, p0, Lzendesk/support/request/ViewAttachmentsIndicator;->attachmentsCount:I

    return v0
.end method

.method init(Landroid/content/Context;)V
    .locals 2

    .line 66
    sget v0, Lcom/zendesk/sdk/R$layout;->zs_view_request_attachments_indicator:I

    invoke-static {p1, v0, p0}, Lzendesk/support/request/ViewAttachmentsIndicator;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 68
    invoke-virtual {p0}, Lzendesk/support/request/ViewAttachmentsIndicator;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 73
    :cond_0
    sget v0, Lcom/zendesk/sdk/R$id;->attachments_indicator_icon:I

    invoke-virtual {p0, v0}, Lzendesk/support/request/ViewAttachmentsIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lzendesk/support/request/ViewAttachmentsIndicator;->attachmentsIndicatorIcon:Landroid/widget/ImageView;

    .line 74
    sget v0, Lcom/zendesk/sdk/R$id;->attachments_indicator_bottom_border:I

    invoke-virtual {p0, v0}, Lzendesk/support/request/ViewAttachmentsIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/request/ViewAttachmentsIndicator;->attachmentsIndicatorBottomBorder:Landroid/view/View;

    .line 75
    sget v0, Lcom/zendesk/sdk/R$id;->attachments_indicator_counter:I

    invoke-virtual {p0, v0}, Lzendesk/support/request/ViewAttachmentsIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzendesk/support/request/ViewAttachmentsIndicator;->attachmentsIndicatorCounter:Landroid/widget/TextView;

    .line 78
    sget v0, Lcom/zendesk/sdk/R$attr;->colorPrimary:I

    sget v1, Lcom/zendesk/sdk/R$color;->zs_request_fallback_color_primary:I

    invoke-static {v0, p1, v1}, Lzendesk/support/UiUtils;->themeAttributeToColor(ILandroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lzendesk/support/request/ViewAttachmentsIndicator;->colorActive:I

    .line 80
    sget v0, Lcom/zendesk/sdk/R$color;->zs_request_attachment_indicator_color_inactive:I

    invoke-static {v0, p1}, Lzendesk/support/UiUtils;->resolveColor(ILandroid/content/Context;)I

    move-result p1

    iput p1, p0, Lzendesk/support/request/ViewAttachmentsIndicator;->colorInactive:I

    .line 83
    iget-object p1, p0, Lzendesk/support/request/ViewAttachmentsIndicator;->attachmentsIndicatorCounter:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 84
    sget v0, Lcom/zendesk/sdk/R$id;->inner_circle:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    iget v0, p0, Lzendesk/support/request/ViewAttachmentsIndicator;->colorActive:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 87
    invoke-virtual {p0}, Lzendesk/support/request/ViewAttachmentsIndicator;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/zendesk/sdk/R$string;->zs_request_attachment_indicator_accessibility:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lzendesk/support/request/ViewAttachmentsIndicator;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 89
    invoke-virtual {p0}, Lzendesk/support/request/ViewAttachmentsIndicator;->getAttachmentsCount()I

    move-result v0

    .line 88
    invoke-static {p1, v0}, Lzendesk/support/request/UtilsAttachment;->getContentDescriptionForAttachmentButton(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzendesk/support/request/ViewAttachmentsIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p0, v0}, Lzendesk/support/request/ViewAttachmentsIndicator;->setCounterVisible(Z)V

    .line 169
    invoke-virtual {p0, v0}, Lzendesk/support/request/ViewAttachmentsIndicator;->setAttachmentsCount(I)V

    .line 170
    invoke-virtual {p0, v0}, Lzendesk/support/request/ViewAttachmentsIndicator;->setBottomBorderVisible(Z)V

    .line 171
    invoke-virtual {p0, v0}, Lzendesk/support/request/ViewAttachmentsIndicator;->enableActiveState(Z)V

    return-void
.end method

.method setAttachmentsCount(I)V
    .locals 4

    .line 108
    iput p1, p0, Lzendesk/support/request/ViewAttachmentsIndicator;->attachmentsCount:I

    const/16 v0, 0x9

    if-le p1, v0, :cond_0

    .line 111
    sget v1, Lcom/zendesk/sdk/R$dimen;->zs_request_attachment_indicator_counter_width_double_digit:I

    goto :goto_0

    .line 112
    :cond_0
    sget v1, Lcom/zendesk/sdk/R$dimen;->zs_request_attachment_indicator_counter_width_single_digit:I

    .line 113
    :goto_0
    iget-object v2, p0, Lzendesk/support/request/ViewAttachmentsIndicator;->attachmentsIndicatorCounter:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 114
    invoke-virtual {p0}, Lzendesk/support/request/ViewAttachmentsIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 116
    iget-object v1, p0, Lzendesk/support/request/ViewAttachmentsIndicator;->attachmentsIndicatorCounter:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v1, p0, Lzendesk/support/request/ViewAttachmentsIndicator;->attachmentsIndicatorCounter:Landroid/widget/TextView;

    if-le p1, v0, :cond_1

    .line 118
    sget-object v0, Lzendesk/support/request/ViewAttachmentsIndicator;->COUNT_THRESHOLD_TEXT:Ljava/lang/String;

    goto :goto_1

    .line 119
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 122
    :goto_2
    invoke-virtual {p0, p1}, Lzendesk/support/request/ViewAttachmentsIndicator;->setCounterVisible(Z)V

    .line 123
    invoke-virtual {p0, p1}, Lzendesk/support/request/ViewAttachmentsIndicator;->setBottomBorderVisible(Z)V

    .line 124
    invoke-virtual {p0, p1}, Lzendesk/support/request/ViewAttachmentsIndicator;->enableActiveState(Z)V

    .line 125
    invoke-virtual {p0}, Lzendesk/support/request/ViewAttachmentsIndicator;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 126
    invoke-virtual {p0}, Lzendesk/support/request/ViewAttachmentsIndicator;->getAttachmentsCount()I

    move-result v0

    .line 125
    invoke-static {p1, v0}, Lzendesk/support/request/UtilsAttachment;->getContentDescriptionForAttachmentButton(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzendesk/support/request/ViewAttachmentsIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setBottomBorderVisible(Z)V
    .locals 1

    .line 144
    iget-object v0, p0, Lzendesk/support/request/ViewAttachmentsIndicator;->attachmentsIndicatorBottomBorder:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method setCounterVisible(Z)V
    .locals 1

    .line 135
    iget-object v0, p0, Lzendesk/support/request/ViewAttachmentsIndicator;->attachmentsIndicatorCounter:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
