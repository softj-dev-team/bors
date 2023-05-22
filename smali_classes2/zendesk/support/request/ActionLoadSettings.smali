.class Lzendesk/support/request/ActionLoadSettings;
.super Ljava/lang/Object;
.source "ActionLoadSettings.java"

# interfaces
.implements Lzendesk/support/request/AsyncMiddleware$AsyncAction;


# instance fields
.field private final actionFactory:Lzendesk/support/request/ActionFactory;

.field private final authProvider:Lzendesk/core/AuthenticationProvider;

.field private final settingsProvider:Lzendesk/support/SupportSettingsProvider;


# direct methods
.method constructor <init>(Lzendesk/support/request/ActionFactory;Lzendesk/support/SupportSettingsProvider;Lzendesk/core/AuthenticationProvider;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lzendesk/support/request/ActionLoadSettings;->actionFactory:Lzendesk/support/request/ActionFactory;

    .line 28
    iput-object p2, p0, Lzendesk/support/request/ActionLoadSettings;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    .line 29
    iput-object p3, p0, Lzendesk/support/request/ActionLoadSettings;->authProvider:Lzendesk/core/AuthenticationProvider;

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/request/ActionLoadSettings;Lzendesk/support/SupportSdkSettings;)Lzendesk/support/request/StateSettings;
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lzendesk/support/request/ActionLoadSettings;->constructSettings(Lzendesk/support/SupportSdkSettings;)Lzendesk/support/request/StateSettings;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/support/request/ActionLoadSettings;)Lzendesk/support/request/ActionFactory;
    .locals 0

    .line 19
    iget-object p0, p0, Lzendesk/support/request/ActionLoadSettings;->actionFactory:Lzendesk/support/request/ActionFactory;

    return-object p0
.end method

.method private constructSettings(Lzendesk/support/SupportSdkSettings;)Lzendesk/support/request/StateSettings;
    .locals 2

    .line 57
    iget-object v0, p0, Lzendesk/support/request/ActionLoadSettings;->authProvider:Lzendesk/core/AuthenticationProvider;

    invoke-interface {v0}, Lzendesk/core/AuthenticationProvider;->getIdentity()Lzendesk/core/Identity;

    move-result-object v0

    .line 59
    instance-of v1, v0, Lzendesk/core/AnonymousIdentity;

    if-eqz v1, :cond_0

    .line 60
    check-cast v0, Lzendesk/core/AnonymousIdentity;

    .line 61
    invoke-virtual {v0}, Lzendesk/core/AnonymousIdentity;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zendesk/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v1

    .line 62
    invoke-virtual {v0}, Lzendesk/core/AnonymousIdentity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zendesk/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v0

    .line 64
    invoke-static {p1, v1, v0}, Lzendesk/support/request/StateSettings;->fromSupportSettings(Lzendesk/support/SupportSdkSettings;ZZ)Lzendesk/support/request/StateSettings;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 66
    invoke-static {p1, v0, v0}, Lzendesk/support/request/StateSettings;->fromSupportSettings(Lzendesk/support/SupportSdkSettings;ZZ)Lzendesk/support/request/StateSettings;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public actionQueued(Lzendesk/support/suas/Dispatcher;Lzendesk/support/suas/GetState;)V
    .locals 0

    .line 34
    iget-object p2, p0, Lzendesk/support/request/ActionLoadSettings;->actionFactory:Lzendesk/support/request/ActionFactory;

    invoke-virtual {p2}, Lzendesk/support/request/ActionFactory;->loadSettings()Lzendesk/support/suas/Action;

    move-result-object p2

    invoke-interface {p1, p2}, Lzendesk/support/suas/Dispatcher;->dispatch(Lzendesk/support/suas/Action;)V

    return-void
.end method

.method public execute(Lzendesk/support/suas/Dispatcher;Lzendesk/support/suas/GetState;Lzendesk/support/request/AsyncMiddleware$Callback;)V
    .locals 1

    .line 39
    iget-object p2, p0, Lzendesk/support/request/ActionLoadSettings;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    new-instance v0, Lzendesk/support/request/ActionLoadSettings$1;

    invoke-direct {v0, p0, p1, p3}, Lzendesk/support/request/ActionLoadSettings$1;-><init>(Lzendesk/support/request/ActionLoadSettings;Lzendesk/support/suas/Dispatcher;Lzendesk/support/request/AsyncMiddleware$Callback;)V

    invoke-interface {p2, v0}, Lzendesk/support/SupportSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method
