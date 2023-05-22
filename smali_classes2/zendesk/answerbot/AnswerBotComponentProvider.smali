.class final enum Lzendesk/answerbot/AnswerBotComponentProvider;
.super Ljava/lang/Enum;
.source "AnswerBotComponentProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzendesk/answerbot/AnswerBotComponentProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzendesk/answerbot/AnswerBotComponentProvider;

.field static final ANSWER_BOT_NOT_INITIALIZED_MESSAGE:Ljava/lang/String; = "Cannot create Answer Bot Engine without initializing Answer Bot. Call AnswerBot.INSTANCE.init(...)"

.field public static final enum INSTANCE:Lzendesk/answerbot/AnswerBotComponentProvider;

.field static final LOG_TAG:Ljava/lang/String; = "AnswerBotComponentProvider"

.field static final ZENDESK_NOT_INITIALIZED_MESSAGE:Ljava/lang/String; = "Cannot create Answer Bot Engine without initializing Zendesk. Call Zendesk.INSTANCE.init(...)"


# instance fields
.field private timerModule:Lzendesk/answerbot/TimerModule;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lzendesk/answerbot/AnswerBotComponentProvider;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzendesk/answerbot/AnswerBotComponentProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzendesk/answerbot/AnswerBotComponentProvider;->INSTANCE:Lzendesk/answerbot/AnswerBotComponentProvider;

    const/4 v1, 0x1

    new-array v1, v1, [Lzendesk/answerbot/AnswerBotComponentProvider;

    aput-object v0, v1, v2

    .line 13
    sput-object v1, Lzendesk/answerbot/AnswerBotComponentProvider;->$VALUES:[Lzendesk/answerbot/AnswerBotComponentProvider;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    new-instance p1, Lzendesk/answerbot/TimerModule;

    invoke-direct {p1}, Lzendesk/answerbot/TimerModule;-><init>()V

    iput-object p1, p0, Lzendesk/answerbot/AnswerBotComponentProvider;->timerModule:Lzendesk/answerbot/TimerModule;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzendesk/answerbot/AnswerBotComponentProvider;
    .locals 1

    .line 13
    const-class v0, Lzendesk/answerbot/AnswerBotComponentProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzendesk/answerbot/AnswerBotComponentProvider;

    return-object p0
.end method

.method public static values()[Lzendesk/answerbot/AnswerBotComponentProvider;
    .locals 1

    .line 13
    sget-object v0, Lzendesk/answerbot/AnswerBotComponentProvider;->$VALUES:[Lzendesk/answerbot/AnswerBotComponentProvider;

    invoke-virtual {v0}, [Lzendesk/answerbot/AnswerBotComponentProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzendesk/answerbot/AnswerBotComponentProvider;

    return-object v0
.end method


# virtual methods
.method initForTesting(Lzendesk/answerbot/TimerModule;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotComponentProvider;->timerModule:Lzendesk/answerbot/TimerModule;

    return-void
.end method

.method provideAnswerBot(Lzendesk/core/Zendesk;Lzendesk/answerbot/AnswerBot;)Lzendesk/answerbot/AnswerBotEngine;
    .locals 3

    .line 45
    invoke-virtual {p1}, Lzendesk/core/Zendesk;->coreModule()Lzendesk/core/CoreModule;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "AnswerBotComponentProvider"

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Cannot create Answer Bot Engine without initializing Zendesk. Call Zendesk.INSTANCE.init(...)"

    .line 48
    invoke-static {v2, p2, p1}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 52
    :cond_0
    invoke-virtual {p2}, Lzendesk/answerbot/AnswerBot;->getAnswerBotModule()Lzendesk/answerbot/AnswerBotModule;

    move-result-object p2

    if-nez p2, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Cannot create Answer Bot Engine without initializing Answer Bot. Call AnswerBot.INSTANCE.init(...)"

    .line 55
    invoke-static {v2, p2, p1}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 60
    :cond_1
    invoke-static {}, Lzendesk/answerbot/DaggerAnswerBotConversationComponent;->builder()Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p1}, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;->coreModule(Lzendesk/core/CoreModule;)Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;

    move-result-object p1

    .line 62
    invoke-virtual {p1, p2}, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;->answerBotModule(Lzendesk/answerbot/AnswerBotModule;)Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;

    move-result-object p1

    iget-object p2, p0, Lzendesk/answerbot/AnswerBotComponentProvider;->timerModule:Lzendesk/answerbot/TimerModule;

    .line 63
    invoke-virtual {p1, p2}, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;->timerModule(Lzendesk/answerbot/TimerModule;)Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;->build()Lzendesk/answerbot/AnswerBotConversationComponent;

    move-result-object p1

    .line 65
    invoke-interface {p1}, Lzendesk/answerbot/AnswerBotConversationComponent;->answerBot()Lzendesk/answerbot/AnswerBotEngine;

    move-result-object p1

    return-object p1
.end method

.method provideArticleComponent(Lzendesk/answerbot/AnswerBotArticleConfiguration;)Lzendesk/answerbot/AnswerBotArticleComponent;
    .locals 3

    .line 32
    invoke-static {}, Lzendesk/answerbot/DaggerAnswerBotArticleComponent;->builder()Lzendesk/answerbot/DaggerAnswerBotArticleComponent$Builder;

    move-result-object v0

    sget-object v1, Lzendesk/core/Zendesk;->INSTANCE:Lzendesk/core/Zendesk;

    .line 33
    invoke-virtual {v1}, Lzendesk/core/Zendesk;->coreModule()Lzendesk/core/CoreModule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzendesk/answerbot/DaggerAnswerBotArticleComponent$Builder;->coreModule(Lzendesk/core/CoreModule;)Lzendesk/answerbot/DaggerAnswerBotArticleComponent$Builder;

    move-result-object v0

    sget-object v1, Lzendesk/answerbot/AnswerBot;->INSTANCE:Lzendesk/answerbot/AnswerBot;

    .line 34
    invoke-virtual {v1}, Lzendesk/answerbot/AnswerBot;->getAnswerBotModule()Lzendesk/answerbot/AnswerBotModule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzendesk/answerbot/DaggerAnswerBotArticleComponent$Builder;->answerBotModule(Lzendesk/answerbot/AnswerBotModule;)Lzendesk/answerbot/DaggerAnswerBotArticleComponent$Builder;

    move-result-object v0

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotComponentProvider;->timerModule:Lzendesk/answerbot/TimerModule;

    .line 35
    invoke-virtual {v0, v1}, Lzendesk/answerbot/DaggerAnswerBotArticleComponent$Builder;->timerModule(Lzendesk/answerbot/TimerModule;)Lzendesk/answerbot/DaggerAnswerBotArticleComponent$Builder;

    move-result-object v0

    new-instance v1, Lzendesk/answerbot/AnswerBotArticleModule;

    sget-object v2, Lzendesk/support/Guide;->INSTANCE:Lzendesk/support/Guide;

    .line 38
    invoke-virtual {v2}, Lzendesk/support/Guide;->provider()Lzendesk/support/HelpCenterProvider;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lzendesk/answerbot/AnswerBotArticleModule;-><init>(Lzendesk/answerbot/AnswerBotArticleConfiguration;Lzendesk/support/HelpCenterProvider;)V

    .line 36
    invoke-virtual {v0, v1}, Lzendesk/answerbot/DaggerAnswerBotArticleComponent$Builder;->answerBotArticleModule(Lzendesk/answerbot/AnswerBotArticleModule;)Lzendesk/answerbot/DaggerAnswerBotArticleComponent$Builder;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lzendesk/answerbot/DaggerAnswerBotArticleComponent$Builder;->build()Lzendesk/answerbot/AnswerBotArticleComponent;

    move-result-object p1

    return-object p1
.end method
