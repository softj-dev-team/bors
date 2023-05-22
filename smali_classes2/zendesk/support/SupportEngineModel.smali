.class Lzendesk/support/SupportEngineModel;
.super Ljava/lang/Object;
.source "SupportEngineModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/SupportEngineModel$State;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SupportEngine"

.field private static final REQUEST_LIST_ACTION_ID:Ljava/lang/String; = "REQUEST_LIST_ACTION_ID"

.field private static final RETRY_BUTTON_ID:Ljava/lang/String; = "zs_engine_retry_request_creation"


# instance fields
.field private agentDetails:Lzendesk/messaging/AgentDetails;

.field private final authenticationProvider:Lzendesk/core/AuthenticationProvider;

.field private final configHelper:Lzendesk/configurations/ConfigurationHelper;

.field private configurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/configurations/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private final conversationStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final emailValidator:Lzendesk/support/EmailValidator;

.field private message:Ljava/lang/String;

.field private messageDispatcher:Lzendesk/messaging/components/bot/BotMessageDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzendesk/messaging/components/bot/BotMessageDispatcher<",
            "Lzendesk/messaging/MessagingItem;",
            ">;"
        }
    .end annotation
.end field

.field private final requestCreator:Lzendesk/support/RequestCreator;

.field private final settingsProvider:Lzendesk/support/SupportSettingsProvider;

.field private state:Lzendesk/support/SupportEngineModel$State;

.field private final zendesk:Lzendesk/core/Zendesk;


# direct methods
.method constructor <init>(Lzendesk/support/SupportSettingsProvider;Lzendesk/support/RequestCreator;Lzendesk/core/Zendesk;Lzendesk/core/AuthenticationProvider;Lzendesk/support/EmailValidator;Lzendesk/configurations/ConfigurationHelper;Ljava/util/concurrent/atomic/AtomicBoolean;Lzendesk/messaging/components/bot/BotMessageDispatcher;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportSettingsProvider;",
            "Lzendesk/support/RequestCreator;",
            "Lzendesk/core/Zendesk;",
            "Lzendesk/core/AuthenticationProvider;",
            "Lzendesk/support/EmailValidator;",
            "Lzendesk/configurations/ConfigurationHelper;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher<",
            "Lzendesk/messaging/MessagingItem;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lzendesk/messaging/AgentDetails;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lzendesk/messaging/AgentDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lzendesk/support/SupportEngineModel;->agentDetails:Lzendesk/messaging/AgentDetails;

    .line 76
    iput-object p1, p0, Lzendesk/support/SupportEngineModel;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    .line 77
    iput-object p2, p0, Lzendesk/support/SupportEngineModel;->requestCreator:Lzendesk/support/RequestCreator;

    .line 78
    iput-object p3, p0, Lzendesk/support/SupportEngineModel;->zendesk:Lzendesk/core/Zendesk;

    .line 79
    iput-object p4, p0, Lzendesk/support/SupportEngineModel;->authenticationProvider:Lzendesk/core/AuthenticationProvider;

    .line 80
    iput-object p5, p0, Lzendesk/support/SupportEngineModel;->emailValidator:Lzendesk/support/EmailValidator;

    .line 81
    iput-object p6, p0, Lzendesk/support/SupportEngineModel;->configHelper:Lzendesk/configurations/ConfigurationHelper;

    .line 82
    iput-object p7, p0, Lzendesk/support/SupportEngineModel;->conversationStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    iput-object p8, p0, Lzendesk/support/SupportEngineModel;->messageDispatcher:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/SupportEngineModel;Lzendesk/support/SupportSdkSettings;)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lzendesk/support/SupportEngineModel;->userNeedsToAddEmailAddress(Lzendesk/support/SupportSdkSettings;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lzendesk/support/SupportEngineModel;Lzendesk/support/SupportEngineModel$State;)Lzendesk/support/SupportEngineModel$State;
    .locals 0

    .line 34
    iput-object p1, p0, Lzendesk/support/SupportEngineModel;->state:Lzendesk/support/SupportEngineModel$State;

    return-object p1
.end method

