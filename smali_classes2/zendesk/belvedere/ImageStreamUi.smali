.class Lzendesk/belvedere/ImageStreamUi;
.super Landroid/widget/PopupWindow;
.source "ImageStreamUi.java"

# interfaces
.implements Lzendesk/belvedere/ImageStreamMvp$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/belvedere/ImageStreamUi$ToolbarBehavior;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private final adapter:Lzendesk/belvedere/ImageStreamAdapter;

.field private bottomSheet:Landroid/view/View;

.field private bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private dismissArea:Landroid/view/View;

.field private floatingActionMenu:Lzendesk/belvedere/FloatingActionMenu;

.field private imageList:Landroidx/recyclerview/widget/RecyclerView;

.field private keyboardHelper:Lzendesk/belvedere/KeyboardHelper;

.field private final presenter:Lzendesk/belvedere/ImageStreamPresenter;

.field private toolbar:Landroidx/appcompat/widget/Toolbar;

.field private toolbarCompatShadow:Landroid/view/View;

.field private toolbarContainer:Landroid/view/View;

.field private final touchableItemIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/view/View;Lzendesk/belvedere/ImageStream;Lzendesk/belvedere/BelvedereUi$UiConfig;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p2, v0, v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    const/4 v0, 0x2

    .line 67
    invoke-virtual {p0, v0}, Lzendesk/belvedere/ImageStreamUi;->setInputMethodMode(I)V

    const/4 v0, 0x1

    .line 68
    invoke-virtual {p0, v0}, Lzendesk/belvedere/ImageStreamUi;->setFocusable(Z)V

    .line 69
    invoke-virtual {p0, v0}, Lzendesk/belvedere/ImageStreamUi;->setTouchable(Z)V

    .line 70
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v1}, Lzendesk/belvedere/ImageStreamUi;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    invoke-virtual {p0, v0}, Lzendesk/belvedere/ImageStreamUi;->setOutsideTouchable(Z)V

    .line 72
    invoke-direct {p0, p2}, Lzendesk/belvedere/ImageStreamUi;->bindViews(Landroid/view/View;)V

    .line 74
    iput-object p1, p0, Lzendesk/belvedere/ImageStreamUi;->activity:Landroid/app/Activity;

    .line 75
    new-instance p1, Lzendesk/belvedere/ImageStreamAdapter;

    invoke-direct {p1}, Lzendesk/belvedere/ImageStreamAdapter;-><init>()V

    iput-object p1, p0, Lzendesk/belvedere/ImageStreamUi;->adapter:Lzendesk/belvedere/ImageStreamAdapter;

    .line 76
    invoke-virtual {p3}, Lzendesk/belvedere/ImageStream;->getKeyboardHelper()Lzendesk/belvedere/KeyboardHelper;

    move-result-object p1

    iput-object p1, p0, Lzendesk/belvedere/ImageStreamUi;->keyboardHelper:Lzendesk/belvedere/KeyboardHelper;

    .line 77
    invoke-virtual {p4}, Lzendesk/belvedere/BelvedereUi$UiConfig;->getTouchableElements()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lzendesk/belvedere/ImageStreamUi;->touchableItemIds:Ljava/util/List;

    .line 79
    new-instance p1, Lzendesk/belvedere/ImageStreamModel;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p4}, Lzendesk/belvedere/ImageStreamModel;-><init>(Landroid/content/Context;Lzendesk/belvedere/BelvedereUi$UiConfig;)V

    .line 80
    new-instance p2, Lzendesk/belvedere/ImageStreamPresenter;

    invoke-direct {p2, p1, p0, p3}, Lzendesk/belvedere/ImageStreamPresenter;-><init>(Lzendesk/belvedere/ImageStreamMvp$Model;Lzendesk/belvedere/ImageStreamMvp$View;Lzendesk/belvedere/ImageStream;)V

    iput-object p2, p0, Lzendesk/belvedere/ImageStreamUi;->presenter:Lzendesk/belvedere/ImageStreamPresenter;

    .line 82
    invoke-virtual {p2}, Lzendesk/belvedere/ImageStreamPresenter;->init()V

    return-void
.end method

