.class Lzendesk/messaging/ui/UtilsEndUserCellView$2;
.super Ljava/lang/Object;
.source "UtilsEndUserCellView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/messaging/ui/UtilsEndUserCellView;->setAttachmentClickListener(Lzendesk/messaging/ui/EndUserCellFileState;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$state:Lzendesk/messaging/ui/EndUserCellFileState;


# direct methods
.method constructor <init>(Lzendesk/messaging/ui/EndUserCellFileState;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lzendesk/messaging/ui/UtilsEndUserCellView$2;->val$state:Lzendesk/messaging/ui/EndUserCellFileState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 247
    iget-object p1, p0, Lzendesk/messaging/ui/UtilsEndUserCellView$2;->val$state:Lzendesk/messaging/ui/EndUserCellFileState;

    invoke-virtual {p1}, Lzendesk/messaging/ui/EndUserCellFileState;->getMessageActionListener()Lzendesk/messaging/ui/MessageActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 248
    iget-object p1, p0, Lzendesk/messaging/ui/UtilsEndUserCellView$2;->val$state:Lzendesk/messaging/ui/EndUserCellFileState;

    invoke-virtual {p1}, Lzendesk/messaging/ui/EndUserCellFileState;->getMessageActionListener()Lzendesk/messaging/ui/MessageActionListener;

    move-result-object p1

    iget-object v0, p0, Lzendesk/messaging/ui/UtilsEndUserCellView$2;->val$state:Lzendesk/messaging/ui/EndUserCellFileState;

    invoke-virtual {v0}, Lzendesk/messaging/ui/EndUserCellFileState;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lzendesk/messaging/ui/MessageActionListener;->retry(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
