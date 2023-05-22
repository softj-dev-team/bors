.class public Lzendesk/support/request/RequestViewConversationsDisabled;
.super Landroid/widget/FrameLayout;
.source "RequestViewConversationsDisabled.java"

# interfaces
.implements Lzendesk/support/request/RequestView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/RequestViewConversationsDisabled$MenuItemsDelegate;
    }
.end annotation


# instance fields
.field private activity:Landroidx/appcompat/app/AppCompatActivity;

.field af:Lzendesk/support/request/ActionFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private attachmentHelper:Lzendesk/support/request/AttachmentHelper;

.field private imageStream:Lzendesk/belvedere/ImageStream;

.field private inputFormComponent:Lzendesk/support/request/ComponentInputForm;

.field private menuItemsDelegates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/request/RequestViewConversationsDisabled$MenuItemsDelegate;",
            ">;"
        }
    .end annotation
.end field

.field picasso:Lcom/squareup/picasso/Picasso;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field store:Lzendesk/support/suas/Store;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private subscription:Lzendesk/support/suas/Subscription;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->menuItemsDelegates:Ljava/util/List;

    .line 56
    invoke-direct {p0, p1}, Lzendesk/support/request/RequestViewConversationsDisabled;->viewInit(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->menuItemsDelegates:Ljava/util/List;

    .line 61
    invoke-direct {p0, p1}, Lzendesk/support/request/RequestViewConversationsDisabled;->viewInit(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->menuItemsDelegates:Ljava/util/List;

    .line 66
    invoke-direct {p0, p1}, Lzendesk/support/request/RequestViewConversationsDisabled;->viewInit(Landroid/content/Context;)V

    return-void
.end method

.method private bindAttachmentCarousel(Lzendesk/support/suas/Store;Lzendesk/support/request/ActionFactory;)Lzendesk/support/suas/Subscription;
    .locals 10

    .line 115
    iget-object v0, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->activity:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lcom/zendesk/sdk/R$id;->request_attachment_carousel:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 116
    new-instance v8, Lzendesk/support/request/AdapterAttachmentCarousel;

    iget-object v1, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->attachmentHelper:Lzendesk/support/request/AttachmentHelper;

    iget-object v2, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->picasso:Lcom/squareup/picasso/Picasso;

    invoke-direct {v8, v1, v2, p2, p1}, Lzendesk/support/request/AdapterAttachmentCarousel;-><init>(Lzendesk/support/request/AttachmentHelper;Lcom/squareup/picasso/Picasso;Lzendesk/support/request/ActionFactory;Lzendesk/support/suas/Dispatcher;)V

    .line 118
    new-instance v9, Lzendesk/support/request/ComponentAttachmentCarousel;

    iget-object v4, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->imageStream:Lzendesk/belvedere/ImageStream;

    iget-object v5, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v6, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->attachmentHelper:Lzendesk/support/request/AttachmentHelper;

    move-object v1, v9

    move-object v2, p1

    move-object v3, p2

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lzendesk/support/request/ComponentAttachmentCarousel;-><init>(Lzendesk/support/suas/Dispatcher;Lzendesk/support/request/ActionFactory;Lzendesk/belvedere/ImageStream;Landroidx/appcompat/app/AppCompatActivity;Lzendesk/support/request/AttachmentHelper;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 121
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->activity:Landroidx/appcompat/app/AppCompatActivity;

    const/4 v2, 0x0

    invoke-direct {p2, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 122
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 124
    iget-object p2, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->menuItemsDelegates:Ljava/util/List;

    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v9}, Lzendesk/support/request/ComponentAttachmentCarousel;->getSelector()Lzendesk/support/suas/StateSelector;

    move-result-object p2

    invoke-interface {p1, p2, v9}, Lzendesk/support/suas/Store;->addListener(Lzendesk/support/suas/StateSelector;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;

    move-result-object p1

    return-object p1
.end method

.method private bindComponents(Lzendesk/support/suas/Store;Lzendesk/support/request/ActionFactory;)Lzendesk/support/suas/Subscription;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lzendesk/support/suas/Subscription;

    .line 99
    invoke-direct {p0, p1}, Lzendesk/support/request/RequestViewConversationsDisabled;->bindInput(Lzendesk/support/suas/Store;)Lzendesk/support/suas/Subscription;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 100
    invoke-direct {p0, p1, p2}, Lzendesk/support/request/RequestViewConversationsDisabled;->bindAttachmentCarousel(Lzendesk/support/suas/Store;Lzendesk/support/request/ActionFactory;)Lzendesk/support/suas/Subscription;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 98
    invoke-static {v0}, Lzendesk/support/suas/CombinedSubscription;->from([Lzendesk/support/suas/Subscription;)Lzendesk/support/suas/Subscription;

    move-result-object p1

    return-object p1
.end method

.method private bindInput(Lzendesk/support/suas/Store;)Lzendesk/support/suas/Subscription;
    .locals 2

    .line 105
    iget-object v0, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->af:Lzendesk/support/request/ActionFactory;

    iget-object v1, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->attachmentHelper:Lzendesk/support/request/AttachmentHelper;

    .line 106
    invoke-static {p0, p1, v0, v1}, Lzendesk/support/request/ComponentInputForm;->create(Landroid/view/View;Lzendesk/support/suas/Dispatcher;Lzendesk/support/request/ActionFactory;Lzendesk/support/request/AttachmentHelper;)Lzendesk/support/request/ComponentInputForm;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->inputFormComponent:Lzendesk/support/request/ComponentInputForm;

    .line 107
    iget-object v1, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->menuItemsDelegates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->imageStream:Lzendesk/belvedere/ImageStream;

    invoke-virtual {v0}, Lzendesk/belvedere/ImageStream;->getKeyboardHelper()Lzendesk/belvedere/KeyboardHelper;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->inputFormComponent:Lzendesk/support/request/ComponentInputForm;

    invoke-virtual {v0, v1}, Lzendesk/belvedere/KeyboardHelper;->addListener(Lzendesk/belvedere/KeyboardHelper$Listener;)V

    .line 110
    iget-object v0, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->inputFormComponent:Lzendesk/support/request/ComponentInputForm;

    invoke-virtual {v0}, Lzendesk/support/request/ComponentInputForm;->getSelector()Lzendesk/support/suas/StateSelector;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->inputFormComponent:Lzendesk/support/request/ComponentInputForm;

    invoke-interface {p1, v0, v1}, Lzendesk/support/suas/Store;->addListener(Lzendesk/support/suas/StateSelector;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;

    move-result-object p1

    return-object p1
.end method

.method private viewInit(Landroid/content/Context;)V
    .locals 1

    .line 70
    sget v0, Lcom/zendesk/sdk/R$layout;->zs_view_request_conversations_disabled:I

    invoke-static {p1, v0, p0}, Lzendesk/support/request/RequestViewConversationsDisabled;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 71
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    iput-object p1, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->activity:Landroidx/appcompat/app/AppCompatActivity;

    return-void
.end method


# virtual methods
.method public hasUnsavedInput()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->inputFormComponent:Lzendesk/support/request/ComponentInputForm;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzendesk/support/request/ComponentInputForm;->hasUnsavedInput()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public inflateMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z
    .locals 2

    .line 131
    sget v0, Lcom/zendesk/sdk/R$menu;->zs_view_request_conversations_disabled_menu:I

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 132
    sget p1, Lcom/zendesk/sdk/R$id;->request_conversations_disabled_menu_ic_send:I

    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 133
    sget v0, Lcom/zendesk/sdk/R$id;->request_conversations_disabled_menu_ic_add_attachments:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    .line 135
    iget-object v0, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->menuItemsDelegates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/request/RequestViewConversationsDisabled$MenuItemsDelegate;

    .line 136
    invoke-interface {v1, p1, p2}, Lzendesk/support/request/RequestViewConversationsDisabled$MenuItemsDelegate;->onMenuItemsInflated(Landroid/view/MenuItem;Landroid/view/MenuItem;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public init(Lzendesk/support/request/RequestComponent;)V
    .locals 1

    .line 75
    invoke-interface {p1, p0}, Lzendesk/support/request/RequestComponent;->inject(Lzendesk/support/request/RequestViewConversationsDisabled;)V

    .line 77
    iget-object p1, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p1}, Lzendesk/belvedere/BelvedereUi;->install(Landroidx/appcompat/app/AppCompatActivity;)Lzendesk/belvedere/ImageStream;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->imageStream:Lzendesk/belvedere/ImageStream;

    .line 78
    new-instance p1, Lzendesk/support/request/AttachmentHelper;

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-direct {p1, v0}, Lzendesk/support/request/AttachmentHelper;-><init>([I)V

    iput-object p1, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->attachmentHelper:Lzendesk/support/request/AttachmentHelper;

    .line 80
    iget-object p1, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->store:Lzendesk/support/suas/Store;

    iget-object v0, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->af:Lzendesk/support/request/ActionFactory;

    invoke-direct {p0, p1, v0}, Lzendesk/support/request/RequestViewConversationsDisabled;->bindComponents(Lzendesk/support/suas/Store;Lzendesk/support/request/ActionFactory;)Lzendesk/support/suas/Subscription;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->subscription:Lzendesk/support/suas/Subscription;

    .line 81
    invoke-interface {p1}, Lzendesk/support/suas/Subscription;->informWithCurrentState()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 91
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 92
    iget-object v0, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->subscription:Lzendesk/support/suas/Subscription;

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0}, Lzendesk/support/suas/Subscription;->removeListener()V

    :cond_0
    return-void
.end method

.method public onOptionsItemClicked(Landroid/view/MenuItem;)Z
    .locals 2

    .line 144
    iget-object v0, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->menuItemsDelegates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/request/RequestViewConversationsDisabled$MenuItemsDelegate;

    .line 145
    invoke-interface {v1, p1}, Lzendesk/support/request/RequestViewConversationsDisabled$MenuItemsDelegate;->onMenuItemsClicked(Landroid/view/MenuItem;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
