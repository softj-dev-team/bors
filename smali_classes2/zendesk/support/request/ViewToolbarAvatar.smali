.class Lzendesk/support/request/ViewToolbarAvatar;
.super Landroid/widget/FrameLayout;
.source "ViewToolbarAvatar.java"


# static fields
.field private static final IMAGE_VIEW_IDS:[I

.field static final MAX_IMAGES:I = 0x5


# instance fields
.field private final avatarViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/ZendeskAvatarView;",
            ">;"
        }
    .end annotation
.end field

.field private imageRadius:I

.field private strokeColor:I

.field private strokeWidth:I

.field private userInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 32
    sget v1, Lcom/zendesk/sdk/R$id;->zs_request_toolbar_avatar_1:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/zendesk/sdk/R$id;->zs_request_toolbar_avatar_2:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/zendesk/sdk/R$id;->zs_request_toolbar_avatar_3:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/zendesk/sdk/R$id;->zs_request_toolbar_avatar_4:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/zendesk/sdk/R$id;->zs_request_toolbar_avatar_5:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sput-object v0, Lzendesk/support/request/ViewToolbarAvatar;->IMAGE_VIEW_IDS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lzendesk/support/request/ViewToolbarAvatar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lzendesk/support/request/ViewToolbarAvatar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance p2, Ljava/util/ArrayList;

    const/4 p3, 0x5

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lzendesk/support/request/ViewToolbarAvatar;->avatarViews:Ljava/util/List;

    .line 45
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lzendesk/support/request/ViewToolbarAvatar;->userInfo:Ljava/util/List;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/zendesk/sdk/R$dimen;->zs_request_toolbar_avatar_radius:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lzendesk/support/request/ViewToolbarAvatar;->imageRadius:I

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/zendesk/sdk/R$dimen;->zs_request_toolbar_avatar_stroke_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lzendesk/support/request/ViewToolbarAvatar;->strokeWidth:I

    .line 59
    sget p1, Lcom/zendesk/sdk/R$attr;->colorPrimary:I

    invoke-virtual {p0}, Lzendesk/support/request/ViewToolbarAvatar;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/zendesk/sdk/R$color;->zs_request_fallback_color_primary:I

    invoke-static {p1, p2, v0}, Lzendesk/support/UiUtils;->themeAttributeToColor(ILandroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lzendesk/support/request/ViewToolbarAvatar;->strokeColor:I

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p3, :cond_0

    .line 63
    invoke-direct {p0, p1}, Lzendesk/support/request/ViewToolbarAvatar;->createAndAddView(I)Lzendesk/support/ZendeskAvatarView;

    move-result-object p2

    const/16 v0, 0x8

    .line 64
    invoke-virtual {p2, v0}, Lzendesk/support/ZendeskAvatarView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lzendesk/support/request/ViewToolbarAvatar;->avatarViews:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bindData(Lcom/squareup/picasso/Picasso;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 81
    :goto_0
    iget-object v2, p0, Lzendesk/support/request/ViewToolbarAvatar;->avatarViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 82
    iget-object v2, p0, Lzendesk/support/request/ViewToolbarAvatar;->avatarViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/support/ZendeskAvatarView;

    .line 84
    iget-object v3, p0, Lzendesk/support/request/ViewToolbarAvatar;->userInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 85
    iget-object v3, p0, Lzendesk/support/request/ViewToolbarAvatar;->userInfo:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/util/Pair;

    .line 87
    iget-object v4, v3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/zendesk/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    iget-object v4, v3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v3, v3, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v5, p0, Lzendesk/support/request/ViewToolbarAvatar;->imageRadius:I

    invoke-virtual {v2, p1, v4, v3, v5}, Lzendesk/support/ZendeskAvatarView;->showUserWithAvatarImage(Lcom/squareup/picasso/Picasso;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 93
    :cond_0
    iget-object v3, v3, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lzendesk/support/ZendeskAvatarView;->showUserWithName(Ljava/lang/String;)V

    .line 96
    :goto_1
    invoke-virtual {v2, v0}, Lzendesk/support/ZendeskAvatarView;->setVisibility(I)V

    goto :goto_2

    :cond_1
    const/16 v3, 0x8

    .line 98
    invoke-virtual {v2, v3}, Lzendesk/support/ZendeskAvatarView;->setVisibility(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private createAndAddView(I)Lzendesk/support/ZendeskAvatarView;
    .locals 3

    .line 104
    new-instance v0, Lzendesk/support/ZendeskAvatarView;

    invoke-virtual {p0}, Lzendesk/support/request/ViewToolbarAvatar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lzendesk/support/ZendeskAvatarView;-><init>(Landroid/content/Context;)V

    .line 105
    sget-object v1, Lzendesk/support/request/ViewToolbarAvatar;->IMAGE_VIEW_IDS:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lzendesk/support/ZendeskAvatarView;->setId(I)V

    .line 106
    iget v1, p0, Lzendesk/support/request/ViewToolbarAvatar;->strokeColor:I

    iget v2, p0, Lzendesk/support/request/ViewToolbarAvatar;->strokeWidth:I

    invoke-virtual {v0, v1, v2}, Lzendesk/support/ZendeskAvatarView;->setStroke(II)V

    .line 108
    iget v1, p0, Lzendesk/support/request/ViewToolbarAvatar;->imageRadius:I

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 p1, p1, 0x2

    .line 109
    div-int/lit8 v2, v1, 0x3

    mul-int p1, p1, v2

    .line 111
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v1, 0x800005

    .line 112
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 114
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 116
    invoke-virtual {p0, v0, v2}, Lzendesk/support/request/ViewToolbarAvatar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method


# virtual methods
.method setImageUrls(Lcom/squareup/picasso/Picasso;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/picasso/Picasso;",
            "Ljava/util/List<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 70
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 71
    invoke-interface {p2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lzendesk/support/request/ViewToolbarAvatar;->userInfo:Ljava/util/List;

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {p2}, Lcom/zendesk/util/CollectionUtils;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lzendesk/support/request/ViewToolbarAvatar;->userInfo:Ljava/util/List;

    .line 76
    :goto_0
    iget-object p2, p0, Lzendesk/support/request/ViewToolbarAvatar;->userInfo:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 77
    invoke-direct {p0, p1}, Lzendesk/support/request/ViewToolbarAvatar;->bindData(Lcom/squareup/picasso/Picasso;)V

    return-void
.end method
