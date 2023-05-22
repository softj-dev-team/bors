.class final Lzendesk/answerbot/LocaleProvider;
.super Ljava/lang/Object;
.source "LocaleProvider.java"


# static fields
.field static final HELP_CENTER_SETTINGS_KEY:Ljava/lang/String; = "help_center"


# instance fields
.field private final guide:Lzendesk/support/Guide;

.field private final localeConverter:Lzendesk/core/ZendeskLocaleConverter;

.field private final settingsProvider:Lzendesk/core/SettingsProvider;


# direct methods
.method constructor <init>(Lzendesk/support/Guide;Lzendesk/core/SettingsProvider;Lzendesk/core/ZendeskLocaleConverter;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lzendesk/answerbot/LocaleProvider;->guide:Lzendesk/support/Guide;

    .line 29
    iput-object p2, p0, Lzendesk/answerbot/LocaleProvider;->settingsProvider:Lzendesk/core/SettingsProvider;

    .line 30
    iput-object p3, p0, Lzendesk/answerbot/LocaleProvider;->localeConverter:Lzendesk/core/ZendeskLocaleConverter;

    return-void
.end method


# virtual methods
.method getLocale(Lcom/zendesk/service/ZendeskCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lzendesk/answerbot/LocaleProvider;->guide:Lzendesk/support/Guide;

    invoke-virtual {v0}, Lzendesk/support/Guide;->getHelpCenterLocaleOverride()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v1, p0, Lzendesk/answerbot/LocaleProvider;->localeConverter:Lzendesk/core/ZendeskLocaleConverter;

    invoke-virtual {v1, v0}, Lzendesk/core/ZendeskLocaleConverter;->toHelpCenterLocaleString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Lcom/zendesk/service/ZendeskCallback;->onSuccess(Ljava/lang/Object;)V

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lzendesk/answerbot/LocaleProvider;->settingsProvider:Lzendesk/core/SettingsProvider;

    const-class v1, Lzendesk/support/HelpCenterSettings;

    new-instance v2, Lzendesk/answerbot/LocaleProvider$1;

    invoke-direct {v2, p0, p1}, Lzendesk/answerbot/LocaleProvider$1;-><init>(Lzendesk/answerbot/LocaleProvider;Lcom/zendesk/service/ZendeskCallback;)V

    const-string p1, "help_center"

    invoke-interface {v0, p1, v1, v2}, Lzendesk/core/SettingsProvider;->getSettingsForSdk(Ljava/lang/String;Ljava/lang/Class;Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method
