.class final Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;
.super Ljava/lang/Object;
.source "DaggerAnswerBotConversationComponent.java"

# interfaces
.implements Lzendesk/answerbot/AnswerBotConversationComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/answerbot/DaggerAnswerBotConversationComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AnswerBotConversationComponentImpl"
.end annotation


# instance fields
.field private final answerBotConversationComponentImpl:Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;

.field private answerBotEngineProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/AnswerBotEngine;",
            ">;"
        }
    .end annotation
.end field

.field private answerBotProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/AnswerBotProvider;",
            ">;"
        }
    .end annotation
.end field

.field private answerBotSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/AnswerBotSettingsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private configurationHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/configurations/ConfigurationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private getAnswerBotCellFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/AnswerBotCellFactory;",
            ">;"
        }
    .end annotation
.end field

.field private getAnswerBotModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/AnswerBotModel;",
            ">;"
        }
    .end annotation
.end field

.field private getApplicationContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private getPicassoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/squareup/picasso/Picasso;",
            ">;"
        }
    .end annotation
.end field

.field private getResourcesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private provideBotMessageDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideConversationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/AnswerBotConversationManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideDateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/DateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private provideInteractionIdentifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideStateActionListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/ActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private provideStateCompositeActionListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private provideUpdateActionListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/ActionListener<",
            "Lzendesk/messaging/Update;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideUpdateCompositeActionListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/Update;",
            ">;>;"
        }
    .end annotation
.end field

.field private timerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/Timer$Factory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lzendesk/core/CoreModule;Lzendesk/answerbot/AnswerBotModule;Lzendesk/answerbot/AnswerBotConversationModule;Lzendesk/answerbot/TimerModule;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p0, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->answerBotConversationComponentImpl:Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;

    .line 127
    invoke-direct {p0, p1, p2, p3, p4}, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->initialize(Lzendesk/core/CoreModule;Lzendesk/answerbot/AnswerBotModule;Lzendesk/answerbot/AnswerBotConversationModule;Lzendesk/answerbot/TimerModule;)V

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/core/CoreModule;Lzendesk/answerbot/AnswerBotModule;Lzendesk/answerbot/AnswerBotConversationModule;Lzendesk/answerbot/TimerModule;Lzendesk/answerbot/DaggerAnswerBotConversationComponent$1;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;-><init>(Lzendesk/core/CoreModule;Lzendesk/answerbot/AnswerBotModule;Lzendesk/answerbot/AnswerBotConversationModule;Lzendesk/answerbot/TimerModule;)V

    return-void
.end method

