.class final Lzendesk/answerbot/DaggerAnswerBotProvidersComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerAnswerBotProvidersComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/answerbot/DaggerAnswerBotProvidersComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private answerBotProvidersModule:Lzendesk/answerbot/AnswerBotProvidersModule;

.field private coreModule:Lzendesk/core/CoreModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/answerbot/DaggerAnswerBotProvidersComponent$1;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lzendesk/answerbot/DaggerAnswerBotProvidersComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public answerBotProvidersModule(Lzendesk/answerbot/AnswerBotProvidersModule;)Lzendesk/answerbot/DaggerAnswerBotProvidersComponent$Builder;
    .locals 0

    .line 39
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/answerbot/AnswerBotProvidersModule;

    iput-object p1, p0, Lzendesk/answerbot/DaggerAnswerBotProvidersComponent$Builder;->answerBotProvidersModule:Lzendesk/answerbot/AnswerBotProvidersModule;

    return-object p0
.end method

.method public build()Lzendesk/answerbot/AnswerBotProvidersComponent;
    .locals 4

    .line 49
    iget-object v0, p0, Lzendesk/answerbot/DaggerAnswerBotProvidersComponent$Builder;->answerBotProvidersModule:Lzendesk/answerbot/AnswerBotProvidersModule;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lzendesk/answerbot/AnswerBotProvidersModule;

    invoke-direct {v0}, Lzendesk/answerbot/AnswerBotProvidersModule;-><init>()V

    iput-object v0, p0, Lzendesk/answerbot/DaggerAnswerBotProvidersComponent$Builder;->answerBotProvidersModule:Lzendesk/answerbot/AnswerBotProvidersModule;

    .line 52
    :cond_0
    iget-object v0, p0, Lzendesk/answerbot/DaggerAnswerBotProvidersComponent$Builder;->coreModule:Lzendesk/core/CoreModule;

    const-class v1, Lzendesk/core/CoreModule;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 53
    new-instance v0, Lzendesk/answerbot/DaggerAnswerBotProvidersComponent$AnswerBotProvidersComponentImpl;

    iget-object v1, p0, Lzendesk/answerbot/DaggerAnswerBotProvidersComponent$Builder;->answerBotProvidersModule:Lzendesk/answerbot/AnswerBotProvidersModule;

    iget-object v2, p0, Lzendesk/answerbot/DaggerAnswerBotProvidersComponent$Builder;->coreModule:Lzendesk/core/CoreModule;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lzendesk/answerbot/DaggerAnswerBotProvidersComponent$AnswerBotProvidersComponentImpl;-><init>(Lzendesk/answerbot/AnswerBotProvidersModule;Lzendesk/core/CoreModule;Lzendesk/answerbot/DaggerAnswerBotProvidersComponent$1;)V

    return-object v0
.end method

.method public coreModule(Lzendesk/core/CoreModule;)Lzendesk/answerbot/DaggerAnswerBotProvidersComponent$Builder;
    .locals 0

    .line 44
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/core/CoreModule;

    iput-object p1, p0, Lzendesk/answerbot/DaggerAnswerBotProvidersComponent$Builder;->coreModule:Lzendesk/core/CoreModule;

    return-object p0
.end method
