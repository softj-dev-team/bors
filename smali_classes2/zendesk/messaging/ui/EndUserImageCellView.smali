.class public Lzendesk/messaging/ui/EndUserImageCellView;
.super Landroid/widget/LinearLayout;
.source "EndUserImageCellView.java"

# interfaces
.implements Lzendesk/messaging/ui/Updatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lzendesk/messaging/ui/Updatable<",
        "Lzendesk/messaging/ui/EndUserCellImageState;",
        ">;"
    }
.end annotation


# instance fields
.field private cornerRadiusPx:I

.field private fileUploadProgressView:Lzendesk/messaging/ui/FileUploadProgressView;

.field private imageView:Landroid/widget/ImageView;

.field private label:Landroid/widget/TextView;

.field private statusView:Lzendesk/messaging/ui/MessageStatusView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lzendesk/messaging/ui/EndUserImageCellView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lzendesk/messaging/ui/EndUserImageCellView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0}, Lzendesk/messaging/ui/EndUserImageCellView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x1

    .line 43
    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/EndUserImageCellView;->setOrientation(I)V

    const v0, 0x800055

    .line 44
    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/EndUserImageCellView;->setGravity(I)V

    .line 45
    invoke-virtual {p0}, Lzendesk/messaging/ui/EndUserImageCellView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lzendesk/messaging/R$layout;->zui_view_end_user_image_cell_content:I

    invoke-static {v0, v1, p0}, Lzendesk/messaging/ui/EndUserImageCellView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    invoke-virtual {p0}, Lzendesk/messaging/ui/EndUserImageCellView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzendesk/messaging/R$dimen;->zui_cell_bubble_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lzendesk/messaging/ui/EndUserImageCellView;->cornerRadiusPx:I

    return-void
.end method

