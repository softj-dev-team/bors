.class final Lzendesk/core/ZendeskApplicationModule_ProvideExecutorFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "ZendeskApplicationModule_ProvideExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/core/ZendeskApplicationModule_ProvideExecutorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lzendesk/core/ZendeskApplicationModule_ProvideExecutorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lzendesk/core/ZendeskApplicationModule_ProvideExecutorFactory;

    invoke-direct {v0}, Lzendesk/core/ZendeskApplicationModule_ProvideExecutorFactory;-><init>()V

    sput-object v0, Lzendesk/core/ZendeskApplicationModule_ProvideExecutorFactory$InstanceHolder;->INSTANCE:Lzendesk/core/ZendeskApplicationModule_ProvideExecutorFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lzendesk/core/ZendeskApplicationModule_ProvideExecutorFactory;
    .locals 1

    .line 32
    sget-object v0, Lzendesk/core/ZendeskApplicationModule_ProvideExecutorFactory$InstanceHolder;->INSTANCE:Lzendesk/core/ZendeskApplicationModule_ProvideExecutorFactory;

    return-object v0
.end method
