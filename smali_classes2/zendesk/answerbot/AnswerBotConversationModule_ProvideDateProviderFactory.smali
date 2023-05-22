.class public final Lzendesk/answerbot/AnswerBotConversationModule_ProvideDateProviderFactory;
.super Ljava/lang/Object;
.source "AnswerBotConversationModule_ProvideDateProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/messaging/components/DateProvider;",
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
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotConversationModule_ProvideDateProviderFactory;->module:Lzendesk/answerbot/AnswerBotConversationModule;

    return-void
.end method

.method public static create(Lzendesk/answerbot/AnswerBotConversationModule;)Lzendesk/answerbot/AnswerBotConversationModule_ProvideDateProviderFactory;
    .locals 1

    .line 33
    new-instance v0, Lzendesk/answerbot/AnswerBotConversationModule_ProvideDateProviderFactory;

    invoke-direct {v0, p0}, Lzendesk/answerbot/AnswerBotConversationModule_ProvideDateProviderFactory;-><init>(Lzendesk/answerbot/AnswerBotConversationModule;)V

    return-object v0
.end method

.method public static provideDateProvider(Lzendesk/answerbot/AnswerBotConversationModule;)Lzendesk/messaging/components/DateProvider;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotConversationModule;->provideDateProvider()Lzendesk/messaging/components/DateProvider;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/messaging/components/DateProvider;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotConversationModule_ProvideDateProviderFactory;->get()Lzendesk/messaging/components/DateProvider;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/messaging/components/DateProvider;
    .locals 1

    .line 28
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotConversationModule_ProvideDateProviderFactory;->module:Lzendesk/answerbot/AnswerBotConversationModule;

    invoke-static {v0}, Lzendesk/answerbot/AnswerBotConversationModule_ProvideDateProviderFactory;->provideDateProvider(Lzendesk/answerbot/AnswerBotConversationModule;)Lzendesk/messaging/components/DateProvider;

    move-result-object v0

    return-object v0
.end method
