.class final Lzendesk/support/GuideProviderModule_ProvideZendeskLocaleConverterFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "GuideProviderModule_ProvideZendeskLocaleConverterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/GuideProviderModule_ProvideZendeskLocaleConverterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lzendesk/support/GuideProviderModule_ProvideZendeskLocaleConverterFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lzendesk/support/GuideProviderModule_ProvideZendeskLocaleConverterFactory;

    invoke-direct {v0}, Lzendesk/support/GuideProviderModule_ProvideZendeskLocaleConverterFactory;-><init>()V

    sput-object v0, Lzendesk/support/GuideProviderModule_ProvideZendeskLocaleConverterFactory$InstanceHolder;->INSTANCE:Lzendesk/support/GuideProviderModule_ProvideZendeskLocaleConverterFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lzendesk/support/GuideProviderModule_ProvideZendeskLocaleConverterFactory;
    .locals 1

    .line 32
    sget-object v0, Lzendesk/support/GuideProviderModule_ProvideZendeskLocaleConverterFactory$InstanceHolder;->INSTANCE:Lzendesk/support/GuideProviderModule_ProvideZendeskLocaleConverterFactory;

    return-object v0
.end method
