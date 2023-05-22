.class public final Lzendesk/core/CoreModule_GetPushRegistrationProviderFactory;
.super Ljava/lang/Object;
.source "CoreModule_GetPushRegistrationProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/core/PushRegistrationProvider;",
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
    iput-object p1, p0, Lzendesk/core/CoreModule_GetPushRegistrationProviderFactory;->module:Lzendesk/core/CoreModule;

    return-void
.end method

.method public static create(Lzendesk/core/CoreModule;)Lzendesk/core/CoreModule_GetPushRegistrationProviderFactory;
    .locals 1

    .line 30
    new-instance v0, Lzendesk/core/CoreModule_GetPushRegistrationProviderFactory;

    invoke-direct {v0, p0}, Lzendesk/core/CoreModule_GetPushRegistrationProviderFactory;-><init>(Lzendesk/core/CoreModule;)V

    return-object v0
.end method

.method public static getPushRegistrationProvider(Lzendesk/core/CoreModule;)Lzendesk/core/PushRegistrationProvider;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lzendesk/core/CoreModule;->getPushRegistrationProvider()Lzendesk/core/PushRegistrationProvider;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/core/PushRegistrationProvider;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lzendesk/core/CoreModule_GetPushRegistrationProviderFactory;->get()Lzendesk/core/PushRegistrationProvider;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/PushRegistrationProvider;
    .locals 1

    .line 26
    iget-object v0, p0, Lzendesk/core/CoreModule_GetPushRegistrationProviderFactory;->module:Lzendesk/core/CoreModule;

    invoke-static {v0}, Lzendesk/core/CoreModule_GetPushRegistrationProviderFactory;->getPushRegistrationProvider(Lzendesk/core/CoreModule;)Lzendesk/core/PushRegistrationProvider;

    move-result-object v0

    return-object v0
.end method
