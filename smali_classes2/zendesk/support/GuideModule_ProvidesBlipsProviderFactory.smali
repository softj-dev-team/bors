.class public final Lzendesk/support/GuideModule_ProvidesBlipsProviderFactory;
.super Ljava/lang/Object;
.source "GuideModule_ProvidesBlipsProviderFactory.java"

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
.field private final module:Lzendesk/support/GuideModule;


# direct methods
.method public constructor <init>(Lzendesk/support/GuideModule;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lzendesk/support/GuideModule_ProvidesBlipsProviderFactory;->module:Lzendesk/support/GuideModule;

    return-void
.end method

.method public static create(Lzendesk/support/GuideModule;)Lzendesk/support/GuideModule_ProvidesBlipsProviderFactory;
    .locals 1

    .line 30
    new-instance v0, Lzendesk/support/GuideModule_ProvidesBlipsProviderFactory;

    invoke-direct {v0, p0}, Lzendesk/support/GuideModule_ProvidesBlipsProviderFactory;-><init>(Lzendesk/support/GuideModule;)V

    return-object v0
.end method

.method public static providesBlipsProvider(Lzendesk/support/GuideModule;)Lzendesk/support/HelpCenterBlipsProvider;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lzendesk/support/GuideModule;->providesBlipsProvider()Lzendesk/support/HelpCenterBlipsProvider;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/support/HelpCenterBlipsProvider;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lzendesk/support/GuideModule_ProvidesBlipsProviderFactory;->get()Lzendesk/support/HelpCenterBlipsProvider;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/HelpCenterBlipsProvider;
    .locals 1

    .line 26
    iget-object v0, p0, Lzendesk/support/GuideModule_ProvidesBlipsProviderFactory;->module:Lzendesk/support/GuideModule;

    invoke-static {v0}, Lzendesk/support/GuideModule_ProvidesBlipsProviderFactory;->providesBlipsProvider(Lzendesk/support/GuideModule;)Lzendesk/support/HelpCenterBlipsProvider;

    move-result-object v0

    return-object v0
.end method
