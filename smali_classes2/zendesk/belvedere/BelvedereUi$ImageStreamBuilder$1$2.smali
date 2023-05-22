.class Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder$1$2;
.super Ljava/lang/Object;
.source "BelvedereUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder$1;->onPermissionsDenied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder$1;

.field final synthetic val$appCompatActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder$1;Landroid/app/Activity;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder$1$2;->this$1:Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder$1;

    iput-object p2, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder$1$2;->val$appCompatActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 228
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lzendesk/belvedere/BelvedereUi$ImageStreamBuilder$1$2;->val$appCompatActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1}, Lzendesk/belvedere/Utils;->openAppSettingsScreen(Ljava/lang/ref/WeakReference;)V

    return-void
.end method
