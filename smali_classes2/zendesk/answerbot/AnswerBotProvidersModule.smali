.class Lzendesk/answerbot/AnswerBotProvidersModule;
.super Ljava/lang/Object;
.source "AnswerBotProvidersModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getAnswerBotProvider(Lzendesk/answerbot/AnswerBotService;Lzendesk/answerbot/LocaleProvider;Lzendesk/core/MachineIdStorage;Lzendesk/support/HelpCenterProvider;Lzendesk/answerbot/AnswerBotSettingsProvider;)Lzendesk/answerbot/AnswerBotProvider;
    .locals 7
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 38
    new-instance v6, Lzendesk/answerbot/ZendeskAnswerBotProvider;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lzendesk/answerbot/ZendeskAnswerBotProvider;-><init>(Lzendesk/answerbot/AnswerBotService;Lzendesk/answerbot/LocaleProvider;Lzendesk/core/MachineIdStorage;Lzendesk/support/HelpCenterProvider;Lzendesk/answerbot/AnswerBotSettingsProvider;)V

    return-object v6
.end method

.method getAnswerBotService(Lzendesk/core/RestServiceProvider;)Lzendesk/answerbot/AnswerBotService;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 45
    const-class v0, Lzendesk/answerbot/AnswerBotService;

    const-string v1, "3.0.9"

    const-string v2, "AnswerBot"

    .line 46
    invoke-interface {p1, v0, v1, v2}, Lzendesk/core/RestServiceProvider;->createRestService(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/answerbot/AnswerBotService;

    return-object p1
.end method

.method getAnswerBotSettingsProvider(Lzendesk/core/SettingsProvider;)Lzendesk/answerbot/AnswerBotSettingsProvider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 64
    new-instance v0, Lzendesk/answerbot/ZendeskAnswerBotSettingsProvider;

    invoke-direct {v0, p1}, Lzendesk/answerbot/ZendeskAnswerBotSettingsProvider;-><init>(Lzendesk/core/SettingsProvider;)V

    return-object v0
.end method

.method getAnswerBotShadow(Lzendesk/answerbot/AnswerBotProvider;Lzendesk/answerbot/AnswerBotSettingsProvider;)Lzendesk/answerbot/AnswerBotModule;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 22
    new-instance v0, Lzendesk/answerbot/AnswerBotModule;

    invoke-direct {v0, p1, p2}, Lzendesk/answerbot/AnswerBotModule;-><init>(Lzendesk/answerbot/AnswerBotProvider;Lzendesk/answerbot/AnswerBotSettingsProvider;)V

    return-object v0
.end method

.method getHelpCenterProvider()Lzendesk/support/HelpCenterProvider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 28
    sget-object v0, Lzendesk/support/Guide;->INSTANCE:Lzendesk/support/Guide;

    invoke-virtual {v0}, Lzendesk/support/Guide;->provider()Lzendesk/support/HelpCenterProvider;

    move-result-object v0

    return-object v0
.end method

.method getLocaleProvider(Lzendesk/core/SettingsProvider;)Lzendesk/answerbot/LocaleProvider;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 52
    new-instance v0, Lzendesk/answerbot/LocaleProvider;

    sget-object v1, Lzendesk/support/Guide;->INSTANCE:Lzendesk/support/Guide;

    new-instance v2, Lzendesk/core/ZendeskLocaleConverter;

    invoke-direct {v2}, Lzendesk/core/ZendeskLocaleConverter;-><init>()V

    invoke-direct {v0, v1, p1, v2}, Lzendesk/answerbot/LocaleProvider;-><init>(Lzendesk/support/Guide;Lzendesk/core/SettingsProvider;Lzendesk/core/ZendeskLocaleConverter;)V

    return-object v0
.end method

.method getResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    return-object p1
.end method
