.class public final enum Lzendesk/support/Support;
.super Ljava/lang/Enum;
.source "Support.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzendesk/support/Support;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzendesk/support/Support;

.field public static final enum INSTANCE:Lzendesk/support/Support;

.field private static final LOG_TAG:Ljava/lang/String; = "ZendeskConfiguration"


# instance fields
.field actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private applicationScope:Lzendesk/support/ApplicationScope;

.field authenticationProvider:Lzendesk/core/AuthenticationProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field blipsProvider:Lzendesk/support/SupportBlipsProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private initialised:Z

.field providerStore:Lzendesk/support/ProviderStore;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field requestMigrator:Lzendesk/support/RequestMigrator;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field requestProvider:Lzendesk/support/RequestProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field supportModule:Lzendesk/support/SupportModule;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lzendesk/support/Support;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzendesk/support/Support;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzendesk/support/Support;->INSTANCE:Lzendesk/support/Support;

    const/4 v1, 0x1

    new-array v1, v1, [Lzendesk/support/Support;

    aput-object v0, v1, v2

    .line 25
    sput-object v1, Lzendesk/support/Support;->$VALUES:[Lzendesk/support/Support;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private initApplicationScope(Lzendesk/core/CoreModule;Lzendesk/support/ApplicationScope;)V
    .locals 2

    .line 179
    iput-object p2, p0, Lzendesk/support/Support;->applicationScope:Lzendesk/support/ApplicationScope;

    .line 181
    sget-object v0, Lzendesk/support/Guide;->INSTANCE:Lzendesk/support/Guide;

    sget-object v1, Lzendesk/core/Zendesk;->INSTANCE:Lzendesk/core/Zendesk;

    invoke-virtual {v0, v1}, Lzendesk/support/Guide;->init(Lzendesk/core/Zendesk;)V

    .line 184
    invoke-static {}, Lzendesk/support/DaggerSupportSdkProvidersComponent;->builder()Lzendesk/support/DaggerSupportSdkProvidersComponent$Builder;

    move-result-object v0

    .line 185
    invoke-virtual {v0, p1}, Lzendesk/support/DaggerSupportSdkProvidersComponent$Builder;->coreModule(Lzendesk/core/CoreModule;)Lzendesk/support/DaggerSupportSdkProvidersComponent$Builder;

    move-result-object p1

    new-instance v0, Lzendesk/support/ProviderModule;

    invoke-direct {v0}, Lzendesk/support/ProviderModule;-><init>()V

    .line 186
    invoke-virtual {p1, v0}, Lzendesk/support/DaggerSupportSdkProvidersComponent$Builder;->providerModule(Lzendesk/support/ProviderModule;)Lzendesk/support/DaggerSupportSdkProvidersComponent$Builder;

    move-result-object p1

    new-instance v0, Lzendesk/support/StorageModule;

    invoke-direct {v0}, Lzendesk/support/StorageModule;-><init>()V

    .line 187
    invoke-virtual {p1, v0}, Lzendesk/support/DaggerSupportSdkProvidersComponent$Builder;->storageModule(Lzendesk/support/StorageModule;)Lzendesk/support/DaggerSupportSdkProvidersComponent$Builder;

    move-result-object p1

    new-instance v0, Lzendesk/support/SupportApplicationModule;

    invoke-direct {v0, p2}, Lzendesk/support/SupportApplicationModule;-><init>(Lzendesk/support/ApplicationScope;)V

    .line 188
    invoke-virtual {p1, v0}, Lzendesk/support/DaggerSupportSdkProvidersComponent$Builder;->supportApplicationModule(Lzendesk/support/SupportApplicationModule;)Lzendesk/support/DaggerSupportSdkProvidersComponent$Builder;

    move-result-object p1

    sget-object p2, Lzendesk/support/Guide;->INSTANCE:Lzendesk/support/Guide;

    .line 189
    invoke-virtual {p2}, Lzendesk/support/Guide;->guideModule()Lzendesk/support/GuideModule;

    move-result-object p2

    invoke-virtual {p1, p2}, Lzendesk/support/DaggerSupportSdkProvidersComponent$Builder;->guideModule(Lzendesk/support/GuideModule;)Lzendesk/support/DaggerSupportSdkProvidersComponent$Builder;

    move-result-object p1

    .line 190
    invoke-virtual {p1}, Lzendesk/support/DaggerSupportSdkProvidersComponent$Builder;->build()Lzendesk/support/SupportSdkProvidersComponent;

    move-result-object p1

    .line 191
    invoke-interface {p1, p0}, Lzendesk/support/SupportSdkProvidersComponent;->inject(Lzendesk/support/Support;)Lzendesk/support/Support;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzendesk/support/Support;
    .locals 1

    .line 25
    const-class v0, Lzendesk/support/Support;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzendesk/support/Support;

    return-object p0
.end method

.method public static values()[Lzendesk/support/Support;
    .locals 1

    .line 25
    sget-object v0, Lzendesk/support/Support;->$VALUES:[Lzendesk/support/Support;

    invoke-virtual {v0}, [Lzendesk/support/Support;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzendesk/support/Support;

    return-object v0
.end method


# virtual methods
.method public getHelpCenterLocaleOverride()Ljava/util/Locale;
    .locals 1

    .line 245
    sget-object v0, Lzendesk/support/Guide;->INSTANCE:Lzendesk/support/Guide;

    invoke-virtual {v0}, Lzendesk/support/Guide;->getHelpCenterLocaleOverride()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method getSupportModule()Lzendesk/support/SupportModule;
    .locals 1

    .line 219
    iget-object v0, p0, Lzendesk/support/Support;->supportModule:Lzendesk/support/SupportModule;

    return-object v0
.end method

.method public init(Lzendesk/core/Zendesk;)V
    .locals 2

    .line 68
    invoke-virtual {p1}, Lzendesk/core/Zendesk;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lzendesk/support/ApplicationScope$Builder;

    invoke-direct {v0}, Lzendesk/support/ApplicationScope$Builder;-><init>()V

    .line 70
    invoke-virtual {v0}, Lzendesk/support/ApplicationScope$Builder;->build()Lzendesk/support/ApplicationScope;

    move-result-object v0

    .line 71
    invoke-virtual {p1}, Lzendesk/core/Zendesk;->coreModule()Lzendesk/core/CoreModule;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lzendesk/support/Support;->initApplicationScope(Lzendesk/core/CoreModule;Lzendesk/support/ApplicationScope;)V

    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lzendesk/support/Support;->initialised:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "ZendeskConfiguration"

    const-string v1, "Cannot use SupportSDK without initializing Zendesk. Call Zendesk.INSTANCE.init(...)"

    .line 74
    invoke-static {v0, v1, p1}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method installTracker(Lzendesk/support/ZendeskTracker;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lzendesk/support/Support;->applicationScope:Lzendesk/support/ApplicationScope;

    invoke-virtual {v0}, Lzendesk/support/ApplicationScope;->newBuilder()Lzendesk/support/ApplicationScope$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lzendesk/support/ApplicationScope$Builder;->zendeskTracker(Lzendesk/support/ZendeskTracker;)Lzendesk/support/ApplicationScope$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lzendesk/support/ApplicationScope$Builder;->build()Lzendesk/support/ApplicationScope;

    move-result-object p1

    .line 210
    sget-object v0, Lzendesk/core/Zendesk;->INSTANCE:Lzendesk/core/Zendesk;

    invoke-virtual {v0}, Lzendesk/core/Zendesk;->coreModule()Lzendesk/core/CoreModule;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lzendesk/support/Support;->initApplicationScope(Lzendesk/core/CoreModule;Lzendesk/support/ApplicationScope;)V

    return-void
.end method

.method isAuthenticated()Z
    .locals 1

    .line 200
    iget-object v0, p0, Lzendesk/support/Support;->authenticationProvider:Lzendesk/core/AuthenticationProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lzendesk/core/AuthenticationProvider;->getIdentity()Lzendesk/core/Identity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lzendesk/support/Support;->initialised:Z

    return v0
.end method

.method public provider()Lzendesk/support/ProviderStore;
    .locals 4

    .line 111
    invoke-virtual {p0}, Lzendesk/support/Support;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "ZendeskConfiguration"

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Cannot get ProviderStore before SDK has been initialized. init() must be called before provider()."

    .line 112
    invoke-static {v3, v2, v0}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 117
    :cond_0
    invoke-virtual {p0}, Lzendesk/support/Support;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Cannot get ProviderStore before an identity has been set. Zendesk.INSTANCE.setIdentity() must be called before provider()."

    .line 118
    invoke-static {v3, v2, v0}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 123
    :cond_1
    iget-object v0, p0, Lzendesk/support/Support;->providerStore:Lzendesk/support/ProviderStore;

    return-object v0
.end method

.method public refreshRequest(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4

    .line 147
    invoke-virtual {p0}, Lzendesk/support/Support;->isInitialized()Z

    move-result v0

    const-string v1, "ZendeskConfiguration"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "Cannot use Support SDK without initializing Zendesk. Call Zendesk.INSTANCE.init(...) and Support.INSTANCE.init(Zendesk)"

    .line 148
    invoke-static {v1, p2, p1}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 153
    :cond_0
    invoke-virtual {p0}, Lzendesk/support/Support;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "Cannot use Support SDK without setting an identity. Zendesk.INSTANCE.setIdentity(...) must be called before refreshRequest(...)."

    .line 154
    invoke-static {v1, p2, p1}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 159
    :cond_1
    iget-object v0, p0, Lzendesk/support/Support;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request_conversation_refresh"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-interface {v0, v1}, Lzendesk/core/ActionHandlerRegistry;->handlerByAction(Ljava/lang/String;)Lzendesk/core/ActionHandler;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 163
    invoke-interface {v0, v1, p2}, Lzendesk/core/ActionHandler;->handle(Ljava/util/Map;Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1

    .line 167
    :cond_2
    iget-object v0, p0, Lzendesk/support/Support;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    const-string v3, "request_list_refresh"

    .line 168
    invoke-interface {v0, v3}, Lzendesk/core/ActionHandlerRegistry;->handlerByAction(Ljava/lang/String;)Lzendesk/core/ActionHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 171
    invoke-interface {v0, v1, p2}, Lzendesk/core/ActionHandler;->handle(Ljava/util/Map;Landroid/content/Context;)V

    goto :goto_0

    .line 173
    :cond_3
    iget-object p2, p0, Lzendesk/support/Support;->requestProvider:Lzendesk/support/RequestProvider;

    invoke-interface {p2, p1}, Lzendesk/support/RequestProvider;->markRequestAsUnread(Ljava/lang/String;)V

    :goto_0
    return v2
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lzendesk/support/Support;->initialised:Z

    return-void
.end method

.method public setHelpCenterLocaleOverride(Ljava/util/Locale;)V
    .locals 1

    .line 235
    sget-object v0, Lzendesk/support/Guide;->INSTANCE:Lzendesk/support/Guide;

    invoke-virtual {v0, p1}, Lzendesk/support/Guide;->setHelpCenterLocaleOverride(Ljava/util/Locale;)V

    return-void
.end method
