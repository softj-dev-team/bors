.class final Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "ZendeskStorageModule_ProvideMemoryCacheFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory;

    invoke-direct {v0}, Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory;-><init>()V

    sput-object v0, Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory$InstanceHolder;->INSTANCE:Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory;
    .locals 1

    .line 31
    sget-object v0, Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory$InstanceHolder;->INSTANCE:Lzendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory;

    return-object v0
.end method
