.class Lzendesk/messaging/ui/UtilsCellView$2;
.super Ljava/lang/Object;
.source "UtilsCellView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/messaging/ui/UtilsCellView;->loadImageWithRoundedCornersFromFile(Lcom/squareup/picasso/Picasso;Ljava/io/File;Landroid/widget/ImageView;ILandroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cornerRadius:I

.field final synthetic val$imageFile:Ljava/io/File;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$picasso:Lcom/squareup/picasso/Picasso;

.field final synthetic val$placeholder:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Picasso;Ljava/io/File;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;I)V
    .locals 0

    .line 62
    iput-object p1, p0, Lzendesk/messaging/ui/UtilsCellView$2;->val$picasso:Lcom/squareup/picasso/Picasso;

    iput-object p2, p0, Lzendesk/messaging/ui/UtilsCellView$2;->val$imageFile:Ljava/io/File;

    iput-object p3, p0, Lzendesk/messaging/ui/UtilsCellView$2;->val$placeholder:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lzendesk/messaging/ui/UtilsCellView$2;->val$imageView:Landroid/widget/ImageView;

    iput p5, p0, Lzendesk/messaging/ui/UtilsCellView$2;->val$cornerRadius:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 65
    iget-object v0, p0, Lzendesk/messaging/ui/UtilsCellView$2;->val$picasso:Lcom/squareup/picasso/Picasso;

    iget-object v1, p0, Lzendesk/messaging/ui/UtilsCellView$2;->val$imageFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lzendesk/messaging/ui/UtilsCellView$2;->val$placeholder:Landroid/graphics/drawable/Drawable;

    .line 66
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lzendesk/messaging/ui/UtilsCellView$2;->val$imageView:Landroid/widget/ImageView;

    .line 67
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lzendesk/messaging/ui/UtilsCellView$2;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget v1, p0, Lzendesk/messaging/ui/UtilsCellView$2;->val$cornerRadius:I

    .line 68
    invoke-static {v1}, Lzendesk/commonui/PicassoTransformations;->getRoundedTransformation(I)Lcom/squareup/picasso/Transformation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lzendesk/messaging/ui/UtilsCellView$2;->val$imageView:Landroid/widget/ImageView;

    .line 70
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    return-void
.end method
