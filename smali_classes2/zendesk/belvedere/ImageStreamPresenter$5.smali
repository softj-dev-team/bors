.class Lzendesk/belvedere/ImageStreamPresenter$5;
.super Ljava/lang/Object;
.source "ImageStreamPresenter.java"

# interfaces
.implements Lzendesk/belvedere/ImageStreamAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/belvedere/ImageStreamPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/belvedere/ImageStreamPresenter;


# direct methods
.method constructor <init>(Lzendesk/belvedere/ImageStreamPresenter;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lzendesk/belvedere/ImageStreamPresenter$5;->this$0:Lzendesk/belvedere/ImageStreamPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenCamera()V
    .locals 3

    .line 180
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamPresenter$5;->this$0:Lzendesk/belvedere/ImageStreamPresenter;

    invoke-static {v0}, Lzendesk/belvedere/ImageStreamPresenter;->access$000(Lzendesk/belvedere/ImageStreamPresenter;)Lzendesk/belvedere/ImageStreamMvp$Model;

    move-result-object v0

    invoke-interface {v0}, Lzendesk/belvedere/ImageStreamMvp$Model;->hasCameraIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamPresenter$5;->this$0:Lzendesk/belvedere/ImageStreamPresenter;

    invoke-static {v0}, Lzendesk/belvedere/ImageStreamPresenter;->access$200(Lzendesk/belvedere/ImageStreamPresenter;)Lzendesk/belvedere/ImageStreamMvp$View;

    move-result-object v0

    iget-object v1, p0, Lzendesk/belvedere/ImageStreamPresenter$5;->this$0:Lzendesk/belvedere/ImageStreamPresenter;

    invoke-static {v1}, Lzendesk/belvedere/ImageStreamPresenter;->access$000(Lzendesk/belvedere/ImageStreamPresenter;)Lzendesk/belvedere/ImageStreamMvp$Model;

    move-result-object v1

    invoke-interface {v1}, Lzendesk/belvedere/ImageStreamMvp$Model;->getCameraIntent()Lzendesk/belvedere/MediaIntent;

    move-result-object v1

    iget-object v2, p0, Lzendesk/belvedere/ImageStreamPresenter$5;->this$0:Lzendesk/belvedere/ImageStreamPresenter;

    invoke-static {v2}, Lzendesk/belvedere/ImageStreamPresenter;->access$100(Lzendesk/belvedere/ImageStreamPresenter;)Lzendesk/belvedere/ImageStream;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lzendesk/belvedere/ImageStreamMvp$View;->openMediaIntent(Lzendesk/belvedere/MediaIntent;Lzendesk/belvedere/ImageStream;)V

    :cond_0
    return-void
.end method

.method public onSelectionChanged(Lzendesk/belvedere/ImageStreamItems$Item;)Z
    .locals 7

    .line 187
    invoke-virtual {p1}, Lzendesk/belvedere/ImageStreamItems$Item;->getMediaResult()Lzendesk/belvedere/MediaResult;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lzendesk/belvedere/ImageStreamPresenter$5;->this$0:Lzendesk/belvedere/ImageStreamPresenter;

    invoke-static {v1}, Lzendesk/belvedere/ImageStreamPresenter;->access$000(Lzendesk/belvedere/ImageStreamPresenter;)Lzendesk/belvedere/ImageStreamMvp$Model;

    move-result-object v1

    invoke-interface {v1}, Lzendesk/belvedere/ImageStreamMvp$Model;->getMaxFileSize()J

    move-result-wide v1

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Lzendesk/belvedere/MediaResult;->getSize()J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-lez v6, :cond_1

    :cond_0
    const-wide/16 v4, -0x1

    cmp-long v6, v1, v4

    if-nez v6, :cond_3

    .line 192
    :cond_1
    invoke-virtual {p1}, Lzendesk/belvedere/ImageStreamItems$Item;->isSelected()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lzendesk/belvedere/ImageStreamItems$Item;->setSelected(Z)V

    .line 195
    iget-object v1, p0, Lzendesk/belvedere/ImageStreamPresenter$5;->this$0:Lzendesk/belvedere/ImageStreamPresenter;

    invoke-virtual {p1}, Lzendesk/belvedere/ImageStreamItems$Item;->isSelected()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lzendesk/belvedere/ImageStreamPresenter;->access$500(Lzendesk/belvedere/ImageStreamPresenter;Lzendesk/belvedere/MediaResult;Z)Ljava/util/List;

    move-result-object v1

    .line 197
    iget-object v2, p0, Lzendesk/belvedere/ImageStreamPresenter$5;->this$0:Lzendesk/belvedere/ImageStreamPresenter;

    invoke-static {v2}, Lzendesk/belvedere/ImageStreamPresenter;->access$200(Lzendesk/belvedere/ImageStreamPresenter;)Lzendesk/belvedere/ImageStreamMvp$View;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v4}, Lzendesk/belvedere/ImageStreamMvp$View;->updateToolbarTitle(I)V

    .line 198
    iget-object v2, p0, Lzendesk/belvedere/ImageStreamPresenter$5;->this$0:Lzendesk/belvedere/ImageStreamPresenter;

    invoke-static {v2}, Lzendesk/belvedere/ImageStreamPresenter;->access$200(Lzendesk/belvedere/ImageStreamPresenter;)Lzendesk/belvedere/ImageStreamMvp$View;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v2, v1}, Lzendesk/belvedere/ImageStreamMvp$View;->updateFloatingActionButton(I)V

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 201
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {p1}, Lzendesk/belvedere/ImageStreamItems$Item;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 204
    iget-object p1, p0, Lzendesk/belvedere/ImageStreamPresenter$5;->this$0:Lzendesk/belvedere/ImageStreamPresenter;

    invoke-static {p1}, Lzendesk/belvedere/ImageStreamPresenter;->access$100(Lzendesk/belvedere/ImageStreamPresenter;)Lzendesk/belvedere/ImageStream;

    move-result-object p1

    invoke-virtual {p1, v1}, Lzendesk/belvedere/ImageStream;->notifyImageSelected(Ljava/util/List;)V

    goto :goto_0

    .line 206
    :cond_2
    iget-object p1, p0, Lzendesk/belvedere/ImageStreamPresenter$5;->this$0:Lzendesk/belvedere/ImageStreamPresenter;

    invoke-static {p1}, Lzendesk/belvedere/ImageStreamPresenter;->access$100(Lzendesk/belvedere/ImageStreamPresenter;)Lzendesk/belvedere/ImageStream;

    move-result-object p1

    invoke-virtual {p1, v1}, Lzendesk/belvedere/ImageStream;->notifyImageDeselected(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 211
    iget-object p1, p0, Lzendesk/belvedere/ImageStreamPresenter$5;->this$0:Lzendesk/belvedere/ImageStreamPresenter;

    invoke-static {p1}, Lzendesk/belvedere/ImageStreamPresenter;->access$200(Lzendesk/belvedere/ImageStreamPresenter;)Lzendesk/belvedere/ImageStreamMvp$View;

    move-result-object p1

    sget v0, Lzendesk/belvedere/ui/R$string;->belvedere_image_stream_file_too_large:I

    invoke-interface {p1, v0}, Lzendesk/belvedere/ImageStreamMvp$View;->showToast(I)V

    :goto_0
    return v3
.end method
