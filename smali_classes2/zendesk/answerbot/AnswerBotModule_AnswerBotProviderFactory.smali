.class public final Lzendesk/answerbot/AnswerBotModule_AnswerBotProviderFactory;
.super Ljava/lang/Object;
.source "AnswerBotModule_AnswerBotProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/answerbot/AnswerBotProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/answerbot/AnswerBotModule;


# direct methods
.method public constructor <init>(Lzendesk/answerbot/AnswerBotModule;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotModule_AnswerBotProviderFactory;->module:Lzendesk/answerbot/AnswerBotModule;

    return-void
.end method

.method public static answerBotProvider(Lzendesk/answerbot/AnswerBotModule;)Lzendesk/answerbot/AnswerBotProvider;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotModule;->answerBotProvider()Lzendesk/answerbot/AnswerBotProvider;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/answerbot/AnswerBotProvider;

    return-object p0
.end method

.method public static create(Lzendesk/answerbot/AnswerBotModule;)Lzendesk/answerbot/AnswerBotModule_AnswerBotProviderFactory;
    .locals 1

    .line 30
    new-instance v0, Lzendesk/answerbot/AnswerBotModule_AnswerBotProviderFactory;

    invoke-direct {v0, p0}, Lzendesk/answerbot/AnswerBotModule_AnswerBotProviderFactory;-><init>(Lzendesk/answerbot/AnswerBotModule;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotModule_AnswerBotProviderFactory;->get()Lzendesk/answerbot/AnswerBotProvider;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/answerbot/AnswerBotProvider;
    .locals 1

    .line 26
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotModule_AnswerBotProviderFactory;->module:Lzendesk/answerbot/AnswerBotModule;

    invoke-static {v0}, Lzendesk/answerbot/AnswerBotModule_AnswerBotProviderFactory;->answerBotProvider(Lzendesk/answerbot/AnswerBotModule;)Lzendesk/answerbot/AnswerBotProvider;

    move-result-object v0

    return-object v0
.end method
