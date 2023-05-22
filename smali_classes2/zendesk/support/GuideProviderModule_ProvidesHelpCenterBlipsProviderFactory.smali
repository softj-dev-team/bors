.class public final Lzendesk/support/GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory;
.super Ljava/lang/Object;
.source "GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/support/HelpCenterBlipsProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final blipsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/core/BlipsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final localeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lzendesk/support/GuideProviderModule;


# direct methods
.method public constructor <init>(Lzendesk/support/GuideProviderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/GuideProviderModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/BlipsProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Locale;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory;->module:Lzendesk/support/GuideProviderModule;

    .line 30
    iput-object p2, p0, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory;->blipsProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory;->localeProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lzendesk/support/GuideProviderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/support/GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/GuideProviderModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/BlipsProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Locale;",
            ">;)",
            "Lzendesk/support/GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory;"
        }
    .end annotation

    .line 42
    new-instance v0, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory;-><init>(Lzendesk/support/GuideProviderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesHelpCenterBlipsProvider(Lzendesk/support/GuideProviderModule;Lzendesk/core/BlipsProvider;Ljava/util/Locale;)Lzendesk/support/HelpCenterBlipsProvider;
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Lzendesk/support/GuideProviderModule;->providesHelpCenterBlipsProvider(Lzendesk/core/BlipsProvider;Ljava/util/Locale;)Lzendesk/support/HelpCenterBlipsProvider;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/support/HelpCenterBlipsProvider;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory;->get()Lzendesk/support/HelpCenterBlipsProvider;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/HelpCenterBlipsProvider;
    .locals 3

    .line 36
    iget-object v0, p0, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory;->module:Lzendesk/support/GuideProviderModule;

    iget-object v1, p0, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory;->blipsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/core/BlipsProvider;

    iget-object v2, p0, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory;->localeProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    invoke-static {v0, v1, v2}, Lzendesk/support/GuideProviderModule_ProvidesHelpCenterBlipsProviderFactory;->providesHelpCenterBlipsProvider(Lzendesk/support/GuideProviderModule;Lzendesk/core/BlipsProvider;Ljava/util/Locale;)Lzendesk/support/HelpCenterBlipsProvider;

    move-result-object v0

    return-object v0
.end method
