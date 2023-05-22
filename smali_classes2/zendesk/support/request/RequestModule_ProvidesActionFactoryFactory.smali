.class public final Lzendesk/support/request/RequestModule_ProvidesActionFactoryFactory;
.super Ljava/lang/Object;
.source "RequestModule_ProvidesActionFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/support/request/ActionFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final authProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/AuthenticationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final belvedereProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/belvedere/Belvedere;",
            ">;"
        }
    .end annotation
.end field

.field private final blipsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportBlipsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final executorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final mainThreadExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final requestProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/RequestProvider;",
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

.field private final supportUiStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportUiStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final uploadProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/UploadProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/RequestProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportSettingsProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/UploadProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/belvedere/Belvedere;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportUiStorage;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/AuthenticationProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportBlipsProvider;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lzendesk/support/request/RequestModule_ProvidesActionFactoryFactory;->requestProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p2, p0, Lzendesk/support/request/RequestModule_ProvidesActionFactoryFactory;->settingsProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p3, p0, Lzendesk/support/request/RequestModule_ProvidesActionFactoryFactory;->uploadProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p4, p0, Lzendesk/support/request/RequestModule_ProvidesActionFactoryFactory;->belvedereProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p5, p0, Lzendesk/support/request/RequestModule_ProvidesActionFactoryFactory;->supportUiStorageProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p6, p0, Lzendesk/support/request/RequestModule_ProvidesActionFactoryFactory;->executorProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p7, p0, Lzendesk/support/request/RequestModule_ProvidesActionFactoryFactory;->mainThreadExecutorProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p8, p0, Lzendesk/support/request/RequestModule_ProvidesActionFactoryFactory;->authProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p9, p0, Lzendesk/support/request/RequestModule_ProvidesActionFactoryFactory;->blipsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/support/request/RequestModule_ProvidesActionFactoryFactory;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/RequestProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportSettingsProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/UploadProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/belvedere/Belvedere;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportUiStorage;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/AuthenticationProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportBlipsProvider;",
            ">;)",
            "Lzendesk/support/request/RequestModule_ProvidesActionFactoryFactory;"
        }
    .end annotation

    .line 73
    new-instance v10, Lzendesk/support/request/RequestModule_ProvidesActionFactoryFactory;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lzendesk/support/request/RequestModule_ProvidesActionFactoryFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method

.method public static providesActionFactory(Lzendesk/support/RequestProvider;Lzendesk/support/SupportSettingsProvider;Lzendesk/support/UploadProvider;Lzendesk/belvedere/Belvedere;Lzendesk/support/SupportUiStorage;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;Lzendesk/core/AuthenticationProvider;Lzendesk/support/SupportBlipsProvider;)Lzendesk/support/request/ActionFactory;
    .locals 0

    .line 80
    invoke-static/range {p0 .. p8}, Lzendesk/support/request/RequestModule;->providesActionFactory(Lzendesk/support/RequestProvider;Lzendesk/support/SupportSettingsProvider;Lzendesk/support/UploadProvider;Lzendesk/belvedere/Belvedere;Lzendesk/support/SupportUiStorage;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;Lzendesk/core/AuthenticationProvider;Lzendesk/support/SupportBlipsProvider;)Lzendesk/support/request/ActionFactory;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/support/request/ActionFactory;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lzendesk/support/request/RequestModule_ProvidesActionFactoryFactory;->get()Lzendesk/support/request/ActionFactory;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/request/ActionFactory;
    .locals 10

    .line 64
    iget-object v0, p0, Lzendesk/support/request/RequestModule_ProvidesActionFactoryFactory;->requestProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lzendesk/support/RequestProvider;

    iget-object v0, p0, Lzendesk/support/request/RequestModule_ProvidesActionFactoryFactory;->settingsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lzendesk/support/SupportSettingsProvider;

    iget-object v0, p0, Lzendesk/support/request/RequestModule_ProvidesActionFactoryFactory;->uploadProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lzendesk/support/UploadProvider;

    iget-object v0, p0, Lzendesk/support/request/RequestModule_ProvidesActionFactoryFactory;->belvedereProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lzendesk/belvedere/Belvedere;

    iget-object v0, p0, Lzendesk/support/request/RequestModule_ProvidesActionFactoryFactory;->supportUiStorageProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lzendesk/support/SupportUiStorage;

    iget-object v0, p0, Lzendesk/support/request/RequestModule_ProvidesActionFactoryFactory;->executorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lzendesk/support/request/RequestModule_ProvidesActionFactoryFactory;->mainThreadExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lzendesk/support/request/RequestModule_ProvidesActionFactoryFactory;->authProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lzendesk/core/AuthenticationProvider;

    iget-object v0, p0, Lzendesk/support/request/RequestModule_ProvidesActionFactoryFactory;->blipsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lzendesk/support/SupportBlipsProvider;

    invoke-static/range {v1 .. v9}, Lzendesk/support/request/RequestModule_ProvidesActionFactoryFactory;->providesActionFactory(Lzendesk/support/RequestProvider;Lzendesk/support/SupportSettingsProvider;Lzendesk/support/UploadProvider;Lzendesk/belvedere/Belvedere;Lzendesk/support/SupportUiStorage;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;Lzendesk/core/AuthenticationProvider;Lzendesk/support/SupportBlipsProvider;)Lzendesk/support/request/ActionFactory;

    move-result-object v0

    return-object v0
.end method
