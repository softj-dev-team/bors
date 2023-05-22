.class public final Lzendesk/support/SupportEngineModule_SupportEngineModelFactory;
.super Ljava/lang/Object;
.source "SupportEngineModule_SupportEngineModelFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/support/SupportEngineModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final authenticationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/AuthenticationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final botMessageDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final configurationHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/configurations/ConfigurationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final emailValidatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/EmailValidator;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lzendesk/support/SupportEngineModule;

.field private final requestCreatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/RequestCreator;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportSettingsProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzendesk/support/SupportEngineModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportEngineModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportSettingsProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/RequestCreator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/AuthenticationProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/configurations/ConfigurationHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/EmailValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lzendesk/support/SupportEngineModule_SupportEngineModelFactory;->module:Lzendesk/support/SupportEngineModule;

    .line 45
    iput-object p2, p0, Lzendesk/support/SupportEngineModule_SupportEngineModelFactory;->settingsProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p3, p0, Lzendesk/support/SupportEngineModule_SupportEngineModelFactory;->requestCreatorProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p4, p0, Lzendesk/support/SupportEngineModule_SupportEngineModelFactory;->authenticationProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p5, p0, Lzendesk/support/SupportEngineModule_SupportEngineModelFactory;->configurationHelperProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p6, p0, Lzendesk/support/SupportEngineModule_SupportEngineModelFactory;->emailValidatorProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p7, p0, Lzendesk/support/SupportEngineModule_SupportEngineModelFactory;->botMessageDispatcherProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lzendesk/support/SupportEngineModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/support/SupportEngineModule_SupportEngineModelFactory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportEngineModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportSettingsProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/RequestCreator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/AuthenticationProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/configurations/ConfigurationHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/EmailValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;)",
            "Lzendesk/support/SupportEngineModule_SupportEngineModelFactory;"
        }
    .end annotation

    .line 65
    new-instance v8, Lzendesk/support/SupportEngineModule_SupportEngineModelFactory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lzendesk/support/SupportEngineModule_SupportEngineModelFactory;-><init>(Lzendesk/support/SupportEngineModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static supportEngineModel(Lzendesk/support/SupportEngineModule;Lzendesk/support/SupportSettingsProvider;Lzendesk/support/RequestCreator;Lzendesk/core/AuthenticationProvider;Lzendesk/configurations/ConfigurationHelper;Ljava/lang/Object;Lzendesk/messaging/components/bot/BotMessageDispatcher;)Lzendesk/support/SupportEngineModel;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportEngineModule;",
            "Lzendesk/support/SupportSettingsProvider;",
            "Lzendesk/support/RequestCreator;",
            "Lzendesk/core/AuthenticationProvider;",
            "Lzendesk/configurations/ConfigurationHelper;",
            "Ljava/lang/Object;",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher<",
            "Lzendesk/messaging/MessagingItem;",
            ">;)",
            "Lzendesk/support/SupportEngineModel;"
        }
    .end annotation

    .line 72
    move-object v5, p5

    check-cast v5, Lzendesk/support/EmailValidator;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lzendesk/support/SupportEngineModule;->supportEngineModel(Lzendesk/support/SupportSettingsProvider;Lzendesk/support/RequestCreator;Lzendesk/core/AuthenticationProvider;Lzendesk/configurations/ConfigurationHelper;Lzendesk/support/EmailValidator;Lzendesk/messaging/components/bot/BotMessageDispatcher;)Lzendesk/support/SupportEngineModel;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/support/SupportEngineModel;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lzendesk/support/SupportEngineModule_SupportEngineModelFactory;->get()Lzendesk/support/SupportEngineModel;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/SupportEngineModel;
    .locals 7

    .line 55
    iget-object v0, p0, Lzendesk/support/SupportEngineModule_SupportEngineModelFactory;->module:Lzendesk/support/SupportEngineModule;

    iget-object v1, p0, Lzendesk/support/SupportEngineModule_SupportEngineModelFactory;->settingsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/SupportSettingsProvider;

    iget-object v2, p0, Lzendesk/support/SupportEngineModule_SupportEngineModelFactory;->requestCreatorProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/support/RequestCreator;

    iget-object v3, p0, Lzendesk/support/SupportEngineModule_SupportEngineModelFactory;->authenticationProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/core/AuthenticationProvider;

    iget-object v4, p0, Lzendesk/support/SupportEngineModule_SupportEngineModelFactory;->configurationHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzendesk/configurations/ConfigurationHelper;

    iget-object v5, p0, Lzendesk/support/SupportEngineModule_SupportEngineModelFactory;->emailValidatorProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lzendesk/support/SupportEngineModule_SupportEngineModelFactory;->botMessageDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lzendesk/messaging/components/bot/BotMessageDispatcher;

    invoke-static/range {v0 .. v6}, Lzendesk/support/SupportEngineModule_SupportEngineModelFactory;->supportEngineModel(Lzendesk/support/SupportEngineModule;Lzendesk/support/SupportSettingsProvider;Lzendesk/support/RequestCreator;Lzendesk/core/AuthenticationProvider;Lzendesk/configurations/ConfigurationHelper;Ljava/lang/Object;Lzendesk/messaging/components/bot/BotMessageDispatcher;)Lzendesk/support/SupportEngineModel;

    move-result-object v0

    return-object v0
.end method
