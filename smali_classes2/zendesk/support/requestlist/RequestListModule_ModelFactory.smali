.class public final Lzendesk/support/requestlist/RequestListModule_ModelFactory;
.super Ljava/lang/Object;
.source "RequestListModule_ModelFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/support/requestlist/RequestListModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final blipsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportBlipsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final memoryCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/MemoryCache;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lzendesk/support/requestlist/RequestListModule;

.field private final requestInfoDataSourceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/requestlist/RequestInfoDataSource$Repository;",
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
.method public constructor <init>(Lzendesk/support/requestlist/RequestListModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/requestlist/RequestListModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/requestlist/RequestInfoDataSource$Repository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/MemoryCache;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportBlipsProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportSettingsProvider;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lzendesk/support/requestlist/RequestListModule_ModelFactory;->module:Lzendesk/support/requestlist/RequestListModule;

    .line 37
    iput-object p2, p0, Lzendesk/support/requestlist/RequestListModule_ModelFactory;->requestInfoDataSourceProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p3, p0, Lzendesk/support/requestlist/RequestListModule_ModelFactory;->memoryCacheProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p4, p0, Lzendesk/support/requestlist/RequestListModule_ModelFactory;->blipsProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p5, p0, Lzendesk/support/requestlist/RequestListModule_ModelFactory;->settingsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lzendesk/support/requestlist/RequestListModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/support/requestlist/RequestListModule_ModelFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/requestlist/RequestListModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/requestlist/RequestInfoDataSource$Repository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/MemoryCache;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportBlipsProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/SupportSettingsProvider;",
            ">;)",
            "Lzendesk/support/requestlist/RequestListModule_ModelFactory;"
        }
    .end annotation

    .line 52
    new-instance v6, Lzendesk/support/requestlist/RequestListModule_ModelFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lzendesk/support/requestlist/RequestListModule_ModelFactory;-><init>(Lzendesk/support/requestlist/RequestListModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static model(Lzendesk/support/requestlist/RequestListModule;Lzendesk/support/requestlist/RequestInfoDataSource$Repository;Lzendesk/core/MemoryCache;Lzendesk/support/SupportBlipsProvider;Lzendesk/support/SupportSettingsProvider;)Lzendesk/support/requestlist/RequestListModel;
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2, p3, p4}, Lzendesk/support/requestlist/RequestListModule;->model(Lzendesk/support/requestlist/RequestInfoDataSource$Repository;Lzendesk/core/MemoryCache;Lzendesk/support/SupportBlipsProvider;Lzendesk/support/SupportSettingsProvider;)Lzendesk/support/requestlist/RequestListModel;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/support/requestlist/RequestListModel;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lzendesk/support/requestlist/RequestListModule_ModelFactory;->get()Lzendesk/support/requestlist/RequestListModel;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/requestlist/RequestListModel;
    .locals 5

    .line 45
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListModule_ModelFactory;->module:Lzendesk/support/requestlist/RequestListModule;

    iget-object v1, p0, Lzendesk/support/requestlist/RequestListModule_ModelFactory;->requestInfoDataSourceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/requestlist/RequestInfoDataSource$Repository;

    iget-object v2, p0, Lzendesk/support/requestlist/RequestListModule_ModelFactory;->memoryCacheProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/core/MemoryCache;

    iget-object v3, p0, Lzendesk/support/requestlist/RequestListModule_ModelFactory;->blipsProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/support/SupportBlipsProvider;

    iget-object v4, p0, Lzendesk/support/requestlist/RequestListModule_ModelFactory;->settingsProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzendesk/support/SupportSettingsProvider;

    invoke-static {v0, v1, v2, v3, v4}, Lzendesk/support/requestlist/RequestListModule_ModelFactory;->model(Lzendesk/support/requestlist/RequestListModule;Lzendesk/support/requestlist/RequestInfoDataSource$Repository;Lzendesk/core/MemoryCache;Lzendesk/support/SupportBlipsProvider;Lzendesk/support/SupportSettingsProvider;)Lzendesk/support/requestlist/RequestListModel;

    move-result-object v0

    return-object v0
.end method
