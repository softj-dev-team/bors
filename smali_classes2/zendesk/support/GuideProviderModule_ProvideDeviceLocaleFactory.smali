.class public final Lzendesk/support/GuideProviderModule_ProvideDeviceLocaleFactory;
.super Ljava/lang/Object;
.source "GuideProviderModule_ProvideDeviceLocaleFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/Locale;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/support/GuideProviderModule;


# direct methods
.method public constructor <init>(Lzendesk/support/GuideProviderModule;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lzendesk/support/GuideProviderModule_ProvideDeviceLocaleFactory;->module:Lzendesk/support/GuideProviderModule;

    return-void
.end method

.method public static create(Lzendesk/support/GuideProviderModule;)Lzendesk/support/GuideProviderModule_ProvideDeviceLocaleFactory;
    .locals 1

    .line 31
    new-instance v0, Lzendesk/support/GuideProviderModule_ProvideDeviceLocaleFactory;

    invoke-direct {v0, p0}, Lzendesk/support/GuideProviderModule_ProvideDeviceLocaleFactory;-><init>(Lzendesk/support/GuideProviderModule;)V

    return-object v0
.end method

.method public static provideDeviceLocale(Lzendesk/support/GuideProviderModule;)Ljava/util/Locale;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lzendesk/support/GuideProviderModule;->provideDeviceLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Locale;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lzendesk/support/GuideProviderModule_ProvideDeviceLocaleFactory;->get()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Locale;
    .locals 1

    .line 27
    iget-object v0, p0, Lzendesk/support/GuideProviderModule_ProvideDeviceLocaleFactory;->module:Lzendesk/support/GuideProviderModule;

    invoke-static {v0}, Lzendesk/support/GuideProviderModule_ProvideDeviceLocaleFactory;->provideDeviceLocale(Lzendesk/support/GuideProviderModule;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method