.method static synthetic access$000(Lzendesk/belvedere/ImageStreamUi;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 0

    .line 43
    iget-object p0, p0, Lzendesk/belvedere/ImageStreamUi;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object p0
.end method

.method static synthetic access$200(Lzendesk/belvedere/ImageStreamUi;)Landroid/view/View;
    .locals 0

    .line 43
    iget-object p0, p0, Lzendesk/belvedere/ImageStreamUi;->bottomSheet:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lzendesk/belvedere/ImageStreamUi;)Lzendesk/belvedere/KeyboardHelper;
    .locals 0

    .line 43
    iget-object p0, p0, Lzendesk/belvedere/ImageStreamUi;->keyboardHelper:Lzendesk/belvedere/KeyboardHelper;

    return-object p0
.end method

.method static synthetic access$400(Lzendesk/belvedere/ImageStreamUi;)Lzendesk/belvedere/ImageStreamPresenter;
    .locals 0

    .line 43
    iget-object p0, p0, Lzendesk/belvedere/ImageStreamUi;->presenter:Lzendesk/belvedere/ImageStreamPresenter;

    return-object p0
.end method

.method static synthetic access$500(Lzendesk/belvedere/ImageStreamUi;)Landroidx/appcompat/widget/Toolbar;
    .locals 0

    .line 43
    iget-object p0, p0, Lzendesk/belvedere/ImageStreamUi;->toolbar:Landroidx/appcompat/widget/Toolbar;

    return-object p0
.end method

.method static synthetic access$600(Lzendesk/belvedere/ImageStreamUi;F)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lzendesk/belvedere/ImageStreamUi;->tintStatusBar(F)V

    return-void
.end method

.method private bindViews(Landroid/view/View;)V
    .locals 1

    .line 206
    sget v0, Lzendesk/belvedere/ui/R$id;->bottom_sheet:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->bottomSheet:Landroid/view/View;

    .line 207
    sget v0, Lzendesk/belvedere/ui/R$id;->dismiss_area:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->dismissArea:Landroid/view/View;

    .line 208
    sget v0, Lzendesk/belvedere/ui/R$id;->image_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->imageList:Landroidx/recyclerview/widget/RecyclerView;

    .line 209
    sget v0, Lzendesk/belvedere/ui/R$id;->image_stream_toolbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 210
    sget v0, Lzendesk/belvedere/ui/R$id;->image_stream_toolbar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->toolbarContainer:Landroid/view/View;

    .line 211
    sget v0, Lzendesk/belvedere/ui/R$id;->image_stream_compat_shadow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->toolbarCompatShadow:Landroid/view/View;

    .line 212
    sget v0, Lzendesk/belvedere/ui/R$id;->floating_action_menu:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lzendesk/belvedere/FloatingActionMenu;

    iput-object p1, p0, Lzendesk/belvedere/ImageStreamUi;->floatingActionMenu:Lzendesk/belvedere/FloatingActionMenu;

    return-void
.end method

