.class Lzendesk/belvedere/ImageStreamPresenter$2;
.super Ljava/lang/Object;
.source "ImageStreamPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/belvedere/ImageStreamPresenter;->openMediaFileScreen()V
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

    .line 101
    iput-object p1, p0, Lzendesk/belvedere/ImageStreamPresenter$2;->this$0:Lzendesk/belvedere/ImageStreamPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 104
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_0

    .line 105
    iget-object p1, p0, Lzendesk/belvedere/ImageStreamPresenter$2;->this$0:Lzendesk/belvedere/ImageStreamPresenter;

    invoke-static {p1}, Lzendesk/belvedere/ImageStreamPresenter;->access$300(Lzendesk/belvedere/ImageStreamPresenter;)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Lzendesk/belvedere/ImageStreamPresenter$2;->this$0:Lzendesk/belvedere/ImageStreamPresenter;

    invoke-static {p1}, Lzendesk/belvedere/ImageStreamPresenter;->access$200(Lzendesk/belvedere/ImageStreamPresenter;)Lzendesk/belvedere/ImageStreamMvp$View;

    move-result-object p1

    iget-object v0, p0, Lzendesk/belvedere/ImageStreamPresenter$2;->this$0:Lzendesk/belvedere/ImageStreamPresenter;

    invoke-static {v0}, Lzendesk/belvedere/ImageStreamPresenter;->access$000(Lzendesk/belvedere/ImageStreamPresenter;)Lzendesk/belvedere/ImageStreamMvp$Model;

    move-result-object v0

    invoke-interface {v0}, Lzendesk/belvedere/ImageStreamMvp$Model;->getDocumentIntent()Lzendesk/belvedere/MediaIntent;

    move-result-object v0

    iget-object v1, p0, Lzendesk/belvedere/ImageStreamPresenter$2;->this$0:Lzendesk/belvedere/ImageStreamPresenter;

    .line 108
    invoke-static {v1}, Lzendesk/belvedere/ImageStreamPresenter;->access$100(Lzendesk/belvedere/ImageStreamPresenter;)Lzendesk/belvedere/ImageStream;

    move-result-object v1

    .line 107
    invoke-interface {p1, v0, v1}, Lzendesk/belvedere/ImageStreamMvp$View;->openMediaIntent(Lzendesk/belvedere/MediaIntent;Lzendesk/belvedere/ImageStream;)V

    :goto_0
    return-void
.end method
