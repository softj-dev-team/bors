.class public final Lzendesk/support/SupportModule_ProvidesUploadProviderFactory;
.super Ljava/lang/Object;
.source "SupportModule_ProvidesUploadProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/support/UploadProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/support/SupportModule;


# direct methods
.method public constructor <init>(Lzendesk/support/SupportModule;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lzendesk/support/SupportModule_ProvidesUploadProviderFactory;->module:Lzendesk/support/SupportModule;

    return-void
.end method

.method public static create(Lzendesk/support/SupportModule;)Lzendesk/support/SupportModule_ProvidesUploadProviderFactory;
    .locals 1

    .line 30
    new-instance v0, Lzendesk/support/SupportModule_ProvidesUploadProviderFactory;

    invoke-direct {v0, p0}, Lzendesk/support/SupportModule_ProvidesUploadProviderFactory;-><init>(Lzendesk/support/SupportModule;)V

    return-object v0
.end method

.method public static providesUploadProvider(Lzendesk/support/SupportModule;)Lzendesk/support/UploadProvider;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lzendesk/support/SupportModule;->providesUploadProvider()Lzendesk/support/UploadProvider;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/support/UploadProvider;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lzendesk/support/SupportModule_ProvidesUploadProviderFactory;->get()Lzendesk/support/UploadProvider;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/UploadProvider;
    .locals 1

    .line 26
    iget-object v0, p0, Lzendesk/support/SupportModule_ProvidesUploadProviderFactory;->module:Lzendesk/support/SupportModule;

    invoke-static {v0}, Lzendesk/support/SupportModule_ProvidesUploadProviderFactory;->providesUploadProvider(Lzendesk/support/SupportModule;)Lzendesk/support/UploadProvider;

    move-result-object v0

    return-object v0
.end method
