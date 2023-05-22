.class Lzendesk/messaging/ui/MessagePopUpHelper$1;
.super Ljava/lang/Object;
.source "MessagePopUpHelper.java"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/messaging/ui/MessagePopUpHelper;->createOnMenuItemClickListener(Lzendesk/messaging/ui/MessageActionListener;Ljava/lang/String;)Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$messageActionListener:Lzendesk/messaging/ui/MessageActionListener;

.field final synthetic val$messagingItemId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lzendesk/messaging/ui/MessageActionListener;Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lzendesk/messaging/ui/MessagePopUpHelper$1;->val$messageActionListener:Lzendesk/messaging/ui/MessageActionListener;

    iput-object p2, p0, Lzendesk/messaging/ui/MessagePopUpHelper$1;->val$messagingItemId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 70
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lzendesk/messaging/R$id;->zui_failed_message_retry:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 71
    iget-object p1, p0, Lzendesk/messaging/ui/MessagePopUpHelper$1;->val$messageActionListener:Lzendesk/messaging/ui/MessageActionListener;

    iget-object v0, p0, Lzendesk/messaging/ui/MessagePopUpHelper$1;->val$messagingItemId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lzendesk/messaging/ui/MessageActionListener;->retry(Ljava/lang/String;)V

    return v2

    .line 73
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lzendesk/messaging/R$id;->zui_failed_message_delete:I

    if-ne v0, v1, :cond_1

    .line 74
    iget-object p1, p0, Lzendesk/messaging/ui/MessagePopUpHelper$1;->val$messageActionListener:Lzendesk/messaging/ui/MessageActionListener;

    iget-object v0, p0, Lzendesk/messaging/ui/MessagePopUpHelper$1;->val$messagingItemId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lzendesk/messaging/ui/MessageActionListener;->delete(Ljava/lang/String;)V

    return v2

    .line 76
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lzendesk/messaging/R$id;->zui_message_copy:I

    if-ne p1, v0, :cond_2

    .line 77
    iget-object p1, p0, Lzendesk/messaging/ui/MessagePopUpHelper$1;->val$messageActionListener:Lzendesk/messaging/ui/MessageActionListener;

    iget-object v0, p0, Lzendesk/messaging/ui/MessagePopUpHelper$1;->val$messagingItemId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lzendesk/messaging/ui/MessageActionListener;->copy(Ljava/lang/String;)V

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
