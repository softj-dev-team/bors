.class public final Lzendesk/support/ServiceModule_ProvideZendeskRequestServiceFactory;
.super Ljava/lang/Object;
.source "ServiceModule_ProvideZendeskRequestServiceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/support/ZendeskRequestService;",
        ">;"
    }
.end annotation


# instance fields
.field private final requestServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/RequestService;",
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
            "Lzendesk/support/RequestService;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lzendesk/support/ServiceModule_ProvideZendeskRequestServiceFactory;->requestServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lzendesk/support/ServiceModule_ProvideZendeskRequestServiceFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/RequestService;",
            ">;)",
            "Lzendesk/support/ServiceModule_ProvideZendeskRequestServiceFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lzendesk/support/ServiceModule_ProvideZendeskRequestServiceFactory;

    invoke-direct {v0, p0}, Lzendesk/support/ServiceModule_ProvideZendeskRequestServiceFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideZendeskRequestService(Ljava/lang/Object;)Lzendesk/support/ZendeskRequestService;
    .locals 0

    .line 37
    check-cast p0, Lzendesk/support/RequestService;

    invoke-static {p0}, Lzendesk/support/ServiceModule;->provideZendeskRequestService(Lzendesk/support/RequestService;)Lzendesk/support/ZendeskRequestService;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/support/ZendeskRequestService;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lzendesk/support/ServiceModule_ProvideZendeskRequestServiceFactory;->get()Lzendesk/support/ZendeskRequestService;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/ZendeskRequestService;
    .locals 1

    .line 28
    iget-object v0, p0, Lzendesk/support/ServiceModule_ProvideZendeskRequestServiceFactory;->requestServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lzendesk/support/ServiceModule_ProvideZendeskRequestServiceFactory;->provideZendeskRequestService(Ljava/lang/Object;)Lzendesk/support/ZendeskRequestService;

    move-result-object v0

    return-object v0
.end method
