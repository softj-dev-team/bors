.class Lzendesk/belvedere/ImageStreamItems$StreamItemImage;
.super Lzendesk/belvedere/ImageStreamItems$Item;
.source "ImageStreamItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/belvedere/ImageStreamItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StreamItemImage"
.end annotation


# instance fields
.field private dimensions:Lzendesk/belvedere/FixedWidthImageView$CalculatedDimensions;

.field private final listener:Lzendesk/belvedere/ImageStreamAdapter$Listener;

.field private final mediaResult:Lzendesk/belvedere/MediaResult;


# direct methods
.method constructor <init>(Lzendesk/belvedere/ImageStreamAdapter$Listener;Lzendesk/belvedere/MediaResult;)V
    .locals 1

    .line 160
    sget v0, Lzendesk/belvedere/ui/R$layout;->belvedere_stream_list_item:I

    invoke-direct {p0, v0, p2}, Lzendesk/belvedere/ImageStreamItems$Item;-><init>(ILzendesk/belvedere/MediaResult;)V

    .line 161
    iput-object p1, p0, Lzendesk/belvedere/ImageStreamItems$StreamItemImage;->listener:Lzendesk/belvedere/ImageStreamAdapter$Listener;

    .line 162
    iput-object p2, p0, Lzendesk/belvedere/ImageStreamItems$StreamItemImage;->mediaResult:Lzendesk/belvedere/MediaResult;

    return-void
.end method

.method static synthetic access$202(Lzendesk/belvedere/ImageStreamItems$StreamItemImage;Lzendesk/belvedere/FixedWidthImageView$CalculatedDimensions;)Lzendesk/belvedere/FixedWidthImageView$CalculatedDimensions;
    .locals 0

    .line 152
    iput-object p1, p0, Lzendesk/belvedere/ImageStreamItems$StreamItemImage;->dimensions:Lzendesk/belvedere/FixedWidthImageView$CalculatedDimensions;

    return-object p1
.end method

.method static synthetic access$300(Lzendesk/belvedere/ImageStreamItems$StreamItemImage;)Lzendesk/belvedere/ImageStreamAdapter$Listener;
    .locals 0

    .line 152
    iget-object p0, p0, Lzendesk/belvedere/ImageStreamItems$StreamItemImage;->listener:Lzendesk/belvedere/ImageStreamAdapter$Listener;

    return-object p0
.end method


# virtual methods
.method public bind(Landroid/view/View;)V
    .locals 10

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 168
    sget v1, Lzendesk/belvedere/ui/R$id;->list_item_image:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lzendesk/belvedere/FixedWidthImageView;

    .line 169
    sget v1, Lzendesk/belvedere/ui/R$id;->list_item_selectable:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lzendesk/belvedere/SelectableView;

    .line 171
    sget v1, Lzendesk/belvedere/ui/R$string;->belvedere_stream_item_select_image_desc:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lzendesk/belvedere/ImageStreamItems$StreamItemImage;->mediaResult:Lzendesk/belvedere/MediaResult;

    invoke-virtual {v5}, Lzendesk/belvedere/MediaResult;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 172
    sget v4, Lzendesk/belvedere/ui/R$string;->belvedere_stream_item_unselect_image_desc:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lzendesk/belvedere/ImageStreamItems$StreamItemImage;->mediaResult:Lzendesk/belvedere/MediaResult;

    invoke-virtual {v5}, Lzendesk/belvedere/MediaResult;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {p1, v0, v1}, Lzendesk/belvedere/SelectableView;->setContentDescriptionStrings(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamItems$StreamItemImage;->dimensions:Lzendesk/belvedere/FixedWidthImageView$CalculatedDimensions;

    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lzendesk/belvedere/ImageStreamItems$StreamItemImage;->mediaResult:Lzendesk/belvedere/MediaResult;

    invoke-virtual {v1}, Lzendesk/belvedere/MediaResult;->getOriginalUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lzendesk/belvedere/ImageStreamItems$StreamItemImage;->dimensions:Lzendesk/belvedere/FixedWidthImageView$CalculatedDimensions;

    invoke-virtual {v2, v0, v1, v3}, Lzendesk/belvedere/FixedWidthImageView;->showImage(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;Lzendesk/belvedere/FixedWidthImageView$CalculatedDimensions;)V

    goto :goto_0

    .line 178
    :cond_0
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v3

    iget-object v0, p0, Lzendesk/belvedere/ImageStreamItems$StreamItemImage;->mediaResult:Lzendesk/belvedere/MediaResult;

    invoke-virtual {v0}, Lzendesk/belvedere/MediaResult;->getOriginalUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v0, p0, Lzendesk/belvedere/ImageStreamItems$StreamItemImage;->mediaResult:Lzendesk/belvedere/MediaResult;

    invoke-virtual {v0}, Lzendesk/belvedere/MediaResult;->getWidth()J

    move-result-wide v5

    iget-object v0, p0, Lzendesk/belvedere/ImageStreamItems$StreamItemImage;->mediaResult:Lzendesk/belvedere/MediaResult;

    invoke-virtual {v0}, Lzendesk/belvedere/MediaResult;->getHeight()J

    move-result-wide v7

    new-instance v9, Lzendesk/belvedere/ImageStreamItems$StreamItemImage$1;

    invoke-direct {v9, p0}, Lzendesk/belvedere/ImageStreamItems$StreamItemImage$1;-><init>(Lzendesk/belvedere/ImageStreamItems$StreamItemImage;)V

    invoke-virtual/range {v2 .. v9}, Lzendesk/belvedere/FixedWidthImageView;->showImage(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;JJLzendesk/belvedere/FixedWidthImageView$DimensionsCallback;)V

    .line 186
    :goto_0
    invoke-virtual {p0}, Lzendesk/belvedere/ImageStreamItems$StreamItemImage;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Lzendesk/belvedere/SelectableView;->setSelected(Z)V

    .line 187
    new-instance v0, Lzendesk/belvedere/ImageStreamItems$StreamItemImage$2;

    invoke-direct {v0, p0}, Lzendesk/belvedere/ImageStreamItems$StreamItemImage$2;-><init>(Lzendesk/belvedere/ImageStreamItems$StreamItemImage;)V

    invoke-virtual {p1, v0}, Lzendesk/belvedere/SelectableView;->setSelectionListener(Lzendesk/belvedere/SelectableView$SelectionListener;)V

    return-void
.end method
