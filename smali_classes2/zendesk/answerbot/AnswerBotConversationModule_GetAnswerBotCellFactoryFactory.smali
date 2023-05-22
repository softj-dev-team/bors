.class public final Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotCellFactoryFactory;
.super Ljava/lang/Object;
.source "AnswerBotConversationModule_GetAnswerBotCellFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/answerbot/AnswerBotCellFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/answerbot/AnswerBotConversationModule;


# direct methods
.method public constructor <init>(Lzendesk/answerbot/AnswerBotConversationModule;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotCellFactoryFactory;->module:Lzendesk/answerbot/AnswerBotConversationModule;

    return-void
.end method

.method public static create(Lzendesk/answerbot/AnswerBotConversationModule;)Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotCellFactoryFactory;
    .locals 1

    .line 32
    new-instance v0, Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotCellFactoryFactory;

    invoke-direct {v0, p0}, Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotCellFactoryFactory;-><init>(Lzendesk/answerbot/AnswerBotConversationModule;)V

    return-object v0
.end method

.method public static getAnswerBotCellFactory(Lzendesk/answerbot/AnswerBotConversationModule;)Lzendesk/answerbot/AnswerBotCellFactory;
    .locals 0

    .line 36
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotConversationModule;->getAnswerBotCellFactory()Lzendesk/answerbot/AnswerBotCellFactory;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/answerbot/AnswerBotCellFactory;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotCellFactoryFactory;->get()Lzendesk/answerbot/AnswerBotCellFactory;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/answerbot/AnswerBotCellFactory;
    .locals 1

    .line 27
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotCellFactoryFactory;->module:Lzendesk/answerbot/AnswerBotConversationModule;

    invoke-static {v0}, Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotCellFactoryFactory;->getAnswerBotCellFactory(Lzendesk/answerbot/AnswerBotConversationModule;)Lzendesk/answerbot/AnswerBotCellFactory;

    move-result-object v0

    return-object v0
.end method