.method static synthetic access$200(Lzendesk/support/SupportEngineModel;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lzendesk/support/SupportEngineModel;->promptForEmail()V

    return-void
.end method

.method static synthetic access$300(Lzendesk/support/SupportEngineModel;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lzendesk/support/SupportEngineModel;->createRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lzendesk/support/SupportEngineModel;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lzendesk/support/SupportEngineModel;->showRequestCreatedConfirmationMessage()V

    return-void
.end method

.method static synthetic access$500(Lzendesk/support/SupportEngineModel;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lzendesk/support/SupportEngineModel;->showRequestCreatedErrorMessage()V

    return-void
.end method

.method static synthetic access$600(Lzendesk/support/SupportEngineModel;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lzendesk/support/SupportEngineModel;->addConversationsEnabledConfirmation()V

    return-void
.end method

.method static synthetic access$700(Lzendesk/support/SupportEngineModel;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lzendesk/support/SupportEngineModel;->addConversationsDisabledConfirmation()V

    return-void
.end method

.method private addConversationsDisabledConfirmation()V
    .locals 6

    .line 226
    iget-object v0, p0, Lzendesk/support/SupportEngineModel;->authenticationProvider:Lzendesk/core/AuthenticationProvider;

    invoke-interface {v0}, Lzendesk/core/AuthenticationProvider;->getIdentity()Lzendesk/core/Identity;

    move-result-object v0

    .line 229
    instance-of v1, v0, Lzendesk/core/AnonymousIdentity;

    if-eqz v1, :cond_0

    check-cast v0, Lzendesk/core/AnonymousIdentity;

    .line 230
    invoke-virtual {v0}, Lzendesk/core/AnonymousIdentity;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zendesk/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lzendesk/support/SupportEngineModel;->context:Landroid/content/Context;

    sget v1, Lcom/zendesk/sdk/R$string;->zs_engine_request_created_conversations_off_message:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lzendesk/support/SupportEngineModel;->messageDispatcher:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    new-instance v2, Lzendesk/messaging/MessagingItem$TextResponse;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 236
    invoke-static {}, Lzendesk/support/SupportEngineModel;->newId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lzendesk/support/SupportEngineModel;->agentDetails:Lzendesk/messaging/AgentDetails;

    invoke-direct {v2, v3, v4, v5, v0}, Lzendesk/messaging/MessagingItem$TextResponse;-><init>(Ljava/util/Date;Ljava/lang/String;Lzendesk/messaging/AgentDetails;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Lzendesk/messaging/Update;

    .line 235
    invoke-virtual {v1, v2, v0}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->addMessageWithTypingIndicator(Ljava/lang/Object;[Lzendesk/messaging/Update;)V

    :cond_0
    return-void
.end method

.method private addConversationsEnabledConfirmation()V
    .locals 9

    .line 214
    new-instance v0, Lzendesk/messaging/MessagingItem$Action;

    iget-object v1, p0, Lzendesk/support/SupportEngineModel;->context:Landroid/content/Context;

    sget v2, Lcom/zendesk/sdk/R$string;->zs_engine_request_created_request_list_button:I

    .line 215
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "REQUEST_LIST_ACTION_ID"

    invoke-direct {v0, v2, v1}, Lzendesk/messaging/MessagingItem$Action;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 218
    iget-object v0, p0, Lzendesk/support/SupportEngineModel;->messageDispatcher:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    new-instance v1, Lzendesk/messaging/MessagingItem$ActionResponse;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 219
    invoke-static {}, Lzendesk/support/SupportEngineModel;->newId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lzendesk/support/SupportEngineModel;->agentDetails:Lzendesk/messaging/AgentDetails;

    iget-object v2, p0, Lzendesk/support/SupportEngineModel;->context:Landroid/content/Context;

    sget v3, Lcom/zendesk/sdk/R$string;->zs_engine_request_created_conversations_enabled_message:I

    .line 221
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lzendesk/messaging/MessagingItem$ActionResponse;-><init>(Ljava/util/Date;Ljava/lang/String;Lzendesk/messaging/AgentDetails;Ljava/lang/String;Ljava/util/List;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lzendesk/messaging/Update;

    .line 218
    invoke-virtual {v0, v1, v2}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->addMessageWithTypingIndicator(Ljava/lang/Object;[Lzendesk/messaging/Update;)V

    return-void
.end method

.method private createRequest(Ljava/lang/String;)V
    .locals 3

    .line 166
    iget-object v0, p0, Lzendesk/support/SupportEngineModel;->messageDispatcher:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    const/4 v1, 0x0

    invoke-static {v1}, Lzendesk/messaging/Update$State$UpdateInputFieldState;->updateInputFieldEnabled(Z)Lzendesk/messaging/Update$State$UpdateInputFieldState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->dispatchUpdate(Lzendesk/messaging/Update;)V

    .line 168
    iget-object v0, p0, Lzendesk/support/SupportEngineModel;->requestCreator:Lzendesk/support/RequestCreator;

    invoke-direct {p0}, Lzendesk/support/SupportEngineModel;->getRequestConfiguration()Lzendesk/support/request/RequestConfiguration;

    move-result-object v1

    new-instance v2, Lzendesk/support/SupportEngineModel$2;

    invoke-direct {v2, p0}, Lzendesk/support/SupportEngineModel$2;-><init>(Lzendesk/support/SupportEngineModel;)V

    invoke-virtual {v0, p1, v1, v2}, Lzendesk/support/RequestCreator;->createRequest(Ljava/lang/String;Lzendesk/support/request/RequestConfiguration;Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method private displayUserTextInput(Ljava/lang/String;)V
    .locals 5

    .line 307
    iget-object v0, p0, Lzendesk/support/SupportEngineModel;->messageDispatcher:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    new-instance v1, Lzendesk/messaging/MessagingItem$TextQuery;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 308
    invoke-static {}, Lzendesk/support/SupportEngineModel;->newId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lzendesk/messaging/MessagingItem$Query$Status;->DELIVERED:Lzendesk/messaging/MessagingItem$Query$Status;

    invoke-direct {v1, v2, v3, v4, p1}, Lzendesk/messaging/MessagingItem$TextQuery;-><init>(Ljava/util/Date;Ljava/lang/String;Lzendesk/messaging/MessagingItem$Query$Status;Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0, v1}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->addMessage(Ljava/lang/Object;)V

    return-void
.end method

.method private getRequestConfiguration()Lzendesk/support/request/RequestConfiguration;
    .locals 3

    .line 183
    iget-object v0, p0, Lzendesk/support/SupportEngineModel;->configHelper:Lzendesk/configurations/ConfigurationHelper;

    iget-object v1, p0, Lzendesk/support/SupportEngineModel;->configurations:Ljava/util/List;

    const-class v2, Lzendesk/support/request/RequestConfiguration;

    invoke-virtual {v0, v1, v2}, Lzendesk/configurations/ConfigurationHelper;->findConfigForType(Ljava/util/List;Ljava/lang/Class;)Lzendesk/configurations/Configuration;

    move-result-object v0

    check-cast v0, Lzendesk/support/request/RequestConfiguration;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lzendesk/support/request/RequestConfiguration$Builder;

    invoke-direct {v0}, Lzendesk/support/request/RequestConfiguration$Builder;-><init>()V

    invoke-virtual {v0}, Lzendesk/support/request/RequestConfiguration$Builder;->config()Lzendesk/configurations/Configuration;

    move-result-object v0

    check-cast v0, Lzendesk/support/request/RequestConfiguration;

    :cond_0
    return-object v0
.end method

.method private static newId()Ljava/lang/String;
    .locals 1

    .line 323
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private processUserRequestMessage(Ljava/lang/String;)V
    .locals 2

    .line 110
    iput-object p1, p0, Lzendesk/support/SupportEngineModel;->message:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lzendesk/support/SupportEngineModel;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    new-instance v1, Lzendesk/support/SupportEngineModel$1;

    invoke-direct {v1, p0, p1}, Lzendesk/support/SupportEngineModel$1;-><init>(Lzendesk/support/SupportEngineModel;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lzendesk/support/SupportSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method private promptForEmail()V
    .locals 7

    .line 142
    iget-object v0, p0, Lzendesk/support/SupportEngineModel;->messageDispatcher:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    new-instance v1, Lzendesk/messaging/MessagingItem$TextResponse;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 143
    invoke-static {}, Lzendesk/support/SupportEngineModel;->newId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lzendesk/support/SupportEngineModel;->agentDetails:Lzendesk/messaging/AgentDetails;

    iget-object v5, p0, Lzendesk/support/SupportEngineModel;->context:Landroid/content/Context;

    sget v6, Lcom/zendesk/sdk/R$string;->zs_engine_request_creation_email_prompt_message:I

    .line 144
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lzendesk/messaging/MessagingItem$TextResponse;-><init>(Ljava/util/Date;Ljava/lang/String;Lzendesk/messaging/AgentDetails;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lzendesk/messaging/Update;

    iget-object v3, p0, Lzendesk/support/SupportEngineModel;->context:Landroid/content/Context;

    sget v4, Lcom/zendesk/sdk/R$string;->zs_engine_request_creation_email_prompt_hint:I

    .line 146
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-static {v3}, Lzendesk/messaging/Update$State$UpdateInputFieldState;->updateHint(Ljava/lang/String;)Lzendesk/messaging/Update$State$UpdateInputFieldState;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 142
    invoke-virtual {v0, v1, v2}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->addMessageWithTypingIndicator(Ljava/lang/Object;[Lzendesk/messaging/Update;)V

    return-void
.end method

.method private showGreeting(Z)V
    .locals 6

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p0, Lzendesk/support/SupportEngineModel;->context:Landroid/content/Context;

    sget v0, Lcom/zendesk/sdk/R$string;->zs_request_contact_option_leave_a_message:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lzendesk/support/SupportEngineModel;->displayUserTextInput(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object p1, p0, Lzendesk/support/SupportEngineModel;->messageDispatcher:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    new-instance v0, Lzendesk/messaging/MessagingItem$TextResponse;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 135
    invoke-static {}, Lzendesk/support/SupportEngineModel;->newId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lzendesk/support/SupportEngineModel;->agentDetails:Lzendesk/messaging/AgentDetails;

    iget-object v4, p0, Lzendesk/support/SupportEngineModel;->context:Landroid/content/Context;

    sget v5, Lcom/zendesk/sdk/R$string;->zs_engine_greeting_message:I

    .line 137
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lzendesk/messaging/MessagingItem$TextResponse;-><init>(Ljava/util/Date;Ljava/lang/String;Lzendesk/messaging/AgentDetails;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Lzendesk/messaging/Update;

    .line 133
    invoke-virtual {p1, v0, v1}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->addMessageWithTypingIndicator(Ljava/lang/Object;[Lzendesk/messaging/Update;)V

    :goto_0
    return-void
.end method

.method private showInvalidEmailMessage()V
    .locals 7

    .line 298
    iget-object v0, p0, Lzendesk/support/SupportEngineModel;->messageDispatcher:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    new-instance v1, Lzendesk/messaging/MessagingItem$TextResponse;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 300
    invoke-static {}, Lzendesk/support/SupportEngineModel;->newId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lzendesk/support/SupportEngineModel;->agentDetails:Lzendesk/messaging/AgentDetails;

    iget-object v5, p0, Lzendesk/support/SupportEngineModel;->context:Landroid/content/Context;

    sget v6, Lcom/zendesk/sdk/R$string;->zs_engine_request_creation_email_validation_failed_message:I

    .line 302
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lzendesk/messaging/MessagingItem$TextResponse;-><init>(Ljava/util/Date;Ljava/lang/String;Lzendesk/messaging/AgentDetails;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lzendesk/messaging/Update;

    .line 298
    invoke-virtual {v0, v1, v2}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->addMessageWithTypingIndicator(Ljava/lang/Object;[Lzendesk/messaging/Update;)V

    return-void
.end method

.method private showRequestCreatedConfirmationMessage()V
    .locals 2

    .line 194
    iget-object v0, p0, Lzendesk/support/SupportEngineModel;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    new-instance v1, Lzendesk/support/SupportEngineModel$3;

    invoke-direct {v1, p0}, Lzendesk/support/SupportEngineModel$3;-><init>(Lzendesk/support/SupportEngineModel;)V

    invoke-interface {v0, v1}, Lzendesk/support/SupportSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method private showRequestCreatedErrorMessage()V
    .locals 6

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 244
    iget-object v1, p0, Lzendesk/support/SupportEngineModel;->context:Landroid/content/Context;

    sget v2, Lcom/zendesk/sdk/R$string;->zs_engine_message_send_error_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 245
    new-instance v2, Lzendesk/messaging/MessagingItem$TextResponse;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {}, Lzendesk/support/SupportEngineModel;->newId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lzendesk/support/SupportEngineModel;->agentDetails:Lzendesk/messaging/AgentDetails;

    invoke-direct {v2, v3, v4, v5, v1}, Lzendesk/messaging/MessagingItem$TextResponse;-><init>(Ljava/util/Date;Ljava/lang/String;Lzendesk/messaging/AgentDetails;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v1, p0, Lzendesk/support/SupportEngineModel;->context:Landroid/content/Context;

    sget v2, Lcom/zendesk/sdk/R$string;->zs_engine_message_retry_button:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 249
    new-instance v2, Lzendesk/messaging/MessagingItem$Option;

    invoke-static {}, Lzendesk/support/SupportEngineModel;->newId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lzendesk/messaging/MessagingItem$Option;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    new-instance v1, Lzendesk/messaging/MessagingItem$OptionsResponse;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 251
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v4, "zs_engine_retry_request_creation"

    invoke-direct {v1, v3, v4, v2}, Lzendesk/messaging/MessagingItem$OptionsResponse;-><init>(Ljava/util/Date;Ljava/lang/String;Ljava/util/List;)V

    .line 250
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v1, p0, Lzendesk/support/SupportEngineModel;->messageDispatcher:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    const/4 v2, 0x0

    new-array v2, v2, [Lzendesk/messaging/Update;

    invoke-virtual {v1, v0, v2}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->addMessagesWithTypingIndicator(Ljava/util/List;[Lzendesk/messaging/Update;)V

    return-void
.end method

.method private updateIdentityAndCreateRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 283
    iget-object v0, p0, Lzendesk/support/SupportEngineModel;->authenticationProvider:Lzendesk/core/AuthenticationProvider;

    invoke-interface {v0}, Lzendesk/core/AuthenticationProvider;->getIdentity()Lzendesk/core/Identity;

    move-result-object v0

    .line 285
    instance-of v1, v0, Lzendesk/core/AnonymousIdentity;

    if-eqz v1, :cond_0

    .line 286
    new-instance v1, Lzendesk/core/AnonymousIdentity$Builder;

    invoke-direct {v1}, Lzendesk/core/AnonymousIdentity$Builder;-><init>()V

    check-cast v0, Lzendesk/core/AnonymousIdentity;

    .line 287
    invoke-virtual {v0}, Lzendesk/core/AnonymousIdentity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lzendesk/core/AnonymousIdentity$Builder;->withNameIdentifier(Ljava/lang/String;)Lzendesk/core/AnonymousIdentity$Builder;

    move-result-object v0

    .line 288
    invoke-virtual {v0, p1}, Lzendesk/core/AnonymousIdentity$Builder;->withEmailIdentifier(Ljava/lang/String;)Lzendesk/core/AnonymousIdentity$Builder;

    move-result-object p1

    .line 289
    invoke-virtual {p1}, Lzendesk/core/AnonymousIdentity$Builder;->build()Lzendesk/core/Identity;

    move-result-object p1

    .line 291
    iget-object v0, p0, Lzendesk/support/SupportEngineModel;->zendesk:Lzendesk/core/Zendesk;

    invoke-virtual {v0, p1}, Lzendesk/core/Zendesk;->setIdentity(Lzendesk/core/Identity;)V

    .line 293
    invoke-direct {p0, p2}, Lzendesk/support/SupportEngineModel;->createRequest(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private userNeedsToAddEmailAddress(Lzendesk/support/SupportSdkSettings;)Z
    .locals 1

    .line 159
    iget-object v0, p0, Lzendesk/support/SupportEngineModel;->authenticationProvider:Lzendesk/core/AuthenticationProvider;

    invoke-interface {v0}, Lzendesk/core/AuthenticationProvider;->getIdentity()Lzendesk/core/Identity;

    move-result-object v0

    .line 161
    invoke-virtual {p1}, Lzendesk/support/SupportSdkSettings;->isConversationsEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    instance-of p1, v0, Lzendesk/core/AnonymousIdentity;

    if-eqz p1, :cond_0

    check-cast v0, Lzendesk/core/AnonymousIdentity;

    .line 162
    invoke-virtual {v0}, Lzendesk/core/AnonymousIdentity;->getEmail()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zendesk/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method actionItemClicked()V
    .locals 3

    .line 257
    invoke-static {}, Lzendesk/support/requestlist/RequestListActivity;->builder()Lzendesk/support/requestlist/RequestListConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/SupportEngineModel;->context:Landroid/content/Context;

    iget-object v2, p0, Lzendesk/support/SupportEngineModel;->configurations:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lzendesk/support/requestlist/RequestListConfiguration$Builder;->intent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lzendesk/support/SupportEngineModel;->messageDispatcher:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    new-instance v2, Lzendesk/messaging/Update$Action$Navigation;

    invoke-direct {v2, v0}, Lzendesk/messaging/Update$Action$Navigation;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->dispatchUpdate(Lzendesk/messaging/Update;)V

    return-void
.end method

.method retryClicked()V
    .locals 7

    .line 314
    iget-object v0, p0, Lzendesk/support/SupportEngineModel;->messageDispatcher:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    new-instance v1, Lzendesk/messaging/MessagingItem$TextQuery;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 315
    invoke-static {}, Lzendesk/support/SupportEngineModel;->newId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lzendesk/messaging/MessagingItem$Query$Status;->DELIVERED:Lzendesk/messaging/MessagingItem$Query$Status;

    iget-object v5, p0, Lzendesk/support/SupportEngineModel;->context:Landroid/content/Context;

    sget v6, Lcom/zendesk/sdk/R$string;->zs_engine_message_retry_button:I

    .line 317
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lzendesk/messaging/MessagingItem$TextQuery;-><init>(Ljava/util/Date;Ljava/lang/String;Lzendesk/messaging/MessagingItem$Query$Status;Ljava/lang/String;)V

    const-string v2, "zs_engine_retry_request_creation"

    .line 314
    invoke-virtual {v0, v2, v1}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->replaceMessage(Ljava/lang/String;Ljava/lang/Object;)V

    .line 319
    iget-object v0, p0, Lzendesk/support/SupportEngineModel;->message:Ljava/lang/String;

    invoke-direct {p0, v0}, Lzendesk/support/SupportEngineModel;->createRequest(Ljava/lang/String;)V

    return-void
.end method

.method start(Landroid/content/Context;Lzendesk/messaging/MessagingApi;)V
    .locals 1

    .line 88
    iput-object p1, p0, Lzendesk/support/SupportEngineModel;->context:Landroid/content/Context;

    .line 89
    invoke-interface {p2}, Lzendesk/messaging/MessagingApi;->getConfigurations()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/SupportEngineModel;->configurations:Ljava/util/List;

    .line 90
    invoke-interface {p2}, Lzendesk/messaging/MessagingApi;->getBotAgentDetails()Lzendesk/messaging/AgentDetails;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/SupportEngineModel;->agentDetails:Lzendesk/messaging/AgentDetails;

    .line 92
    iget-object p1, p0, Lzendesk/support/SupportEngineModel;->conversationStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object p1, p0, Lzendesk/support/SupportEngineModel;->conversationStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 97
    invoke-interface {p2}, Lzendesk/messaging/MessagingApi;->getConversationLog()Lzendesk/messaging/ConversationLog;

    move-result-object p1

    invoke-interface {p1}, Lzendesk/messaging/ConversationLog;->getLog()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/SupportEngineModel;->message:Ljava/lang/String;

    .line 98
    invoke-static {p1}, Lcom/zendesk/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result p1

    .line 100
    invoke-direct {p0, p1}, Lzendesk/support/SupportEngineModel;->showGreeting(Z)V

    if-eqz p1, :cond_1

    .line 103
    iget-object p1, p0, Lzendesk/support/SupportEngineModel;->message:Ljava/lang/String;

    invoke-direct {p0, p1}, Lzendesk/support/SupportEngineModel;->processUserRequestMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    sget-object p1, Lzendesk/support/SupportEngineModel$State;->AWAITING_MESSAGE:Lzendesk/support/SupportEngineModel$State;

    iput-object p1, p0, Lzendesk/support/SupportEngineModel;->state:Lzendesk/support/SupportEngineModel$State;

    :goto_0
    return-void
.end method

.method textEntered(Ljava/lang/String;)V
    .locals 2

    .line 263
    iget-object v0, p0, Lzendesk/support/SupportEngineModel;->state:Lzendesk/support/SupportEngineModel$State;

    if-eqz v0, :cond_3

    sget-object v1, Lzendesk/support/SupportEngineModel$State;->COMPLETE:Lzendesk/support/SupportEngineModel$State;

    if-eq v0, v1, :cond_3

    .line 264
    invoke-direct {p0, p1}, Lzendesk/support/SupportEngineModel;->displayUserTextInput(Ljava/lang/String;)V

    .line 265
    sget-object v0, Lzendesk/support/SupportEngineModel$4;->$SwitchMap$zendesk$support$SupportEngineModel$State:[I

    iget-object v1, p0, Lzendesk/support/SupportEngineModel;->state:Lzendesk/support/SupportEngineModel$State;

    invoke-virtual {v1}, Lzendesk/support/SupportEngineModel$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Lzendesk/support/SupportEngineModel;->emailValidator:Lzendesk/support/EmailValidator;

    invoke-virtual {v0, p1}, Lzendesk/support/EmailValidator;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lzendesk/support/SupportEngineModel;->message:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lzendesk/support/SupportEngineModel;->updateIdentityAndCreateRequest(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_1
    invoke-direct {p0}, Lzendesk/support/SupportEngineModel;->showInvalidEmailMessage()V

    goto :goto_0

    .line 267
    :cond_2
    invoke-direct {p0, p1}, Lzendesk/support/SupportEngineModel;->processUserRequestMessage(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
