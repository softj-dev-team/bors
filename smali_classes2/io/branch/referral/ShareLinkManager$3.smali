.class Lio/branch/referral/ShareLinkManager$3;
.super Ljava/lang/Object;
.source "ShareLinkManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/referral/ShareLinkManager;->createShareDialog(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/branch/referral/ShareLinkManager;

.field final synthetic val$adapter:Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;

.field final synthetic val$shareOptionListView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lio/branch/referral/ShareLinkManager;Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;Landroid/widget/ListView;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lio/branch/referral/ShareLinkManager$3;->this$0:Lio/branch/referral/ShareLinkManager;

    iput-object p2, p0, Lio/branch/referral/ShareLinkManager$3;->val$adapter:Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;

    iput-object p3, p0, Lio/branch/referral/ShareLinkManager$3;->val$shareOptionListView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 235
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return p3

    :cond_0
    const/4 p1, 0x4

    if-eq p2, p1, :cond_4

    const/16 p1, 0x17

    if-eq p2, p1, :cond_3

    const/16 p1, 0x42

    if-eq p2, p1, :cond_3

    const/16 p1, 0x13

    if-eq p2, p1, :cond_2

    const/16 p1, 0x14

    if-eq p2, p1, :cond_1

    goto :goto_1

    .line 253
    :cond_1
    iget-object p1, p0, Lio/branch/referral/ShareLinkManager$3;->val$adapter:Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;

    iget p1, p1, Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;->selectedPos:I

    iget-object p2, p0, Lio/branch/referral/ShareLinkManager$3;->val$adapter:Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;

    invoke-virtual {p2}, Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;->getCount()I

    move-result p2

    sub-int/2addr p2, v0

    if-ge p1, p2, :cond_5

    .line 254
    iget-object p1, p0, Lio/branch/referral/ShareLinkManager$3;->val$adapter:Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;

    iget p2, p1, Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;->selectedPos:I

    add-int/2addr p2, v0

    iput p2, p1, Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;->selectedPos:I

    .line 255
    iget-object p1, p0, Lio/branch/referral/ShareLinkManager$3;->val$adapter:Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;

    invoke-virtual {p1}, Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 260
    :cond_2
    iget-object p1, p0, Lio/branch/referral/ShareLinkManager$3;->val$adapter:Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;

    iget p1, p1, Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;->selectedPos:I

    if-lez p1, :cond_5

    .line 261
    iget-object p1, p0, Lio/branch/referral/ShareLinkManager$3;->val$adapter:Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;

    iget p2, p1, Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;->selectedPos:I

    sub-int/2addr p2, v0

    iput p2, p1, Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;->selectedPos:I

    .line 262
    iget-object p1, p0, Lio/branch/referral/ShareLinkManager$3;->val$adapter:Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;

    invoke-virtual {p1}, Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 241
    :cond_3
    iget-object p1, p0, Lio/branch/referral/ShareLinkManager$3;->val$adapter:Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;

    iget p1, p1, Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;->selectedPos:I

    if-ltz p1, :cond_6

    iget-object p1, p0, Lio/branch/referral/ShareLinkManager$3;->val$adapter:Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;

    iget p1, p1, Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;->selectedPos:I

    iget-object p2, p0, Lio/branch/referral/ShareLinkManager$3;->val$adapter:Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;

    invoke-virtual {p2}, Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;->getCount()I

    move-result p2

    if-ge p1, p2, :cond_6

    .line 242
    iget-object p1, p0, Lio/branch/referral/ShareLinkManager$3;->val$shareOptionListView:Landroid/widget/ListView;

    iget-object p2, p0, Lio/branch/referral/ShareLinkManager$3;->val$adapter:Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;

    iget v0, p2, Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;->selectedPos:I

    const/4 v1, 0x0

    .line 243
    invoke-virtual {p2, v0, v1, v1}, Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lio/branch/referral/ShareLinkManager$3;->val$adapter:Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;

    iget v0, v0, Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;->selectedPos:I

    iget-object v1, p0, Lio/branch/referral/ShareLinkManager$3;->val$shareOptionListView:Landroid/widget/ListView;

    iget-object v2, p0, Lio/branch/referral/ShareLinkManager$3;->val$adapter:Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;

    iget v2, v2, Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;->selectedPos:I

    .line 245
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    .line 242
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_1

    .line 249
    :cond_4
    iget-object p1, p0, Lio/branch/referral/ShareLinkManager$3;->this$0:Lio/branch/referral/ShareLinkManager;

    iget-object p1, p1, Lio/branch/referral/ShareLinkManager;->shareDlg_:Lio/branch/referral/AnimatedDialog;

    invoke-virtual {p1}, Lio/branch/referral/AnimatedDialog;->dismiss()V

    :cond_5
    :goto_0
    const/4 p3, 0x1

    :cond_6
    :goto_1
    return p3
.end method
