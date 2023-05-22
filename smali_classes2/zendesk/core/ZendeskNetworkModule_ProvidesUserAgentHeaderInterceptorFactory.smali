.class public final Lzendesk/core/ZendeskNetworkModule_ProvidesUserAgentHeaderInterceptorFactory;
.super Ljava/lang/Object;
.source "ZendeskNetworkModule_ProvidesUserAgentHeaderInterceptorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/core/UserAgentAndClientHeadersInterceptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/core/ZendeskNetworkModule;


# direct methods
.method public constructor <init>(Lzendesk/core/ZendeskNetworkModule;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lzendesk/core/ZendeskNetworkModule_ProvidesUserAgentHeaderInterceptorFactory;->module:Lzendesk/core/ZendeskNetworkModule;

    return-void
.end method

.method public static create(Lzendesk/core/ZendeskNetworkModule;)Lzendesk/core/ZendeskNetworkModule_ProvidesUserAgentHeaderInterceptorFactory;
    .locals 1

    .line 32
    new-instance v0, Lzendesk/core/ZendeskNetworkModule_ProvidesUserAgentHeaderInterceptorFactory;

    invoke-direct {v0, p0}, Lzendesk/core/ZendeskNetworkModule_ProvidesUserAgentHeaderInterceptorFactory;-><init>(Lzendesk/core/ZendeskNetworkModule;)V

    return-object v0
.end method

.method public static providesUserAgentHeaderInterceptor(Lzendesk/core/ZendeskNetworkModule;)Lzendesk/core/UserAgentAndClientHeadersInterceptor;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lzendesk/core/ZendeskNetworkModule;->providesUserAgentHeaderInterceptor()Lzendesk/core/UserAgentAndClientHeadersInterceptor;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/core/UserAgentAndClientHeadersInterceptor;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lzendesk/core/ZendeskNetworkModule_ProvidesUserAgentHeaderInterceptorFactory;->get()Lzendesk/core/UserAgentAndClientHeadersInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/UserAgentAndClientHeadersInterceptor;
    .locals 1

    .line 27
    iget-object v0, p0, Lzendesk/core/ZendeskNetworkModule_ProvidesUserAgentHeaderInterceptorFactory;->module:Lzendesk/core/ZendeskNetworkModule;

    invoke-static {v0}, Lzendesk/core/ZendeskNetworkModule_ProvidesUserAgentHeaderInterceptorFactory;->providesUserAgentHeaderInterceptor(Lzendesk/core/ZendeskNetworkModule;)Lzendesk/core/UserAgentAndClientHeadersInterceptor;

    move-result-object v0

    return-object v0
.end method
