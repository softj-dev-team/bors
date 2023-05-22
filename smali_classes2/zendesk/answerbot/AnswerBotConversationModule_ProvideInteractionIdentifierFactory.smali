.class public final Lzendesk/answerbot/AnswerBotConversationModule_ProvideInteractionIdentifierFactory;
.super Ljava/lang/Object;
.source "AnswerBotConversationModule_ProvideInteractionIdentifierFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier<",
        "Lzendesk/answerbot/AnswerBotInteraction;",
        ">;>;"
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
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotConversationModule_ProvideInteractionIdentifierFactory;->module:Lzendesk/answerbot/AnswerBotConversationModule;

    return-void
.end method

.method public static create(Lzendesk/answerbot/AnswerBotConversationModule;)Lzendesk/answerbot/AnswerBotConversationModule_ProvideInteractionIdentifierFactory;
    .locals 1

    .line 33
    new-instance v0, Lzendesk/answerbot/AnswerBotConversationModule_ProvideInteractionIdentifierFactory;

    invoke-direct {v0, p0}, Lzendesk/answerbot/AnswerBotConversationModule_ProvideInteractionIdentifierFactory;-><init>(Lzendesk/answerbot/AnswerBotConversationModule;)V

    return-object v0
.end method

.method public static provideInteractionIdentifier(Lzendesk/answerbot/AnswerBotConversationModule;)Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/answerbot/AnswerBotConversationModule;",
            ")",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;"
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotConversationModule;->provideInteractionIdentifier()Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotConversationModule_ProvideInteractionIdentifierFactory;->get()Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotConversationModule_ProvideInteractionIdentifierFactory;->module:Lzendesk/answerbot/AnswerBotConversationModule;

    invoke-static {v0}, Lzendesk/answerbot/AnswerBotConversationModule_ProvideInteractionIdentifierFactory;->provideInteractionIdentifier(Lzendesk/answerbot/AnswerBotConversationModule;)Lzendesk/messaging/components/bot/BotMessageDispatcher$MessageIdentifier;

    move-result-object v0

    return-object v0
.end method