.method private initBottomSheet(Z)V
    .locals 4

    .line 260
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->imageList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lzendesk/belvedere/ImageStreamUi;->bottomSheet:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzendesk/belvedere/ui/R$dimen;->belvedere_bottom_sheet_elevation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 262
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->bottomSheet:Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    iput-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 263
    new-instance v1, Lzendesk/belvedere/ImageStreamUi$2;

    invoke-direct {v1, p0}, Lzendesk/belvedere/ImageStreamUi$2;-><init>(Lzendesk/belvedere/ImageStreamUi;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 279
    invoke-virtual {p0}, Lzendesk/belvedere/ImageStreamUi;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lzendesk/belvedere/Utils;->showToolbar(Landroid/view/View;Z)V

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 282
    iget-object p1, p0, Lzendesk/belvedere/ImageStreamUi;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v2, p0, Lzendesk/belvedere/ImageStreamUi;->bottomSheet:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lzendesk/belvedere/ImageStreamUi;->keyboardHelper:Lzendesk/belvedere/KeyboardHelper;

    invoke-virtual {v3}, Lzendesk/belvedere/KeyboardHelper;->getKeyboardHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    .line 283
    iget-object p1, p0, Lzendesk/belvedere/ImageStreamUi;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 284
    iget-object p1, p0, Lzendesk/belvedere/ImageStreamUi;->keyboardHelper:Lzendesk/belvedere/KeyboardHelper;

    new-instance v2, Lzendesk/belvedere/ImageStreamUi$3;

    invoke-direct {v2, p0}, Lzendesk/belvedere/ImageStreamUi$3;-><init>(Lzendesk/belvedere/ImageStreamUi;)V

    invoke-virtual {p1, v2}, Lzendesk/belvedere/KeyboardHelper;->setKeyboardHeightListener(Lzendesk/belvedere/KeyboardHelper$SizeListener;)V

    goto :goto_0

    .line 293
    :cond_0
    iget-object p1, p0, Lzendesk/belvedere/ImageStreamUi;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setSkipCollapsed(Z)V

    .line 294
    iget-object p1, p0, Lzendesk/belvedere/ImageStreamUi;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 295
    iget-object p1, p0, Lzendesk/belvedere/ImageStreamUi;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lzendesk/belvedere/KeyboardHelper;->hideKeyboard(Landroid/app/Activity;)V

    .line 298
    :goto_0
    iget-object p1, p0, Lzendesk/belvedere/ImageStreamUi;->imageList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClickable(Z)V

    .line 299
    iget-object p1, p0, Lzendesk/belvedere/ImageStreamUi;->bottomSheet:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private initFloatingActionButton(Lzendesk/belvedere/FloatingActionMenu;)V
    .locals 1

    .line 303
    new-instance v0, Lzendesk/belvedere/ImageStreamUi$4;

    invoke-direct {v0, p0}, Lzendesk/belvedere/ImageStreamUi$4;-><init>(Lzendesk/belvedere/ImageStreamUi;)V

    invoke-virtual {p1, v0}, Lzendesk/belvedere/FloatingActionMenu;->setOnSendClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initGesturePassThrough(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->dismissArea:Landroid/view/View;

    new-instance v1, Lzendesk/belvedere/ImageStreamUi$5;

    invoke-direct {v1, p0, p2, p1}, Lzendesk/belvedere/ImageStreamUi$5;-><init>(Lzendesk/belvedere/ImageStreamUi;Ljava/util/List;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initRecycler(Lzendesk/belvedere/ImageStreamAdapter;)V
    .locals 3

    .line 243
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->bottomSheet:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzendesk/belvedere/ui/R$integer;->belvedere_image_stream_column_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 244
    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 247
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->imageList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 248
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->imageList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 249
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->imageList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setDrawingCacheEnabled(Z)V

    .line 250
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->imageList:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setDrawingCacheQuality(I)V

    .line 252
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const/4 v1, 0x0

    .line 253
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 254
    iget-object v1, p0, Lzendesk/belvedere/ImageStreamUi;->imageList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 256
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->imageList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private initToolbar(Z)V
    .locals 3

    .line 216
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->toolbar:Landroidx/appcompat/widget/Toolbar;

    sget v1, Lzendesk/belvedere/ui/R$drawable;->belvedere_ic_close:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 217
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->toolbar:Landroidx/appcompat/widget/Toolbar;

    sget v1, Lzendesk/belvedere/ui/R$string;->belvedere_toolbar_desc_collapse:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 218
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    .line 219
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->toolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v1, Lzendesk/belvedere/ImageStreamUi$1;

    invoke-direct {v1, p0, p1}, Lzendesk/belvedere/ImageStreamUi$1;-><init>(Lzendesk/belvedere/ImageStreamUi;Z)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->toolbarCompatShadow:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    :cond_0
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->toolbarContainer:Landroid/view/View;

    .line 235
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 238
    new-instance v1, Lzendesk/belvedere/ImageStreamUi$ToolbarBehavior;

    xor-int/lit8 p1, p1, 0x1

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lzendesk/belvedere/ImageStreamUi$ToolbarBehavior;-><init>(Lzendesk/belvedere/ImageStreamUi;ZLzendesk/belvedere/ImageStreamUi$1;)V

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    :cond_1
    return-void
.end method

.method static show(Landroid/app/Activity;Landroid/view/ViewGroup;Lzendesk/belvedere/ImageStream;Lzendesk/belvedere/BelvedereUi$UiConfig;)Lzendesk/belvedere/ImageStreamUi;
    .locals 3

    .line 46
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lzendesk/belvedere/ui/R$layout;->belvedere_image_stream:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 47
    new-instance v1, Lzendesk/belvedere/ImageStreamUi;

    invoke-direct {v1, p0, v0, p2, p3}, Lzendesk/belvedere/ImageStreamUi;-><init>(Landroid/app/Activity;Landroid/view/View;Lzendesk/belvedere/ImageStream;Lzendesk/belvedere/BelvedereUi$UiConfig;)V

    const/16 p0, 0x30

    .line 48
    invoke-virtual {v1, p1, p0, v2, v2}, Lzendesk/belvedere/ImageStreamUi;->showAtLocation(Landroid/view/View;III)V

    return-object v1
.end method

.method private tintStatusBar(F)V
    .locals 7

    .line 359
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzendesk/belvedere/ui/R$color;->belvedere_image_stream_status_bar_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 360
    iget-object v1, p0, Lzendesk/belvedere/ImageStreamUi;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lzendesk/belvedere/ui/R$attr;->colorPrimaryDark:I

    invoke-static {v1, v2}, Lzendesk/belvedere/Utils;->getThemeColor(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v4

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 362
    :goto_0
    iget-object v4, p0, Lzendesk/belvedere/ImageStreamUi;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 364
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_2

    if-eqz p1, :cond_1

    .line 366
    invoke-virtual {v4}, Landroid/view/Window;->getStatusBarColor()I

    move-result v5

    if-ne v5, v1, :cond_2

    .line 367
    new-instance v5, Landroid/animation/ArgbEvaluator;

    invoke-direct {v5}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 368
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 369
    new-instance v1, Lzendesk/belvedere/ImageStreamUi$6;

    invoke-direct {v1, p0, v4, v0}, Lzendesk/belvedere/ImageStreamUi$6;-><init>(Lzendesk/belvedere/ImageStreamUi;Landroid/view/Window;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 377
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 380
    :cond_1
    invoke-virtual {v4, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 384
    :cond_2
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_4

    .line 385
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_3

    const/16 p1, 0x2000

    .line 387
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_2

    .line 389
    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 314
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 315
    invoke-direct {p0, v0}, Lzendesk/belvedere/ImageStreamUi;->tintStatusBar(F)V

    .line 316
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->presenter:Lzendesk/belvedere/ImageStreamPresenter;

    invoke-virtual {v0}, Lzendesk/belvedere/ImageStreamPresenter;->dismiss()V

    return-void
.end method

.method public initViews(Z)V
    .locals 1

    .line 87
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->adapter:Lzendesk/belvedere/ImageStreamAdapter;

    invoke-direct {p0, v0}, Lzendesk/belvedere/ImageStreamUi;->initRecycler(Lzendesk/belvedere/ImageStreamAdapter;)V

    .line 88
    invoke-direct {p0, p1}, Lzendesk/belvedere/ImageStreamUi;->initToolbar(Z)V

    .line 89
    invoke-direct {p0, p1}, Lzendesk/belvedere/ImageStreamUi;->initBottomSheet(Z)V

    .line 90
    iget-object p1, p0, Lzendesk/belvedere/ImageStreamUi;->activity:Landroid/app/Activity;

    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->touchableItemIds:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lzendesk/belvedere/ImageStreamUi;->initGesturePassThrough(Landroid/app/Activity;Ljava/util/List;)V

    .line 91
    iget-object p1, p0, Lzendesk/belvedere/ImageStreamUi;->floatingActionMenu:Lzendesk/belvedere/FloatingActionMenu;

    invoke-direct {p0, p1}, Lzendesk/belvedere/ImageStreamUi;->initFloatingActionButton(Lzendesk/belvedere/FloatingActionMenu;)V

    return-void
.end method

.method public openMediaIntent(Lzendesk/belvedere/MediaIntent;Lzendesk/belvedere/ImageStream;)V
    .locals 0

    .line 144
    invoke-virtual {p1, p2}, Lzendesk/belvedere/MediaIntent;->open(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public shouldShowFullScreen()Z
    .locals 4

    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    .line 167
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    .line 173
    :cond_1
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->activity:Landroid/app/Activity;

    .line 174
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    return v1

    .line 181
    :cond_3
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->activity:Landroid/app/Activity;

    const-string v3, "accessibility"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_4

    const/16 v3, 0x2f

    .line 186
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 188
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public showDocumentMenuItem(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 122
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->floatingActionMenu:Lzendesk/belvedere/FloatingActionMenu;

    if-eqz v0, :cond_0

    .line 123
    sget v1, Lzendesk/belvedere/ui/R$drawable;->belvedere_ic_file:I

    sget v2, Lzendesk/belvedere/ui/R$id;->belvedere_fam_item_documents:I

    sget v3, Lzendesk/belvedere/ui/R$string;->belvedere_fam_desc_open_gallery:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lzendesk/belvedere/FloatingActionMenu;->addMenuItem(IIILandroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public showGooglePhotosMenuItem(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 133
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->floatingActionMenu:Lzendesk/belvedere/FloatingActionMenu;

    if-eqz v0, :cond_0

    .line 134
    sget v1, Lzendesk/belvedere/ui/R$drawable;->belvedere_ic_collections:I

    sget v2, Lzendesk/belvedere/ui/R$id;->belvedere_fam_item_google_photos:I

    sget v3, Lzendesk/belvedere/ui/R$string;->belvedere_fam_desc_open_google_photos:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lzendesk/belvedere/FloatingActionMenu;->addMenuItem(IIILandroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public showImageStream(Ljava/util/List;Ljava/util/List;ZZLzendesk/belvedere/ImageStreamAdapter$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/belvedere/MediaResult;",
            ">;",
            "Ljava/util/List<",
            "Lzendesk/belvedere/MediaResult;",
            ">;ZZ",
            "Lzendesk/belvedere/ImageStreamAdapter$Listener;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 98
    iget-object p3, p0, Lzendesk/belvedere/ImageStreamUi;->keyboardHelper:Lzendesk/belvedere/KeyboardHelper;

    invoke-virtual {p3}, Lzendesk/belvedere/KeyboardHelper;->getInputTrap()Landroid/widget/EditText;

    move-result-object p3

    invoke-static {p3}, Lzendesk/belvedere/KeyboardHelper;->showKeyboard(Landroid/widget/EditText;)V

    .line 101
    :cond_0
    iget-object p3, p0, Lzendesk/belvedere/ImageStreamUi;->bottomSheet:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    const/4 v0, -0x1

    .line 102
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 103
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->bottomSheet:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p4, :cond_1

    .line 107
    iget-object p3, p0, Lzendesk/belvedere/ImageStreamUi;->adapter:Lzendesk/belvedere/ImageStreamAdapter;

    invoke-static {p5}, Lzendesk/belvedere/ImageStreamItems;->forCameraSquare(Lzendesk/belvedere/ImageStreamAdapter$Listener;)Lzendesk/belvedere/ImageStreamItems$StaticItem;

    move-result-object p4

    invoke-virtual {p3, p4}, Lzendesk/belvedere/ImageStreamAdapter;->addStaticItem(Lzendesk/belvedere/ImageStreamItems$Item;)V

    .line 111
    :cond_1
    iget-object p3, p0, Lzendesk/belvedere/ImageStreamUi;->adapter:Lzendesk/belvedere/ImageStreamAdapter;

    iget-object p4, p0, Lzendesk/belvedere/ImageStreamUi;->bottomSheet:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p1, p5, p4}, Lzendesk/belvedere/ImageStreamItems;->fromMediaResults(Ljava/util/List;Lzendesk/belvedere/ImageStreamAdapter$Listener;Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3, p1}, Lzendesk/belvedere/ImageStreamAdapter;->initializeWithImages(Ljava/util/List;)V

    .line 114
    iget-object p1, p0, Lzendesk/belvedere/ImageStreamUi;->adapter:Lzendesk/belvedere/ImageStreamAdapter;

    invoke-virtual {p1, p2}, Lzendesk/belvedere/ImageStreamAdapter;->setItemsSelected(Ljava/util/List;)V

    .line 117
    iget-object p1, p0, Lzendesk/belvedere/ImageStreamUi;->adapter:Lzendesk/belvedere/ImageStreamAdapter;

    invoke-virtual {p1}, Lzendesk/belvedere/ImageStreamAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public showToast(I)V
    .locals 2

    .line 149
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public updateFloatingActionButton(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 199
    iget-object p1, p0, Lzendesk/belvedere/ImageStreamUi;->floatingActionMenu:Lzendesk/belvedere/FloatingActionMenu;

    invoke-virtual {p1}, Lzendesk/belvedere/FloatingActionMenu;->hideSendButton()V

    goto :goto_0

    .line 201
    :cond_0
    iget-object p1, p0, Lzendesk/belvedere/ImageStreamUi;->floatingActionMenu:Lzendesk/belvedere/FloatingActionMenu;

    invoke-virtual {p1}, Lzendesk/belvedere/FloatingActionMenu;->showSendButton()V

    :goto_0
    return-void
.end method

.method public updateToolbarTitle(I)V
    .locals 5

    if-lez p1, :cond_0

    .line 155
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamUi;->activity:Landroid/app/Activity;

    sget v1, Lzendesk/belvedere/ui/R$string;->belvedere_image_stream_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lzendesk/belvedere/ImageStreamUi;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "%s (%d)"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 158
    :cond_0
    iget-object p1, p0, Lzendesk/belvedere/ImageStreamUi;->toolbar:Landroidx/appcompat/widget/Toolbar;

    sget v0, Lzendesk/belvedere/ui/R$string;->belvedere_image_stream_title:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    :goto_0
    return-void
.end method
