.class Lzendesk/belvedere/ImageStreamItems$StreamItemFile;
.super Lzendesk/belvedere/ImageStreamItems$Item;
.source "ImageStreamItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/belvedere/ImageStreamItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StreamItemFile"
.end annotation


# instance fields
.field private final listener:Lzendesk/belvedere/ImageStreamAdapter$Listener;

.field private final mediaResult:Lzendesk/belvedere/MediaResult;

.field private final resolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method constructor <init>(Lzendesk/belvedere/ImageStreamAdapter$Listener;Lzendesk/belvedere/MediaResult;Landroid/content/Context;)V
    .locals 1

    .line 92
    sget v0, Lzendesk/belvedere/ui/R$layout;->belvedere_stream_list_item_genric_file:I

    invoke-direct {p0, v0, p2}, Lzendesk/belvedere/ImageStreamItems$Item;-><init>(ILzendesk/belvedere/MediaResult;)V

    .line 93
    iput-object p2, p0, Lzendesk/belvedere/ImageStreamItems$StreamItemFile;->mediaResult:Lzendesk/belvedere/MediaResult;

    .line 94
    invoke-virtual {p2}, Lzendesk/belvedere/MediaResult;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lzendesk/belvedere/ImageStreamItems$StreamItemFile;->getAppInfoForFile(Ljava/lang/String;Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    iput-object p2, p0, Lzendesk/belvedere/ImageStreamItems$StreamItemFile;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 95
    iput-object p1, p0, Lzendesk/belvedere/ImageStreamItems$StreamItemFile;->listener:Lzendesk/belvedere/ImageStreamAdapter$Listener;

    return-void
.end method

.method static synthetic access$100(Lzendesk/belvedere/ImageStreamItems$StreamItemFile;)Lzendesk/belvedere/ImageStreamAdapter$Listener;
    .locals 0

    .line 85
    iget-object p0, p0, Lzendesk/belvedere/ImageStreamItems$StreamItemFile;->listener:Lzendesk/belvedere/ImageStreamAdapter$Listener;

    return-object p0
.end method

.method private getAppInfoForFile(Ljava/lang/String;Landroid/content/Context;)Landroid/content/pm/ResolveInfo;
    .locals 3

    .line 131
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 132
    invoke-static {p2}, Lzendesk/belvedere/Belvedere;->from(Landroid/content/Context;)Lzendesk/belvedere/Belvedere;

    move-result-object p2

    const-string v1, "tmp"

    invoke-virtual {p2, v1, p1}, Lzendesk/belvedere/Belvedere;->getFile(Ljava/lang/String;Ljava/lang/String;)Lzendesk/belvedere/MediaResult;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 138
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Lzendesk/belvedere/MediaResult;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000

    .line 142
    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 144
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 p2, 0x0

    .line 145
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1

    :cond_1
    return-object p2
.end method


# virtual methods
.method bind(Landroid/view/View;)V
    .locals 9

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 101
    sget v1, Lzendesk/belvedere/ui/R$id;->list_item_file_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 102
    sget v2, Lzendesk/belvedere/ui/R$id;->list_item_file_title:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 103
    sget v3, Lzendesk/belvedere/ui/R$id;->list_item_file_label:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 104
    sget v4, Lzendesk/belvedere/ui/R$id;->list_item_file_holder:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lzendesk/belvedere/SelectableView;

    .line 106
    sget v4, Lzendesk/belvedere/ui/R$string;->belvedere_stream_item_select_file_desc:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lzendesk/belvedere/ImageStreamItems$StreamItemFile;->mediaResult:Lzendesk/belvedere/MediaResult;

    invoke-virtual {v7}, Lzendesk/belvedere/MediaResult;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 107
    sget v6, Lzendesk/belvedere/ui/R$string;->belvedere_stream_item_unselect_file_desc:I

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lzendesk/belvedere/ImageStreamItems$StreamItemFile;->mediaResult:Lzendesk/belvedere/MediaResult;

    invoke-virtual {v7}, Lzendesk/belvedere/MediaResult;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v8

    invoke-virtual {v0, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 108
    invoke-virtual {p1, v5, v4}, Lzendesk/belvedere/SelectableView;->setContentDescriptionStrings(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v4, p0, Lzendesk/belvedere/ImageStreamItems$StreamItemFile;->mediaResult:Lzendesk/belvedere/MediaResult;

    invoke-virtual {v4}, Lzendesk/belvedere/MediaResult;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v2, p0, Lzendesk/belvedere/ImageStreamItems$StreamItemFile;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 114
    iget-object v2, p0, Lzendesk/belvedere/ImageStreamItems$StreamItemFile;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v2, p0, Lzendesk/belvedere/ImageStreamItems$StreamItemFile;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 117
    :cond_0
    sget v0, Lzendesk/belvedere/ui/R$string;->belvedere_image_stream_unknown_app:I

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x1080093

    .line 118
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    :goto_0
    invoke-virtual {p0}, Lzendesk/belvedere/ImageStreamItems$StreamItemFile;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Lzendesk/belvedere/SelectableView;->setSelected(Z)V

    .line 122
    new-instance v0, Lzendesk/belvedere/ImageStreamItems$StreamItemFile$1;

    invoke-direct {v0, p0}, Lzendesk/belvedere/ImageStreamItems$StreamItemFile$1;-><init>(Lzendesk/belvedere/ImageStreamItems$StreamItemFile;)V

    invoke-virtual {p1, v0}, Lzendesk/belvedere/SelectableView;->setSelectionListener(Lzendesk/belvedere/SelectableView$SelectionListener;)V

    return-void
.end method
