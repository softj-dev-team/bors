.class Lzendesk/answerbot/AnswerBotModule;
.super Ljava/lang/Object;
.source "AnswerBotModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# instance fields
.field private final answerBotProvider:Lzendesk/answerbot/AnswerBotProvider;

.field private final answerBotSettingsProvider:Lzendesk/answerbot/AnswerBotSettingsProvider;


# direct methods
.method constructor <init>(Lzendesk/answerbot/AnswerBotProvider;Lzendesk/answerbot/AnswerBotSettingsProvider;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p2, p0, Lzendesk/answerbot/AnswerBotModule;->answerBotSettingsProvider:Lzendesk/answerbot/AnswerBotSettingsProvider;

    .line 16
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotModule;->answerBotProvider:Lzendesk/answerbot/AnswerBotProvider;

    return-void
.end method


# virtual methods
.method public answerBotProvider()Lzendesk/answerbot/AnswerBotProvider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 21
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModule;->answerBotProvider:Lzendesk/answerbot/AnswerBotProvider;

    return-object v0
.end method

.method answerBotSettingsProvider()Lzendesk/answerbot/AnswerBotSettingsProvider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 26
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModule;->answerBotSettingsProvider:Lzendesk/answerbot/AnswerBotSettingsProvider;

    return-object v0
.end method
