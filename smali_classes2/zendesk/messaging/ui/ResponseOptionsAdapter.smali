.class Lzendesk/messaging/ui/ResponseOptionsAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "ResponseOptionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/messaging/ui/ResponseOptionsAdapter$ResponseOptionsDiffCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lzendesk/messaging/MessagingItem$Option;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ResponseOptionsAdapter"


# instance fields
.field private canSelectOption:Z

.field private responseOptionHandler:Lzendesk/messaging/ui/ResponseOptionHandler;

.field private selectedOption:Lzendesk/messaging/MessagingItem$Option;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 29
    new-instance v0, Lzendesk/messaging/ui/ResponseOptionsAdapter$ResponseOptionsDiffCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzendesk/messaging/ui/ResponseOptionsAdapter$ResponseOptionsDiffCallback;-><init>(Lzendesk/messaging/ui/ResponseOptionsAdapter$1;)V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lzendesk/messaging/ui/ResponseOptionsAdapter;->canSelectOption:Z

    .line 26
    iput-object v1, p0, Lzendesk/messaging/ui/ResponseOptionsAdapter;->selectedOption:Lzendesk/messaging/MessagingItem$Option;

    return-void
.end method

.method static synthetic access$100(Lzendesk/messaging/ui/ResponseOptionsAdapter;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lzendesk/messaging/ui/ResponseOptionsAdapter;->canSelectOption:Z

    return p0
.end method

.method static synthetic access$102(Lzendesk/messaging/ui/ResponseOptionsAdapter;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lzendesk/messaging/ui/ResponseOptionsAdapter;->canSelectOption:Z

    return p1
.end method

.method static synthetic access$200(Lzendesk/messaging/ui/ResponseOptionsAdapter;)Lzendesk/messaging/ui/ResponseOptionHandler;
    .locals 0

    .line 19
    iget-object p0, p0, Lzendesk/messaging/ui/ResponseOptionsAdapter;->responseOptionHandler:Lzendesk/messaging/ui/ResponseOptionHandler;

    return-object p0
.end method

.method private notifyItemChanged(Lzendesk/messaging/MessagingItem$Option;)V
    .locals 2

    const/4 v0, 0x0

    .line 86
    :goto_0
    invoke-virtual {p0}, Lzendesk/messaging/ui/ResponseOptionsAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 87
    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/ResponseOptionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/messaging/MessagingItem$Option;

    .line 88
    invoke-virtual {v1, p1}, Lzendesk/messaging/MessagingItem$Option;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p0, v0}, Lzendesk/messaging/ui/ResponseOptionsAdapter;->notifyItemChanged(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1

    .line 34
    invoke-virtual {p0, p1}, Lzendesk/messaging/ui/ResponseOptionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/messaging/MessagingItem$Option;

    .line 36
    iget-object v0, p0, Lzendesk/messaging/ui/ResponseOptionsAdapter;->selectedOption:Lzendesk/messaging/MessagingItem$Option;

    if-ne p1, v0, :cond_0

    .line 37
    sget p1, Lzendesk/messaging/R$layout;->zui_response_options_selected_option:I

    return p1

    .line 39
    :cond_0
    sget p1, Lzendesk/messaging/R$layout;->zui_response_options_option:I

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 55
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lzendesk/messaging/R$id;->zui_response_option_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    invoke-virtual {p0, p2}, Lzendesk/messaging/ui/ResponseOptionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lzendesk/messaging/MessagingItem$Option;

    .line 57
    invoke-virtual {p2}, Lzendesk/messaging/MessagingItem$Option;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lzendesk/messaging/ui/ResponseOptionsAdapter$2;

    invoke-direct {v1, p0, p1, p2}, Lzendesk/messaging/ui/ResponseOptionsAdapter$2;-><init>(Lzendesk/messaging/ui/ResponseOptionsAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lzendesk/messaging/MessagingItem$Option;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 46
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 49
    new-instance p2, Lzendesk/messaging/ui/ResponseOptionsAdapter$1;

    invoke-direct {p2, p0, p1}, Lzendesk/messaging/ui/ResponseOptionsAdapter$1;-><init>(Lzendesk/messaging/ui/ResponseOptionsAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method setResponseOptionHandler(Lzendesk/messaging/ui/ResponseOptionHandler;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lzendesk/messaging/ui/ResponseOptionsAdapter;->responseOptionHandler:Lzendesk/messaging/ui/ResponseOptionHandler;

    return-void
.end method

.method setSelectedOption(Lzendesk/messaging/MessagingItem$Option;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lzendesk/messaging/ui/ResponseOptionsAdapter;->selectedOption:Lzendesk/messaging/MessagingItem$Option;

    .line 101
    invoke-direct {p0, p1}, Lzendesk/messaging/ui/ResponseOptionsAdapter;->notifyItemChanged(Lzendesk/messaging/MessagingItem$Option;)V

    return-void
.end method

.method public submitList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/messaging/MessagingItem$Option;",
            ">;)V"
        }
    .end annotation

    .line 79
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    const/4 p1, 0x1

    .line 81
    iput-boolean p1, p0, Lzendesk/messaging/ui/ResponseOptionsAdapter;->canSelectOption:Z

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lzendesk/messaging/ui/ResponseOptionsAdapter;->selectedOption:Lzendesk/messaging/MessagingItem$Option;

    return-void
.end method
