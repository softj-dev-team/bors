.class public final Lzendesk/support/ServiceModule_ProvidesUploadServiceFactory;
.super Ljava/lang/Object;
.source "ServiceModule_ProvidesUploadServiceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/support/UploadService;",
        ">;"
    }
.end annotation


# instance fields
.field private final restServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/RestServiceProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/RestServiceProvider;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lzendesk/support/ServiceModule_ProvidesUploadServiceFactory;->restServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lzendesk/support/ServiceModule_ProvidesUploadServiceFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/RestServiceProvider;",
            ">;)",
            "Lzendesk/support/ServiceModule_ProvidesUploadServiceFactory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lzendesk/support/ServiceModule_ProvidesUploadServiceFactory;

    invoke-direct {v0, p0}, Lzendesk/support/ServiceModule_ProvidesUploadServiceFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesUploadService(Lzendesk/core/RestServiceProvider;)Lzendesk/support/UploadService;
    .locals 0

    .line 38
    invoke-static {p0}, Lzendesk/support/ServiceModule;->providesUploadService(Lzendesk/core/RestServiceProvider;)Lzendesk/support/UploadService;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/support/UploadService;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lzendesk/support/ServiceModule_ProvidesUploadServiceFactory;->get()Lzendesk/support/UploadService;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/UploadService;
    .locals 1

    .line 29
    iget-object v0, p0, Lzendesk/support/ServiceModule_ProvidesUploadServiceFactory;->restServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/core/RestServiceProvider;

    invoke-static {v0}, Lzendesk/support/ServiceModule_ProvidesUploadServiceFactory;->providesUploadService(Lzendesk/core/RestServiceProvider;)Lzendesk/support/UploadService;

    move-result-object v0

    return-object v0
.end method
