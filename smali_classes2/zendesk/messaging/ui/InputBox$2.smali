.class Lzendesk/messaging/ui/InputBox$2;
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

    .line 211
    iput-object p1, p0, Lzendesk/messaging/ui/InputBox$2;->this$0:Lzendesk/messaging/ui/InputBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lzendesk/messaging/ui/InputBox$2;->this$0:Lzendesk/messaging/ui/InputBox;

    invoke-static {v0}, Lzendesk/messaging/ui/InputBox;->access$100(Lzendesk/messaging/ui/InputBox;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lzendesk/messaging/ui/InputBox$2;->this$0:Lzendesk/messaging/ui/InputBox;

    invoke-static {v0}, Lzendesk/messaging/ui/InputBox;->access$100(Lzendesk/messaging/ui/InputBox;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
