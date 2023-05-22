.class Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder$1;
.super Ljava/lang/Object;
.source "BelvedereUi.java"

# interfaces
.implements Lzendesk/belvedere/PermissionManager$PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;->showPopup(Landroidx/appcompat/app/AppCompatActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;

.field final synthetic val$popupBackend:Lzendesk/belvedere/ImageStream;


# direct methods
.method constructor <init>(Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;Lzendesk/belvedere/ImageStream;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder$1;->this$0:Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder;

    iput-object p2, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder$1;->val$popupBackend:Lzendesk/belvedere/ImageStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionsDenied()V
    .locals 8

    .line 217
    iget-object v0, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder$1;->val$popupBackend:Lzendesk/belvedere/ImageStream;

    invoke-virtual {v0}, Lzendesk/belvedere/ImageStream;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x1020002

    .line 219
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    .line 220
    sget v1, Lzendesk/belvedere/ui/R$string;->belvedere_permissions_rationale:I

    .line 222
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lzendesk/belvedere/BelvedereUi;->FIVE_SECONDS_DELAY:Ljava/lang/Long;

    .line 223
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget v1, Lzendesk/belvedere/ui/R$string;->belvedere_navigate_to_settings:I

    .line 224
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder$1$2;

    invoke-direct {v7, p0, v0}, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder$1$2;-><init>(Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder$1;Landroid/app/Activity;)V

    .line 220
    invoke-static/range {v2 .. v7}, Lzendesk/belvedere/Utils;->showBottomSheetDialog(Landroid/view/View;Ljava/lang/String;JLjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onPermissionsGranted(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/belvedere/MediaIntent;",
            ">;)V"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder$1;->val$popupBackend:Lzendesk/belvedere/ImageStream;

    invoke-virtual {v0}, Lzendesk/belvedere/ImageStream;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 199
    new-instance v2, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder$1$1;

    invoke-direct {v2, p0, p1, v0, v1}, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder$1$1;-><init>(Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder$1;Ljava/util/List;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
