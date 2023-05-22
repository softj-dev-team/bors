.class Lzendesk/belvedere/ImageStreamPresenter;
.super Ljava/lang/Object;
.source "ImageStreamPresenter.java"

# interfaces
.implements Lzendesk/belvedere/ImageStreamMvp$Presenter;


# instance fields
.field private final imageStreamBackend:Lzendesk/belvedere/ImageStream;

.field private final imageStreamListener:Lzendesk/belvedere/ImageStreamAdapter$Listener;

.field private final model:Lzendesk/belvedere/ImageStreamMvp$Model;

.field private final view:Lzendesk/belvedere/ImageStreamMvp$View;


# direct methods
.method constructor <init>(Lzendesk/belvedere/ImageStreamMvp$Model;Lzendesk/belvedere/ImageStreamMvp$View;Lzendesk/belvedere/ImageStream;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Lzendesk/belvedere/ImageStreamPresenter$5;

    invoke-direct {v0, p0}, Lzendesk/belvedere/ImageStreamPresenter$5;-><init>(Lzendesk/belvedere/ImageStreamPresenter;)V

    iput-object v0, p0, Lzendesk/belvedere/ImageStreamPresenter;->imageStreamListener:Lzendesk/belvedere/ImageStreamAdapter$Listener;

    .line 30
    iput-object p1, p0, Lzendesk/belvedere/ImageStreamPresenter;->model:Lzendesk/belvedere/ImageStreamMvp$Model;

    .line 31
    iput-object p2, p0, Lzendesk/belvedere/ImageStreamPresenter;->view:Lzendesk/belvedere/ImageStreamMvp$View;

    .line 32
    iput-object p3, p0, Lzendesk/belvedere/ImageStreamPresenter;->imageStreamBackend:Lzendesk/belvedere/ImageStream;

    return-void
.end method

.method static synthetic access$000(Lzendesk/belvedere/ImageStreamPresenter;)Lzendesk/belvedere/ImageStreamMvp$Model;
    .locals 0

    .line 23
    iget-object p0, p0, Lzendesk/belvedere/ImageStreamPresenter;->model:Lzendesk/belvedere/ImageStreamMvp$Model;

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/belvedere/ImageStreamPresenter;)Lzendesk/belvedere/ImageStream;
    .locals 0

    .line 23
    iget-object p0, p0, Lzendesk/belvedere/ImageStreamPresenter;->imageStreamBackend:Lzendesk/belvedere/ImageStream;

    return-object p0
.end method

.method static synthetic access$200(Lzendesk/belvedere/ImageStreamPresenter;)Lzendesk/belvedere/ImageStreamMvp$View;
    .locals 0

    .line 23
    iget-object p0, p0, Lzendesk/belvedere/ImageStreamPresenter;->view:Lzendesk/belvedere/ImageStreamMvp$View;

    return-object p0
.end method

