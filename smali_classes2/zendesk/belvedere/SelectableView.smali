.class public Lzendesk/belvedere/SelectableView;
.super Landroid/widget/FrameLayout;
.source "SelectableView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/belvedere/SelectableView$SelectionListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0x4bL

.field private static final SELECTED_ALPHA:F = 0.8f

.field private static final SELECTED_SCALE:F = 0.9f


# instance fields
.field private checkbox:Landroid/view/View;

.field private child:Landroid/view/View;

.field private descSelected:Ljava/lang/String;

.field private descUnselected:Ljava/lang/String;

.field private selectionListener:Lzendesk/belvedere/SelectableView$SelectionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0}, Lzendesk/belvedere/SelectableView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0}, Lzendesk/belvedere/SelectableView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0}, Lzendesk/belvedere/SelectableView;->init()V

    return-void
.end method

.method static synthetic access$000(Lzendesk/belvedere/SelectableView;F)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lzendesk/belvedere/SelectableView;->scale(F)V

    return-void
.end method

.method static synthetic access$100(Lzendesk/belvedere/SelectableView;F)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lzendesk/belvedere/SelectableView;->alpha(F)V

    return-void
.end method

.method private alpha(F)V
    .locals 1

    .line 165
    invoke-direct {p0}, Lzendesk/belvedere/SelectableView;->getChild()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private checkbox(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 151
    iget-object p1, p0, Lzendesk/belvedere/SelectableView;->checkbox:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object p1, p0, Lzendesk/belvedere/SelectableView;->checkbox:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 153
    iget-object p1, p0, Lzendesk/belvedere/SelectableView;->checkbox:Landroid/view/View;

    iget-object v0, p0, Lzendesk/belvedere/SelectableView;->child:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object p1, p0, Lzendesk/belvedere/SelectableView;->checkbox:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private getCheckBox(I)Landroid/widget/ImageView;
    .locals 4

    .line 135
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 136
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 138
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lzendesk/belvedere/SelectableView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 139
    sget v2, Lzendesk/belvedere/ui/R$id;->belvedere_selectable_view_checkbox:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 140
    invoke-virtual {p0}, Lzendesk/belvedere/SelectableView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lzendesk/belvedere/ui/R$drawable;->belvedere_ic_check_circle:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    invoke-virtual {p0}, Lzendesk/belvedere/SelectableView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lzendesk/belvedere/ui/R$drawable;->belvedere_ic_check_bg:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 142
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x8

    .line 143
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    invoke-static {v1, p1}, Lzendesk/belvedere/Utils;->internalSetTint(Landroid/widget/ImageView;I)V

    return-object v1
.end method

.method private getChild()Landroid/view/View;
    .locals 4

    .line 170
    iget-object v0, p0, Lzendesk/belvedere/SelectableView;->child:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    .line 174
    :cond_0
    invoke-virtual {p0}, Lzendesk/belvedere/SelectableView;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 178
    :goto_0
    invoke-virtual {p0}, Lzendesk/belvedere/SelectableView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 179
    invoke-virtual {p0, v0}, Lzendesk/belvedere/SelectableView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lzendesk/belvedere/ui/R$id;->belvedere_selectable_view_checkbox:I

    if-eq v2, v3, :cond_1

    .line 181
    iput-object v1, p0, Lzendesk/belvedere/SelectableView;->child:Landroid/view/View;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_2
    :goto_1
    iget-object v0, p0, Lzendesk/belvedere/SelectableView;->child:Landroid/view/View;

    return-object v0

    .line 175
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "More then one child added to SelectableView"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p0, v0}, Lzendesk/belvedere/SelectableView;->setClickable(Z)V

    .line 52
    invoke-virtual {p0, v0}, Lzendesk/belvedere/SelectableView;->setFocusable(Z)V

    .line 53
    invoke-virtual {p0, p0}, Lzendesk/belvedere/SelectableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {p0}, Lzendesk/belvedere/SelectableView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lzendesk/belvedere/ui/R$attr;->colorPrimary:I

    invoke-static {v0, v1}, Lzendesk/belvedere/Utils;->getThemeColor(Landroid/content/Context;I)I

    move-result v0

    .line 56
    invoke-direct {p0, v0}, Lzendesk/belvedere/SelectableView;->getCheckBox(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lzendesk/belvedere/SelectableView;->checkbox:Landroid/view/View;

    .line 57
    invoke-virtual {p0, v0}, Lzendesk/belvedere/SelectableView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private scale(F)V
    .locals 1

    .line 160
    invoke-direct {p0}, Lzendesk/belvedere/SelectableView;->getChild()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 161
    invoke-direct {p0}, Lzendesk/belvedere/SelectableView;->getChild()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private setContentDesc(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Lzendesk/belvedere/SelectableView;->descSelected:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lzendesk/belvedere/SelectableView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 193
    :cond_0
    iget-object p1, p0, Lzendesk/belvedere/SelectableView;->descUnselected:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lzendesk/belvedere/SelectableView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 68
    invoke-virtual {p0}, Lzendesk/belvedere/SelectableView;->isSelected()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 71
    iget-object v1, p0, Lzendesk/belvedere/SelectableView;->selectionListener:Lzendesk/belvedere/SelectableView$SelectionListener;

    if-eqz v1, :cond_0

    .line 72
    invoke-interface {v1, p1}, Lzendesk/belvedere/SelectableView$SelectionListener;->onSelectionChanged(Z)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_2

    .line 78
    invoke-virtual {p0, p1}, Lzendesk/belvedere/SelectableView;->setSelected(Z)V

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    new-array p1, v0, [F

    .line 83
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-array v0, v0, [F

    .line 84
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-array p1, v0, [F

    .line 86
    fill-array-data p1, :array_2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-array v0, v0, [F

    .line 87
    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 90
    :goto_0
    new-instance v1, Lzendesk/belvedere/SelectableView$1;

    invoke-direct {v1, p0}, Lzendesk/belvedere/SelectableView$1;-><init>(Lzendesk/belvedere/SelectableView;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 97
    new-instance v1, Lzendesk/belvedere/SelectableView$2;

    invoke-direct {v1, p0}, Lzendesk/belvedere/SelectableView$2;-><init>(Lzendesk/belvedere/SelectableView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x4b

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 105
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 107
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 108
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_2
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setContentDescriptionStrings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lzendesk/belvedere/SelectableView;->descSelected:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lzendesk/belvedere/SelectableView;->descUnselected:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lzendesk/belvedere/SelectableView;->isSelected()Z

    move-result p1

    invoke-direct {p0, p1}, Lzendesk/belvedere/SelectableView;->setContentDesc(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 114
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    if-eqz p1, :cond_0

    const p1, 0x3f666666    # 0.9f

    .line 117
    invoke-direct {p0, p1}, Lzendesk/belvedere/SelectableView;->scale(F)V

    const p1, 0x3f4ccccd    # 0.8f

    .line 118
    invoke-direct {p0, p1}, Lzendesk/belvedere/SelectableView;->alpha(F)V

    const/4 p1, 0x1

    .line 119
    invoke-direct {p0, p1}, Lzendesk/belvedere/SelectableView;->checkbox(Z)V

    .line 120
    invoke-direct {p0, p1}, Lzendesk/belvedere/SelectableView;->setContentDesc(Z)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 123
    invoke-direct {p0, p1}, Lzendesk/belvedere/SelectableView;->scale(F)V

    .line 124
    invoke-direct {p0, p1}, Lzendesk/belvedere/SelectableView;->alpha(F)V

    const/4 p1, 0x0

    .line 125
    invoke-direct {p0, p1}, Lzendesk/belvedere/SelectableView;->checkbox(Z)V

    .line 126
    invoke-direct {p0, p1}, Lzendesk/belvedere/SelectableView;->setContentDesc(Z)V

    :goto_0
    return-void
.end method

.method public setSelectionListener(Lzendesk/belvedere/SelectableView$SelectionListener;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lzendesk/belvedere/SelectableView;->selectionListener:Lzendesk/belvedere/SelectableView$SelectionListener;

    return-void
.end method
