.class Lzendesk/support/SupportEngineModule;
.super Ljava/lang/Object;
.source "SupportEngineModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method botMessageDispatcher(Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;Lzendesk/messaging/components/ActionListener;Lzendesk/messaging/components/ActionListener;Lzendesk/messaging/components/Timer$Factory;)Lzendesk/messaging/components/bot/BotMessageDispatcher;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier<",
            "Lzendesk/messaging/MessagingItem;",
            ">;",
            "Lzendesk/messaging/components/ActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;",
            "Lzendesk/messaging/components/ActionListener<",
            "Lzendesk/messaging/Update;",
            ">;",
            "Lzendesk/messaging/components/Timer$Factory;",
            ")",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher<",
            "Lzendesk/messaging/MessagingItem;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Lzendesk/messaging/components/bot/BotMessageDispatcher;

    invoke-direct {v0, p1, p2, p3, p4}, Lzendesk/messaging/components/bot/BotMessageDispatcher;-><init>(Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;Lzendesk/messaging/components/ActionListener;Lzendesk/messaging/components/ActionListener;Lzendesk/messaging/components/Timer$Factory;)V

    return-object v0
.end method

.method configurationHelper()Lzendesk/configurations/ConfigurationHelper;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 108
    new-instance v0, Lzendesk/configurations/ConfigurationHelper;

    invoke-direct {v0}, Lzendesk/configurations/ConfigurationHelper;-><init>()V

    return-object v0
.end method

.method emailValidator()Lzendesk/support/EmailValidator;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 113
    new-instance v0, Lzendesk/support/EmailValidator;

    invoke-direct {v0}, Lzendesk/support/EmailValidator;-><init>()V

    return-object v0
.end method

.method interactionIdentifier()Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier<",
            "Lzendesk/messaging/MessagingItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 71
    new-instance v0, Lzendesk/support/SupportEngineModule$3;

    invoke-direct {v0, p0}, Lzendesk/support/SupportEngineModule$3;-><init>(Lzendesk/support/SupportEngineModule;)V

    return-object v0
.end method

.method provideHandler()Landroid/os/Handler;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method requestCreator(Lzendesk/support/RequestProvider;Lzendesk/support/UploadProvider;)Lzendesk/support/RequestCreator;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 103
    new-instance v0, Lzendesk/support/RequestCreator;

    invoke-direct {v0, p1, p2}, Lzendesk/support/RequestCreator;-><init>(Lzendesk/support/RequestProvider;Lzendesk/support/UploadProvider;)V

    return-object v0
.end method

.method stateActionListener(Lzendesk/messaging/components/CompositeActionListener;)Lzendesk/messaging/components/ActionListener;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;)",
            "Lzendesk/messaging/components/ActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;"
        }
    .end annotation

    .line 50
    new-instance v0, Lzendesk/support/SupportEngineModule$1;

    invoke-direct {v0, p0, p1}, Lzendesk/support/SupportEngineModule$1;-><init>(Lzendesk/support/SupportEngineModule;Lzendesk/messaging/components/CompositeActionListener;)V

    return-object v0
.end method

.method stateCompositeActionListener()Lzendesk/messaging/components/CompositeActionListener;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 38
    invoke-static {}, Lzendesk/messaging/components/CompositeActionListener;->create()Lzendesk/messaging/components/CompositeActionListener;

    move-result-object v0

    return-object v0
.end method

.method supportEngine(Landroid/content/Context;Lzendesk/support/SupportEngineModel;Lzendesk/messaging/components/CompositeActionListener;Lzendesk/messaging/components/CompositeActionListener;)Lzendesk/support/SupportEngine;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lzendesk/support/SupportEngineModel;",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/Update;",
            ">;)",
            "Lzendesk/support/SupportEngine;"
        }
    .end annotation

    .line 32
    new-instance v0, Lzendesk/support/SupportEngine;

    invoke-direct {v0, p1, p2, p3, p4}, Lzendesk/support/SupportEngine;-><init>(Landroid/content/Context;Lzendesk/support/SupportEngineModel;Lzendesk/messaging/components/CompositeActionListener;Lzendesk/messaging/components/CompositeActionListener;)V

    return-object v0
.end method

.method supportEngineModel(Lzendesk/support/SupportSettingsProvider;Lzendesk/support/RequestCreator;Lzendesk/core/AuthenticationProvider;Lzendesk/configurations/ConfigurationHelper;Lzendesk/support/EmailValidator;Lzendesk/messaging/components/bot/BotMessageDispatcher;)Lzendesk/support/SupportEngineModel;
    .locals 10
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportSettingsProvider;",
            "Lzendesk/support/RequestCreator;",
            "Lzendesk/core/AuthenticationProvider;",
            "Lzendesk/configurations/ConfigurationHelper;",
            "Lzendesk/support/EmailValidator;",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher<",
            "Lzendesk/messaging/MessagingItem;",
            ">;)",
            "Lzendesk/support/SupportEngineModel;"
        }
    .end annotation

    .line 86
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 87
    new-instance v9, Lzendesk/support/SupportEngineModel;

    sget-object v3, Lzendesk/core/Zendesk;->INSTANCE:Lzendesk/core/Zendesk;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lzendesk/support/SupportEngineModel;-><init>(Lzendesk/support/SupportSettingsProvider;Lzendesk/support/RequestCreator;Lzendesk/core/Zendesk;Lzendesk/core/AuthenticationProvider;Lzendesk/support/EmailValidator;Lzendesk/configurations/ConfigurationHelper;Ljava/util/concurrent/atomic/AtomicBoolean;Lzendesk/messaging/components/bot/BotMessageDispatcher;)V

    return-object v9
.end method

.method timerFactory(Landroid/os/Handler;)Lzendesk/messaging/components/Timer$Factory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 118
    new-instance v0, Lzendesk/messaging/components/Timer$Factory;

    invoke-direct {v0, p1}, Lzendesk/messaging/components/Timer$Factory;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method updateActionListener(Lzendesk/messaging/components/CompositeActionListener;)Lzendesk/messaging/components/ActionListener;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/Update;",
            ">;)",
            "Lzendesk/messaging/components/ActionListener<",
            "Lzendesk/messaging/Update;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Lzendesk/support/SupportEngineModule$2;

    invoke-direct {v0, p0, p1}, Lzendesk/support/SupportEngineModule$2;-><init>(Lzendesk/support/SupportEngineModule;Lzendesk/messaging/components/CompositeActionListener;)V

    return-object v0
.end method

.method updateViewObserver()Lzendesk/messaging/components/CompositeActionListener;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/Update;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 44
    invoke-static {}, Lzendesk/messaging/components/CompositeActionListener;->create()Lzendesk/messaging/components/CompositeActionListener;

    move-result-object v0

    return-object v0
.end method
