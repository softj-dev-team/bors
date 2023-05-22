.class public final Lzendesk/answerbot/AnswerBotConversationModule_ConfigurationHelperFactory;
.super Ljava/lang/Object;
.source "AnswerBotConversationModule_ConfigurationHelperFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/configurations/ConfigurationHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/answerbot/AnswerBotConversationModule;


# direct methods
.method public constructor <init>(Lzendesk/answerbot/AnswerBotConversationModule;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotConversationModule_ConfigurationHelperFactory;->module:Lzendesk/answerbot/AnswerBotConversationModule;

    return-void
.end method

.method public static configurationHelper(Lzendesk/answerbot/AnswerBotConversationModule;)Lzendesk/configurations/ConfigurationHelper;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotConversationModule;->configurationHelper()Lzendesk/configurations/ConfigurationHelper;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/configurations/ConfigurationHelper;

    return-object p0
.end method

.method public static create(Lzendesk/answerbot/AnswerBotConversationModule;)Lzendesk/answerbot/AnswerBotConversationModule_ConfigurationHelperFactory;
    .locals 1

    .line 33
    new-instance v0, Lzendesk/answerbot/AnswerBotConversationModule_ConfigurationHelperFactory;

    invoke-direct {v0, p0}, Lzendesk/answerbot/AnswerBotConversationModule_ConfigurationHelperFactory;-><init>(Lzendesk/answerbot/AnswerBotConversationModule;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotConversationModule_ConfigurationHelperFactory;->get()Lzendesk/configurations/ConfigurationHelper;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/configurations/ConfigurationHelper;
    .locals 1

    .line 28
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotConversationModule_ConfigurationHelperFactory;->module:Lzendesk/answerbot/AnswerBotConversationModule;

    invoke-static {v0}, Lzendesk/answerbot/AnswerBotConversationModule_ConfigurationHelperFactory;->configurationHelper(Lzendesk/answerbot/AnswerBotConversationModule;)Lzendesk/configurations/ConfigurationHelper;

    move-result-object v0

    return-object v0
.end method
