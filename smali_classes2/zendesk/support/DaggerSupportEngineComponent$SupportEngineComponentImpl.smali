.class final Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;
.super Ljava/lang/Object;
.source "DaggerSupportEngineComponent.java"

# interfaces
.implements Lzendesk/support/SupportEngineComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/DaggerSupportEngineComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SupportEngineComponentImpl"
.end annotation


# instance fields
.field private final coreModule:Lzendesk/core/CoreModule;

.field private interactionIdentifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private stateCompositeActionListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final supportEngineComponentImpl:Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;

.field private final supportEngineModule:Lzendesk/support/SupportEngineModule;

.field private final supportModule:Lzendesk/support/SupportModule;

.field private updateViewObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/Update;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lzendesk/core/CoreModule;Lzendesk/support/SupportModule;Lzendesk/support/SupportEngineModule;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p0, p0, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->supportEngineComponentImpl:Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;

    .line 83
    iput-object p3, p0, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->supportEngineModule:Lzendesk/support/SupportEngineModule;

    .line 84
    iput-object p1, p0, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->coreModule:Lzendesk/core/CoreModule;

    .line 85
    iput-object p2, p0, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->supportModule:Lzendesk/support/SupportModule;

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->initialize(Lzendesk/core/CoreModule;Lzendesk/support/SupportModule;Lzendesk/support/SupportEngineModule;)V

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/core/CoreModule;Lzendesk/support/SupportModule;Lzendesk/support/SupportEngineModule;Lzendesk/support/DaggerSupportEngineComponent$1;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;-><init>(Lzendesk/core/CoreModule;Lzendesk/support/SupportModule;Lzendesk/support/SupportEngineModule;)V

    return-void
.end method

.method private actionListenerOfConversationStateOfMessagingItem()Lzendesk/messaging/components/ActionListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzendesk/messaging/components/ActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->supportEngineModule:Lzendesk/support/SupportEngineModule;

    iget-object v1, p0, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->stateCompositeActionListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/messaging/components/CompositeActionListener;

    invoke-static {v0, v1}, Lzendesk/support/SupportEngineModule_StateActionListenerFactory;->stateActionListener(Lzendesk/support/SupportEngineModule;Lzendesk/messaging/components/CompositeActionListener;)Lzendesk/messaging/components/ActionListener;

    move-result-object v0

    return-object v0
.end method

.method private actionListenerOfUpdate()Lzendesk/messaging/components/ActionListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzendesk/messaging/components/ActionListener<",
            "Lzendesk/messaging/Update;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->supportEngineModule:Lzendesk/support/SupportEngineModule;

    iget-object v1, p0, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->updateViewObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/messaging/components/CompositeActionListener;

    invoke-static {v0, v1}, Lzendesk/support/SupportEngineModule_UpdateActionListenerFactory;->updateActionListener(Lzendesk/support/SupportEngineModule;Lzendesk/messaging/components/CompositeActionListener;)Lzendesk/messaging/components/ActionListener;

    move-result-object v0

    return-object v0
.end method

.method private botMessageDispatcherOfMessagingItem()Lzendesk/messaging/components/bot/BotMessageDispatcher;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher<",
            "Lzendesk/messaging/MessagingItem;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->supportEngineModule:Lzendesk/support/SupportEngineModule;

    iget-object v1, p0, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->interactionIdentifierProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;

    invoke-direct {p0}, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->actionListenerOfConversationStateOfMessagingItem()Lzendesk/messaging/components/ActionListener;

    move-result-object v2

    invoke-direct {p0}, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->actionListenerOfUpdate()Lzendesk/messaging/components/ActionListener;

    move-result-object v3

    invoke-direct {p0}, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->timerFactory()Lzendesk/messaging/components/Timer$Factory;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lzendesk/support/SupportEngineModule_BotMessageDispatcherFactory;->botMessageDispatcher(Lzendesk/support/SupportEngineModule;Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;Lzendesk/messaging/components/ActionListener;Lzendesk/messaging/components/ActionListener;Lzendesk/messaging/components/Timer$Factory;)Lzendesk/messaging/components/bot/BotMessageDispatcher;

    move-result-object v0

    return-object v0
.end method

.method private initialize(Lzendesk/core/CoreModule;Lzendesk/support/SupportModule;Lzendesk/support/SupportEngineModule;)V
    .locals 0

    .line 119
    invoke-static {p3}, Lzendesk/support/SupportEngineModule_InteractionIdentifierFactory;->create(Lzendesk/support/SupportEngineModule;)Lzendesk/support/SupportEngineModule_InteractionIdentifierFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->interactionIdentifierProvider:Ljavax/inject/Provider;

    .line 120
    invoke-static {p3}, Lzendesk/support/SupportEngineModule_StateCompositeActionListenerFactory;->create(Lzendesk/support/SupportEngineModule;)Lzendesk/support/SupportEngineModule_StateCompositeActionListenerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->stateCompositeActionListenerProvider:Ljavax/inject/Provider;

    .line 121
    invoke-static {p3}, Lzendesk/support/SupportEngineModule_UpdateViewObserverFactory;->create(Lzendesk/support/SupportEngineModule;)Lzendesk/support/SupportEngineModule_UpdateViewObserverFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->updateViewObserverProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private requestCreator()Lzendesk/support/RequestCreator;
    .locals 3

    .line 91
    iget-object v0, p0, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->supportEngineModule:Lzendesk/support/SupportEngineModule;

    iget-object v1, p0, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->supportModule:Lzendesk/support/SupportModule;

    invoke-static {v1}, Lzendesk/support/SupportModule_ProvidesRequestProviderFactory;->providesRequestProvider(Lzendesk/support/SupportModule;)Lzendesk/support/RequestProvider;

    move-result-object v1

    iget-object v2, p0, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->supportModule:Lzendesk/support/SupportModule;

    invoke-static {v2}, Lzendesk/support/SupportModule_ProvidesUploadProviderFactory;->providesUploadProvider(Lzendesk/support/SupportModule;)Lzendesk/support/UploadProvider;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lzendesk/support/SupportEngineModule_RequestCreatorFactory;->requestCreator(Lzendesk/support/SupportEngineModule;Lzendesk/support/RequestProvider;Lzendesk/support/UploadProvider;)Lzendesk/support/RequestCreator;

    move-result-object v0

    return-object v0
