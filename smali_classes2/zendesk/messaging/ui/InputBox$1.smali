.class Lzendesk/messaging/ui/InputBox$1;
.super Ljava/lang/Object;
.source "InputBox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/messaging/ui/InputBox;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/messaging/ui/InputBox;


# direct methods
.method constructor <init>(Lzendesk/messaging/ui/InputBox;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lzendesk/messaging/ui/InputBox$1;->this$0:Lzendesk/messaging/ui/InputBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 203
    iget-object p1, p0, Lzendesk/messaging/ui/InputBox$1;->this$0:Lzendesk/messaging/ui/InputBox;

    invoke-static {p1}, Lzendesk/messaging/ui/InputBox;->access$000(Lzendesk/messaging/ui/InputBox;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 204
    iget-object p1, p0, Lzendesk/messaging/ui/InputBox$1;->this$0:Lzendesk/messaging/ui/InputBox;

    .line 205
    invoke-virtual {p1}, Lzendesk/messaging/ui/InputBox;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 207
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_0
    return-void
.end method
