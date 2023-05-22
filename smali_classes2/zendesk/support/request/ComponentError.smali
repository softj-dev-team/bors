.class Lzendesk/support/request/ComponentError;
.super Ljava/lang/Object;
.source "ComponentError.java"

# interfaces
.implements Lzendesk/support/suas/Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/ComponentError$ErrorStateModel;,
        Lzendesk/support/request/ComponentError$ErrorStateSelector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzendesk/support/suas/Listener<",
        "Lzendesk/support/request/ComponentError$ErrorStateModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final af:Lzendesk/support/request/ActionFactory;

.field private final container:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private final dispatcher:Lzendesk/support/suas/Dispatcher;

.field private errorState:Lzendesk/support/request/StateError$ErrorType;

.field private snackbar:Lcom/google/android/material/snackbar/Snackbar;


# direct methods
.method private constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lzendesk/support/suas/Dispatcher;Lzendesk/support/request/ActionFactory;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lzendesk/support/request/ComponentError;->container:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 40
    iput-object p2, p0, Lzendesk/support/request/ComponentError;->dispatcher:Lzendesk/support/suas/Dispatcher;

    .line 41
    iput-object p3, p0, Lzendesk/support/request/ComponentError;->af:Lzendesk/support/request/ActionFactory;

    return-void
.end method

.method static synthetic access$102(Lzendesk/support/request/ComponentError;Lzendesk/support/request/StateError$ErrorType;)Lzendesk/support/request/StateError$ErrorType;
    .locals 0

    .line 20
    iput-object p1, p0, Lzendesk/support/request/ComponentError;->errorState:Lzendesk/support/request/StateError$ErrorType;

    return-object p1
.end method

.method static synthetic access$200(Lzendesk/support/request/ComponentError;)Lzendesk/support/request/ActionFactory;
    .locals 0

    .line 20
    iget-object p0, p0, Lzendesk/support/request/ComponentError;->af:Lzendesk/support/request/ActionFactory;

    return-object p0
.end method

.method static synthetic access$300(Lzendesk/support/request/ComponentError;)Lzendesk/support/suas/Dispatcher;
    .locals 0

    .line 20
    iget-object p0, p0, Lzendesk/support/request/ComponentError;->dispatcher:Lzendesk/support/suas/Dispatcher;

    return-object p0
.end method

.method static create(Landroid/app/Activity;Lzendesk/support/suas/Dispatcher;Lzendesk/support/request/ActionFactory;)Lzendesk/support/request/ComponentError;
    .locals 1

    .line 23
    sget v0, Lcom/zendesk/sdk/R$id;->activity_request:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 24
    new-instance v0, Lzendesk/support/request/ComponentError;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/support/request/ComponentError;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lzendesk/support/suas/Dispatcher;Lzendesk/support/request/ActionFactory;)V

    return-object v0
.end method

.method static getSelector()Lzendesk/support/suas/StateSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzendesk/support/suas/StateSelector<",
            "Lzendesk/support/request/ComponentError$ErrorStateModel;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Lzendesk/support/request/ComponentError$ErrorStateSelector;

    invoke-direct {v0}, Lzendesk/support/request/ComponentError$ErrorStateSelector;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lzendesk/support/request/ComponentError$ErrorStateModel;

    invoke-virtual {p0, p1}, Lzendesk/support/request/ComponentError;->update(Lzendesk/support/request/ComponentError$ErrorStateModel;)V

    return-void
.end method

.method public update(Lzendesk/support/request/ComponentError$ErrorStateModel;)V
    .locals 3

    .line 47
    invoke-static {p1}, Lzendesk/support/request/ComponentError$ErrorStateModel;->access$000(Lzendesk/support/request/ComponentError$ErrorStateModel;)Lzendesk/support/request/StateError$ErrorType;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/request/ComponentError;->errorState:Lzendesk/support/request/StateError$ErrorType;

    if-ne v0, v1, :cond_0

    return-void

    .line 50
    :cond_0
    invoke-static {p1}, Lzendesk/support/request/ComponentError$ErrorStateModel;->access$000(Lzendesk/support/request/ComponentError$ErrorStateModel;)Lzendesk/support/request/StateError$ErrorType;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/request/ComponentError;->errorState:Lzendesk/support/request/StateError$ErrorType;

    .line 53
    invoke-static {p1}, Lzendesk/support/request/ComponentError$ErrorStateModel;->access$000(Lzendesk/support/request/ComponentError$ErrorStateModel;)Lzendesk/support/request/StateError$ErrorType;

    move-result-object v0

    sget-object v1, Lzendesk/support/request/StateError$ErrorType;->NoError:Lzendesk/support/request/StateError$ErrorType;

    if-eq v0, v1, :cond_3

    .line 54
    iget-object v0, p0, Lzendesk/support/request/ComponentError;->container:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p1}, Lzendesk/support/request/ComponentError$ErrorStateModel;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/request/ComponentError;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 56
    sget-object v0, Lzendesk/support/request/ComponentError$2;->$SwitchMap$zendesk$support$request$StateError$ErrorType:[I

    invoke-virtual {p1}, Lzendesk/support/request/ComponentError$ErrorStateModel;->getErrorState()Lzendesk/support/request/StateError$ErrorType;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/support/request/StateError$ErrorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p1}, Lzendesk/support/request/ComponentError$ErrorStateModel;->isConversationsEnabled()Z

    move-result p1

    if-nez p1, :cond_4

    .line 73
    iget-object p1, p0, Lzendesk/support/request/ComponentError;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    sget v0, Lcom/zendesk/sdk/R$string;->request_error_create_request:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->setText(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 74
    iget-object p1, p0, Lzendesk/support/request/ComponentError;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_0

    .line 59
    :cond_2
    iget-object p1, p0, Lzendesk/support/request/ComponentError;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    sget v0, Lcom/zendesk/sdk/R$string;->request_error_load_comments:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->setText(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 60
    iget-object p1, p0, Lzendesk/support/request/ComponentError;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    sget v0, Lcom/zendesk/sdk/R$string;->retry_view_button_label:I

    new-instance v1, Lzendesk/support/request/ComponentError$1;

    invoke-direct {v1, p0}, Lzendesk/support/request/ComponentError$1;-><init>(Lzendesk/support/request/ComponentError;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 67
    iget-object p1, p0, Lzendesk/support/request/ComponentError;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_0

    .line 82
    :cond_3
    iget-object p1, p0, Lzendesk/support/request/ComponentError;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz p1, :cond_4

    .line 83
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    :cond_4
    :goto_0
    return-void
.end method
