.class public final Lzendesk/answerbot/AnswerBotProvidersModule_GetHelpCenterProviderFactory;
.super Ljava/lang/Object;
.source "AnswerBotProvidersModule_GetHelpCenterProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/support/HelpCenterProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/answerbot/AnswerBotProvidersModule;


# direct methods
.method public constructor <init>(Lzendesk/answerbot/AnswerBotProvidersModule;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotProvidersModule_GetHelpCenterProviderFactory;->module:Lzendesk/answerbot/AnswerBotProvidersModule;

    return-void
.end method

.method public static create(Lzendesk/answerbot/AnswerBotProvidersModule;)Lzendesk/answerbot/AnswerBotProvidersModule_GetHelpCenterProviderFactory;
    .locals 1

    .line 32
    new-instance v0, Lzendesk/answerbot/AnswerBotProvidersModule_GetHelpCenterProviderFactory;

    invoke-direct {v0, p0}, Lzendesk/answerbot/AnswerBotProvidersModule_GetHelpCenterProviderFactory;-><init>(Lzendesk/answerbot/AnswerBotProvidersModule;)V

    return-object v0
.end method

.method public static getHelpCenterProvider(Lzendesk/answerbot/AnswerBotProvidersModule;)Lzendesk/support/HelpCenterProvider;
    .locals 0

    .line 36
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotProvidersModule;->getHelpCenterProvider()Lzendesk/support/HelpCenterProvider;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/support/HelpCenterProvider;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotProvidersModule_GetHelpCenterProviderFactory;->get()Lzendesk/support/HelpCenterProvider;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/HelpCenterProvider;
    .locals 1

    .line 27
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotProvidersModule_GetHelpCenterProviderFactory;->module:Lzendesk/answerbot/AnswerBotProvidersModule;

    invoke-static {v0}, Lzendesk/answerbot/AnswerBotProvidersModule_GetHelpCenterProviderFactory;->getHelpCenterProvider(Lzendesk/answerbot/AnswerBotProvidersModule;)Lzendesk/support/HelpCenterProvider;

    move-result-object v0

    return-object v0
.end method
