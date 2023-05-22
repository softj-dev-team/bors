.class public final Lzendesk/answerbot/AnswerBotEngine_Factory;
.super Ljava/lang/Object;
.source "AnswerBotEngine_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/answerbot/AnswerBotEngine;",
        ">;"
    }
.end annotation


# instance fields
.field private final answerBotCellFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/AnswerBotCellFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final answerBotModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/AnswerBotModel;",
            ">;"
        }
    .end annotation
.end field

.field private final configurationHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/configurations/ConfigurationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final stateActionListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final updateActionListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/Update;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/AnswerBotModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/AnswerBotCellFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/Update;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Lzendesk/configurations/ConfigurationHelper;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotEngine_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p2, p0, Lzendesk/answerbot/AnswerBotEngine_Factory;->answerBotModelProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p3, p0, Lzendesk/answerbot/AnswerBotEngine_Factory;->answerBotCellFactoryProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p4, p0, Lzendesk/answerbot/AnswerBotEngine_Factory;->updateActionListenerProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p5, p0, Lzendesk/answerbot/AnswerBotEngine_Factory;->stateActionListenerProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p6, p0, Lzendesk/answerbot/AnswerBotEngine_Factory;->configurationHelperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/answerbot/AnswerBotEngine_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/AnswerBotModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/AnswerBotCellFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/Update;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Lzendesk/configurations/ConfigurationHelper;",
            ">;)",
            "Lzendesk/answerbot/AnswerBotEngine_Factory;"
        }
    .end annotation

    .line 60
    new-instance v7, Lzendesk/answerbot/AnswerBotEngine_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lzendesk/answerbot/AnswerBotEngine_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Lzendesk/messaging/components/CompositeActionListener;Lzendesk/messaging/components/CompositeActionListener;Lzendesk/configurations/ConfigurationHelper;)Lzendesk/answerbot/AnswerBotEngine;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/Update;",
            ">;",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/answerbot/AnswerBotInteraction;",
            ">;>;",
            "Lzendesk/configurations/ConfigurationHelper;",
            ")",
            "Lzendesk/answerbot/AnswerBotEngine;"
        }
    .end annotation

    .line 67
    new-instance v7, Lzendesk/answerbot/AnswerBotEngine;

    move-object v2, p1

    check-cast v2, Lzendesk/answerbot/AnswerBotModel;

    move-object v3, p2

    check-cast v3, Lzendesk/answerbot/AnswerBotCellFactory;

    move-object v0, v7

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lzendesk/answerbot/AnswerBotEngine;-><init>(Landroid/content/Context;Lzendesk/answerbot/AnswerBotModel;Lzendesk/answerbot/AnswerBotCellFactory;Lzendesk/messaging/components/CompositeActionListener;Lzendesk/messaging/components/CompositeActionListener;Lzendesk/configurations/ConfigurationHelper;)V

    return-object v7
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotEngine_Factory;->get()Lzendesk/answerbot/AnswerBotEngine;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/answerbot/AnswerBotEngine;
    .locals 7

    .line 51
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotEngine_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lzendesk/answerbot/AnswerBotEngine_Factory;->answerBotModelProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, Lzendesk/answerbot/AnswerBotEngine_Factory;->answerBotCellFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    iget-object v0, p0, Lzendesk/answerbot/AnswerBotEngine_Factory;->updateActionListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lzendesk/messaging/components/CompositeActionListener;

    iget-object v0, p0, Lzendesk/answerbot/AnswerBotEngine_Factory;->stateActionListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lzendesk/messaging/components/CompositeActionListener;

    iget-object v0, p0, Lzendesk/answerbot/AnswerBotEngine_Factory;->configurationHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lzendesk/configurations/ConfigurationHelper;

    invoke-static/range {v1 .. v6}, Lzendesk/answerbot/AnswerBotEngine_Factory;->newInstance(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Lzendesk/messaging/components/CompositeActionListener;Lzendesk/messaging/components/CompositeActionListener;Lzendesk/configurations/ConfigurationHelper;)Lzendesk/answerbot/AnswerBotEngine;

    move-result-object v0

    return-object v0
.end method
