.class public Lcom/sdkbox/adbooster/AdBooster;
.super Ljava/lang/Object;
.source "AdBooster.java"


# static fields
.field private static TAG:Ljava/lang/String; = "sdkbox - adbooster"


# instance fields
.field private _adview:Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;

.field private _context:Landroid/content/Context;

.field private _imageCache:Lcom/sdkbox/adbooster/ImageCache;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/sdkbox/adbooster/AdBooster;->_adview:Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;

    .line 42
    iput-object v0, p0, Lcom/sdkbox/adbooster/AdBooster;->_context:Landroid/content/Context;

    .line 43
    iput-object v0, p0, Lcom/sdkbox/adbooster/AdBooster;->_imageCache:Lcom/sdkbox/adbooster/ImageCache;

    .line 44
    iput-object p1, p0, Lcom/sdkbox/adbooster/AdBooster;->_context:Landroid/content/Context;

    .line 45
    new-instance p1, Lcom/sdkbox/adbooster/ImageCache;

    iget-object v0, p0, Lcom/sdkbox/adbooster/AdBooster;->_context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/sdkbox/adbooster/ImageCache;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sdkbox/adbooster/AdBooster;->_imageCache:Lcom/sdkbox/adbooster/ImageCache;

    .line 46
    new-instance p1, Lcom/sdkbox/adbooster/AdBooster$1;

    invoke-direct {p1, p0}, Lcom/sdkbox/adbooster/AdBooster$1;-><init>(Lcom/sdkbox/adbooster/AdBooster;)V

    invoke-static {p1}, Lcom/sdkbox/plugin/SDKBox;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sdkbox/adbooster/AdBooster;)Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/sdkbox/adbooster/AdBooster;->_adview:Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;

    return-object p0
.end method

.method static synthetic access$002(Lcom/sdkbox/adbooster/AdBooster;Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;)Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/sdkbox/adbooster/AdBooster;->_adview:Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sdkbox/adbooster/AdBooster;)Landroid/content/Context;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/sdkbox/adbooster/AdBooster;->_context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sdkbox/adbooster/AdBooster;)Lcom/sdkbox/adbooster/ImageCache;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/sdkbox/adbooster/AdBooster;->_imageCache:Lcom/sdkbox/adbooster/ImageCache;

    return-object p0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/sdkbox/adbooster/AdBooster;->_context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public static isEnable()Z
    .locals 1

    .line 30
    invoke-static {}, Lcom/sdkbox/adbooster/AdBooster;->nativeIsEnable()Z

    move-result v0

    return v0
.end method

.method public static isReadyForPlugin(Ljava/lang/String;)Z
    .locals 0

    .line 34
    invoke-static {p0}, Lcom/sdkbox/adbooster/AdBooster;->nativeIsReadyForPlugin(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static native nativeIsEnable()Z
.end method

.method private static native nativeIsReadyForPlugin(Ljava/lang/String;)Z
.end method

.method private static native nativeSetEnable(Z)V
.end method

.method private static native nativeShowInterstital()V
.end method

.method public static setEnable(Z)V
    .locals 0

    .line 26
    invoke-static {p0}, Lcom/sdkbox/adbooster/AdBooster;->nativeSetEnable(Z)V

    return-void
.end method

.method public static showInterstital()V
    .locals 0

    .line 38
    invoke-static {}, Lcom/sdkbox/adbooster/AdBooster;->nativeShowInterstital()V

    return-void
.end method


# virtual methods
.method public cache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/sdkbox/adbooster/AdBooster;->_imageCache:Lcom/sdkbox/adbooster/ImageCache;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, p1, p2, p3}, Lcom/sdkbox/adbooster/ImageCache;->cache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getCachedSize()I
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/sdkbox/adbooster/AdBooster;->_imageCache:Lcom/sdkbox/adbooster/ImageCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 88
    :cond_0
    invoke-virtual {v0}, Lcom/sdkbox/adbooster/ImageCache;->getCachedSizeInKb()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getScreenHeight()I
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/sdkbox/adbooster/AdBooster;->_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/sdkbox/adbooster/AdBooster;->_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public hide()V
    .locals 1

    .line 68
    new-instance v0, Lcom/sdkbox/adbooster/AdBooster$3;

    invoke-direct {v0, p0}, Lcom/sdkbox/adbooster/AdBooster$3;-><init>(Lcom/sdkbox/adbooster/AdBooster;)V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 2

    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 93
    invoke-direct {p0}, Lcom/sdkbox/adbooster/AdBooster;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public setMaxCacheSize(I)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/sdkbox/adbooster/AdBooster;->_imageCache:Lcom/sdkbox/adbooster/ImageCache;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p1}, Lcom/sdkbox/adbooster/ImageCache;->setMaxCacheSize(I)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/sdkbox/adbooster/AdBooster;->_adview:Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-virtual {v0}, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 120
    invoke-direct {p0}, Lcom/sdkbox/adbooster/AdBooster;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sdkbox/adbooster/AdBooster;->_adview:Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/sdkbox/adbooster/AdBooster;->_adview:Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 55
    new-instance v0, Lcom/sdkbox/adbooster/AdBooster$2;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/sdkbox/adbooster/AdBooster$2;-><init>(Lcom/sdkbox/adbooster/AdBooster;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sdkbox/plugin/SDKBox;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
