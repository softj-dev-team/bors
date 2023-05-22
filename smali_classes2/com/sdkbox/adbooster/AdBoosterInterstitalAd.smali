.class public Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;
.super Landroid/widget/RelativeLayout;
.source "AdBoosterInterstitalAd.java"


# static fields
.field private static TAG:Ljava/lang/String; = "sdkbox - AdBoosterInterstitalAd"


# instance fields
.field private _context:Landroid/content/Context;

.field private _imageview:Landroid/widget/ImageView;

.field private _interstitalId:Ljava/lang/String;

.field private _link:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->_imageview:Landroid/widget/ImageView;

    .line 23
    iput-object v0, p0, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->_context:Landroid/content/Context;

    .line 24
    iput-object v0, p0, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->_interstitalId:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->_link:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->_context:Landroid/content/Context;

    .line 27
    invoke-virtual {p0}, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->setupUI()V

    return-void
.end method

.method static synthetic access$000(Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;)Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->_interstitalId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;)Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->_link:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public setImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->_interstitalId:Ljava/lang/String;

    .line 62
    iget-object p1, p0, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->_imageview:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 63
    iget-object p2, p0, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->_imageview:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->_link:Ljava/lang/String;

    return-void
.end method

.method public setupUI()V
    .locals 3

    .line 31
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->_imageview:Landroid/widget/ImageView;

    .line 32
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 33
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 34
    iget-object v1, p0, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->_imageview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iget-object v0, p0, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->_imageview:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->addView(Landroid/view/View;)V

    .line 36
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "X"

    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/16 v2, 0x78

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 41
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 42
    new-instance v1, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd$1;

    invoke-direct {v1, p0}, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd$1;-><init>(Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->addView(Landroid/view/View;)V

    const v0, -0x616566

    .line 49
    invoke-virtual {p0, v0}, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->setBackgroundColor(I)V

    const/4 v0, 0x1

    .line 50
    invoke-virtual {p0, v0}, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->setClickable(Z)V

    .line 51
    new-instance v0, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd$2;

    invoke-direct {v0, p0}, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd$2;-><init>(Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;)V

    invoke-virtual {p0, v0}, Lcom/sdkbox/adbooster/AdBoosterInterstitalAd;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
