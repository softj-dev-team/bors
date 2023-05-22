.class public Lzendesk/messaging/MessagingViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "MessagingViewModel.java"

# interfaces
.implements Lzendesk/messaging/EventListener;


# annotations
.annotation runtime Lzendesk/messaging/MessagingScope;
.end annotation


# instance fields
.field private final liveBannersState:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lzendesk/messaging/Banner;",
            ">;"
        }
    .end annotation
.end field

.field private final liveDialogState:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lzendesk/messaging/DialogContent;",
            ">;"
        }
    .end annotation
.end field

.field private final liveMessagingState:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lzendesk/messaging/ui/MessagingState;",
            ">;"
        }
    .end annotation
.end field

.field private final liveNavigationStream:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lzendesk/messaging/Update$Action$Navigation;",
            ">;"
        }
    .end annotation
.end field

.field private final messagingModel:Lzendesk/messaging/MessagingModel;


# direct methods
.method constructor <init>(Lzendesk/messaging/MessagingModel;)V
    .locals 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 38
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 39
    iput-object p1, p0, Lzendesk/messaging/MessagingViewModel;->messagingModel:Lzendesk/messaging/MessagingModel;

    .line 40
    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    iput-object v0, p0, Lzendesk/messaging/MessagingViewModel;->liveMessagingState:Landroidx/lifecycle/MediatorLiveData;

    .line 41
    invoke-virtual {p1}, Lzendesk/messaging/MessagingModel;->getLiveNavigationUpdates()Lzendesk/messaging/SingleLiveEvent;

    move-result-object v1

    iput-object v1, p0, Lzendesk/messaging/MessagingViewModel;->liveNavigationStream:Landroidx/lifecycle/LiveData;

    .line 42
    new-instance v1, Lzendesk/messaging/ui/MessagingState$Builder;

    invoke-direct {v1}, Lzendesk/messaging/ui/MessagingState$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lzendesk/messaging/ui/MessagingState$Builder;->withEnabled(Z)Lzendesk/messaging/ui/MessagingState$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/messaging/ui/MessagingState$Builder;->build()Lzendesk/messaging/ui/MessagingState;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    .line 43
    new-instance v1, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    iput-object v1, p0, Lzendesk/messaging/MessagingViewModel;->liveBannersState:Landroidx/lifecycle/MediatorLiveData;

    .line 44
    new-instance v2, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v2}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    iput-object v2, p0, Lzendesk/messaging/MessagingViewModel;->liveDialogState:Landroidx/lifecycle/MediatorLiveData;

    .line 46
    invoke-virtual {p1}, Lzendesk/messaging/MessagingModel;->getLiveMessagingItems()Landroidx/lifecycle/LiveData;

    move-result-object v2

    new-instance v3, Lzendesk/messaging/MessagingViewModel$1;

    invoke-direct {v3, p0}, Lzendesk/messaging/MessagingViewModel$1;-><init>(Lzendesk/messaging/MessagingViewModel;)V

    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 58
    invoke-virtual {p1}, Lzendesk/messaging/MessagingModel;->getLiveComposerEnabled()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    new-instance v3, Lzendesk/messaging/MessagingViewModel$2;

    invoke-direct {v3, p0}, Lzendesk/messaging/MessagingViewModel$2;-><init>(Lzendesk/messaging/MessagingViewModel;)V

    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 70
    invoke-virtual {p1}, Lzendesk/messaging/MessagingModel;->getLiveTyping()Landroidx/lifecycle/LiveData;

    move-result-object v2

    new-instance v3, Lzendesk/messaging/MessagingViewModel$3;

    invoke-direct {v3, p0}, Lzendesk/messaging/MessagingViewModel$3;-><init>(Lzendesk/messaging/MessagingViewModel;)V

    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 83
    invoke-virtual {p1}, Lzendesk/messaging/MessagingModel;->getLiveConnection()Landroidx/lifecycle/LiveData;

    move-result-object v2

    new-instance v3, Lzendesk/messaging/MessagingViewModel$4;

    invoke-direct {v3, p0}, Lzendesk/messaging/MessagingViewModel$4;-><init>(Lzendesk/messaging/MessagingViewModel;)V

    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 95
    invoke-virtual {p1}, Lzendesk/messaging/MessagingModel;->getLiveComposerHint()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    new-instance v3, Lzendesk/messaging/MessagingViewModel$5;

    invoke-direct {v3, p0}, Lzendesk/messaging/MessagingViewModel$5;-><init>(Lzendesk/messaging/MessagingViewModel;)V

    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 107
    invoke-virtual {p1}, Lzendesk/messaging/MessagingModel;->getLiveKeyboardInputType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    new-instance v3, Lzendesk/messaging/MessagingViewModel$6;

    invoke-direct {v3, p0}, Lzendesk/messaging/MessagingViewModel$6;-><init>(Lzendesk/messaging/MessagingViewModel;)V

    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 119
    invoke-virtual {p1}, Lzendesk/messaging/MessagingModel;->getLiveAttachmentSettings()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    new-instance v3, Lzendesk/messaging/MessagingViewModel$7;

    invoke-direct {v3, p0}, Lzendesk/messaging/MessagingViewModel$7;-><init>(Lzendesk/messaging/MessagingViewModel;)V

    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 131
    invoke-virtual {p1}, Lzendesk/messaging/MessagingModel;->getLiveInterfaceUpdates()Lzendesk/messaging/SingleLiveEvent;

    move-result-object p1

    new-instance v0, Lzendesk/messaging/MessagingViewModel$8;

    invoke-direct {v0, p0}, Lzendesk/messaging/MessagingViewModel$8;-><init>(Lzendesk/messaging/MessagingViewModel;)V

    invoke-virtual {v1, p1, v0}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method static synthetic access$000(Lzendesk/messaging/MessagingViewModel;)Landroidx/lifecycle/MediatorLiveData;
    .locals 0

    .line 27
    iget-object p0, p0, Lzendesk/messaging/MessagingViewModel;->liveMessagingState:Landroidx/lifecycle/MediatorLiveData;

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/messaging/MessagingViewModel;)Landroidx/lifecycle/MediatorLiveData;
    .locals 0

    .line 27
    iget-object p0, p0, Lzendesk/messaging/MessagingViewModel;->liveBannersState:Landroidx/lifecycle/MediatorLiveData;

    return-object p0
