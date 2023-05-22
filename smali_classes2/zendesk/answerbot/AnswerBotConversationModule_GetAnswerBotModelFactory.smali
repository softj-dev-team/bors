.class public final Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotModelFactory;
.super Ljava/lang/Object;
.source "AnswerBotConversationModule_GetAnswerBotModelFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/answerbot/AnswerBotModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final answerBotProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/AnswerBotProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final answerBotSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/AnswerBotSettingsProvider;",
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

.field private final conversationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/AnswerBotConversationManager;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lzendesk/answerbot/AnswerBotConversationModule;

.field private final resourcesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private final timerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/Timer$Factory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzendesk/answerbot/AnswerBotConversationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/answerbot/AnswerBotConversationModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/AnswerBotProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/AnswerBotSettingsProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/Timer$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/AnswerBotConversationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/configurations/ConfigurationHelper;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotModelFactory;->module:Lzendesk/answerbot/AnswerBotConversationModule;

    .line 43
    iput-object p2, p0, Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotModelFactory;->answerBotProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p3, p0, Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotModelFactory;->answerBotSettingsProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p4, p0, Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotModelFactory;->timerFactoryProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p5, p0, Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotModelFactory;->resourcesProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p6, p0, Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotModelFactory;->conversationManagerProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p7, p0, Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotModelFactory;->configurationHelperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lzendesk/answerbot/AnswerBotConversationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotModelFactory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/answerbot/AnswerBotConversationModule;",
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/AnswerBotProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/AnswerBotSettingsProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/messaging/components/Timer$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/answerbot/AnswerBotConversationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lzendesk/configurations/ConfigurationHelper;",
            ">;)",
            "Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotModelFactory;"
        }
    .end annotation

    .line 62
    new-instance v8, Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotModelFactory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotModelFactory;-><init>(Lzendesk/answerbot/AnswerBotConversationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static getAnswerBotModel(Lzendesk/answerbot/AnswerBotConversationModule;Lzendesk/answerbot/AnswerBotProvider;Ljava/lang/Object;Lzendesk/messaging/components/Timer$Factory;Landroid/content/res/Resources;Ljava/lang/Object;Lzendesk/configurations/ConfigurationHelper;)Lzendesk/answerbot/AnswerBotModel;
    .locals 7

    .line 69
    move-object v2, p2

    check-cast v2, Lzendesk/answerbot/AnswerBotSettingsProvider;

    move-object v5, p5

    check-cast v5, Lzendesk/answerbot/AnswerBotConversationManager;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lzendesk/answerbot/AnswerBotConversationModule;->getAnswerBotModel(Lzendesk/answerbot/AnswerBotProvider;Lzendesk/answerbot/AnswerBotSettingsProvider;Lzendesk/messaging/components/Timer$Factory;Landroid/content/res/Resources;Lzendesk/answerbot/AnswerBotConversationManager;Lzendesk/configurations/ConfigurationHelper;)Lzendesk/answerbot/AnswerBotModel;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/answerbot/AnswerBotModel;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotModelFactory;->get()Lzendesk/answerbot/AnswerBotModel;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/answerbot/AnswerBotModel;
    .locals 7

    .line 53
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotModelFactory;->module:Lzendesk/answerbot/AnswerBotConversationModule;

    iget-object v1, p0, Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotModelFactory;->answerBotProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/answerbot/AnswerBotProvider;

    iget-object v2, p0, Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotModelFactory;->answerBotSettingsProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotModelFactory;->timerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/messaging/components/Timer$Factory;

    iget-object v4, p0, Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotModelFactory;->resourcesProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Resources;

    iget-object v5, p0, Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotModelFactory;->conversationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotModelFactory;->configurationHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lzendesk/configurations/ConfigurationHelper;

    invoke-static/range {v0 .. v6}, Lzendesk/answerbot/AnswerBotConversationModule_GetAnswerBotModelFactory;->getAnswerBotModel(Lzendesk/answerbot/AnswerBotConversationModule;Lzendesk/answerbot/AnswerBotProvider;Ljava/lang/Object;Lzendesk/messaging/components/Timer$Factory;Landroid/content/res/Resources;Ljava/lang/Object;Lzendesk/configurations/ConfigurationHelper;)Lzendesk/answerbot/AnswerBotModel;

    move-result-object v0

    return-object v0
.end method
