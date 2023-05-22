.class public final Lzendesk/core/ZendeskApplicationModule_ProvideZendeskLocaleConverterFactory;
.super Ljava/lang/Object;
.source "ZendeskApplicationModule_ProvideZendeskLocaleConverterFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/core/ZendeskLocaleConverter;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/core/ZendeskApplicationModule;


# direct methods
.method public constructor <init>(Lzendesk/core/ZendeskApplicationModule;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lzendesk/core/ZendeskApplicationModule_ProvideZendeskLocaleConverterFactory;->module:Lzendesk/core/ZendeskApplicationModule;

    return-void
.end method

.method public static create(Lzendesk/core/ZendeskApplicationModule;)Lzendesk/core/ZendeskApplicationModule_ProvideZendeskLocaleConverterFactory;
    .locals 1

    .line 32
    new-instance v0, Lzendesk/core/ZendeskApplicationModule_ProvideZendeskLocaleConverterFactory;

    invoke-direct {v0, p0}, Lzendesk/core/ZendeskApplicationModule_ProvideZendeskLocaleConverterFactory;-><init>(Lzendesk/core/ZendeskApplicationModule;)V

    return-object v0
.end method

.method public static provideZendeskLocaleConverter(Lzendesk/core/ZendeskApplicationModule;)Lzendesk/core/ZendeskLocaleConverter;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lzendesk/core/ZendeskApplicationModule;->provideZendeskLocaleConverter()Lzendesk/core/ZendeskLocaleConverter;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/core/ZendeskLocaleConverter;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lzendesk/core/ZendeskApplicationModule_ProvideZendeskLocaleConverterFactory;->get()Lzendesk/core/ZendeskLocaleConverter;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/ZendeskLocaleConverter;
    .locals 1

    .line 27
    iget-object v0, p0, Lzendesk/core/ZendeskApplicationModule_ProvideZendeskLocaleConverterFactory;->module:Lzendesk/core/ZendeskApplicationModule;

    invoke-static {v0}, Lzendesk/core/ZendeskApplicationModule_ProvideZendeskLocaleConverterFactory;->provideZendeskLocaleConverter(Lzendesk/core/ZendeskApplicationModule;)Lzendesk/core/ZendeskLocaleConverter;

    move-result-object v0

    return-object v0
.end method