.method private loadImageIntoImageView(Lzendesk/messaging/ui/EndUserCellImageState;)V
    .locals 4

    .line 85
    invoke-virtual {p0}, Lzendesk/messaging/ui/EndUserImageCellView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lzendesk/messaging/ui/UtilsEndUserCellView;->getImageLoadingPlaceholder(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 87
    invoke-virtual {p1}, Lzendesk/messaging/ui/EndUserCellImageState;->getAttachment()Lzendesk/messaging/Attachment;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/messaging/Attachment;->getFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p1}, Lzendesk/messaging/ui/EndUserCellImageState;->getPicasso()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    .line 90
    invoke-virtual {p1}, Lzendesk/messaging/ui/EndUserCellImageState;->getAttachment()Lzendesk/messaging/Attachment;

    move-result-object p1

    invoke-virtual {p1}, Lzendesk/messaging/Attachment;->getFile()Ljava/io/File;

    move-result-object p1

    iget-object v2, p0, Lzendesk/messaging/ui/EndUserImageCellView;->imageView:Landroid/widget/ImageView;

    iget v3, p0, Lzendesk/messaging/ui/EndUserImageCellView;->cornerRadiusPx:I

    .line 88
    invoke-static {v1, p1, v2, v3, v0}, Lzendesk/messaging/ui/UtilsCellView;->loadImageWithRoundedCornersFromFile(Lcom/squareup/picasso/Picasso;Ljava/io/File;Landroid/widget/ImageView;ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p1}, Lzendesk/messaging/ui/EndUserCellImageState;->getPicasso()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    .line 98
    invoke-virtual {p1}, Lzendesk/messaging/ui/EndUserCellImageState;->getAttachment()Lzendesk/messaging/Attachment;

    move-result-object p1

    invoke-virtual {p1}, Lzendesk/messaging/Attachment;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lzendesk/messaging/ui/EndUserImageCellView;->imageView:Landroid/widget/ImageView;

    iget v3, p0, Lzendesk/messaging/ui/EndUserImageCellView;->cornerRadiusPx:I

    .line 96
    invoke-static {v1, p1, v2, v3, v0}, Lzendesk/messaging/ui/UtilsCellView;->loadImageWithRoundedCorners(Lcom/squareup/picasso/Picasso;Ljava/lang/String;Landroid/widget/ImageView;ILandroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 53
    sget v0, Lzendesk/messaging/R$id;->zui_image_cell_image:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/EndUserImageCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lzendesk/messaging/ui/EndUserImageCellView;->imageView:Landroid/widget/ImageView;

    .line 54
    sget v0, Lzendesk/messaging/R$id;->zui_cell_file_upload_progress:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/EndUserImageCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzendesk/messaging/ui/FileUploadProgressView;

    iput-object v0, p0, Lzendesk/messaging/ui/EndUserImageCellView;->fileUploadProgressView:Lzendesk/messaging/ui/FileUploadProgressView;

    .line 55
    sget v0, Lzendesk/messaging/R$id;->zui_cell_status_view:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/EndUserImageCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzendesk/messaging/ui/MessageStatusView;

    iput-object v0, p0, Lzendesk/messaging/ui/EndUserImageCellView;->statusView:Lzendesk/messaging/ui/MessageStatusView;

    .line 56
    sget v0, Lzendesk/messaging/R$id;->zui_cell_label_message:I

    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/EndUserImageCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzendesk/messaging/ui/EndUserImageCellView;->label:Landroid/widget/TextView;

    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lzendesk/messaging/ui/EndUserCellImageState;

    invoke-virtual {p0, p1}, Lzendesk/messaging/ui/EndUserImageCellView;->update(Lzendesk/messaging/ui/EndUserCellImageState;)V

    return-void
.end method

.method public update(Lzendesk/messaging/ui/EndUserCellImageState;)V
    .locals 2

    .line 61
    invoke-direct {p0, p1}, Lzendesk/messaging/ui/EndUserImageCellView;->loadImageIntoImageView(Lzendesk/messaging/ui/EndUserCellImageState;)V

    .line 63
    invoke-virtual {p1}, Lzendesk/messaging/ui/EndUserCellImageState;->getStatus()Lzendesk/messaging/MessagingItem$Query$Status;

    move-result-object v0

    sget-object v1, Lzendesk/messaging/MessagingItem$Query$Status;->PENDING:Lzendesk/messaging/MessagingItem$Query$Status;

    if-ne v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Lzendesk/messaging/ui/EndUserImageCellView;->fileUploadProgressView:Lzendesk/messaging/ui/FileUploadProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzendesk/messaging/ui/FileUploadProgressView;->setVisibility(I)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lzendesk/messaging/ui/EndUserImageCellView;->fileUploadProgressView:Lzendesk/messaging/ui/FileUploadProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lzendesk/messaging/ui/FileUploadProgressView;->setVisibility(I)V

    .line 69
    :goto_0
    iget-object v0, p0, Lzendesk/messaging/ui/EndUserImageCellView;->statusView:Lzendesk/messaging/ui/MessageStatusView;

    invoke-virtual {p1}, Lzendesk/messaging/ui/EndUserCellImageState;->getStatus()Lzendesk/messaging/MessagingItem$Query$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzendesk/messaging/ui/MessageStatusView;->setStatus(Lzendesk/messaging/MessagingItem$Query$Status;)V

    .line 71
    iget-object v0, p0, Lzendesk/messaging/ui/EndUserImageCellView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lzendesk/messaging/ui/EndUserImageCellView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lzendesk/messaging/ui/UtilsEndUserCellView;->setImageViewColorFilter(Lzendesk/messaging/ui/EndUserCellBaseState;Landroid/widget/ImageView;Landroid/content/Context;)V

    .line 72
    iget-object v0, p0, Lzendesk/messaging/ui/EndUserImageCellView;->label:Landroid/widget/TextView;

    invoke-virtual {p0}, Lzendesk/messaging/ui/EndUserImageCellView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lzendesk/messaging/ui/UtilsEndUserCellView;->setLabelErrorMessage(Lzendesk/messaging/ui/EndUserCellBaseState;Landroid/widget/TextView;Landroid/content/Context;)V

    .line 73
    invoke-static {p1, p0}, Lzendesk/messaging/ui/UtilsEndUserCellView;->setClickListener(Lzendesk/messaging/ui/EndUserCellBaseState;Landroid/view/View;)V

    .line 74
    invoke-static {p1, p0}, Lzendesk/messaging/ui/UtilsEndUserCellView;->setLongClickListener(Lzendesk/messaging/ui/EndUserCellBaseState;Landroid/view/View;)V

    .line 76
    invoke-virtual {p1}, Lzendesk/messaging/ui/EndUserCellImageState;->getProps()Lzendesk/messaging/ui/MessagingCellProps;

    move-result-object p1

    iget-object v0, p0, Lzendesk/messaging/ui/EndUserImageCellView;->statusView:Lzendesk/messaging/ui/MessageStatusView;

    invoke-virtual {p1, p0, v0}, Lzendesk/messaging/ui/MessagingCellProps;->apply(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