.end method


# virtual methods
.method getDialogUpdates()Lzendesk/messaging/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzendesk/messaging/SingleLiveEvent<",
            "Lzendesk/messaging/DialogContent;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lzendesk/messaging/MessagingViewModel;->messagingModel:Lzendesk/messaging/MessagingModel;

    invoke-virtual {v0}, Lzendesk/messaging/MessagingModel;->getLiveDialogUpdates()Lzendesk/messaging/SingleLiveEvent;

    move-result-object v0

    return-object v0
.end method

.method getLiveInterfaceUpdateItems()Lzendesk/messaging/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzendesk/messaging/SingleLiveEvent<",
            "Lzendesk/messaging/Banner;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lzendesk/messaging/MessagingViewModel;->messagingModel:Lzendesk/messaging/MessagingModel;

    invoke-virtual {v0}, Lzendesk/messaging/MessagingModel;->getLiveInterfaceUpdates()Lzendesk/messaging/SingleLiveEvent;

    move-result-object v0

    return-object v0
.end method

.method getLiveMenuItems()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lzendesk/messaging/MenuItem;",
            ">;>;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lzendesk/messaging/MessagingViewModel;->messagingModel:Lzendesk/messaging/MessagingModel;

    invoke-virtual {v0}, Lzendesk/messaging/MessagingModel;->getLiveMenuItems()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getLiveMessagingState()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lzendesk/messaging/ui/MessagingState;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lzendesk/messaging/MessagingViewModel;->liveMessagingState:Landroidx/lifecycle/MediatorLiveData;

    return-object v0
.end method

.method getLiveNavigationStream()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lzendesk/messaging/Update$Action$Navigation;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lzendesk/messaging/MessagingViewModel;->liveNavigationStream:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method protected onCleared()V
    .locals 1

    .line 173
    iget-object v0, p0, Lzendesk/messaging/MessagingViewModel;->messagingModel:Lzendesk/messaging/MessagingModel;

    invoke-virtual {v0}, Lzendesk/messaging/MessagingModel;->stop()V

    return-void
.end method

.method public onEvent(Lzendesk/messaging/Event;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lzendesk/messaging/MessagingViewModel;->messagingModel:Lzendesk/messaging/MessagingModel;

    invoke-virtual {v0, p1}, Lzendesk/messaging/MessagingModel;->onEvent(Lzendesk/messaging/Event;)V

    return-void
.end method

.method start()V
    .locals 1

    .line 143
    iget-object v0, p0, Lzendesk/messaging/MessagingViewModel;->messagingModel:Lzendesk/messaging/MessagingModel;

    invoke-virtual {v0}, Lzendesk/messaging/MessagingModel;->start()V

    return-void
.end method
