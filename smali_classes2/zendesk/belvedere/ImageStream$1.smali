.class Lzendesk/belvedere/ImageStream$1;
.super Lzendesk/belvedere/Callback;
.source "ImageStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/belvedere/ImageStream;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzendesk/belvedere/Callback<",
        "Ljava/util/List<",
        "Lzendesk/belvedere/MediaResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/belvedere/ImageStream;


# direct methods
.method constructor <init>(Lzendesk/belvedere/ImageStream;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lzendesk/belvedere/ImageStream$1;->this$0:Lzendesk/belvedere/ImageStream;

    invoke-direct {p0}, Lzendesk/belvedere/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .line 68
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lzendesk/belvedere/ImageStream$1;->success(Ljava/util/List;)V

    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/belvedere/MediaResult;",
            ">;)V"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/belvedere/MediaResult;

    .line 73
    invoke-virtual {v2}, Lzendesk/belvedere/MediaResult;->getSize()J

    move-result-wide v3

    iget-object v5, p0, Lzendesk/belvedere/ImageStream$1;->this$0:Lzendesk/belvedere/ImageStream;

    invoke-static {v5}, Lzendesk/belvedere/ImageStream;->access$000(Lzendesk/belvedere/ImageStream;)Lzendesk/belvedere/BelvedereUi$UiConfig;

    move-result-object v5

    invoke-virtual {v5}, Lzendesk/belvedere/BelvedereUi$UiConfig;->getMaxFileSize()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    iget-object v3, p0, Lzendesk/belvedere/ImageStream$1;->this$0:Lzendesk/belvedere/ImageStream;

    invoke-static {v3}, Lzendesk/belvedere/ImageStream;->access$000(Lzendesk/belvedere/ImageStream;)Lzendesk/belvedere/BelvedereUi$UiConfig;

    move-result-object v3

    invoke-virtual {v3}, Lzendesk/belvedere/BelvedereUi$UiConfig;->getMaxFileSize()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 74
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq v1, p1, :cond_3

    .line 79
    iget-object p1, p0, Lzendesk/belvedere/ImageStream$1;->this$0:Lzendesk/belvedere/ImageStream;

    invoke-virtual {p1}, Lzendesk/belvedere/ImageStream;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lzendesk/belvedere/ui/R$string;->belvedere_image_stream_file_too_large:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 82
    :cond_3
    iget-object p1, p0, Lzendesk/belvedere/ImageStream$1;->this$0:Lzendesk/belvedere/ImageStream;

    invoke-virtual {p1, v0}, Lzendesk/belvedere/ImageStream;->notifyImageSelected(Ljava/util/List;)V

    return-void
.end method
