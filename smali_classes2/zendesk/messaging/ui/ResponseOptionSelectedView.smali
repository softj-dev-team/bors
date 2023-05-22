.class public Lzendesk/messaging/ui/ResponseOptionSelectedView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "ResponseOptionSelectedView.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ResponseOptionSelectedV"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lzendesk/messaging/ui/ResponseOptionSelectedView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lzendesk/messaging/ui/ResponseOptionSelectedView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0}, Lzendesk/messaging/ui/ResponseOptionSelectedView;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 37
    invoke-virtual {p0}, Lzendesk/messaging/ui/ResponseOptionSelectedView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lzendesk/messaging/R$color;->zui_color_white_100:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/ResponseOptionSelectedView;->setTextColor(I)V

    .line 39
    invoke-virtual {p0}, Lzendesk/messaging/ui/ResponseOptionSelectedView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lzendesk/messaging/R$drawable;->zui_background_response_option_selected:I

    .line 38
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/ResponseOptionSelectedView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    sget v0, Lzendesk/messaging/R$attr;->colorPrimary:I

    .line 44
    invoke-virtual {p0}, Lzendesk/messaging/ui/ResponseOptionSelectedView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lzendesk/messaging/R$color;->zui_color_primary:I

    .line 43
    invoke-static {v0, v1, v2}, Lzendesk/commonui/UiUtils;->themeAttributeToColor(ILandroid/content/Context;I)I

    move-result v0

    .line 46
    invoke-virtual {p0}, Lzendesk/messaging/ui/ResponseOptionSelectedView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 47
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
