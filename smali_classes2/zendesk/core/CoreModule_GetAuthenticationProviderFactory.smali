.class public final Lzendesk/core/CoreModule_GetAuthenticationProviderFactory;
.super Ljava/lang/Object;
.source "CoreModule_GetAuthenticationProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/core/AuthenticationProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/core/CoreModule;


# direct methods
.method public constructor <init>(Lzendesk/core/CoreModule;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lzendesk/core/CoreModule_GetAuthenticationProviderFactory;->module:Lzendesk/core/CoreModule;

    return-void
.end method

.method public static create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetAuthenticationProviderFactory;
    .locals 1

    .line 30
    new-instance v0, Lzendesk/core/CoreModule_GetAuthenticationProviderFactory;

    invoke-direct {v0, p0}, Lzendesk/core/CoreModule_GetAuthenticationProviderFactory;-><init>(Lzendesk/core/CoreModule;)V

    return-object v0
.end method

.method public static getAuthenticationProvider(Lzendesk/core/CoreModule;)Lzendesk/core/AuthenticationProvider;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lzendesk/core/CoreModule;->getAuthenticationProvider()Lzendesk/core/AuthenticationProvider;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/core/AuthenticationProvider;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lzendesk/core/CoreModule_GetAuthenticationProviderFactory;->get()Lzendesk/core/AuthenticationProvider;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/AuthenticationProvider;
    .locals 1

    .line 26
    iget-object v0, p0, Lzendesk/core/CoreModule_GetAuthenticationProviderFactory;->module:Lzendesk/core/CoreModule;

    invoke-static {v0}, Lzendesk/core/CoreModule_GetAuthenticationProviderFactory;->getAuthenticationProvider(Lzendesk/core/CoreModule;)Lzendesk/core/AuthenticationProvider;

    move-result-object v0

    return-object v0
.end method