.method private initialize(Lzendesk/core/CoreModule;Lzendesk/answerbot/AnswerBotModule;Lzendesk/answerbot/AnswerBotConversationModule;Lzendesk/answerbot/TimerModule;)V
    .locals 7

    .line 136
    invoke-static {p1}, Lzendesk/core/CoreModule_GetApplicationContextFactory;->create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetApplicationContextFactory;

    move-result-object p1

    iput-object p1, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->getApplicationContextProvider:Ljavax/inject/Provider;

    .line 137
    invoke-static {p2}, Lzendesk/answerbot/AnswerBotModule_AnswerBotProviderFactory;->create(Lzendesk/answerbot/AnswerBotModule;)Lzendesk/answerbot/AnswerBotModule_AnswerBotProviderFactory;

    move-result-object p1

    iput-object p1, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->answerBotProvider:Ljavax/inject/Provider;

    .line 138
    invoke-static {p2}, Lzendesk/answerbot/AnswerBotModule_AnswerBotSettingsProviderFactory;->create(Lzendesk/answerbot/AnswerBotModule;)Lzendesk/answerbot/AnswerBotModule_AnswerBotSettingsProviderFactory;

    move-result-object p1

    iput-object p1, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->answerBotSettingsProvider:Ljavax/inject/Provider;

    .line 139
    invoke-static {p4}, Lzendesk/answerbot/TimerModule_ProvideHandlerFactory;->create(Lzendesk/answerbot/TimerModule;)Lzendesk/answerbot/TimerModule_ProvideHandlerFactory;

    move-result-object p1

    iput-object p1, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->provideHandlerProvider:Ljavax/inject/Provider;

    .line 140
    invoke-static {p4, p1}, Lzendesk/answerbot/TimerModule_TimerFactoryFactory;->create(Lzendesk/answerbot/TimerModule;Ljavax/inject/Provider;)Lzendesk/answerbot/TimerModule_TimerFactoryFactory;

    move-result-object p1

    iput-object p1, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->timerFactoryProvider:Ljavax/inject/Provider;

    .line 141
    iget-object p1, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->getApplicationContextProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lzendesk/answerbot/AnswerBotConversationModule_GetResourcesFactory;->create(Ljavax/inject/Provider;)Lzendesk/answerbot/AnswerBotConversationModule_GetResourcesFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->getResourcesProvider:Ljavax/inject/Provider;

    .line 142
    invoke-static {p3}, Lzendesk/answerbot/AnswerBotConversationModule_ProvideInteractionIdentifierFactory;->create(Lzendesk/answerbot/AnswerBotConversationModule;)Lzendesk/answerbot/AnswerBotConversationModule_ProvideInteractionIdentifierFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->provideInteractionIdentifierProvider:Ljavax/inject/Provider;

    .line 143
    invoke-static {p3}, Lzendesk/answerbot/AnswerBotConversationModule_ProvideStateCompositeActionListenerFactory;->create(Lzendesk/answerbot/AnswerBotConversationModule;)Lzendesk/answerbot/AnswerBotConversationModule_ProvideStateCompositeActionListenerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->provideStateCompositeActionListenerProvider:Ljavax/inject/Provider;

    .line 144
    invoke-static {p3, p1}, Lzendesk/answerbot/AnswerBotConversationModule_ProvideStateActionListenerFactory;->create(Lzendesk/answerbot/AnswerBotConversationModule;Ljavax/inject/Provider;)Lzendesk/answerbot/AnswerBotConversationModule_ProvideStateActionListenerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->provideStateActionListenerProvider:Ljavax/inject/Provider;

    .line 145
    invoke-static {p3}, Lzendesk/answerbot/AnswerBotConversationModule_ProvideUpdateCompositeActionListenerFactory;->create(Lzendesk/answerbot/AnswerBotConversationModule;)Lzendesk/answerbot/AnswerBotConversationModule_ProvideUpdateCompositeActionListenerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->provideUpdateCompositeActionListenerProvider:Ljavax/inject/Provider;

    .line 146
    invoke-static {p3, p1}, Lzendesk/answerbot/AnswerBotConversationModule_ProvideUpdateActionListenerFactory;->create(Lzendesk/answerbot/AnswerBotConversationModule;Ljavax/inject/Provider;)Lzendesk/answerbot/AnswerBotConversationModule_ProvideUpdateActionListenerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->provideUpdateActionListenerProvider:Ljavax/inject/Provider;

    .line 147
    iget-object p2, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->provideInteractionIdentifierProvider:Ljavax/inject/Provider;

    iget-object p4, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->provideStateActionListenerProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->timerFactoryProvider:Ljavax/inject/Provider;

    invoke-static {p3, p2, p4, p1, v0}, Lzendesk/answerbot/AnswerBotConversationModule_ProvideBotMessageDispatcherFactory;->create(Lzendesk/answerbot/AnswerBotConversationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/answerbot/AnswerBotConversationModule_ProvideBotMessageDispatcherFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->provideBotMessageDispatcherProvider:Ljavax/inject/Provider;

    .line 148
    invoke-static {p3}, Lzendesk/answerbot/AnswerBotConversationModule_ProvideDateProviderFactory;->create(Lzendesk/answerbot/AnswerBotConversationModule;)Lzendesk/answerbot/AnswerBotConversationModule_ProvideDateProviderFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->provideDateProvider:Ljavax/inject/Provider;

    .line 149
    iget-object p2, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->provideBotMessageDispatcherProvider:Ljavax/inject/Provider;

    invoke-static {p3, p2, p1}, Lzendesk/answerbot/AnswerBotConversationModule_ProvideConversationManagerFactory;->create(Lzendesk/answerbot/AnswerBotConversationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/answerbot/AnswerBotConversationModule_ProvideConversationManagerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->provideConversationManagerProvider:Ljavax/inject/Provider;

    .line 150
    invoke-static {p3}, Lzendesk/answerbot/AnswerBotConversationModule_ConfigurationHelperFactory;->create(Lzendesk/answerbot/AnswerBotConversationModule;)Lzendesk/answerbot/AnswerBotConversationModule_ConfigurationHelperFactory;

    move-result-object v6

    iput-object v6, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->configurationHelperProvider:Ljavax/inject/Provider;

    .line 151
    iget-object v1, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->answerBotProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->answerBotSettingsProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->timerFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->getResourcesProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->provideConversationManagerProvider:Ljavax/inject/Provider;

    move-object v0, p3

    invoke-static/range {v0 .. v6}, Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotModelFactory;->create(Lzendesk/answerbot/AnswerBotConversationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotModelFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->getAnswerBotModelProvider:Ljavax/inject/Provider;

    .line 152
    invoke-static {p3}, Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotCellFactoryFactory;->create(Lzendesk/answerbot/AnswerBotConversationModule;)Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotCellFactoryFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->getAnswerBotCellFactoryProvider:Ljavax/inject/Provider;

    .line 153
    iget-object v0, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->getApplicationContextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->getAnswerBotModelProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->provideUpdateCompositeActionListenerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->provideStateCompositeActionListenerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->configurationHelperProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v5}, Lzendesk/answerbot/AnswerBotEngine_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/answerbot/AnswerBotEngine_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->answerBotEngineProvider:Ljavax/inject/Provider;

    .line 154
    iget-object p1, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->getApplicationContextProvider:Ljavax/inject/Provider;

    invoke-static {p3, p1}, Lzendesk/answerbot/AnswerBotConversationModule_GetPicassoFactory;->create(Lzendesk/answerbot/AnswerBotConversationModule;Ljavax/inject/Provider;)Lzendesk/answerbot/AnswerBotConversationModule_GetPicassoFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->getPicassoProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public answerBot()Lzendesk/answerbot/AnswerBotEngine;
    .locals 1

    .line 159
    iget-object v0, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->answerBotEngineProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/answerbot/AnswerBotEngine;

    return-object v0
.end method

.method public getPicasso()Lcom/squareup/picasso/Picasso;
    .locals 1

    .line 164
    iget-object v0, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;->getPicassoProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Picasso;

    return-object v0
.end method
