.class Lzendesk/support/request/HeadlessComponentListener;
.super Ljava/lang/Object;
.source "HeadlessComponentListener.java"


# instance fields
.field private final attachment:Lzendesk/support/request/AttachmentDownloaderComponent;

.field private final persistence:Lzendesk/support/request/ComponentPersistence;

.field private registered:Z

.field private final updateActionHandlersComponent:Lzendesk/support/request/ComponentUpdateActionHandlers;


# direct methods
.method constructor <init>(Lzendesk/support/request/ComponentPersistence;Lzendesk/support/request/AttachmentDownloaderComponent;Lzendesk/support/request/ComponentUpdateActionHandlers;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lzendesk/support/request/HeadlessComponentListener;->registered:Z

    .line 18
    iput-object p1, p0, Lzendesk/support/request/HeadlessComponentListener;->persistence:Lzendesk/support/request/ComponentPersistence;

    .line 19
    iput-object p2, p0, Lzendesk/support/request/HeadlessComponentListener;->attachment:Lzendesk/support/request/AttachmentDownloaderComponent;

    .line 20
    iput-object p3, p0, Lzendesk/support/request/HeadlessComponentListener;->updateActionHandlersComponent:Lzendesk/support/request/ComponentUpdateActionHandlers;

    return-void
.end method


# virtual methods
.method startListening(Lzendesk/support/suas/Store;)V
    .locals 2

    .line 24
    iget-boolean v0, p0, Lzendesk/support/request/HeadlessComponentListener;->registered:Z

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lzendesk/support/request/HeadlessComponentListener;->persistence:Lzendesk/support/request/ComponentPersistence;

    invoke-virtual {v0}, Lzendesk/support/request/ComponentPersistence;->getSelector()Lzendesk/support/suas/StateSelector;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/request/HeadlessComponentListener;->persistence:Lzendesk/support/request/ComponentPersistence;

    invoke-interface {p1, v0, v1}, Lzendesk/support/suas/Store;->addListener(Lzendesk/support/suas/StateSelector;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;

    .line 26
    const-class v0, Lzendesk/support/request/StateConversation;

    iget-object v1, p0, Lzendesk/support/request/HeadlessComponentListener;->attachment:Lzendesk/support/request/AttachmentDownloaderComponent;

    invoke-interface {p1, v0, v1}, Lzendesk/support/suas/Store;->addListener(Ljava/lang/Class;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;

    .line 27
    const-class v0, Lzendesk/support/request/StateConversation;

    iget-object v1, p0, Lzendesk/support/request/HeadlessComponentListener;->updateActionHandlersComponent:Lzendesk/support/request/ComponentUpdateActionHandlers;

    invoke-interface {p1, v0, v1}, Lzendesk/support/suas/Store;->addListener(Ljava/lang/Class;Lzendesk/support/suas/Listener;)Lzendesk/support/suas/Subscription;

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lzendesk/support/request/HeadlessComponentListener;->registered:Z

    :cond_0
    return-void
.end method
