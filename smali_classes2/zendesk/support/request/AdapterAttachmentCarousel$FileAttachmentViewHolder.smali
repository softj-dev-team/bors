.class Lzendesk/support/request/AdapterAttachmentCarousel$FileAttachmentViewHolder;
.super Lzendesk/support/request/AdapterAttachmentCarousel$CarouselViewHolder;
.source "AdapterAttachmentCarousel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/AdapterAttachmentCarousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileAttachmentViewHolder"
.end annotation


# instance fields
.field private final appIcon:Landroid/widget/ImageView;

.field private final appName:Landroid/widget/TextView;

.field private final container:Landroid/view/View;

.field private final name:Landroid/widget/TextView;

.field private final remove:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2

    .line 117
    sget v0, Lcom/zendesk/sdk/R$layout;->zs_request_carousel_file:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lzendesk/support/request/AdapterAttachmentCarousel$CarouselViewHolder;-><init>(Landroid/view/View;)V

    .line 118
    iget-object p1, p0, Lzendesk/support/request/AdapterAttachmentCarousel$FileAttachmentViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/zendesk/sdk/R$id;->request_attachment_carousel_file_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lzendesk/support/request/AdapterAttachmentCarousel$FileAttachmentViewHolder;->name:Landroid/widget/TextView;

    .line 119
    iget-object p1, p0, Lzendesk/support/request/AdapterAttachmentCarousel$FileAttachmentViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/zendesk/sdk/R$id;->request_attachment_carousel_file_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lzendesk/support/request/AdapterAttachmentCarousel$FileAttachmentViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 120
    iget-object p1, p0, Lzendesk/support/request/AdapterAttachmentCarousel$FileAttachmentViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/zendesk/sdk/R$id;->request_attachment_carousel_file_app_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lzendesk/support/request/AdapterAttachmentCarousel$FileAttachmentViewHolder;->appName:Landroid/widget/TextView;

    .line 121
    iget-object p1, p0, Lzendesk/support/request/AdapterAttachmentCarousel$FileAttachmentViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/zendesk/sdk/R$id;->request_attachment_carousel_remove:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/AdapterAttachmentCarousel$FileAttachmentViewHolder;->remove:Landroid/view/View;

    .line 122
    iget-object p1, p0, Lzendesk/support/request/AdapterAttachmentCarousel$FileAttachmentViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/zendesk/sdk/R$id;->request_attachment_file_carousel_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/AdapterAttachmentCarousel$FileAttachmentViewHolder;->container:Landroid/view/View;

    return-void
.end method


# virtual methods
.method bind(Lzendesk/support/request/StateRequestAttachment;Lzendesk/support/request/AdapterAttachmentCarousel$CarouselViewHolder$OnRemoveListener;)V
    .locals 6

    .line 127
    iget-object v0, p0, Lzendesk/support/request/AdapterAttachmentCarousel$FileAttachmentViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 128
    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lzendesk/support/request/UtilsAttachment;->getAppInfoForFile(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 129
    iget-object v2, p0, Lzendesk/support/request/AdapterAttachmentCarousel$FileAttachmentViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lzendesk/support/request/UtilsAttachment;->getAppIcon(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object v2, p0, Lzendesk/support/request/AdapterAttachmentCarousel$FileAttachmentViewHolder;->appName:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lzendesk/support/request/UtilsAttachment;->getAppName(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v1, p0, Lzendesk/support/request/AdapterAttachmentCarousel$FileAttachmentViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lzendesk/support/request/AdapterAttachmentCarousel$FileAttachmentViewHolder;->remove:Landroid/view/View;

    new-instance v2, Lzendesk/support/request/AdapterAttachmentCarousel$FileAttachmentViewHolder$1;

    invoke-direct {v2, p0, p2, p1}, Lzendesk/support/request/AdapterAttachmentCarousel$FileAttachmentViewHolder$1;-><init>(Lzendesk/support/request/AdapterAttachmentCarousel$FileAttachmentViewHolder;Lzendesk/support/request/AdapterAttachmentCarousel$CarouselViewHolder$OnRemoveListener;Lzendesk/support/request/StateRequestAttachment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object p2, p0, Lzendesk/support/request/AdapterAttachmentCarousel$FileAttachmentViewHolder;->remove:Landroid/view/View;

    sget v1, Lcom/zendesk/sdk/R$string;->zs_request_attachment_carousel_remove_attachment_accessibility:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 142
    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 141
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 143
    iget-object p2, p0, Lzendesk/support/request/AdapterAttachmentCarousel$FileAttachmentViewHolder;->container:Landroid/view/View;

    sget v1, Lcom/zendesk/sdk/R$string;->zs_request_attachment_carousel_attachment_accessibility:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 144
    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
