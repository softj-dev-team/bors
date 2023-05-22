.class public Lzendesk/belvedere/FloatingActionMenu;
.super Landroid/widget/LinearLayout;
.source "FloatingActionMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/belvedere/FloatingActionMenu$AnimationListenerAdapter;
    }
.end annotation


# instance fields
.field private animationDelaySubsequentItem:I

.field private fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private isExpanded:Z

.field private isShowingSend:Z

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private final menuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/util/Pair<",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            "Landroid/view/View$OnClickListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private onSendClickListener:Landroid/view/View$OnClickListener;

.field private final setGone:Lzendesk/belvedere/FloatingActionMenu$AnimationListenerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzendesk/belvedere/FloatingActionMenu;->menuItems:Ljava/util/List;

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lzendesk/belvedere/FloatingActionMenu;->isShowingSend:Z

    .line 250
    new-instance v0, Lzendesk/belvedere/FloatingActionMenu$2;

    invoke-direct {v0, p0}, Lzendesk/belvedere/FloatingActionMenu$2;-><init>(Lzendesk/belvedere/FloatingActionMenu;)V

    iput-object v0, p0, Lzendesk/belvedere/FloatingActionMenu;->setGone:Lzendesk/belvedere/FloatingActionMenu$AnimationListenerAdapter;

    .line 51
    invoke-direct {p0, p1}, Lzendesk/belvedere/FloatingActionMenu;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lzendesk/belvedere/FloatingActionMenu;->menuItems:Ljava/util/List;

    const/4 p2, 0x1

    .line 45
    iput-boolean p2, p0, Lzendesk/belvedere/FloatingActionMenu;->isShowingSend:Z

    .line 250
    new-instance p2, Lzendesk/belvedere/FloatingActionMenu$2;

    invoke-direct {p2, p0}, Lzendesk/belvedere/FloatingActionMenu$2;-><init>(Lzendesk/belvedere/FloatingActionMenu;)V

    iput-object p2, p0, Lzendesk/belvedere/FloatingActionMenu;->setGone:Lzendesk/belvedere/FloatingActionMenu$AnimationListenerAdapter;

    .line 56
    invoke-direct {p0, p1}, Lzendesk/belvedere/FloatingActionMenu;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lzendesk/belvedere/FloatingActionMenu;->menuItems:Ljava/util/List;

    const/4 p2, 0x1

    .line 45
    iput-boolean p2, p0, Lzendesk/belvedere/FloatingActionMenu;->isShowingSend:Z

    .line 250
    new-instance p2, Lzendesk/belvedere/FloatingActionMenu$2;

    invoke-direct {p2, p0}, Lzendesk/belvedere/FloatingActionMenu$2;-><init>(Lzendesk/belvedere/FloatingActionMenu;)V

    iput-object p2, p0, Lzendesk/belvedere/FloatingActionMenu;->setGone:Lzendesk/belvedere/FloatingActionMenu$AnimationListenerAdapter;

    .line 61
    invoke-direct {p0, p1}, Lzendesk/belvedere/FloatingActionMenu;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lzendesk/belvedere/FloatingActionMenu;->menuItems:Ljava/util/List;

    const/4 p2, 0x1

    .line 45
    iput-boolean p2, p0, Lzendesk/belvedere/FloatingActionMenu;->isShowingSend:Z

    .line 250
    new-instance p2, Lzendesk/belvedere/FloatingActionMenu$2;

    invoke-direct {p2, p0}, Lzendesk/belvedere/FloatingActionMenu$2;-><init>(Lzendesk/belvedere/FloatingActionMenu;)V

    iput-object p2, p0, Lzendesk/belvedere/FloatingActionMenu;->setGone:Lzendesk/belvedere/FloatingActionMenu$AnimationListenerAdapter;

    .line 67
    invoke-direct {p0, p1}, Lzendesk/belvedere/FloatingActionMenu;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lzendesk/belvedere/FloatingActionMenu;Landroid/view/View;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lzendesk/belvedere/FloatingActionMenu;->changeVisibility(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$200(Lzendesk/belvedere/FloatingActionMenu;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lzendesk/belvedere/FloatingActionMenu;->menuItems:Ljava/util/List;

    return-object p0
.end method

.method private changeVisibility(Landroid/view/View;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 246
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private getTintedDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 237
    invoke-virtual {p0}, Lzendesk/belvedere/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 238
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 239
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 240
    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    return-object p1
.end method

.method private hideMenu()V
    .locals 3

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, v0}, Lzendesk/belvedere/FloatingActionMenu;->rotate(Z)V

    .line 145
    invoke-direct {p0, v0}, Lzendesk/belvedere/FloatingActionMenu;->showMenuItems(Z)V

    .line 146
    iget-object v0, p0, Lzendesk/belvedere/FloatingActionMenu;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Lzendesk/belvedere/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzendesk/belvedere/ui/R$string;->belvedere_fam_desc_collapse_fam:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    .line 71
    sget v0, Lzendesk/belvedere/ui/R$layout;->belvedere_floating_action_menu:I

    invoke-static {p1, v0, p0}, Lzendesk/belvedere/FloatingActionMenu;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 73
    invoke-virtual {p0}, Lzendesk/belvedere/FloatingActionMenu;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p0, v0}, Lzendesk/belvedere/FloatingActionMenu;->setOrientation(I)V

    .line 75
    invoke-virtual {p0, p0}, Lzendesk/belvedere/FloatingActionMenu;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    sget v0, Lzendesk/belvedere/ui/R$id;->floating_action_menu_fab:I

    invoke-virtual {p0, v0}, Lzendesk/belvedere/FloatingActionMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v0, p0, Lzendesk/belvedere/FloatingActionMenu;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 77
    invoke-virtual {v0, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->layoutInflater:Landroid/view/LayoutInflater;

    .line 79
    invoke-virtual {p0}, Lzendesk/belvedere/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lzendesk/belvedere/ui/R$integer;->belvedere_fam_animation_delay_subsequent_item:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lzendesk/belvedere/FloatingActionMenu;->animationDelaySubsequentItem:I

    .line 80
    invoke-virtual {p0}, Lzendesk/belvedere/FloatingActionMenu;->showSendButton()V

    :cond_0
    return-void
.end method

.method private rotate(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 201
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget v0, Lzendesk/belvedere/ui/R$drawable;->belvedere_fam_icon_close:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget v0, Lzendesk/belvedere/ui/R$drawable;->belvedere_fam_icon_add_file:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private showMenu()V
    .locals 3

    const/4 v0, 0x1

    .line 138
    invoke-direct {p0, v0}, Lzendesk/belvedere/FloatingActionMenu;->rotate(Z)V

    .line 139
    invoke-direct {p0, v0}, Lzendesk/belvedere/FloatingActionMenu;->showMenuItems(Z)V

    .line 140
    iget-object v0, p0, Lzendesk/belvedere/FloatingActionMenu;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Lzendesk/belvedere/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzendesk/belvedere/ui/R$string;->belvedere_fam_desc_expand_fam:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showMenuItems(Z)V
    .locals 7

    .line 150
    iget-object v0, p0, Lzendesk/belvedere/FloatingActionMenu;->menuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lzendesk/belvedere/FloatingActionMenu;->showSendButton()V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_2

    .line 158
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->menuItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/util/Pair;

    .line 159
    invoke-virtual {p0}, Lzendesk/belvedere/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lzendesk/belvedere/ui/R$anim;->belvedere_show_menu_item:I

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 160
    invoke-virtual {v4, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 161
    invoke-virtual {v4, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 162
    iget-object v5, v3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 163
    iget-object v5, v3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lzendesk/belvedere/FloatingActionMenu;->changeVisibility(Landroid/view/View;I)V

    .line 164
    iget-object v3, v3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v3, v4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 167
    :cond_1
    iget v3, p0, Lzendesk/belvedere/FloatingActionMenu;->animationDelaySubsequentItem:I

    int-to-long v3, v3

    add-long/2addr v0, v3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 172
    iget-object v3, p0, Lzendesk/belvedere/FloatingActionMenu;->menuItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_4

    .line 173
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->menuItems:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/util/Pair;

    .line 175
    invoke-virtual {p0}, Lzendesk/belvedere/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lzendesk/belvedere/ui/R$anim;->belvedere_hide_menu_item:I

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 176
    invoke-virtual {v4, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 177
    invoke-virtual {v4, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 178
    new-instance v5, Lzendesk/belvedere/FloatingActionMenu$1;

    invoke-direct {v5, p0, p1}, Lzendesk/belvedere/FloatingActionMenu$1;-><init>(Lzendesk/belvedere/FloatingActionMenu;Landroidx/core/util/Pair;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 184
    iget-object v5, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 185
    iget-object p1, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 188
    :cond_3
    iget p1, p0, Lzendesk/belvedere/FloatingActionMenu;->animationDelaySubsequentItem:I

    int-to-long v5, p1

    add-long/2addr v0, v5

    add-int/lit8 v3, v3, -0x1

    move-object p1, v4

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 194
    iget-object v0, p0, Lzendesk/belvedere/FloatingActionMenu;->setGone:Lzendesk/belvedere/FloatingActionMenu$AnimationListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_5
    return-void
.end method

.method private toggleMenu()V
    .locals 1

    .line 129
    iget-boolean v0, p0, Lzendesk/belvedere/FloatingActionMenu;->isExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lzendesk/belvedere/FloatingActionMenu;->isExpanded:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0}, Lzendesk/belvedere/FloatingActionMenu;->showMenu()V

    goto :goto_0

    .line 133
    :cond_0
    invoke-direct {p0}, Lzendesk/belvedere/FloatingActionMenu;->hideMenu()V

    :goto_0
    return-void
.end method


# virtual methods
.method public addMenuItem(IIILandroid/view/View$OnClickListener;)V
    .locals 3

    .line 209
    iget-object v0, p0, Lzendesk/belvedere/FloatingActionMenu;->layoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lzendesk/belvedere/ui/R$layout;->belvedere_floating_action_menu_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 210
    invoke-virtual {v0, p4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    sget v1, Lzendesk/belvedere/ui/R$color;->belvedere_floating_action_menu_item_icon_color:I

    invoke-direct {p0, p1, v1}, Lzendesk/belvedere/FloatingActionMenu;->getTintedDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    invoke-virtual {v0, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setId(I)V

    .line 213
    invoke-virtual {p0}, Lzendesk/belvedere/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 215
    iget-object p2, p0, Lzendesk/belvedere/FloatingActionMenu;->menuItems:Ljava/util/List;

    invoke-static {v0, p4}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object p2, p0, Lzendesk/belvedere/FloatingActionMenu;->menuItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p4, 0x1

    if-ne p2, p4, :cond_0

    .line 218
    iget-object p2, p0, Lzendesk/belvedere/FloatingActionMenu;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget p4, Lzendesk/belvedere/ui/R$color;->belvedere_floating_action_menu_icon_color:I

    invoke-direct {p0, p1, p4}, Lzendesk/belvedere/FloatingActionMenu;->getTintedDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Lzendesk/belvedere/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->menuItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 222
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->menuItems:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/util/Pair;

    iget-object p1, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, v2}, Lzendesk/belvedere/FloatingActionMenu;->addView(Landroid/view/View;I)V

    .line 223
    invoke-virtual {p0, v0, v2}, Lzendesk/belvedere/FloatingActionMenu;->addView(Landroid/view/View;I)V

    .line 225
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget p2, Lzendesk/belvedere/ui/R$drawable;->belvedere_fam_icon_add_file:I

    sget p3, Lzendesk/belvedere/ui/R$color;->belvedere_floating_action_menu_icon_color:I

    invoke-direct {p0, p2, p3}, Lzendesk/belvedere/FloatingActionMenu;->getTintedDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Lzendesk/belvedere/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lzendesk/belvedere/ui/R$string;->belvedere_fam_desc_expand_fam:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p0, v0, v2}, Lzendesk/belvedere/FloatingActionMenu;->addView(Landroid/view/View;I)V

    .line 231
    :goto_0
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->menuItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 232
    invoke-virtual {p0}, Lzendesk/belvedere/FloatingActionMenu;->hideSendButton()V

    :cond_2
    return-void
.end method

.method public hideSendButton()V
    .locals 2

    .line 114
    iget-object v0, p0, Lzendesk/belvedere/FloatingActionMenu;->menuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget-boolean v0, p0, Lzendesk/belvedere/FloatingActionMenu;->isShowingSend:Z

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lzendesk/belvedere/FloatingActionMenu;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget v1, Lzendesk/belvedere/ui/R$drawable;->belvedere_fam_icon_add_file:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    :cond_1
    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lzendesk/belvedere/FloatingActionMenu;->isShowingSend:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 86
    iget-boolean p1, p0, Lzendesk/belvedere/FloatingActionMenu;->isShowingSend:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->onSendClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    .line 87
    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void

    .line 91
    :cond_0
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->menuItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 96
    :cond_1
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->menuItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 97
    iget-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->menuItems:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/util/Pair;

    .line 98
    iget-object v0, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/view/View$OnClickListener;

    iget-object p1, p1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 100
    :cond_2
    invoke-direct {p0}, Lzendesk/belvedere/FloatingActionMenu;->toggleMenu()V

    :goto_0
    return-void
.end method

.method public setOnSendClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lzendesk/belvedere/FloatingActionMenu;->onSendClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public showSendButton()V
    .locals 2

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lzendesk/belvedere/FloatingActionMenu;->isShowingSend:Z

    .line 106
    iget-boolean v0, p0, Lzendesk/belvedere/FloatingActionMenu;->isExpanded:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0}, Lzendesk/belvedere/FloatingActionMenu;->hideMenu()V

    .line 109
    :cond_0
    iget-object v0, p0, Lzendesk/belvedere/FloatingActionMenu;->fab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget v1, Lzendesk/belvedere/ui/R$drawable;->belvedere_fam_icon_send:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    return-void
.end method