.method static synthetic access$300(Lzendesk/belvedere/ImageStreamPresenter;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lzendesk/belvedere/ImageStreamPresenter;->openMediaOnPermissionGranted()V

    return-void
.end method

.method static synthetic access$400(Lzendesk/belvedere/ImageStreamPresenter;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lzendesk/belvedere/ImageStreamPresenter;->displayBottomSheetDialogOnPermissionDenied()V

    return-void
.end method

.method static synthetic access$500(Lzendesk/belvedere/ImageStreamPresenter;Lzendesk/belvedere/MediaResult;Z)Ljava/util/List;
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lzendesk/belvedere/ImageStreamPresenter;->setItemSelected(Lzendesk/belvedere/MediaResult;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private displayBottomSheetDialogOnPermissionDenied()V
    .locals 7

    .line 142
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamPresenter;->imageStreamBackend:Lzendesk/belvedere/ImageStream;

    invoke-virtual {v0}, Lzendesk/belvedere/ImageStream;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 143
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamPresenter;->imageStreamBackend:Lzendesk/belvedere/ImageStream;

    sget v2, Lzendesk/belvedere/ui/R$string;->belvedere_permissions_rationale:I

    .line 145
    invoke-virtual {v0, v2}, Lzendesk/belvedere/ImageStream;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lzendesk/belvedere/BelvedereUi;->FIVE_SECONDS_DELAY:Ljava/lang/Long;

    .line 146
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lzendesk/belvedere/ImageStreamPresenter;->imageStreamBackend:Lzendesk/belvedere/ImageStream;

    sget v5, Lzendesk/belvedere/ui/R$string;->belvedere_navigate_to_settings:I

    .line 147
    invoke-virtual {v0, v5}, Lzendesk/belvedere/ImageStream;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lzendesk/belvedere/ImageStreamPresenter$4;

    invoke-direct {v6, p0}, Lzendesk/belvedere/ImageStreamPresenter$4;-><init>(Lzendesk/belvedere/ImageStreamPresenter;)V

    .line 143
    invoke-static/range {v1 .. v6}, Lzendesk/belvedere/Utils;->showBottomSheetDialog(Landroid/view/View;Ljava/lang/String;JLjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initMenu()V
    .locals 2

    .line 81
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamPresenter;->model:Lzendesk/belvedere/ImageStreamMvp$Model;

    invoke-interface {v0}, Lzendesk/belvedere/ImageStreamMvp$Model;->hasGooglePhotosIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Lzendesk/belvedere/ImageStreamPresenter$1;

    invoke-direct {v0, p0}, Lzendesk/belvedere/ImageStreamPresenter$1;-><init>(Lzendesk/belvedere/ImageStreamPresenter;)V

    .line 89
    iget-object v1, p0, Lzendesk/belvedere/ImageStreamPresenter;->view:Lzendesk/belvedere/ImageStreamMvp$View;

    invoke-interface {v1, v0}, Lzendesk/belvedere/ImageStreamMvp$View;->showGooglePhotosMenuItem(Landroid/view/View$OnClickListener;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamPresenter;->model:Lzendesk/belvedere/ImageStreamMvp$Model;

    invoke-interface {v0}, Lzendesk/belvedere/ImageStreamMvp$Model;->hasDocumentIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-direct {p0}, Lzendesk/belvedere/ImageStreamPresenter;->openMediaFileScreen()V

    :cond_1
    return-void
.end method

.method private openMediaFileScreen()V
    .locals 2

    .line 101
    new-instance v0, Lzendesk/belvedere/ImageStreamPresenter$2;

    invoke-direct {v0, p0}, Lzendesk/belvedere/ImageStreamPresenter$2;-><init>(Lzendesk/belvedere/ImageStreamPresenter;)V

    .line 112
    iget-object v1, p0, Lzendesk/belvedere/ImageStreamPresenter;->view:Lzendesk/belvedere/ImageStreamMvp$View;

    invoke-interface {v1, v0}, Lzendesk/belvedere/ImageStreamMvp$View;->showDocumentMenuItem(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private openMediaOnPermissionGranted()V
    .locals 3

    .line 121
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamPresenter;->imageStreamBackend:Lzendesk/belvedere/ImageStream;

    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lzendesk/belvedere/ImageStreamPresenter$3;

    invoke-direct {v2, p0}, Lzendesk/belvedere/ImageStreamPresenter$3;-><init>(Lzendesk/belvedere/ImageStreamPresenter;)V

    invoke-virtual {v0, v1, v2}, Lzendesk/belvedere/ImageStream;->requestPermissions(Ljava/util/List;Lzendesk/belvedere/PermissionManager$InternalPermissionCallback;)V

    return-void
.end method

.method private presentStream()V
    .locals 7

    .line 159
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamPresenter;->model:Lzendesk/belvedere/ImageStreamMvp$Model;

    invoke-interface {v0}, Lzendesk/belvedere/ImageStreamMvp$Model;->showFullScreenOnly()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lzendesk/belvedere/ImageStreamPresenter;->view:Lzendesk/belvedere/ImageStreamMvp$View;

    invoke-interface {v0}, Lzendesk/belvedere/ImageStreamMvp$View;->shouldShowFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    const/4 v4, 0x1

    .line 162
    :goto_1
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamPresenter;->view:Lzendesk/belvedere/ImageStreamMvp$View;

    invoke-interface {v0, v4}, Lzendesk/belvedere/ImageStreamMvp$View;->initViews(Z)V

    .line 165
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamPresenter;->model:Lzendesk/belvedere/ImageStreamMvp$Model;

    invoke-interface {v0}, Lzendesk/belvedere/ImageStreamMvp$Model;->getLatestImages()Ljava/util/List;

    move-result-object v2

    .line 168
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamPresenter;->model:Lzendesk/belvedere/ImageStreamMvp$Model;

    invoke-interface {v0}, Lzendesk/belvedere/ImageStreamMvp$Model;->getSelectedMediaResults()Ljava/util/List;

    move-result-object v3

    .line 171
    iget-object v1, p0, Lzendesk/belvedere/ImageStreamPresenter;->view:Lzendesk/belvedere/ImageStreamMvp$View;

    iget-object v0, p0, Lzendesk/belvedere/ImageStreamPresenter;->model:Lzendesk/belvedere/ImageStreamMvp$Model;

    invoke-interface {v0}, Lzendesk/belvedere/ImageStreamMvp$Model;->hasCameraIntent()Z

    move-result v5

    iget-object v6, p0, Lzendesk/belvedere/ImageStreamPresenter;->imageStreamListener:Lzendesk/belvedere/ImageStreamAdapter$Listener;

    invoke-interface/range {v1 .. v6}, Lzendesk/belvedere/ImageStreamMvp$View;->showImageStream(Ljava/util/List;Ljava/util/List;ZZLzendesk/belvedere/ImageStreamAdapter$Listener;)V

    .line 174
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamPresenter;->imageStreamBackend:Lzendesk/belvedere/ImageStream;

    invoke-virtual {v0}, Lzendesk/belvedere/ImageStream;->notifyVisible()V

    return-void
.end method

.method private setItemSelected(Lzendesk/belvedere/MediaResult;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/belvedere/MediaResult;",
            "Z)",
            "Ljava/util/List<",
            "Lzendesk/belvedere/MediaResult;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 72
    iget-object p2, p0, Lzendesk/belvedere/ImageStreamPresenter;->model:Lzendesk/belvedere/ImageStreamMvp$Model;

    invoke-interface {p2, p1}, Lzendesk/belvedere/ImageStreamMvp$Model;->addToSelectedItems(Lzendesk/belvedere/MediaResult;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 74
    :cond_0
    iget-object p2, p0, Lzendesk/belvedere/ImageStreamPresenter;->model:Lzendesk/belvedere/ImageStreamMvp$Model;

    invoke-interface {p2, p1}, Lzendesk/belvedere/ImageStreamMvp$Model;->removeFromSelectedItems(Lzendesk/belvedere/MediaResult;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 53
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamPresenter;->imageStreamBackend:Lzendesk/belvedere/ImageStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lzendesk/belvedere/ImageStream;->setImageStreamUi(Lzendesk/belvedere/ImageStreamUi;Lzendesk/belvedere/BelvedereUi$UiConfig;)V

    .line 56
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamPresenter;->imageStreamBackend:Lzendesk/belvedere/ImageStream;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v2}, Lzendesk/belvedere/ImageStream;->notifyScrollListener(IIF)V

    .line 59
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamPresenter;->imageStreamBackend:Lzendesk/belvedere/ImageStream;

    invoke-virtual {v0}, Lzendesk/belvedere/ImageStream;->notifyDismissed()V

    return-void
.end method

.method public init()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lzendesk/belvedere/ImageStreamPresenter;->presentStream()V

    .line 38
    invoke-direct {p0}, Lzendesk/belvedere/ImageStreamPresenter;->initMenu()V

    .line 39
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamPresenter;->view:Lzendesk/belvedere/ImageStreamMvp$View;

    iget-object v1, p0, Lzendesk/belvedere/ImageStreamPresenter;->model:Lzendesk/belvedere/ImageStreamMvp$Model;

    invoke-interface {v1}, Lzendesk/belvedere/ImageStreamMvp$Model;->getSelectedMediaResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lzendesk/belvedere/ImageStreamMvp$View;->updateToolbarTitle(I)V

    .line 40
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamPresenter;->view:Lzendesk/belvedere/ImageStreamMvp$View;

    iget-object v1, p0, Lzendesk/belvedere/ImageStreamPresenter;->model:Lzendesk/belvedere/ImageStreamMvp$Model;

    invoke-interface {v1}, Lzendesk/belvedere/ImageStreamMvp$Model;->getSelectedMediaResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lzendesk/belvedere/ImageStreamMvp$View;->updateFloatingActionButton(I)V

    return-void
.end method

.method public onImageStreamScrolled(IIF)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_0

    .line 46
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamPresenter;->imageStreamBackend:Lzendesk/belvedere/ImageStream;

    invoke-virtual {v0, p1, p2, p3}, Lzendesk/belvedere/ImageStream;->notifyScrollListener(IIF)V

    :cond_0
    return-void
.end method

.method public sendSelectedImages()V
    .locals 2

    .line 64
    iget-object v0, p0, Lzendesk/belvedere/ImageStreamPresenter;->model:Lzendesk/belvedere/ImageStreamMvp$Model;

    invoke-interface {v0}, Lzendesk/belvedere/ImageStreamMvp$Model;->getSelectedMediaResults()Ljava/util/List;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lzendesk/belvedere/ImageStreamPresenter;->imageStreamBackend:Lzendesk/belvedere/ImageStream;

    invoke-virtual {v1, v0}, Lzendesk/belvedere/ImageStream;->notifyImagesSent(Ljava/util/List;)V

    return-void
.end method
