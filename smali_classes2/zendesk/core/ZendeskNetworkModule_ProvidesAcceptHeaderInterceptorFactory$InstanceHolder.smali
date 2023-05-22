.class final Lzendesk/core/ZendeskNetworkModule_ProvidesAcceptHeaderInterceptorFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "ZendeskNetworkModule_ProvidesAcceptHeaderInterceptorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/core/ZendeskNetworkModule_ProvidesAcceptHeaderInterceptorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lzendesk/core/ZendeskNetworkModule_ProvidesAcceptHeaderInterceptorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lzendesk/core/ZendeskNetworkModule_ProvidesAcceptHeaderInterceptorFactory;

    invoke-direct {v0}, Lzendesk/core/ZendeskNetworkModule_ProvidesAcceptHeaderInterceptorFactory;-><init>()V

    sput-object v0, Lzendesk/core/ZendeskNetworkModule_ProvidesAcceptHeaderInterceptorFactory$InstanceHolder;->INSTANCE:Lzendesk/core/ZendeskNetworkModule_ProvidesAcceptHeaderInterceptorFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lzendesk/core/ZendeskNetworkModule_ProvidesAcceptHeaderInterceptorFactory;
    .locals 1

    .line 31
    sget-object v0, Lzendesk/core/ZendeskNetworkModule_ProvidesAcceptHeaderInterceptorFactory$InstanceHolder;->INSTANCE:Lzendesk/core/ZendeskNetworkModule_ProvidesAcceptHeaderInterceptorFactory;

    return-object v0
.end method
