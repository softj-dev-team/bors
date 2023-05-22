.class public final Lzendesk/support/GuideProviderModule_ProvideZendeskHelpCenterServiceFactory;
.super Ljava/lang/Object;
.source "GuideProviderModule_ProvideZendeskHelpCenterServiceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/support/ZendeskHelpCenterService;",
        ">;"
    }
.end annotation


# instance fields
.field private final helpCenterServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/support/HelpCenterService;",
            ">;"
        }
    .end annotation
.end field

.field private final localeConverterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ZendeskLocaleConverter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/HelpCenterService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ZendeskLocaleConverter;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lzendesk/support/GuideProviderModule_ProvideZendeskHelpCenterServiceFactory;->helpCenterServiceProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p2, p0, Lzendesk/support/GuideProviderModule_ProvideZendeskHelpCenterServiceFactory;->localeConverterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/support/GuideProviderModule_ProvideZendeskHelpCenterServiceFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lzendesk/support/HelpCenterService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/ZendeskLocaleConverter;",
            ">;)",
            "Lzendesk/support/GuideProviderModule_ProvideZendeskHelpCenterServiceFactory;"
        }
    .end annotation

    .line 39
    new-instance v0, Lzendesk/support/GuideProviderModule_ProvideZendeskHelpCenterServiceFactory;

    invoke-direct {v0, p0, p1}, Lzendesk/support/GuideProviderModule_ProvideZendeskHelpCenterServiceFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideZendeskHelpCenterService(Ljava/lang/Object;Lzendesk/core/ZendeskLocaleConverter;)Lzendesk/support/ZendeskHelpCenterService;
    .locals 0

    .line 44
    check-cast p0, Lzendesk/support/HelpCenterService;

    invoke-static {p0, p1}, Lzendesk/support/GuideProviderModule;->provideZendeskHelpCenterService(Lzendesk/support/HelpCenterService;Lzendesk/core/ZendeskLocaleConverter;)Lzendesk/support/ZendeskHelpCenterService;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/support/ZendeskHelpCenterService;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lzendesk/support/GuideProviderModule_ProvideZendeskHelpCenterServiceFactory;->get()Lzendesk/support/ZendeskHelpCenterService;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/ZendeskHelpCenterService;
    .locals 2

    .line 33
    iget-object v0, p0, Lzendesk/support/GuideProviderModule_ProvideZendeskHelpCenterServiceFactory;->helpCenterServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/GuideProviderModule_ProvideZendeskHelpCenterServiceFactory;->localeConverterProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/core/ZendeskLocaleConverter;

    invoke-static {v0, v1}, Lzendesk/support/GuideProviderModule_ProvideZendeskHelpCenterServiceFactory;->provideZendeskHelpCenterService(Ljava/lang/Object;Lzendesk/core/ZendeskLocaleConverter;)Lzendesk/support/ZendeskHelpCenterService;

    move-result-object v0

    return-object v0
.end method
