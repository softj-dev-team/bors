.class Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromWeb$1;
.super Ljava/lang/Object;
.source "CellAttachmentLoadingUtil.java"

# interfaces
.implements Lcom/squareup/picasso/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromWeb;->load(Landroid/widget/ImageView;Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromWeb;

.field final synthetic val$imageDimensions:Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromWeb;Landroid/widget/ImageView;Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromWeb$1;->this$0:Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromWeb;

    iput-object p2, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromWeb$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromWeb$1;->val$imageDimensions:Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 199
    iget-object v1, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromWeb$1;->this$0:Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromWeb;

    iget-object v1, v1, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromWeb;->thumbnailUrl:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "RequestActivity"

    const-string v1, "Unable to load thumbnail. Url: \'%s\'"

    invoke-static {p1, v1, v0}, Lcom/zendesk/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    iget-object p1, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromWeb$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromWeb$1;->this$0:Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromWeb;

    iget-object v0, v0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromWeb;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v1, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromWeb$1;->this$0:Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromWeb;

    iget-object v1, v1, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromWeb;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->noPlaceholder()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromWeb$1;->val$imageDimensions:Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic;->access$500(Landroid/widget/ImageView;Lcom/squareup/picasso/RequestCreator;Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;Lcom/squareup/picasso/Callback;)V

    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 194
    iget-object v0, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromWeb$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromWeb$1;->this$0:Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromWeb;

    iget-object v1, v1, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromWeb;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v2, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromWeb$1;->this$0:Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromWeb;

    iget-object v2, v2, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromWeb;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->noPlaceholder()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromWeb$1;->val$imageDimensions:Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic;->access$500(Landroid/widget/ImageView;Lcom/squareup/picasso/RequestCreator;Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;Lcom/squareup/picasso/Callback;)V

    return-void
.end method
