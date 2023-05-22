.class final Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;
.super Ljava/lang/Object;
.source "DaggerMessagingComponent.java"

# interfaces
.implements Lzendesk/messaging/MessagingComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/messaging/DaggerMessagingComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessagingComponentImpl"
.end annotation


# instance fields
.field private appContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private belvedereMediaHolderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/BelvedereMediaHolder;",
            ">;"
        }
    .end annotation
.end field

.field private belvedereProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/belvedere/Belvedere;",
            ">;"
        }
    .end annotation
.end field

.field private enginesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lzendesk/messaging/Engine;",
            ">;>;"
        }
    .end annotation
.end field

.field private final messagingComponentImpl:Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;

.field private final messagingConfiguration:Lzendesk/messaging/MessagingConfiguration;

.field private messagingConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/MessagingConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private messagingConversationLogProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/MessagingConversationLog;",
            ">;"
        }
    .end annotation
.end field

.field private messagingEventSerializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/MessagingEventSerializer;",
            ">;"
        }
    .end annotation
.end field

.field private messagingModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/MessagingModel;",
            ">;"
        }
    .end annotation
.end field

.field private messagingViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/MessagingViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private picassoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/squareup/picasso/Picasso;",
            ">;"
        }
    .end annotation
.end field

.field private resourcesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private timestampFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/TimestampFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/List;Lzendesk/messaging/MessagingConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lzendesk/messaging/Engine;",
            ">;",
            "Lzendesk/messaging/MessagingConfiguration;",
            ")V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p0, p0, Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;->messagingComponentImpl:Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;

    .line 93
    iput-object p3, p0, Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;->messagingConfiguration:Lzendesk/messaging/MessagingConfiguration;

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;->initialize(Landroid/content/Context;Ljava/util/List;Lzendesk/messaging/MessagingConfiguration;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/util/List;Lzendesk/messaging/MessagingConfiguration;Lzendesk/messaging/DaggerMessagingComponent$1;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;-><init>(Landroid/content/Context;Ljava/util/List;Lzendesk/messaging/MessagingConfiguration;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;Ljava/util/List;Lzendesk/messaging/MessagingConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lzendesk/messaging/Engine;",
            ">;",
            "Lzendesk/messaging/MessagingConfiguration;",
            ")V"
        }
    .end annotation

    .line 101
    invoke-static {p1}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;->appContextProvider:Ljavax/inject/Provider;

    .line 102
    invoke-static {p1}, Lzendesk/messaging/MessagingModule_PicassoFactory;->create(Ljavax/inject/Provider;)Lzendesk/messaging/MessagingModule_PicassoFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;->picassoProvider:Ljavax/inject/Provider;

    .line 103
    iget-object p1, p0, Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;->appContextProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lzendesk/messaging/MessagingModule_ResourcesFactory;->create(Ljavax/inject/Provider;)Lzendesk/messaging/MessagingModule_ResourcesFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;->resourcesProvider:Ljavax/inject/Provider;

    .line 104
    invoke-static {p2}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;->enginesProvider:Ljavax/inject/Provider;

    .line 105
    invoke-static {p3}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;->messagingConfigurationProvider:Ljavax/inject/Provider;

    .line 106
    iget-object p1, p0, Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;->appContextProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lzendesk/messaging/TimestampFactory_Factory;->create(Ljavax/inject/Provider;)Lzendesk/messaging/TimestampFactory_Factory;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;->timestampFactoryProvider:Ljavax/inject/Provider;

    .line 107
    iget-object p2, p0, Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;->appContextProvider:Ljavax/inject/Provider;

    invoke-static {p2, p1}, Lzendesk/messaging/MessagingEventSerializer_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/messaging/MessagingEventSerializer_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;->messagingEventSerializerProvider:Ljavax/inject/Provider;

    .line 108
    invoke-static {p1}, Lzendesk/messaging/MessagingConversationLog_Factory;->create(Ljavax/inject/Provider;)Lzendesk/messaging/MessagingConversationLog_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;->messagingConversationLogProvider:Ljavax/inject/Provider;

    .line 109
    iget-object p2, p0, Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;->resourcesProvider:Ljavax/inject/Provider;

    iget-object p3, p0, Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;->enginesProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;->messagingConfigurationProvider:Ljavax/inject/Provider;

    invoke-static {p2, p3, v0, p1}, Lzendesk/messaging/MessagingModel_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/messaging/MessagingModel_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;->messagingModelProvider:Ljavax/inject/Provider;

    .line 110
    invoke-static {p1}, Lzendesk/messaging/MessagingViewModel_Factory;->create(Ljavax/inject/Provider;)Lzendesk/messaging/MessagingViewModel_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;->messagingViewModelProvider:Ljavax/inject/Provider;

    .line 111
    iget-object p1, p0, Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;->appContextProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lzendesk/messaging/MessagingModule_BelvedereFactory;->create(Ljavax/inject/Provider;)Lzendesk/messaging/MessagingModule_BelvedereFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;->belvedereProvider:Ljavax/inject/Provider;

    .line 112
    invoke-static {}, Lzendesk/messaging/BelvedereMediaHolder_Factory;->create()Lzendesk/messaging/BelvedereMediaHolder_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;->belvedereMediaHolderProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public belvedere()Lzendesk/belvedere/Belvedere;
    .locals 1

    .line 137
    iget-object v0, p0, Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;->belvedereProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/belvedere/Belvedere;

    return-object v0
.end method

.method public belvedereMediaHolder()Lzendesk/messaging/BelvedereMediaHolder;
    .locals 1

    .line 142
    iget-object v0, p0, Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;->belvedereMediaHolderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/messaging/BelvedereMediaHolder;

    return-object v0
.end method

.method public messagingConfiguration()Lzendesk/messaging/MessagingConfiguration;
    .locals 1

    .line 117
    iget-object v0, p0, Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;->messagingConfiguration:Lzendesk/messaging/MessagingConfiguration;

    return-object v0
.end method

.method public messagingViewModel()Lzendesk/messaging/MessagingViewModel;
    .locals 1

    .line 132
    iget-object v0, p0, Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;->messagingViewModelProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/messaging/MessagingViewModel;

    return-object v0
.end method

.method public picasso()Lcom/squareup/picasso/Picasso;
    .locals 1

    .line 122
    iget-object v0, p0, Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;->picassoProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Picasso;

    return-object v0
.end method

.method public resources()Landroid/content/res/Resources;
    .locals 1

    .line 127
    iget-object v0, p0, Lzendesk/messaging/DaggerMessagingComponent$MessagingComponentImpl;->resourcesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    return-object v0
.end method
