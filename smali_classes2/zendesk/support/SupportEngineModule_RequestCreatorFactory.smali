.class public final Lzendesk/support/SupportEngineModule_RequestCreatorFactory;
.super Ljava/lang/Object;
.source "SupportEngineModule_RequestCreatorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/support/RequestCreator;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/support/SupportEngineModule;

.field private final requestProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/RequestProvider;",
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
.method public constructor <init>(Lzendesk/support/SupportEngineModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportEngineModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/RequestProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/UploadProvider;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lzendesk/support/SupportEngineModule_RequestCreatorFactory;->module:Lzendesk/support/SupportEngineModule;

    .line 28
    iput-object p2, p0, Lzendesk/support/SupportEngineModule_RequestCreatorFactory;->requestProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lzendesk/support/SupportEngineModule_RequestCreatorFactory;->uploadProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lzendesk/support/SupportEngineModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/support/SupportEngineModule_RequestCreatorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportEngineModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/RequestProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/UploadProvider;",
            ">;)",
            "Lzendesk/support/SupportEngineModule_RequestCreatorFactory;"
        }
    .end annotation

    .line 39
    new-instance v0, Lzendesk/support/SupportEngineModule_RequestCreatorFactory;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/support/SupportEngineModule_RequestCreatorFactory;-><init>(Lzendesk/support/SupportEngineModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static requestCreator(Lzendesk/support/SupportEngineModule;Lzendesk/support/RequestProvider;Lzendesk/support/UploadProvider;)Lzendesk/support/RequestCreator;
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lzendesk/support/SupportEngineModule;->requestCreator(Lzendesk/support/RequestProvider;Lzendesk/support/UploadProvider;)Lzendesk/support/RequestCreator;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/support/RequestCreator;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lzendesk/support/SupportEngineModule_RequestCreatorFactory;->get()Lzendesk/support/RequestCreator;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/RequestCreator;
    .locals 3

    .line 34
    iget-object v0, p0, Lzendesk/support/SupportEngineModule_RequestCreatorFactory;->module:Lzendesk/support/SupportEngineModule;

    iget-object v1, p0, Lzendesk/support/SupportEngineModule_RequestCreatorFactory;->requestProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/RequestProvider;

    iget-object v2, p0, Lzendesk/support/SupportEngineModule_RequestCreatorFactory;->uploadProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzendesk/support/UploadProvider;

    invoke-static {v0, v1, v2}, Lzendesk/support/SupportEngineModule_RequestCreatorFactory;->requestCreator(Lzendesk/support/SupportEngineModule;Lzendesk/support/RequestProvider;Lzendesk/support/UploadProvider;)Lzendesk/support/RequestCreator;

    move-result-object v0

    return-object v0
.end method
