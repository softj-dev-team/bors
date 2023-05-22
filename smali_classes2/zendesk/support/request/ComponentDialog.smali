.class Lzendesk/support/request/ComponentDialog;
.super Ljava/lang/Object;
.source "ComponentDialog.java"

# interfaces
.implements Lzendesk/support/suas/Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/ComponentDialog$OnDismissedListener;,
        Lzendesk/support/request/ComponentDialog$RetryDialogListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzendesk/support/suas/Listener<",
        "Lzendesk/support/request/StateUi;",
        ">;"
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final af:Lzendesk/support/request/ActionFactory;

.field private dialog:Landroid/app/Dialog;

.field private final dispatcher:Lzendesk/support/suas/Dispatcher;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lzendesk/support/request/ActionFactory;Lzendesk/support/suas/Dispatcher;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lzendesk/support/request/ComponentDialog;->activity:Landroid/app/Activity;

    .line 27
    iput-object p2, p0, Lzendesk/support/request/ComponentDialog;->af:Lzendesk/support/request/ActionFactory;

    .line 28
    iput-object p3, p0, Lzendesk/support/request/ComponentDialog;->dispatcher:Lzendesk/support/suas/Dispatcher;

    return-void
.end method

.method private getDialogForState(Lzendesk/support/request/StateUi$DialogState;)Landroid/app/Dialog;
    .locals 3

    .line 33
    instance-of v0, p1, Lzendesk/support/request/StateRetryDialog;

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Lzendesk/support/request/RetryDialog;

    iget-object v1, p0, Lzendesk/support/request/ComponentDialog;->activity:Landroid/app/Activity;

    check-cast p1, Lzendesk/support/request/StateRetryDialog;

    invoke-virtual {p1}, Lzendesk/support/request/StateRetryDialog;->getMessage()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lzendesk/support/request/RetryDialog;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 35
    new-instance p1, Lzendesk/support/request/ComponentDialog$RetryDialogListener;

    iget-object v1, p0, Lzendesk/support/request/ComponentDialog;->af:Lzendesk/support/request/ActionFactory;

    iget-object v2, p0, Lzendesk/support/request/ComponentDialog;->dispatcher:Lzendesk/support/suas/Dispatcher;

    invoke-direct {p1, v1, v2}, Lzendesk/support/request/ComponentDialog$RetryDialogListener;-><init>(Lzendesk/support/request/ActionFactory;Lzendesk/support/suas/Dispatcher;)V

    invoke-virtual {v0, p1}, Lzendesk/support/request/RetryDialog;->setListener(Lzendesk/support/request/RetryDialog$Listener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lzendesk/support/request/StateUi;

    invoke-virtual {p0, p1}, Lzendesk/support/request/ComponentDialog;->update(Lzendesk/support/request/StateUi;)V

    return-void
.end method

.method public update(Lzendesk/support/request/StateUi;)V
    .locals 3

    .line 43
    invoke-virtual {p1}, Lzendesk/support/request/StateUi;->getDialogState()Lzendesk/support/request/StateUi$DialogState;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 45
    iget-object v0, p0, Lzendesk/support/request/ComponentDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    :cond_0
    iget-object v0, p0, Lzendesk/support/request/ComponentDialog;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lzendesk/support/UiUtils;->dismissKeyboard(Landroid/app/Activity;)V

    .line 49
    invoke-direct {p0, p1}, Lzendesk/support/request/ComponentDialog;->getDialogForState(Lzendesk/support/request/StateUi$DialogState;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/ComponentDialog;->dialog:Landroid/app/Dialog;

    .line 50
    new-instance v0, Lzendesk/support/request/ComponentDialog$OnDismissedListener;

    iget-object v1, p0, Lzendesk/support/request/ComponentDialog;->af:Lzendesk/support/request/ActionFactory;

    iget-object v2, p0, Lzendesk/support/request/ComponentDialog;->dispatcher:Lzendesk/support/suas/Dispatcher;

    invoke-direct {v0, v1, v2}, Lzendesk/support/request/ComponentDialog$OnDismissedListener;-><init>(Lzendesk/support/request/ActionFactory;Lzendesk/support/suas/Dispatcher;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 51
    iget-object p1, p0, Lzendesk/support/request/ComponentDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method
