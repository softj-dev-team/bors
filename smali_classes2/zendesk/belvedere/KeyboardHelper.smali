.class public Lzendesk/belvedere/KeyboardHelper;
.super Landroid/widget/FrameLayout;
.source "KeyboardHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/belvedere/KeyboardHelper$SizeListener;,
        Lzendesk/belvedere/KeyboardHelper$Listener;,
        Lzendesk/belvedere/KeyboardHelper$KeyboardTreeObserver;
    }
.end annotation


# instance fields
.field private inputTrap:Landroid/widget/EditText;

.field private isKeyboardVisible:Z

.field private keyboardHeight:I

.field private keyboardListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lzendesk/belvedere/KeyboardHelper$Listener;",
            ">;>;"
        }
    .end annotation
.end field

.field private keyboardSizeListener:Lzendesk/belvedere/KeyboardHelper$SizeListener;

.field private final statusBarHeight:I

.field private viewInset:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 70
    iput v0, p0, Lzendesk/belvedere/KeyboardHelper;->viewInset:I

    .line 71
    iput v0, p0, Lzendesk/belvedere/KeyboardHelper;->keyboardHeight:I

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lzendesk/belvedere/KeyboardHelper;->isKeyboardVisible:Z

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lzendesk/belvedere/KeyboardHelper;->keyboardListener:Ljava/util/List;

    .line 81
    invoke-direct {p0}, Lzendesk/belvedere/KeyboardHelper;->getStatusBarHeight()I

    move-result v1

    iput v1, p0, Lzendesk/belvedere/KeyboardHelper;->statusBarHeight:I

    .line 82
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzendesk/belvedere/ui/R$dimen;->belvedere_dummy_edit_text_size:I

    .line 83
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 84
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lzendesk/belvedere/KeyboardHelper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzendesk/belvedere/KeyboardHelper;->inputTrap:Landroid/widget/EditText;

    const/4 v2, 0x1

    .line 87
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 88
    iget-object v1, p0, Lzendesk/belvedere/KeyboardHelper;->inputTrap:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 89
    iget-object v1, p0, Lzendesk/belvedere/KeyboardHelper;->inputTrap:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lzendesk/belvedere/KeyboardHelper;->inputTrap:Landroid/widget/EditText;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 91
    iget-object v0, p0, Lzendesk/belvedere/KeyboardHelper;->inputTrap:Landroid/widget/EditText;

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 93
    iget-object v0, p0, Lzendesk/belvedere/KeyboardHelper;->inputTrap:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lzendesk/belvedere/KeyboardHelper;->addView(Landroid/view/View;)V

    .line 95
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lzendesk/belvedere/KeyboardHelper$KeyboardTreeObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lzendesk/belvedere/KeyboardHelper$KeyboardTreeObserver;-><init>(Lzendesk/belvedere/KeyboardHelper;Landroid/app/Activity;Lzendesk/belvedere/KeyboardHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic access$100(Lzendesk/belvedere/KeyboardHelper;Landroid/app/Activity;)I
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lzendesk/belvedere/KeyboardHelper;->getKeyboardHeight(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method static synthetic access$202(Lzendesk/belvedere/KeyboardHelper;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lzendesk/belvedere/KeyboardHelper;->isKeyboardVisible:Z

    return p1
.end method

.method static synthetic access$300(Lzendesk/belvedere/KeyboardHelper;)I
    .locals 0

    .line 28
    iget p0, p0, Lzendesk/belvedere/KeyboardHelper;->keyboardHeight:I

    return p0
.end method

.method static synthetic access$302(Lzendesk/belvedere/KeyboardHelper;I)I
    .locals 0

    .line 28
    iput p1, p0, Lzendesk/belvedere/KeyboardHelper;->keyboardHeight:I

    return p1
.end method

.method static synthetic access$400(Lzendesk/belvedere/KeyboardHelper;)Lzendesk/belvedere/KeyboardHelper$SizeListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lzendesk/belvedere/KeyboardHelper;->keyboardSizeListener:Lzendesk/belvedere/KeyboardHelper$SizeListener;

    return-object p0
.end method

.method static synthetic access$500(Lzendesk/belvedere/KeyboardHelper;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lzendesk/belvedere/KeyboardHelper;->keyboardListener:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lzendesk/belvedere/KeyboardHelper;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lzendesk/belvedere/KeyboardHelper;->notifyKeyboardVisible()V

    return-void
.end method

.method static synthetic access$700(Lzendesk/belvedere/KeyboardHelper;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lzendesk/belvedere/KeyboardHelper;->notifyKeyboardDismissed()V

    return-void
.end method

.method private getCachedInset()I
    .locals 2

    .line 116
    iget v0, p0, Lzendesk/belvedere/KeyboardHelper;->viewInset:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 117
    invoke-direct {p0}, Lzendesk/belvedere/KeyboardHelper;->getViewInset()I

    move-result v0

    iput v0, p0, Lzendesk/belvedere/KeyboardHelper;->viewInset:I

    .line 120
    :cond_0
    iget v0, p0, Lzendesk/belvedere/KeyboardHelper;->viewInset:I

    return v0
.end method

.method private getKeyboardHeight(Landroid/app/Activity;)I
    .locals 2

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 101
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 103
    invoke-direct {p0}, Lzendesk/belvedere/KeyboardHelper;->getViewPortHeight()I

    move-result p1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    sub-int/2addr p1, v1

    return p1
.end method

.method private getStatusBarHeight()I
    .locals 4

    .line 111
    invoke-virtual {p0}, Lzendesk/belvedere/KeyboardHelper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lzendesk/belvedere/KeyboardHelper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getViewInset()I
    .locals 4

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 126
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mAttachInfo"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 128
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mStableInsets"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 131
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 132
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 134
    iget v0, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getViewPortHeight()I
    .locals 2

    .line 107
    invoke-virtual {p0}, Lzendesk/belvedere/KeyboardHelper;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lzendesk/belvedere/KeyboardHelper;->statusBarHeight:I

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lzendesk/belvedere/KeyboardHelper;->getCachedInset()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static hideKeyboard(Landroid/app/Activity;)V
    .locals 2

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public static inject(Landroid/app/Activity;)Lzendesk/belvedere/KeyboardHelper;
    .locals 4

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 33
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 34
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lzendesk/belvedere/KeyboardHelper;

    if-eqz v3, :cond_0

    .line 35
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lzendesk/belvedere/KeyboardHelper;

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    :cond_1
    new-instance v1, Lzendesk/belvedere/KeyboardHelper;

    invoke-direct {v1, p0}, Lzendesk/belvedere/KeyboardHelper;-><init>(Landroid/app/Activity;)V

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private notifyKeyboardDismissed()V
    .locals 3

    .line 202
    iget-object v0, p0, Lzendesk/belvedere/KeyboardHelper;->keyboardListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 203
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/belvedere/KeyboardHelper$Listener;

    invoke-interface {v1}, Lzendesk/belvedere/KeyboardHelper$Listener;->onKeyboardDismissed()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyKeyboardVisible()V
    .locals 3

    .line 194
    iget-object v0, p0, Lzendesk/belvedere/KeyboardHelper;->keyboardListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 195
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 196
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/belvedere/KeyboardHelper$Listener;

    invoke-interface {v1}, Lzendesk/belvedere/KeyboardHelper$Listener;->onKeyboardVisible()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static showKeyboard(Landroid/widget/EditText;)V
    .locals 1

    .line 45
    new-instance v0, Lzendesk/belvedere/KeyboardHelper$1;

    invoke-direct {v0, p0}, Lzendesk/belvedere/KeyboardHelper$1;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addListener(Lzendesk/belvedere/KeyboardHelper$Listener;)V
    .locals 2

    .line 157
    iget-object v0, p0, Lzendesk/belvedere/KeyboardHelper;->keyboardListener:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getInputTrap()Landroid/widget/EditText;
    .locals 1

    .line 145
    iget-object v0, p0, Lzendesk/belvedere/KeyboardHelper;->inputTrap:Landroid/widget/EditText;

    return-object v0
.end method

.method public getKeyboardHeight()I
    .locals 1

    .line 149
    iget v0, p0, Lzendesk/belvedere/KeyboardHelper;->keyboardHeight:I

    return v0
.end method

.method public isKeyboardVisible()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lzendesk/belvedere/KeyboardHelper;->isKeyboardVisible:Z

    return v0
.end method

.method setKeyboardHeightListener(Lzendesk/belvedere/KeyboardHelper$SizeListener;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lzendesk/belvedere/KeyboardHelper;->keyboardSizeListener:Lzendesk/belvedere/KeyboardHelper$SizeListener;

    return-void
.end method
