.class public final Lzendesk/answerbot/AnswerBotConversationModule_ProvideUpdateCompositeActionListenerFactory;
.super Ljava/lang/Object;
.source "AnswerBotConversationModule_ProvideUpdateCompositeActionListenerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/messaging/components/CompositeActionListener<",
        "Lzendesk/messaging/Update;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/answerbot/AnswerBotConversationModule;


# direct methods
.method public constructor <init>(Lzendesk/answerbot/AnswerBotConversationModule;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotConversationModule_ProvideUpdateCompositeActionListenerFactory;->module:Lzendesk/answerbot/AnswerBotConversationModule;

    return-void
.end method

.method public static create(Lzendesk/answerbot/AnswerBotConversationModule;)Lzendesk/answerbot/AnswerBotConversationModule_ProvideUpdateCompositeActionListenerFactory;
    .locals 1

    .line 34
    new-instance v0, Lzendesk/answerbot/AnswerBotConversationModule_ProvideUpdateCompositeActionListenerFactory;

    invoke-direct {v0, p0}, Lzendesk/answerbot/AnswerBotConversationModule_ProvideUpdateCompositeActionListenerFactory;-><init>(Lzendesk/answerbot/AnswerBotConversationModule;)V

    return-object v0
.end method

.method public static provideUpdateCompositeActionListener(Lzendesk/answerbot/AnswerBotConversationModule;)Lzendesk/messaging/components/CompositeActionListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/answerbot/AnswerBotConversationModule;",
            ")",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/Update;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotConversationModule;->provideUpdateCompositeActionListener()Lzendesk/messaging/components/CompositeActionListener;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/messaging/components/CompositeActionListener;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotConversationModule_ProvideUpdateCompositeActionListenerFactory;->get()Lzendesk/messaging/components/CompositeActionListener;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/messaging/components/CompositeActionListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/Update;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotConversationModule_ProvideUpdateCompositeActionListenerFactory;->module:Lzendesk/answerbot/AnswerBotConversationModule;

    invoke-static {v0}, Lzendesk/answerbot/AnswerBotConversationModule_ProvideUpdateCompositeActionListenerFactory;->provideUpdateCompositeActionListener(Lzendesk/answerbot/AnswerBotConversationModule;)Lzendesk/messaging/components/CompositeActionListener;

    move-result-object v0

    return-object v0
.end method
