.class Lzendesk/support/request/RetryDialog;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialog;
.source "RetryDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/RetryDialog$Listener;
    }
.end annotation


# instance fields
.field private bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lzendesk/support/request/RetryDialog$Listener;

.field private final message:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/request/StateMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateMessage;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p2, p0, Lzendesk/support/request/RetryDialog;->message:Ljava/util/List;

    .line 26
    invoke-direct {p0}, Lzendesk/support/request/RetryDialog;->init()V

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/request/RetryDialog;)Lzendesk/support/request/RetryDialog$Listener;
    .locals 0

    .line 17
    iget-object p0, p0, Lzendesk/support/request/RetryDialog;->listener:Lzendesk/support/request/RetryDialog$Listener;

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/support/request/RetryDialog;)Ljava/util/List;
    .locals 0

    .line 17
    iget-object p0, p0, Lzendesk/support/request/RetryDialog;->message:Ljava/util/List;

    return-object p0
.end method

.method private init()V
    .locals 1

    .line 38
    sget v0, Lcom/zendesk/sdk/R$layout;->zs_request_dialog_retry:I

    invoke-virtual {p0, v0}, Lzendesk/support/request/RetryDialog;->setContentView(I)V

    const/4 v0, 0x1

    .line 39
    invoke-virtual {p0, v0}, Lzendesk/support/request/RetryDialog;->setCancelable(Z)V

    .line 40
    invoke-virtual {p0, v0}, Lzendesk/support/request/RetryDialog;->setCanceledOnTouchOutside(Z)V

    .line 41
    invoke-direct {p0}, Lzendesk/support/request/RetryDialog;->initBottomSheet()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/request/RetryDialog;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 42
    invoke-direct {p0}, Lzendesk/support/request/RetryDialog;->initListener()V

    return-void
.end method

.method private initBottomSheet()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation

    .line 72
    sget v0, Lcom/google/android/material/R$id;->design_bottom_sheet:I

    invoke-virtual {p0, v0}, Lzendesk/support/request/RetryDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 75
    :try_start_0
    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private initListener()V
    .locals 3

    .line 46
    sget v0, Lcom/zendesk/sdk/R$id;->request_dialog_retry_delete:I

    invoke-virtual {p0, v0}, Lzendesk/support/request/RetryDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 47
    sget v1, Lcom/zendesk/sdk/R$id;->request_dialog_retry_retry:I

    invoke-virtual {p0, v1}, Lzendesk/support/request/RetryDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 50
    new-instance v2, Lzendesk/support/request/RetryDialog$1;

    invoke-direct {v2, p0}, Lzendesk/support/request/RetryDialog$1;-><init>(Lzendesk/support/request/RetryDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    new-instance v0, Lzendesk/support/request/RetryDialog$2;

    invoke-direct {v0, p0}, Lzendesk/support/request/RetryDialog$2;-><init>(Lzendesk/support/request/RetryDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 2

    .line 31
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->onStart()V

    .line 32
    iget-object v0, p0, Lzendesk/support/request/RetryDialog;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 33
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    :cond_0
    return-void
.end method

.method public setListener(Lzendesk/support/request/RetryDialog$Listener;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lzendesk/support/request/RetryDialog;->listener:Lzendesk/support/request/RetryDialog$Listener;

    return-void
.end method
