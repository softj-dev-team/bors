.class final Lzendesk/support/GuideProviderModule_ProvideHelpCenterSessionCacheFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "GuideProviderModule_ProvideHelpCenterSessionCacheFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/GuideProviderModule_ProvideHelpCenterSessionCacheFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lzendesk/support/GuideProviderModule_ProvideHelpCenterSessionCacheFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lzendesk/support/GuideProviderModule_ProvideHelpCenterSessionCacheFactory;

    invoke-direct {v0}, Lzendesk/support/GuideProviderModule_ProvideHelpCenterSessionCacheFactory;-><init>()V

    sput-object v0, Lzendesk/support/GuideProviderModule_ProvideHelpCenterSessionCacheFactory$InstanceHolder;->INSTANCE:Lzendesk/support/GuideProviderModule_ProvideHelpCenterSessionCacheFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lzendesk/support/GuideProviderModule_ProvideHelpCenterSessionCacheFactory;
    .locals 1

    .line 31
    sget-object v0, Lzendesk/support/GuideProviderModule_ProvideHelpCenterSessionCacheFactory$InstanceHolder;->INSTANCE:Lzendesk/support/GuideProviderModule_ProvideHelpCenterSessionCacheFactory;

    return-object v0
.end method
