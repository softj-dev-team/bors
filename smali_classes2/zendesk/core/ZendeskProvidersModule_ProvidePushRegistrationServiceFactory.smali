.class public final Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationServiceFactory;
.super Ljava/lang/Object;
.source "ZendeskProvidersModule_ProvidePushRegistrationServiceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/core/PushRegistrationService;",
        ">;"
    }
.end annotation


# instance fields
.field private final retrofitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
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
            "Lretrofit2/Retrofit;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationServiceFactory;->retrofitProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationServiceFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;)",
            "Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationServiceFactory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationServiceFactory;

    invoke-direct {v0, p0}, Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationServiceFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providePushRegistrationService(Lretrofit2/Retrofit;)Lzendesk/core/PushRegistrationService;
    .locals 0

    .line 38
    invoke-static {p0}, Lzendesk/core/ZendeskProvidersModule;->providePushRegistrationService(Lretrofit2/Retrofit;)Lzendesk/core/PushRegistrationService;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/core/PushRegistrationService;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationServiceFactory;->get()Lzendesk/core/PushRegistrationService;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/PushRegistrationService;
    .locals 1

    .line 29
    iget-object v0, p0, Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationServiceFactory;->retrofitProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit2/Retrofit;

    invoke-static {v0}, Lzendesk/core/ZendeskProvidersModule_ProvidePushRegistrationServiceFactory;->providePushRegistrationService(Lretrofit2/Retrofit;)Lzendesk/core/PushRegistrationService;

    move-result-object v0

    return-object v0
.end method
