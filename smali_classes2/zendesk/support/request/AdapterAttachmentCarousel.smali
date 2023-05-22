.class Lzendesk/support/request/AdapterAttachmentCarousel;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AdapterAttachmentCarousel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/AdapterAttachmentCarousel$ImageAttachmentViewHolder;,
        Lzendesk/support/request/AdapterAttachmentCarousel$FileAttachmentViewHolder;,
        Lzendesk/support/request/AdapterAttachmentCarousel$CarouselViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lzendesk/support/request/AdapterAttachmentCarousel$CarouselViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final FILE_ATTACHMENT:I = 0x1

.field private static final IMAGE_ATTACHMENT:I = 0x2


# instance fields
.field private final af:Lzendesk/support/request/ActionFactory;

.field private final attachmentHelper:Lzendesk/support/request/AttachmentHelper;

.field private final dispatcher:Lzendesk/support/suas/Dispatcher;

.field private final picasso:Lcom/squareup/picasso/Picasso;

.field private final removeListener:Lzendesk/support/request/AdapterAttachmentCarousel$CarouselViewHolder$OnRemoveListener;


# direct methods
.method constructor <init>(Lzendesk/support/request/AttachmentHelper;Lcom/squareup/picasso/Picasso;Lzendesk/support/request/ActionFactory;Lzendesk/support/suas/Dispatcher;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 86
    new-instance v0, Lzendesk/support/request/AdapterAttachmentCarousel$1;

    invoke-direct {v0, p0}, Lzendesk/support/request/AdapterAttachmentCarousel$1;-><init>(Lzendesk/support/request/AdapterAttachmentCarousel;)V

    iput-object v0, p0, Lzendesk/support/request/AdapterAttachmentCarousel;->removeListener:Lzendesk/support/request/AdapterAttachmentCarousel$CarouselViewHolder$OnRemoveListener;

    .line 36
    iput-object p1, p0, Lzendesk/support/request/AdapterAttachmentCarousel;->attachmentHelper:Lzendesk/support/request/AttachmentHelper;

    .line 37
    iput-object p2, p0, Lzendesk/support/request/AdapterAttachmentCarousel;->picasso:Lcom/squareup/picasso/Picasso;

    .line 38
    iput-object p3, p0, Lzendesk/support/request/AdapterAttachmentCarousel;->af:Lzendesk/support/request/ActionFactory;

    .line 39
    iput-object p4, p0, Lzendesk/support/request/AdapterAttachmentCarousel;->dispatcher:Lzendesk/support/suas/Dispatcher;

    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p1}, Lzendesk/support/request/AdapterAttachmentCarousel;->setHasStableIds(Z)V

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/request/AdapterAttachmentCarousel;)Lzendesk/support/request/ActionFactory;
    .locals 0

    .line 24
    iget-object p0, p0, Lzendesk/support/request/AdapterAttachmentCarousel;->af:Lzendesk/support/request/ActionFactory;

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/support/request/AdapterAttachmentCarousel;)Lzendesk/support/suas/Dispatcher;
    .locals 0

    .line 24
    iget-object p0, p0, Lzendesk/support/request/AdapterAttachmentCarousel;->dispatcher:Lzendesk/support/suas/Dispatcher;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 68
    iget-object v0, p0, Lzendesk/support/request/AdapterAttachmentCarousel;->attachmentHelper:Lzendesk/support/request/AttachmentHelper;

    invoke-virtual {v0}, Lzendesk/support/request/AttachmentHelper;->getSelectedAttachments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 73
    iget-object v0, p0, Lzendesk/support/request/AdapterAttachmentCarousel;->attachmentHelper:Lzendesk/support/request/AttachmentHelper;

    invoke-virtual {v0}, Lzendesk/support/request/AttachmentHelper;->getSelectedAttachments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/support/request/StateRequestAttachment;

    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getLocalUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 78
    iget-object v0, p0, Lzendesk/support/request/AdapterAttachmentCarousel;->attachmentHelper:Lzendesk/support/request/AttachmentHelper;

    invoke-virtual {v0}, Lzendesk/support/request/AttachmentHelper;->getSelectedAttachments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/support/request/StateRequestAttachment;

    .line 79
    invoke-static {p1}, Lzendesk/support/request/UtilsAttachment;->isImageAttachment(Lzendesk/support/request/StateRequestAttachment;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 24
    check-cast p1, Lzendesk/support/request/AdapterAttachmentCarousel$CarouselViewHolder;

    invoke-virtual {p0, p1, p2}, Lzendesk/support/request/AdapterAttachmentCarousel;->onBindViewHolder(Lzendesk/support/request/AdapterAttachmentCarousel$CarouselViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lzendesk/support/request/AdapterAttachmentCarousel$CarouselViewHolder;I)V
    .locals 1

    .line 63
    iget-object v0, p0, Lzendesk/support/request/AdapterAttachmentCarousel;->attachmentHelper:Lzendesk/support/request/AttachmentHelper;

    invoke-virtual {v0}, Lzendesk/support/request/AttachmentHelper;->getSelectedAttachments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lzendesk/support/request/StateRequestAttachment;

    iget-object v0, p0, Lzendesk/support/request/AdapterAttachmentCarousel;->removeListener:Lzendesk/support/request/AdapterAttachmentCarousel$CarouselViewHolder$OnRemoveListener;

    invoke-virtual {p1, p2, v0}, Lzendesk/support/request/AdapterAttachmentCarousel$CarouselViewHolder;->bind(Lzendesk/support/request/StateRequestAttachment;Lzendesk/support/request/AdapterAttachmentCarousel$CarouselViewHolder$OnRemoveListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lzendesk/support/request/AdapterAttachmentCarousel;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lzendesk/support/request/AdapterAttachmentCarousel$CarouselViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lzendesk/support/request/AdapterAttachmentCarousel$CarouselViewHolder;
    .locals 2

    .line 45
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 52
    :cond_0
    new-instance p2, Lzendesk/support/request/AdapterAttachmentCarousel$ImageAttachmentViewHolder;

    iget-object v1, p0, Lzendesk/support/request/AdapterAttachmentCarousel;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-direct {p2, v0, p1, v1}, Lzendesk/support/request/AdapterAttachmentCarousel$ImageAttachmentViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/squareup/picasso/Picasso;)V

    return-object p2

    .line 48
    :cond_1
    new-instance p2, Lzendesk/support/request/AdapterAttachmentCarousel$FileAttachmentViewHolder;

    invoke-direct {p2, v0, p1}, Lzendesk/support/request/AdapterAttachmentCarousel$FileAttachmentViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-object p2
.end method
