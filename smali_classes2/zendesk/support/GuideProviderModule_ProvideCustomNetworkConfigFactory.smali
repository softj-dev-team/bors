.class public final Lzendesk/support/GuideProviderModule_ProvideCustomNetworkConfigFactory;
.super Ljava/lang/Object;
.source "GuideProviderModule_ProvideCustomNetworkConfigFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/support/HelpCenterCachingNetworkConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private final helpCenterCachingInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/HelpCenterCachingInterceptor;",
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
            "Lzendesk/support/HelpCenterCachingInterceptor;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lzendesk/support/GuideProviderModule_ProvideCustomNetworkConfigFactory;->helpCenterCachingInterceptorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lzendesk/support/GuideProviderModule_ProvideCustomNetworkConfigFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/HelpCenterCachingInterceptor;",
            ">;)",
            "Lzendesk/support/GuideProviderModule_ProvideCustomNetworkConfigFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lzendesk/support/GuideProviderModule_ProvideCustomNetworkConfigFactory;

    invoke-direct {v0, p0}, Lzendesk/support/GuideProviderModule_ProvideCustomNetworkConfigFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideCustomNetworkConfig(Ljava/lang/Object;)Lzendesk/support/HelpCenterCachingNetworkConfig;
    .locals 0

    .line 38
    check-cast p0, Lzendesk/support/HelpCenterCachingInterceptor;

    invoke-static {p0}, Lzendesk/support/GuideProviderModule;->provideCustomNetworkConfig(Lzendesk/support/HelpCenterCachingInterceptor;)Lzendesk/support/HelpCenterCachingNetworkConfig;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/support/HelpCenterCachingNetworkConfig;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lzendesk/support/GuideProviderModule_ProvideCustomNetworkConfigFactory;->get()Lzendesk/support/HelpCenterCachingNetworkConfig;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/HelpCenterCachingNetworkConfig;
    .locals 1

    .line 28
    iget-object v0, p0, Lzendesk/support/GuideProviderModule_ProvideCustomNetworkConfigFactory;->helpCenterCachingInterceptorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lzendesk/support/GuideProviderModule_ProvideCustomNetworkConfigFactory;->provideCustomNetworkConfig(Ljava/lang/Object;)Lzendesk/support/HelpCenterCachingNetworkConfig;

    move-result-object v0

    return-object v0
.end method
