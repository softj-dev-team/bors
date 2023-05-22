.class Lzendesk/support/ZendeskSupportSettingsProvider;
.super Ljava/lang/Object;
.source "ZendeskSupportSettingsProvider.java"

# interfaces
.implements Lzendesk/support/SupportSettingsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings;
    }
.end annotation


# static fields
.field private static final HELP_CENTER_KEY:Ljava/lang/String; = "help_center"

.field private static final LOG_TAG:Ljava/lang/String; = "ZendeskSettingsProvider"

.field static final SUPPORT_KEY:Ljava/lang/String; = "support"


# instance fields
.field private final deviceLocale:Ljava/util/Locale;

.field private final localeConverter:Lzendesk/core/ZendeskLocaleConverter;

.field private final sdkSettingsProvider:Lzendesk/core/SettingsProvider;


# direct methods
.method constructor <init>(Lzendesk/core/SettingsProvider;Lzendesk/core/ZendeskLocaleConverter;Ljava/util/Locale;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lzendesk/support/ZendeskSupportSettingsProvider;->sdkSettingsProvider:Lzendesk/core/SettingsProvider;

    .line 39
    iput-object p2, p0, Lzendesk/support/ZendeskSupportSettingsProvider;->localeConverter:Lzendesk/core/ZendeskLocaleConverter;

    .line 40
    iput-object p3, p0, Lzendesk/support/ZendeskSupportSettingsProvider;->deviceLocale:Ljava/util/Locale;

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/ZendeskSupportSettingsProvider;)Lzendesk/core/SettingsProvider;
    .locals 0

    .line 25
    iget-object p0, p0, Lzendesk/support/ZendeskSupportSettingsProvider;->sdkSettingsProvider:Lzendesk/core/SettingsProvider;

    return-object p0
.end method

.method static synthetic access$200(Lzendesk/support/ZendeskSupportSettingsProvider;)Ljava/util/Locale;
    .locals 0

    .line 25
    iget-object p0, p0, Lzendesk/support/ZendeskSupportSettingsProvider;->deviceLocale:Ljava/util/Locale;

    return-object p0
.end method

.method static synthetic access$300(Lzendesk/support/ZendeskSupportSettingsProvider;)Lzendesk/core/ZendeskLocaleConverter;
    .locals 0

    .line 25
    iget-object p0, p0, Lzendesk/support/ZendeskSupportSettingsProvider;->localeConverter:Lzendesk/core/ZendeskLocaleConverter;

    return-object p0
.end method


# virtual methods
.method public getSettings(Lcom/zendesk/service/ZendeskCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/support/SupportSdkSettings;",
            ">;)V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lzendesk/support/ZendeskSupportSettingsProvider;->sdkSettingsProvider:Lzendesk/core/SettingsProvider;

    const-class v1, Lzendesk/support/SupportSettings;

    new-instance v2, Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings;

    invoke-direct {v2, p0, p1}, Lzendesk/support/ZendeskSupportSettingsProvider$LoadSupportSettings;-><init>(Lzendesk/support/ZendeskSupportSettingsProvider;Lcom/zendesk/service/ZendeskCallback;)V

    const-string p1, "support"

    invoke-interface {v0, p1, v1, v2}, Lzendesk/core/SettingsProvider;->getSettingsForSdk(Ljava/lang/String;Ljava/lang/Class;Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method
