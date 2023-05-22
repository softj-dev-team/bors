.class public final Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;
.super Ljava/lang/Object;
.source "ProviderModule_ProvideSupportBlipsProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/support/SupportBlipsProvider;",
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

.field private final module:Lzendesk/support/ProviderModule;


# direct methods
.method public constructor <init>(Lzendesk/support/ProviderModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/ProviderModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/BlipsProvider;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;->module:Lzendesk/support/ProviderModule;

    .line 27
    iput-object p2, p0, Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;->blipsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lzendesk/support/ProviderModule;Ljavax/inject/Provider;)Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/ProviderModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/core/BlipsProvider;",
            ">;)",
            "Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;

    invoke-direct {v0, p0, p1}, Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;-><init>(Lzendesk/support/ProviderModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideSupportBlipsProvider(Lzendesk/support/ProviderModule;Lzendesk/core/BlipsProvider;)Lzendesk/support/SupportBlipsProvider;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lzendesk/support/ProviderModule;->provideSupportBlipsProvider(Lzendesk/core/BlipsProvider;)Lzendesk/support/SupportBlipsProvider;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/support/SupportBlipsProvider;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;->get()Lzendesk/support/SupportBlipsProvider;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/SupportBlipsProvider;
    .locals 2

    .line 32
    iget-object v0, p0, Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;->module:Lzendesk/support/ProviderModule;

    iget-object v1, p0, Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;->blipsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/core/BlipsProvider;

    invoke-static {v0, v1}, Lzendesk/support/ProviderModule_ProvideSupportBlipsProviderFactory;->provideSupportBlipsProvider(Lzendesk/support/ProviderModule;Lzendesk/core/BlipsProvider;)Lzendesk/support/SupportBlipsProvider;

    move-result-object v0

    return-object v0
.end method
