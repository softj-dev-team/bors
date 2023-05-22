.class Lzendesk/messaging/ui/UtilsEndUserCellView;
.super Ljava/lang/Object;
.source "UtilsEndUserCellView.java"


# static fields
.field private static final ATTACHMENTS_NOT_SUPPORTED:I

.field private static final ATTACHMENT_COULD_NOT_BE_SENT:I

.field private static final ATTACHMENT_TYPE_NOT_SUPPORTED:I

.field private static final ERROR_BACKGROUND:I

.field private static final ERROR_BACKGROUND_COLOR:I

.field private static final EXCEEDING_MAX_FILE_SIZE:I

.field private static final FILE_BACKGROUND:I

.field private static final LOG_TAG:Ljava/lang/String; = "UtilsEndUserCellView"

.field private static final PENDING_COLOR:I

.field private static final TAP_TO_RETRY:I

.field private static final USER_MESSAGE_BACKGROUND:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    sget v0, Lzendesk/messaging/R$drawable;->zui_background_cell_errored:I

    sput v0, Lzendesk/messaging/ui/UtilsEndUserCellView;->ERROR_BACKGROUND:I

    .line 37
    sget v0, Lzendesk/messaging/R$drawable;->zui_background_cell_file:I

    sput v0, Lzendesk/messaging/ui/UtilsEndUserCellView;->FILE_BACKGROUND:I

    .line 39
    sget v0, Lzendesk/messaging/R$drawable;->zui_background_end_user_cell:I

    sput v0, Lzendesk/messaging/ui/UtilsEndUserCellView;->USER_MESSAGE_BACKGROUND:I

    .line 41
    sget v0, Lzendesk/messaging/R$string;->zui_label_tap_retry:I

    sput v0, Lzendesk/messaging/ui/UtilsEndUserCellView;->TAP_TO_RETRY:I

    .line 43
    sget v0, Lzendesk/messaging/R$string;->zui_message_log_message_file_exceeds_max_size:I

    sput v0, Lzendesk/messaging/ui/UtilsEndUserCellView;->EXCEEDING_MAX_FILE_SIZE:I

    .line 45
    sget v0, Lzendesk/messaging/R$string;->zui_message_log_message_attachments_not_supported:I

    sput v0, Lzendesk/messaging/ui/UtilsEndUserCellView;->ATTACHMENTS_NOT_SUPPORTED:I

    .line 47
    sget v0, Lzendesk/messaging/R$string;->zui_message_log_message_attachment_type_not_supported:I

    sput v0, Lzendesk/messaging/ui/UtilsEndUserCellView;->ATTACHMENT_TYPE_NOT_SUPPORTED:I

    .line 50
    sget v0, Lzendesk/messaging/R$string;->zui_message_log_attachment_sending_failed:I

    sput v0, Lzendesk/messaging/ui/UtilsEndUserCellView;->ATTACHMENT_COULD_NOT_BE_SENT:I

    .line 52
    sget v0, Lzendesk/messaging/R$color;->zui_error_background_color:I

    sput v0, Lzendesk/messaging/ui/UtilsEndUserCellView;->ERROR_BACKGROUND_COLOR:I

    .line 54
    sget v0, Lzendesk/messaging/R$color;->zui_color_white_60:I

    sput v0, Lzendesk/messaging/ui/UtilsEndUserCellView;->PENDING_COLOR:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lzendesk/messaging/MessagingItem$Query$Status;)Ljava/util/Set;
    .locals 0

    .line 30
    invoke-static {p0}, Lzendesk/messaging/ui/UtilsEndUserCellView;->getMenuOptions(Lzendesk/messaging/MessagingItem$Query$Status;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static getAttachmentLabelErrorMessage(Lzendesk/messaging/ui/EndUserCellFileState;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 148
    invoke-virtual {p0}, Lzendesk/messaging/ui/EndUserCellFileState;->getStatus()Lzendesk/messaging/MessagingItem$Query$Status;

    move-result-object v0

    sget-object v1, Lzendesk/messaging/MessagingItem$Query$Status;->FAILED:Lzendesk/messaging/MessagingItem$Query$Status;

    if-ne v0, v1, :cond_0

    .line 149
    sget p0, Lzendesk/messaging/ui/UtilsEndUserCellView;->TAP_TO_RETRY:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 151
    :cond_0
    invoke-static {p0, p1}, Lzendesk/messaging/ui/UtilsEndUserCellView;->getAttachmentNonRetryableErrorMessage(Lzendesk/messaging/ui/EndUserCellFileState;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getAttachmentNonRetryableErrorMessage(Lzendesk/messaging/ui/EndUserCellFileState;Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 165
    sget v0, Lzendesk/messaging/ui/UtilsEndUserCellView;->ATTACHMENT_COULD_NOT_BE_SENT:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {p0}, Lzendesk/messaging/ui/EndUserCellFileState;->getFailureReason()Lzendesk/messaging/MessagingItem$FileQuery$FailureReason;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 171
    :cond_0
    sget-object v1, Lzendesk/messaging/ui/UtilsEndUserCellView$5;->$SwitchMap$zendesk$messaging$MessagingItem$FileQuery$FailureReason:[I

    invoke-virtual {p0}, Lzendesk/messaging/ui/EndUserCellFileState;->getFailureReason()Lzendesk/messaging/MessagingItem$FileQuery$FailureReason;

    move-result-object v2

    invoke-virtual {v2}, Lzendesk/messaging/MessagingItem$FileQuery$FailureReason;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 p0, 0x2

    if-eq v1, p0, :cond_2

    const/4 p0, 0x3

    if-eq v1, p0, :cond_1

    return-object v0

    .line 184
    :cond_1
    sget p0, Lzendesk/messaging/ui/UtilsEndUserCellView;->ATTACHMENT_TYPE_NOT_SUPPORTED:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 182
    :cond_2
    sget p0, Lzendesk/messaging/ui/UtilsEndUserCellView;->ATTACHMENTS_NOT_SUPPORTED:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 173
    :cond_3
    invoke-virtual {p0}, Lzendesk/messaging/ui/EndUserCellFileState;->getAttachmentSettings()Lzendesk/messaging/AttachmentSettings;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 174
    sget v0, Lzendesk/messaging/ui/UtilsEndUserCellView;->EXCEEDING_MAX_FILE_SIZE:I

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 176
    invoke-virtual {p0}, Lzendesk/messaging/ui/EndUserCellFileState;->getAttachmentSettings()Lzendesk/messaging/AttachmentSettings;

    move-result-object p0

    invoke-virtual {p0}, Lzendesk/messaging/AttachmentSettings;->getMaxFileSize()J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lzendesk/messaging/ui/UtilsAttachment;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    .line 174
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0
.end method

.method static getImageLoadingPlaceholder(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 314
    sget v0, Lzendesk/messaging/R$attr;->colorPrimary:I

    sget v1, Lzendesk/messaging/R$color;->zui_color_primary:I

    invoke-static {v0, p0, v1}, Lzendesk/commonui/UiUtils;->themeAttributeToColor(ILandroid/content/Context;I)I

    move-result v0

    .line 315
    sget v1, Lzendesk/messaging/R$attr;->colorPrimaryDark:I

    sget v2, Lzendesk/messaging/R$color;->zui_color_primary_dark:I

    invoke-static {v1, p0, v2}, Lzendesk/commonui/UiUtils;->themeAttributeToColor(ILandroid/content/Context;I)I

    move-result v1

    .line 317
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lzendesk/messaging/R$dimen;->zui_cell_bubble_corner_radius:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    .line 319
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v1, v4, v5

    const/4 v5, 0x1

    aput v0, v4, v5

    const/4 v0, 0x2

    aput v1, v4, v0

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 322
    invoke-virtual {v2, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v2
.end method

.method private static getMenuOptions(Lzendesk/messaging/MessagingItem$Query$Status;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/messaging/MessagingItem$Query$Status;",
            ")",
            "Ljava/util/Set<",
            "Lzendesk/messaging/ui/MessagePopUpHelper$Option;",
            ">;"
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 295
    sget-object v1, Lzendesk/messaging/MessagingItem$Query$Status;->FAILED:Lzendesk/messaging/MessagingItem$Query$Status;

    if-ne p0, v1, :cond_0

    .line 296
    sget-object p0, Lzendesk/messaging/ui/MessagePopUpHelper$Option;->DELETE:Lzendesk/messaging/ui/MessagePopUpHelper$Option;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 297
    sget-object p0, Lzendesk/messaging/ui/MessagePopUpHelper$Option;->RETRY:Lzendesk/messaging/ui/MessagePopUpHelper$Option;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 298
    :cond_0
    sget-object v1, Lzendesk/messaging/MessagingItem$Query$Status;->FAILED_NO_RETRY:Lzendesk/messaging/MessagingItem$Query$Status;

    if-ne p0, v1, :cond_1

    .line 299
    sget-object p0, Lzendesk/messaging/ui/MessagePopUpHelper$Option;->DELETE:Lzendesk/messaging/ui/MessagePopUpHelper$Option;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object v0
.end method

.method static isFailedCell(Lzendesk/messaging/ui/EndUserCellBaseState;)Z
    .locals 1

    .line 63
    invoke-virtual {p0}, Lzendesk/messaging/ui/EndUserCellBaseState;->getStatus()Lzendesk/messaging/MessagingItem$Query$Status;

    move-result-object p0

    .line 64
    sget-object v0, Lzendesk/messaging/MessagingItem$Query$Status;->FAILED:Lzendesk/messaging/MessagingItem$Query$Status;

    if-eq p0, v0, :cond_1

    sget-object v0, Lzendesk/messaging/MessagingItem$Query$Status;->FAILED_NO_RETRY:Lzendesk/messaging/MessagingItem$Query$Status;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static setAttachmentClickListener(Lzendesk/messaging/ui/EndUserCellFileState;Landroid/view/View;)V
    .locals 2

    .line 237
    sget-object v0, Lzendesk/messaging/ui/UtilsEndUserCellView$5;->$SwitchMap$zendesk$messaging$MessagingItem$Query$Status:[I

    invoke-virtual {p0}, Lzendesk/messaging/ui/EndUserCellFileState;->getStatus()Lzendesk/messaging/MessagingItem$Query$Status;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/messaging/MessagingItem$Query$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    new-instance v0, Lzendesk/messaging/ui/UtilsEndUserCellView$3;

    invoke-direct {v0, p0}, Lzendesk/messaging/ui/UtilsEndUserCellView$3;-><init>(Lzendesk/messaging/ui/EndUserCellFileState;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 244
    :cond_1
    new-instance v0, Lzendesk/messaging/ui/UtilsEndUserCellView$2;

    invoke-direct {v0, p0}, Lzendesk/messaging/ui/UtilsEndUserCellView$2;-><init>(Lzendesk/messaging/ui/EndUserCellFileState;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 240
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method static setCellBackground(Lzendesk/messaging/ui/EndUserCellBaseState;Landroid/view/View;)V
    .locals 3

    .line 76
    invoke-static {p0}, Lzendesk/messaging/ui/UtilsEndUserCellView;->isFailedCell(Lzendesk/messaging/ui/EndUserCellBaseState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    sget p0, Lzendesk/messaging/ui/UtilsEndUserCellView;->ERROR_BACKGROUND:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 78
    :cond_0
    instance-of p0, p0, Lzendesk/messaging/ui/EndUserCellFileState;

    if-eqz p0, :cond_1

    .line 79
    sget p0, Lzendesk/messaging/ui/UtilsEndUserCellView;->FILE_BACKGROUND:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lzendesk/messaging/ui/UtilsEndUserCellView;->USER_MESSAGE_BACKGROUND:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 85
    sget v0, Lzendesk/messaging/R$attr;->colorPrimary:I

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lzendesk/messaging/R$color;->zui_color_primary:I

    .line 85
    invoke-static {v0, v1, v2}, Lzendesk/commonui/UiUtils;->themeAttributeToColor(ILandroid/content/Context;I)I

    move-result v0

    .line 87
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 88
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "UtilsEndUserCellView"

    const-string v0, "Failed to set background, resource R.drawable.zui_background_end_user_cell could not be found"

    .line 90
    invoke-static {p1, v0, p0}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static setClickListener(Lzendesk/messaging/ui/EndUserCellBaseState;Landroid/view/View;)V
    .locals 1

    .line 200
    instance-of v0, p0, Lzendesk/messaging/ui/EndUserCellMessageState;

    if-eqz v0, :cond_0

    .line 201
    check-cast p0, Lzendesk/messaging/ui/EndUserCellMessageState;

    invoke-static {p0, p1}, Lzendesk/messaging/ui/UtilsEndUserCellView;->setMessageClickListener(Lzendesk/messaging/ui/EndUserCellMessageState;Landroid/view/View;)V

    goto :goto_0

    .line 202
    :cond_0
    instance-of v0, p0, Lzendesk/messaging/ui/EndUserCellFileState;

    if-eqz v0, :cond_1

    .line 203
    check-cast p0, Lzendesk/messaging/ui/EndUserCellFileState;

    invoke-static {p0, p1}, Lzendesk/messaging/ui/UtilsEndUserCellView;->setAttachmentClickListener(Lzendesk/messaging/ui/EndUserCellFileState;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static setImageViewColorFilter(Lzendesk/messaging/ui/EndUserCellBaseState;Landroid/widget/ImageView;Landroid/content/Context;)V
    .locals 1

    .line 106
    invoke-static {p0}, Lzendesk/messaging/ui/UtilsEndUserCellView;->isFailedCell(Lzendesk/messaging/ui/EndUserCellBaseState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    sget p0, Lzendesk/messaging/ui/UtilsEndUserCellView;->ERROR_BACKGROUND_COLOR:I

    invoke-static {p0, p2}, Lzendesk/commonui/UiUtils;->resolveColor(ILandroid/content/Context;)I

    move-result p0

    .line 108
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, p2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0}, Lzendesk/messaging/ui/EndUserCellBaseState;->getStatus()Lzendesk/messaging/MessagingItem$Query$Status;

    move-result-object p0

    sget-object v0, Lzendesk/messaging/MessagingItem$Query$Status;->PENDING:Lzendesk/messaging/MessagingItem$Query$Status;

    if-ne p0, v0, :cond_1

    .line 110
    sget p0, Lzendesk/messaging/ui/UtilsEndUserCellView;->PENDING_COLOR:I

    invoke-static {p0, p2}, Lzendesk/commonui/UiUtils;->resolveColor(ILandroid/content/Context;)I

    move-result p0

    .line 111
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, p2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    :goto_0
    return-void
.end method

.method static setLabelErrorMessage(Lzendesk/messaging/ui/EndUserCellBaseState;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 1

    .line 127
    invoke-static {p0}, Lzendesk/messaging/ui/UtilsEndUserCellView;->isFailedCell(Lzendesk/messaging/ui/EndUserCellBaseState;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, 0x8

    .line 128
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 131
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    instance-of v0, p0, Lzendesk/messaging/ui/EndUserCellFileState;

    if-eqz v0, :cond_1

    .line 133
    check-cast p0, Lzendesk/messaging/ui/EndUserCellFileState;

    invoke-static {p0, p2}, Lzendesk/messaging/ui/UtilsEndUserCellView;->getAttachmentLabelErrorMessage(Lzendesk/messaging/ui/EndUserCellFileState;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 135
    :cond_1
    sget p0, Lzendesk/messaging/ui/UtilsEndUserCellView;->TAP_TO_RETRY:I

    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method static setLongClickListener(Lzendesk/messaging/ui/EndUserCellBaseState;Landroid/view/View;)V
    .locals 1

    .line 273
    new-instance v0, Lzendesk/messaging/ui/UtilsEndUserCellView$4;

    invoke-direct {v0, p1, p0}, Lzendesk/messaging/ui/UtilsEndUserCellView$4;-><init>(Landroid/view/View;Lzendesk/messaging/ui/EndUserCellBaseState;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private static setMessageClickListener(Lzendesk/messaging/ui/EndUserCellMessageState;Landroid/view/View;)V
    .locals 2

    .line 215
    invoke-virtual {p0}, Lzendesk/messaging/ui/EndUserCellMessageState;->getStatus()Lzendesk/messaging/MessagingItem$Query$Status;

    move-result-object v0

    sget-object v1, Lzendesk/messaging/MessagingItem$Query$Status;->FAILED:Lzendesk/messaging/MessagingItem$Query$Status;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lzendesk/messaging/ui/EndUserCellMessageState;->getStatus()Lzendesk/messaging/MessagingItem$Query$Status;

    move-result-object v0

    sget-object v1, Lzendesk/messaging/MessagingItem$Query$Status;->FAILED_NO_RETRY:Lzendesk/messaging/MessagingItem$Query$Status;

    if-ne v0, v1, :cond_1

    .line 216
    :cond_0
    new-instance v0, Lzendesk/messaging/ui/UtilsEndUserCellView$1;

    invoke-direct {v0, p0}, Lzendesk/messaging/ui/UtilsEndUserCellView$1;-><init>(Lzendesk/messaging/ui/EndUserCellMessageState;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
