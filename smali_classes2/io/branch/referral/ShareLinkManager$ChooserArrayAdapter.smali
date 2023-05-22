.class Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShareLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/ShareLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChooserArrayAdapter"
.end annotation


# instance fields
.field public selectedPos:I

.field final synthetic this$0:Lio/branch/referral/ShareLinkManager;


# direct methods
.method private constructor <init>(Lio/branch/referral/ShareLinkManager;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;->this$0:Lio/branch/referral/ShareLinkManager;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, -0x1

    .line 417
    iput p1, p0, Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;->selectedPos:I

    return-void
.end method

.method synthetic constructor <init>(Lio/branch/referral/ShareLinkManager;Lio/branch/referral/ShareLinkManager$1;)V
    .locals 0

    .line 416
    invoke-direct {p0, p1}, Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;-><init>(Lio/branch/referral/ShareLinkManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 421
    iget-object v0, p0, Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;->this$0:Lio/branch/referral/ShareLinkManager;

    invoke-static {v0}, Lio/branch/referral/ShareLinkManager;->access$300(Lio/branch/referral/ShareLinkManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 426
    iget-object v0, p0, Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;->this$0:Lio/branch/referral/ShareLinkManager;

    invoke-static {v0}, Lio/branch/referral/ShareLinkManager;->access$300(Lio/branch/referral/ShareLinkManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 438
    new-instance p2, Lio/branch/referral/ShareLinkManager$ShareItemView;

    iget-object p3, p0, Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;->this$0:Lio/branch/referral/ShareLinkManager;

    iget-object v0, p3, Lio/branch/referral/ShareLinkManager;->context_:Landroid/content/Context;

    invoke-direct {p2, p3, v0}, Lio/branch/referral/ShareLinkManager$ShareItemView;-><init>(Lio/branch/referral/ShareLinkManager;Landroid/content/Context;)V

    goto :goto_0

    .line 440
    :cond_0
    check-cast p2, Lio/branch/referral/ShareLinkManager$ShareItemView;

    .line 442
    :goto_0
    iget-object p3, p0, Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;->this$0:Lio/branch/referral/ShareLinkManager;

    invoke-static {p3}, Lio/branch/referral/ShareLinkManager;->access$300(Lio/branch/referral/ShareLinkManager;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ResolveInfo;

    .line 443
    iget v0, p0, Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;->selectedPos:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 444
    :goto_1
    iget-object v0, p0, Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;->this$0:Lio/branch/referral/ShareLinkManager;

    iget-object v0, v0, Lio/branch/referral/ShareLinkManager;->context_:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;->this$0:Lio/branch/referral/ShareLinkManager;

    iget-object v1, v1, Lio/branch/referral/ShareLinkManager;->context_:Landroid/content/Context;

    .line 445
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 444
    invoke-virtual {p2, v0, v1, p1}, Lio/branch/referral/ShareLinkManager$ShareItemView;->setLabel(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 446
    invoke-virtual {p2, p3}, Lio/branch/referral/ShareLinkManager$ShareItemView;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    .line 452
    iget p1, p0, Lio/branch/referral/ShareLinkManager$ChooserArrayAdapter;->selectedPos:I

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
