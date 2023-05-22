.class public Lzendesk/messaging/ui/ResponseOptionView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "ResponseOptionView.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ResponseOptionView"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lzendesk/messaging/ui/ResponseOptionView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lzendesk/messaging/ui/ResponseOptionView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Lzendesk/messaging/ui/ResponseOptionView;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 39
    invoke-virtual {p0}, Lzendesk/messaging/ui/ResponseOptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lzendesk/messaging/R$drawable;->zui_background_response_option:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/ResponseOptionView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    sget v0, Lzendesk/messaging/R$attr;->colorPrimary:I

    .line 44
    invoke-virtual {p0}, Lzendesk/messaging/ui/ResponseOptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lzendesk/messaging/R$color;->zui_color_primary:I

    .line 43
    invoke-static {v0, v1, v2}, Lzendesk/commonui/UiUtils;->themeAttributeToColor(ILandroid/content/Context;I)I

    move-result v0

    .line 46
    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/ResponseOptionView;->setTextColor(I)V

    .line 48
    invoke-virtual {p0}, Lzendesk/messaging/ui/ResponseOptionView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 49
    instance-of v2, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {p0}, Lzendesk/messaging/ui/ResponseOptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzendesk/messaging/R$dimen;->zui_cell_response_option_stroke_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 53
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ResponseOptionView"

    const-string v2, "Unable to set stroke on background as background is not of type GradientDrawable"

    .line 55
    invoke-static {v1, v2, v0}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
