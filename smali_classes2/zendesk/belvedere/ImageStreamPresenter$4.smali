.class Lzendesk/belvedere/ImageStreamPresenter$4;
.super Ljava/lang/Object;
.source "ImageStreamPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/belvedere/ImageStreamPresenter;->displayBottomSheetDialogOnPermissionDenied()V
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

    .line 148
    iput-object p1, p0, Lzendesk/belvedere/ImageStreamPresenter$4;->this$0:Lzendesk/belvedere/ImageStreamPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 151
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lzendesk/belvedere/ImageStreamPresenter$4;->this$0:Lzendesk/belvedere/ImageStreamPresenter;

    invoke-static {v0}, Lzendesk/belvedere/ImageStreamPresenter;->access$100(Lzendesk/belvedere/ImageStreamPresenter;)Lzendesk/belvedere/ImageStream;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/belvedere/ImageStream;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1}, Lzendesk/belvedere/Utils;->openAppSettingsScreen(Ljava/lang/ref/WeakReference;)V

    return-void
.end method
