.class public final Lzendesk/support/SupportEngineModule_ConfigurationHelperFactory;
.super Ljava/lang/Object;
.source "SupportEngineModule_ConfigurationHelperFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/configurations/ConfigurationHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/support/SupportEngineModule;


# direct methods
.method public constructor <init>(Lzendesk/support/SupportEngineModule;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lzendesk/support/SupportEngineModule_ConfigurationHelperFactory;->module:Lzendesk/support/SupportEngineModule;

    return-void
.end method

.method public static configurationHelper(Lzendesk/support/SupportEngineModule;)Lzendesk/configurations/ConfigurationHelper;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lzendesk/support/SupportEngineModule;->configurationHelper()Lzendesk/configurations/ConfigurationHelper;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/configurations/ConfigurationHelper;

    return-object p0
.end method

.method public static create(Lzendesk/support/SupportEngineModule;)Lzendesk/support/SupportEngineModule_ConfigurationHelperFactory;
    .locals 1

    .line 31
    new-instance v0, Lzendesk/support/SupportEngineModule_ConfigurationHelperFactory;

    invoke-direct {v0, p0}, Lzendesk/support/SupportEngineModule_ConfigurationHelperFactory;-><init>(Lzendesk/support/SupportEngineModule;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lzendesk/support/SupportEngineModule_ConfigurationHelperFactory;->get()Lzendesk/configurations/ConfigurationHelper;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/configurations/ConfigurationHelper;
    .locals 1

    .line 27
    iget-object v0, p0, Lzendesk/support/SupportEngineModule_ConfigurationHelperFactory;->module:Lzendesk/support/SupportEngineModule;

    invoke-static {v0}, Lzendesk/support/SupportEngineModule_ConfigurationHelperFactory;->configurationHelper(Lzendesk/support/SupportEngineModule;)Lzendesk/configurations/ConfigurationHelper;

    move-result-object v0

    return-object v0
.end method
