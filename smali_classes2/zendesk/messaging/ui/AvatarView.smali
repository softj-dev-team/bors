.class public Lzendesk/messaging/ui/AvatarView;
.super Landroid/widget/FrameLayout;
.source "AvatarView.java"


# instance fields
.field private final avatarSize:I

.field private final colorPalette:[I

.field private final imageView:Landroid/widget/ImageView;

.field private final outlineColor:I

.field private final outlineSize:I

.field private final textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1, v0, v1}, Lzendesk/messaging/ui/AvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lzendesk/messaging/ui/AvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    sget p3, Lzendesk/messaging/R$layout;->zui_view_avatar:I

    invoke-static {p1, p3, p0}, Lzendesk/messaging/ui/AvatarView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    invoke-virtual {p0}, Lzendesk/messaging/ui/AvatarView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 52
    sget v0, Lzendesk/messaging/R$color;->zui_color_white_80:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 53
    sget v1, Lzendesk/messaging/R$dimen;->zui_avatar_view_outline:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 54
    sget v2, Lzendesk/messaging/R$attr;->colorPrimary:I

    sget v3, Lzendesk/messaging/R$color;->zui_color_primary:I

    invoke-static {v2, p1, v3}, Lzendesk/commonui/UiUtils;->themeAttributeToColor(ILandroid/content/Context;I)I

    move-result v2

    .line 59
    sget v3, Lzendesk/messaging/R$id;->zui_avatar_image:I

    invoke-virtual {p0, v3}, Lzendesk/messaging/ui/AvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lzendesk/messaging/ui/AvatarView;->imageView:Landroid/widget/ImageView;

    .line 60
    sget v3, Lzendesk/messaging/R$id;->zui_avatar_letter:I

    invoke-virtual {p0, v3}, Lzendesk/messaging/ui/AvatarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lzendesk/messaging/ui/AvatarView;->textView:Landroid/widget/TextView;

    .line 61
    sget v4, Lzendesk/messaging/R$dimen;->zui_avatar_view_size:I

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lzendesk/messaging/ui/AvatarView;->avatarSize:I

    .line 63
    sget-object v4, Lzendesk/messaging/R$styleable;->AvatarView:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 64
    sget p2, Lzendesk/messaging/R$styleable;->AvatarView_colorPalette:I

    sget v4, Lzendesk/messaging/R$array;->zui_avatar_view__background_color_palette:I

    .line 65
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 66
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    iput-object p2, p0, Lzendesk/messaging/ui/AvatarView;->colorPalette:[I

    .line 67
    sget p2, Lzendesk/messaging/R$styleable;->AvatarView_outlineSize:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lzendesk/messaging/ui/AvatarView;->outlineSize:I

    .line 68
    sget p2, Lzendesk/messaging/R$styleable;->AvatarView_outlineColor:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lzendesk/messaging/ui/AvatarView;->outlineColor:I

    .line 69
    sget p2, Lzendesk/messaging/R$styleable;->AvatarView_textColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 71
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private generateBackground(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 115
    iget-object v0, p0, Lzendesk/messaging/ui/AvatarView;->colorPalette:[I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget-object v1, p0, Lzendesk/messaging/ui/AvatarView;->colorPalette:[I

    array-length v1, v1

    rem-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    aget p1, v0, p1

    .line 116
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 118
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget p1, p0, Lzendesk/messaging/ui/AvatarView;->outlineSize:I

    if-lez p1, :cond_0

    .line 121
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 122
    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 123
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, 0x1

    .line 124
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    iget v3, p0, Lzendesk/messaging/ui/AvatarView;->outlineColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget v3, p0, Lzendesk/messaging/ui/AvatarView;->outlineSize:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 128
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v4, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget v5, p0, Lzendesk/messaging/ui/AvatarView;->outlineSize:I

    div-int/2addr v5, v3

    invoke-direct {v0, p1, v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    aput-object v0, v4, v2

    invoke-direct {v1, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v1

    :cond_0
    return-object v0
.end method


# virtual methods
.method public showDefault(ILjava/lang/Object;)V
    .locals 0

    .line 108
    invoke-direct {p0, p2}, Lzendesk/messaging/ui/AvatarView;->generateBackground(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lzendesk/messaging/ui/AvatarView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object p2, p0, Lzendesk/messaging/ui/AvatarView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    iget-object p1, p0, Lzendesk/messaging/ui/AvatarView;->textView:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object p1, p0, Lzendesk/messaging/ui/AvatarView;->imageView:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showDrawable(I)V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/AvatarView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 102
    iget-object v0, p0, Lzendesk/messaging/ui/AvatarView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    iget-object p1, p0, Lzendesk/messaging/ui/AvatarView;->textView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object p1, p0, Lzendesk/messaging/ui/AvatarView;->imageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showImage(Lcom/squareup/picasso/Picasso;Ljava/lang/String;)V
    .locals 2

    .line 85
    iget v0, p0, Lzendesk/messaging/ui/AvatarView;->avatarSize:I

    iget v1, p0, Lzendesk/messaging/ui/AvatarView;->outlineSize:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/AvatarView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Lzendesk/messaging/ui/AvatarView;->imageView:Landroid/widget/ImageView;

    sget v1, Lzendesk/messaging/R$color;->zui_color_transparent:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    iget-object v0, p0, Lzendesk/messaging/ui/AvatarView;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lzendesk/messaging/ui/AvatarView;->textView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    invoke-virtual {p1, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget p2, p0, Lzendesk/messaging/ui/AvatarView;->avatarSize:I

    iget v0, p0, Lzendesk/messaging/ui/AvatarView;->outlineSize:I

    sub-int v1, p2, v0

    sub-int/2addr p2, v0

    .line 92
    invoke-virtual {p1, v1, p2}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->noPlaceholder()Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget p2, p0, Lzendesk/messaging/ui/AvatarView;->avatarSize:I

    iget v0, p0, Lzendesk/messaging/ui/AvatarView;->outlineColor:I

    iget v1, p0, Lzendesk/messaging/ui/AvatarView;->outlineSize:I

    .line 95
    invoke-static {p2, v0, v1}, Lzendesk/commonui/PicassoTransformations;->getRoundWithBorderTransformation(III)Lcom/squareup/picasso/Transformation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object p2, p0, Lzendesk/messaging/ui/AvatarView;->imageView:Landroid/widget/ImageView;

    .line 96
    invoke-virtual {p1, p2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method public showLetter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 77
    invoke-direct {p0, p2}, Lzendesk/messaging/ui/AvatarView;->generateBackground(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lzendesk/messaging/ui/AvatarView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object p2, p0, Lzendesk/messaging/ui/AvatarView;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object p1, p0, Lzendesk/messaging/ui/AvatarView;->textView:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object p1, p0, Lzendesk/messaging/ui/AvatarView;->imageView:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