.end method

.method private supportEngineModel()Lzendesk/support/SupportEngineModel;
    .locals 7

    .line 112
    iget-object v0, p0, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->supportEngineModule:Lzendesk/support/SupportEngineModule;

    iget-object v1, p0, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->supportModule:Lzendesk/support/SupportModule;

    invoke-static {v1}, Lzendesk/support/SupportModule_ProvidesSettingsProviderFactory;->providesSettingsProvider(Lzendesk/support/SupportModule;)Lzendesk/support/SupportSettingsProvider;

    move-result-object v1

    invoke-direct {p0}, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->requestCreator()Lzendesk/support/RequestCreator;

    move-result-object v2

    iget-object v3, p0, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->coreModule:Lzendesk/core/CoreModule;

    invoke-static {v3}, Lzendesk/core/CoreModule_GetAuthenticationProviderFactory;->getAuthenticationProvider(Lzendesk/core/CoreModule;)Lzendesk/core/AuthenticationProvider;

    move-result-object v3

    iget-object v4, p0, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->supportEngineModule:Lzendesk/support/SupportEngineModule;

    invoke-static {v4}, Lzendesk/support/SupportEngineModule_ConfigurationHelperFactory;->configurationHelper(Lzendesk/support/SupportEngineModule;)Lzendesk/configurations/ConfigurationHelper;

    move-result-object v4

    iget-object v5, p0, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->supportEngineModule:Lzendesk/support/SupportEngineModule;

    invoke-static {v5}, Lzendesk/support/SupportEngineModule_EmailValidatorFactory;->emailValidator(Lzendesk/support/SupportEngineModule;)Lzendesk/support/EmailValidator;

    move-result-object v5

    invoke-direct {p0}, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->botMessageDispatcherOfMessagingItem()Lzendesk/messaging/components/bot/BotMessageDispatcher;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lzendesk/support/SupportEngineModule_SupportEngineModelFactory;->supportEngineModel(Lzendesk/support/SupportEngineModule;Lzendesk/support/SupportSettingsProvider;Lzendesk/support/RequestCreator;Lzendesk/core/AuthenticationProvider;Lzendesk/configurations/ConfigurationHelper;Ljava/lang/Object;Lzendesk/messaging/components/bot/BotMessageDispatcher;)Lzendesk/support/SupportEngineModel;

    move-result-object v0

    return-object v0
.end method

.method private timerFactory()Lzendesk/messaging/components/Timer$Factory;
    .locals 2

    .line 104
    iget-object v0, p0, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->supportEngineModule:Lzendesk/support/SupportEngineModule;

    invoke-static {v0}, Lzendesk/support/SupportEngineModule_ProvideHandlerFactory;->provideHandler(Lzendesk/support/SupportEngineModule;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lzendesk/support/SupportEngineModule_TimerFactoryFactory;->timerFactory(Lzendesk/support/SupportEngineModule;Landroid/os/Handler;)Lzendesk/messaging/components/Timer$Factory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public supportEngine()Lzendesk/support/SupportEngine;
    .locals 5

    .line 126
    iget-object v0, p0, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->supportEngineModule:Lzendesk/support/SupportEngineModule;

    iget-object v1, p0, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->coreModule:Lzendesk/core/CoreModule;

    invoke-static {v1}, Lzendesk/core/CoreModule_GetApplicationContextFactory;->getApplicationContext(Lzendesk/core/CoreModule;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->supportEngineModel()Lzendesk/support/SupportEngineModel;

    move-result-object v2

    iget-object v3, p0, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->stateCompositeActionListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/messaging/components/CompositeActionListener;

    iget-object v4, p0, Lzendesk/support/DaggerSupportEngineComponent$SupportEngineComponentImpl;->updateViewObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzendesk/messaging/components/CompositeActionListener;

    invoke-static {v0, v1, v2, v3, v4}, Lzendesk/support/SupportEngineModule_SupportEngineFactory;->supportEngine(Lzendesk/support/SupportEngineModule;Landroid/content/Context;Ljava/lang/Object;Lzendesk/messaging/components/CompositeActionListener;Lzendesk/messaging/components/CompositeActionListener;)Lzendesk/support/SupportEngine;

    move-result-object v0

    return-object v0
.end method
