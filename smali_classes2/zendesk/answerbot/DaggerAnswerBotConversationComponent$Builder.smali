.class final Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerAnswerBotConversationComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/answerbot/DaggerAnswerBotConversationComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private answerBotConversationModule:Lzendesk/answerbot/AnswerBotConversationModule;

.field private answerBotModule:Lzendesk/answerbot/AnswerBotModule;

.field private coreModule:Lzendesk/core/CoreModule;

.field private timerModule:Lzendesk/answerbot/TimerModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/answerbot/DaggerAnswerBotConversationComponent$1;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public answerBotConversationModule(Lzendesk/answerbot/AnswerBotConversationModule;)Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;
    .locals 0

    .line 59
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/answerbot/AnswerBotConversationModule;

    iput-object p1, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;->answerBotConversationModule:Lzendesk/answerbot/AnswerBotConversationModule;

    return-object p0
.end method

.method public answerBotModule(Lzendesk/answerbot/AnswerBotModule;)Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;
    .locals 0

    .line 53
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/answerbot/AnswerBotModule;

    iput-object p1, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;->answerBotModule:Lzendesk/answerbot/AnswerBotModule;

    return-object p0
.end method

.method public build()Lzendesk/answerbot/AnswerBotConversationComponent;
    .locals 7

    .line 69
    iget-object v0, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;->coreModule:Lzendesk/core/CoreModule;

    const-class v1, Lzendesk/core/CoreModule;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 70
    iget-object v0, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;->answerBotModule:Lzendesk/answerbot/AnswerBotModule;

    const-class v1, Lzendesk/answerbot/AnswerBotModule;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 71
    iget-object v0, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;->answerBotConversationModule:Lzendesk/answerbot/AnswerBotConversationModule;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lzendesk/answerbot/AnswerBotConversationModule;

    invoke-direct {v0}, Lzendesk/answerbot/AnswerBotConversationModule;-><init>()V

    iput-object v0, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;->answerBotConversationModule:Lzendesk/answerbot/AnswerBotConversationModule;

    .line 74
    :cond_0
    iget-object v0, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;->timerModule:Lzendesk/answerbot/TimerModule;

    if-nez v0, :cond_1

    .line 75
    new-instance v0, Lzendesk/answerbot/TimerModule;

    invoke-direct {v0}, Lzendesk/answerbot/TimerModule;-><init>()V

    iput-object v0, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;->timerModule:Lzendesk/answerbot/TimerModule;

    .line 77
    :cond_1
    new-instance v0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;

    iget-object v2, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;->coreModule:Lzendesk/core/CoreModule;

    iget-object v3, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;->answerBotModule:Lzendesk/answerbot/AnswerBotModule;

    iget-object v4, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;->answerBotConversationModule:Lzendesk/answerbot/AnswerBotConversationModule;

    iget-object v5, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;->timerModule:Lzendesk/answerbot/TimerModule;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$AnswerBotConversationComponentImpl;-><init>(Lzendesk/core/CoreModule;Lzendesk/answerbot/AnswerBotModule;Lzendesk/answerbot/AnswerBotConversationModule;Lzendesk/answerbot/TimerModule;Lzendesk/answerbot/DaggerAnswerBotConversationComponent$1;)V

    return-object v0
.end method

.method public coreModule(Lzendesk/core/CoreModule;)Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;
    .locals 0

    .line 48
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/core/CoreModule;

    iput-object p1, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;->coreModule:Lzendesk/core/CoreModule;

    return-object p0
.end method

.method public timerModule(Lzendesk/answerbot/TimerModule;)Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;
    .locals 0

    .line 64
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/answerbot/TimerModule;

    iput-object p1, p0, Lzendesk/answerbot/DaggerAnswerBotConversationComponent$Builder;->timerModule:Lzendesk/answerbot/TimerModule;

    return-object p0
.end method
