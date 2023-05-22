.class public final enum Lzendesk/answerbot/AnswerBot;
.super Ljava/lang/Enum;
.source "AnswerBot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzendesk/answerbot/AnswerBot;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzendesk/answerbot/AnswerBot;

.field static final AGENT_ID:Ljava/lang/String; = "ANSWER_BOT"

.field public static final enum INSTANCE:Lzendesk/answerbot/AnswerBot;

.field private static final LOG_TAG:Ljava/lang/String; = "AnswerBot"

.field static final NOT_INITIALIZED_LOG:Ljava/lang/String; = "Answer Bot SDK needs to be initialized first. Call AnswerBot.INSTANCE.init(...)"

.field static final USER_AGENT_VARIANT:Ljava/lang/String; = "AnswerBot"


# instance fields
.field answerBotModule:Lzendesk/answerbot/AnswerBotModule;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private coreModule:Lzendesk/core/CoreModule;

.field private initialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lzendesk/answerbot/AnswerBot;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzendesk/answerbot/AnswerBot;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzendesk/answerbot/AnswerBot;->INSTANCE:Lzendesk/answerbot/AnswerBot;

    const/4 v1, 0x1

    new-array v1, v1, [Lzendesk/answerbot/AnswerBot;

    aput-object v0, v1, v2

    .line 22
    sput-object v1, Lzendesk/answerbot/AnswerBot;->$VALUES:[Lzendesk/answerbot/AnswerBot;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lzendesk/answerbot/AnswerBot;->initialized:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzendesk/answerbot/AnswerBot;
    .locals 1

    .line 22
    const-class v0, Lzendesk/answerbot/AnswerBot;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzendesk/answerbot/AnswerBot;

    return-object p0
.end method

.method public static values()[Lzendesk/answerbot/AnswerBot;
    .locals 1

    .line 22
    sget-object v0, Lzendesk/answerbot/AnswerBot;->$VALUES:[Lzendesk/answerbot/AnswerBot;

    invoke-virtual {v0}, [Lzendesk/answerbot/AnswerBot;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzendesk/answerbot/AnswerBot;

    return-object v0
.end method


# virtual methods
.method getAnswerBotModule()Lzendesk/answerbot/AnswerBotModule;
    .locals 4

    .line 89
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBot;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "AnswerBot"

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Answer Bot SDK needs to be initialized first. Call AnswerBot.INSTANCE.init(...)"

    .line 90
    invoke-static {v3, v2, v0}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 94
    :cond_0
    sget-object v0, Lzendesk/core/Zendesk;->INSTANCE:Lzendesk/core/Zendesk;

    invoke-virtual {v0}, Lzendesk/core/Zendesk;->getIdentity()Lzendesk/core/Identity;

    move-result-object v0

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Cannot use Answer Bot SDK without providing an identity. Call Zendesk.INSTANCE.setIdentity(...)"

    .line 95
    invoke-static {v3, v2, v0}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 100
    :cond_1
    iget-object v0, p0, Lzendesk/answerbot/AnswerBot;->answerBotModule:Lzendesk/answerbot/AnswerBotModule;

    if-nez v0, :cond_2

    .line 102
    invoke-static {}, Lzendesk/answerbot/DaggerAnswerBotProvidersComponent;->builder()Lzendesk/answerbot/DaggerAnswerBotProvidersComponent$Builder;

    move-result-object v0

    iget-object v1, p0, Lzendesk/answerbot/AnswerBot;->coreModule:Lzendesk/core/CoreModule;

    .line 103
    invoke-virtual {v0, v1}, Lzendesk/answerbot/DaggerAnswerBotProvidersComponent$Builder;->coreModule(Lzendesk/core/CoreModule;)Lzendesk/answerbot/DaggerAnswerBotProvidersComponent$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lzendesk/answerbot/DaggerAnswerBotProvidersComponent$Builder;->build()Lzendesk/answerbot/AnswerBotProvidersComponent;

    move-result-object v0

    .line 105
    invoke-interface {v0, p0}, Lzendesk/answerbot/AnswerBotProvidersComponent;->inject(Lzendesk/answerbot/AnswerBot;)Lzendesk/answerbot/AnswerBot;

    .line 108
    :cond_2
    iget-object v0, p0, Lzendesk/answerbot/AnswerBot;->answerBotModule:Lzendesk/answerbot/AnswerBotModule;

    return-object v0
.end method

.method public init(Lzendesk/core/Zendesk;Lzendesk/support/Guide;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    .line 63
    invoke-static {v0}, Lcom/zendesk/util/ObjectUtils;->checkNonNull([Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "AnswerBot"

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Answer Bot cannot be initialised with null params"

    .line 64
    invoke-static {v3, p2, p1}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 68
    :cond_0
    invoke-virtual {p1}, Lzendesk/core/Zendesk;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Cannot use Answer Bot SDK without initializing Zendesk. Call Zendesk.INSTANCE.init(...)"

    .line 69
    invoke-static {v3, p2, p1}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 74
    :cond_1
    invoke-virtual {p2}, Lzendesk/support/Guide;->isInitialized()Z

    move-result p2

    if-nez p2, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Cannot use Answer Bot SDK without initializing Guide. Call Guide.INSTANCE.init(...)"

    .line 75
    invoke-static {v3, p2, p1}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 80
    :cond_2
    invoke-virtual {p1}, Lzendesk/core/Zendesk;->coreModule()Lzendesk/core/CoreModule;

    move-result-object p1

    iput-object p1, p0, Lzendesk/answerbot/AnswerBot;->coreModule:Lzendesk/core/CoreModule;

    .line 81
    iput-boolean v2, p0, Lzendesk/answerbot/AnswerBot;->initialized:Z

    return-void
.end method

.method public init(Lzendesk/core/Zendesk;Lzendesk/support/Support;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    sget-object p2, Lzendesk/support/Guide;->INSTANCE:Lzendesk/support/Guide;

    invoke-virtual {p0, p1, p2}, Lzendesk/answerbot/AnswerBot;->init(Lzendesk/core/Zendesk;Lzendesk/support/Guide;)V

    return-void
.end method

.method isInitialized()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lzendesk/answerbot/AnswerBot;->initialized:Z

    return v0
.end method

.method public provider()Lzendesk/answerbot/AnswerBotProvider;
    .locals 1

    .line 144
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBot;->getAnswerBotModule()Lzendesk/answerbot/AnswerBotModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lzendesk/answerbot/AnswerBotModule;->answerBotProvider()Lzendesk/answerbot/AnswerBotProvider;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method reset()V
    .locals 2

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lzendesk/answerbot/AnswerBot;->coreModule:Lzendesk/core/CoreModule;

    const/4 v1, 0x0

    .line 128
    iput-boolean v1, p0, Lzendesk/answerbot/AnswerBot;->initialized:Z

    .line 129
    iput-object v0, p0, Lzendesk/answerbot/AnswerBot;->answerBotModule:Lzendesk/answerbot/AnswerBotModule;

    return-void
.end method
