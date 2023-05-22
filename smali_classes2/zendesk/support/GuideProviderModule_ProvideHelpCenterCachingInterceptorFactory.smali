.class public final Lzendesk/support/GuideProviderModule_ProvideHelpCenterCachingInterceptorFactory;
.super Ljava/lang/Object;
.source "GuideProviderModule_ProvideHelpCenterCachingInterceptorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/GuideProviderModule_ProvideHelpCenterCachingInterceptorFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/support/HelpCenterCachingInterceptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lzendesk/support/GuideProviderModule_ProvideHelpCenterCachingInterceptorFactory;
    .locals 1

    .line 24
    invoke-static {}, Lzendesk/support/GuideProviderModule_ProvideHelpCenterCachingInterceptorFactory$InstanceHolder;->access$000()Lzendesk/support/GuideProviderModule_ProvideHelpCenterCachingInterceptorFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideHelpCenterCachingInterceptor()Lzendesk/support/HelpCenterCachingInterceptor;
    .locals 1

    .line 28
    invoke-static {}, Lzendesk/support/GuideProviderModule;->provideHelpCenterCachingInterceptor()Lzendesk/support/HelpCenterCachingInterceptor;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/HelpCenterCachingInterceptor;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lzendesk/support/GuideProviderModule_ProvideHelpCenterCachingInterceptorFactory;->get()Lzendesk/support/HelpCenterCachingInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/HelpCenterCachingInterceptor;
    .locals 1

    .line 20
    invoke-static {}, Lzendesk/support/GuideProviderModule_ProvideHelpCenterCachingInterceptorFactory;->provideHelpCenterCachingInterceptor()Lzendesk/support/HelpCenterCachingInterceptor;

    move-result-object v0

    return-object v0
.end method
