.class Lcom/sdkbox/plugin/PluginFacebook$6;
.super Ljava/lang/Object;
.source "PluginFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/PluginFacebook;->share(Ljava/util/Map;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/plugin/PluginFacebook;

.field final synthetic val$info:Ljava/util/Map;

.field final synthetic val$shareType:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/PluginFacebook;ILjava/util/Map;I)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginFacebook$6;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    iput p2, p0, Lcom/sdkbox/plugin/PluginFacebook$6;->val$shareType:I

    iput-object p3, p0, Lcom/sdkbox/plugin/PluginFacebook$6;->val$info:Ljava/util/Map;

    iput p4, p0, Lcom/sdkbox/plugin/PluginFacebook$6;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 336
    iget v0, p0, Lcom/sdkbox/plugin/PluginFacebook$6;->val$shareType:I

    const-string v1, "image"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, ""

    if-ne v0, v3, :cond_5

    .line 337
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    .line 338
    iget-object v5, p0, Lcom/sdkbox/plugin/PluginFacebook$6;->val$info:Ljava/util/Map;

    const-string v6, "link"

    invoke-static {v5, v6, v4}, Lcom/sdkbox/plugin/PluginFacebook;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 339
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 340
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 342
    :cond_0
    iget-object v5, p0, Lcom/sdkbox/plugin/PluginFacebook$6;->val$info:Ljava/util/Map;

    const-string v6, "title"

    invoke-static {v5, v6, v4}, Lcom/sdkbox/plugin/PluginFacebook;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 343
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 344
    invoke-virtual {v0, v5}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    .line 346
    :cond_1
    iget-object v5, p0, Lcom/sdkbox/plugin/PluginFacebook$6;->val$info:Ljava/util/Map;

    const-string v6, "text"

    invoke-static {v5, v6, v4}, Lcom/sdkbox/plugin/PluginFacebook;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 347
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 348
    invoke-virtual {v0, v5}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    .line 350
    :cond_2
    iget-object v5, p0, Lcom/sdkbox/plugin/PluginFacebook$6;->val$info:Ljava/util/Map;

    invoke-static {v5, v1, v4}, Lcom/sdkbox/plugin/PluginFacebook;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 351
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 352
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    .line 354
    :cond_3
    invoke-virtual {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    .line 355
    iget v1, p0, Lcom/sdkbox/plugin/PluginFacebook$6;->val$type:I

    if-ne v1, v3, :cond_4

    .line 356
    new-instance v1, Lcom/sdkbox/plugin/PluginFacebook$6$1;

    invoke-direct {v1, p0}, Lcom/sdkbox/plugin/PluginFacebook$6$1;-><init>(Lcom/sdkbox/plugin/PluginFacebook$6;)V

    invoke-static {v0, v1}, Lcom/facebook/share/ShareApi;->share(Lcom/facebook/share/model/ShareContent;Lcom/facebook/FacebookCallback;)V

    goto :goto_0

    :cond_4
    if-ne v1, v2, :cond_9

    .line 371
    iget-object v1, p0, Lcom/sdkbox/plugin/PluginFacebook$6;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-static {v1}, Lcom/sdkbox/plugin/PluginFacebook;->access$000(Lcom/sdkbox/plugin/PluginFacebook;)Lcom/facebook/share/widget/ShareDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    if-ne v0, v2, :cond_9

    .line 374
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginFacebook$6;->val$info:Ljava/util/Map;

    invoke-static {v0, v1, v4}, Lcom/sdkbox/plugin/PluginFacebook;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 375
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_6

    .line 377
    iget-object v1, p0, Lcom/sdkbox/plugin/PluginFacebook$6;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-static {v1}, Lcom/sdkbox/plugin/PluginFacebook;->access$300(Lcom/sdkbox/plugin/PluginFacebook;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sdkbox/plugin/PluginFacebook;->getBitmapFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_6
    if-nez v1, :cond_7

    .line 380
    iget-object v1, p0, Lcom/sdkbox/plugin/PluginFacebook$6;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find file :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sdkbox/plugin/PluginFacebook;->onSharedFailedWrapper(Ljava/lang/String;)V

    return-void

    .line 383
    :cond_7
    new-instance v0, Lcom/facebook/share/model/SharePhoto$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/SharePhoto$Builder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/SharePhoto$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/SharePhoto$Builder;->build()Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    .line 384
    new-instance v1, Lcom/facebook/share/model/SharePhotoContent$Builder;

    invoke-direct {v1}, Lcom/facebook/share/model/SharePhotoContent$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/facebook/share/model/SharePhotoContent$Builder;->addPhoto(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhotoContent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/SharePhotoContent$Builder;->build()Lcom/facebook/share/model/SharePhotoContent;

    move-result-object v0

    .line 385
    iget v1, p0, Lcom/sdkbox/plugin/PluginFacebook$6;->val$type:I

    if-ne v1, v3, :cond_8

    .line 386
    new-instance v1, Lcom/sdkbox/plugin/PluginFacebook$6$2;

    invoke-direct {v1, p0}, Lcom/sdkbox/plugin/PluginFacebook$6$2;-><init>(Lcom/sdkbox/plugin/PluginFacebook$6;)V

    invoke-static {v0, v1}, Lcom/facebook/share/ShareApi;->share(Lcom/facebook/share/model/ShareContent;Lcom/facebook/FacebookCallback;)V

    goto :goto_0

    :cond_8
    if-ne v1, v2, :cond_9

    .line 401
    iget-object v1, p0, Lcom/sdkbox/plugin/PluginFacebook$6;->this$0:Lcom/sdkbox/plugin/PluginFacebook;

    invoke-static {v1}, Lcom/sdkbox/plugin/PluginFacebook;->access$000(Lcom/sdkbox/plugin/PluginFacebook;)Lcom/facebook/share/widget/ShareDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    :cond_9
    :goto_0
    return-void
.end method
