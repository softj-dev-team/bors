.class public final enum Lzendesk/support/SdkDependencyProvider;
.super Ljava/lang/Enum;
.source "SdkDependencyProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzendesk/support/SdkDependencyProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzendesk/support/SdkDependencyProvider;

.field public static final enum INSTANCE:Lzendesk/support/SdkDependencyProvider;

.field public static final NOT_INITIALIZED_LOG:Ljava/lang/String; = "Zendesk is not initialized or no identity was set. Make sure Zendesk.INSTANCE.init(...), Zendesk.INSTANCE.setIdentity(...), Support.INSTANCE.init(...) was called "


# instance fields
.field actionHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/core/ActionHandler;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private id:Ljava/util/UUID;

.field registry:Lzendesk/core/ActionHandlerRegistry;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private requestListModule:Lzendesk/support/requestlist/RequestListModule;

.field private supportSdkComponent:Lzendesk/support/SupportSdkComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lzendesk/support/SdkDependencyProvider;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzendesk/support/SdkDependencyProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzendesk/support/SdkDependencyProvider;->INSTANCE:Lzendesk/support/SdkDependencyProvider;

    const/4 v1, 0x1

    new-array v1, v1, [Lzendesk/support/SdkDependencyProvider;

    aput-object v0, v1, v2

    .line 26
    sput-object v1, Lzendesk/support/SdkDependencyProvider;->$VALUES:[Lzendesk/support/SdkDependencyProvider;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private registerActionHandlers()V
    .locals 3

    .line 108
    iget-object v0, p0, Lzendesk/support/SdkDependencyProvider;->actionHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/core/ActionHandler;

    .line 109
    iget-object v2, p0, Lzendesk/support/SdkDependencyProvider;->registry:Lzendesk/core/ActionHandlerRegistry;

    invoke-interface {v2, v1}, Lzendesk/core/ActionHandlerRegistry;->add(Lzendesk/core/ActionHandler;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzendesk/support/SdkDependencyProvider;
    .locals 1

    .line 26
    const-class v0, Lzendesk/support/SdkDependencyProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzendesk/support/SdkDependencyProvider;

    return-object p0
.end method

.method public static values()[Lzendesk/support/SdkDependencyProvider;
    .locals 1

    .line 26
    sget-object v0, Lzendesk/support/SdkDependencyProvider;->$VALUES:[Lzendesk/support/SdkDependencyProvider;

    invoke-virtual {v0}, [Lzendesk/support/SdkDependencyProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzendesk/support/SdkDependencyProvider;

    return-object v0
.end method


# virtual methods
.method initForTesting(Lzendesk/support/SupportSdkComponent;Ljava/util/UUID;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lzendesk/support/SdkDependencyProvider;->supportSdkComponent:Lzendesk/support/SupportSdkComponent;

    .line 89
    iput-object p2, p0, Lzendesk/support/SdkDependencyProvider;->id:Ljava/util/UUID;

    return-void
.end method

.method initForTesting(Lzendesk/support/SupportSdkComponent;Ljava/util/UUID;Lzendesk/support/requestlist/RequestListModule;)V
    .locals 0

    .line 97
    invoke-virtual {p0, p1, p2}, Lzendesk/support/SdkDependencyProvider;->initForTesting(Lzendesk/support/SupportSdkComponent;Ljava/util/UUID;)V

    .line 98
    iput-object p3, p0, Lzendesk/support/SdkDependencyProvider;->requestListModule:Lzendesk/support/requestlist/RequestListModule;

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .line 102
    sget-object v0, Lzendesk/core/Zendesk;->INSTANCE:Lzendesk/core/Zendesk;

    invoke-virtual {v0}, Lzendesk/core/Zendesk;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lzendesk/support/Support;->INSTANCE:Lzendesk/support/Support;

    .line 103
    invoke-virtual {v0}, Lzendesk/support/Support;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lzendesk/support/Support;->INSTANCE:Lzendesk/support/Support;

    .line 104
    invoke-virtual {v0}, Lzendesk/support/Support;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public provideRequestListComponent(Lzendesk/support/requestlist/RequestListActivity;Lzendesk/support/requestlist/RequestListConfiguration;)Lzendesk/support/requestlist/RequestListComponent;
    .locals 3

    .line 75
    iget-object v0, p0, Lzendesk/support/SdkDependencyProvider;->requestListModule:Lzendesk/support/requestlist/RequestListModule;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lzendesk/support/requestlist/RequestListModule;

    invoke-direct {v0}, Lzendesk/support/requestlist/RequestListModule;-><init>()V

    iput-object v0, p0, Lzendesk/support/SdkDependencyProvider;->requestListModule:Lzendesk/support/requestlist/RequestListModule;

    .line 79
    :cond_0
    invoke-virtual {p0}, Lzendesk/support/SdkDependencyProvider;->provideSupportSdkComponent()Lzendesk/support/SupportSdkComponent;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/SdkDependencyProvider;->requestListModule:Lzendesk/support/requestlist/RequestListModule;

    new-instance v2, Lzendesk/support/requestlist/RequestListViewModule;

    invoke-direct {v2, p1, p2}, Lzendesk/support/requestlist/RequestListViewModule;-><init>(Lzendesk/support/requestlist/RequestListActivity;Lzendesk/support/requestlist/RequestListConfiguration;)V

    .line 80
    invoke-interface {v0, v1, v2}, Lzendesk/support/SupportSdkComponent;->plus(Lzendesk/support/requestlist/RequestListModule;Lzendesk/support/requestlist/RequestListViewModule;)Lzendesk/support/requestlist/RequestListComponent;

    move-result-object p1

    return-object p1
.end method

.method public provideSupportSdkComponent()Lzendesk/support/SupportSdkComponent;
    .locals 4

    .line 50
    sget-object v0, Lzendesk/support/Support;->INSTANCE:Lzendesk/support/Support;

    invoke-virtual {v0}, Lzendesk/support/Support;->getSupportModule()Lzendesk/support/SupportModule;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lzendesk/support/SupportModule;->getId()Ljava/util/UUID;

    move-result-object v1

    .line 53
    iget-object v2, p0, Lzendesk/support/SdkDependencyProvider;->supportSdkComponent:Lzendesk/support/SupportSdkComponent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lzendesk/support/SdkDependencyProvider;->id:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 55
    :cond_0
    new-instance v1, Lzendesk/support/SupportSdkModule;

    invoke-direct {v1}, Lzendesk/support/SupportSdkModule;-><init>()V

    .line 56
    invoke-static {}, Lzendesk/support/DaggerSupportSdkComponent;->builder()Lzendesk/support/DaggerSupportSdkComponent$Builder;

    move-result-object v2

    sget-object v3, Lzendesk/core/Zendesk;->INSTANCE:Lzendesk/core/Zendesk;

    .line 57
    invoke-virtual {v3}, Lzendesk/core/Zendesk;->coreModule()Lzendesk/core/CoreModule;

    move-result-object v3

    invoke-virtual {v2, v3}, Lzendesk/support/DaggerSupportSdkComponent$Builder;->coreModule(Lzendesk/core/CoreModule;)Lzendesk/support/DaggerSupportSdkComponent$Builder;

    move-result-object v2

    .line 58
    invoke-virtual {v2, v0}, Lzendesk/support/DaggerSupportSdkComponent$Builder;->supportModule(Lzendesk/support/SupportModule;)Lzendesk/support/DaggerSupportSdkComponent$Builder;

    move-result-object v2

    .line 59
    invoke-virtual {v2, v1}, Lzendesk/support/DaggerSupportSdkComponent$Builder;->supportSdkModule(Lzendesk/support/SupportSdkModule;)Lzendesk/support/DaggerSupportSdkComponent$Builder;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lzendesk/support/DaggerSupportSdkComponent$Builder;->build()Lzendesk/support/SupportSdkComponent;

    move-result-object v1

    iput-object v1, p0, Lzendesk/support/SdkDependencyProvider;->supportSdkComponent:Lzendesk/support/SupportSdkComponent;

    .line 62
    invoke-virtual {v0}, Lzendesk/support/SupportModule;->getId()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/SdkDependencyProvider;->id:Ljava/util/UUID;

    .line 64
    iget-object v0, p0, Lzendesk/support/SdkDependencyProvider;->supportSdkComponent:Lzendesk/support/SupportSdkComponent;

    invoke-interface {v0, p0}, Lzendesk/support/SupportSdkComponent;->inject(Lzendesk/support/SdkDependencyProvider;)V

    .line 65
    invoke-direct {p0}, Lzendesk/support/SdkDependencyProvider;->registerActionHandlers()V

    .line 68
    :cond_1
    iget-object v0, p0, Lzendesk/support/SdkDependencyProvider;->supportSdkComponent:Lzendesk/support/SupportSdkComponent;

    return-object v0
.end method
