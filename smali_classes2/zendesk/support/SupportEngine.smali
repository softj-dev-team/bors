.class public Lzendesk/support/SupportEngine;
.super Lzendesk/messaging/ObservableEngine;
.source "SupportEngine.java"


# static fields
.field private static final SUPPORT_ENGINE_ID:Ljava/lang/String; = "SUPPORT"


# instance fields
.field private final context:Landroid/content/Context;

.field private final description:Lzendesk/messaging/Engine$TransferOptionDescription;

.field private final stateViewObserver:Lzendesk/messaging/components/CompositeActionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final supportModel:Lzendesk/support/SupportEngineModel;

.field private final updateViewObserver:Lzendesk/messaging/components/CompositeActionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/Update;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lzendesk/support/SupportEngineModel;Lzendesk/messaging/components/CompositeActionListener;Lzendesk/messaging/components/CompositeActionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lzendesk/support/SupportEngineModel;",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/Update;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lzendesk/messaging/ObservableEngine;-><init>()V

    .line 47
    iput-object p1, p0, Lzendesk/support/SupportEngine;->context:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lzendesk/support/SupportEngine;->supportModel:Lzendesk/support/SupportEngineModel;

    .line 49
    iput-object p3, p0, Lzendesk/support/SupportEngine;->stateViewObserver:Lzendesk/messaging/components/CompositeActionListener;

    .line 50
    iput-object p4, p0, Lzendesk/support/SupportEngine;->updateViewObserver:Lzendesk/messaging/components/CompositeActionListener;

    .line 51
    new-instance p2, Lzendesk/messaging/Engine$TransferOptionDescription;

    sget p3, Lcom/zendesk/sdk/R$string;->zs_request_contact_option_leave_a_message:I

    .line 53
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "SUPPORT"

    invoke-direct {p2, p3, p1}, Lzendesk/messaging/Engine$TransferOptionDescription;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lzendesk/support/SupportEngine;->description:Lzendesk/messaging/Engine$TransferOptionDescription;

    return-void
.end method

.method public static engine()Lzendesk/messaging/Engine;
    .locals 4

    .line 32
    sget-object v0, Lzendesk/support/Support;->INSTANCE:Lzendesk/support/Support;

    iget-object v0, v0, Lzendesk/support/Support;->supportModule:Lzendesk/support/SupportModule;

    .line 33
    new-instance v1, Lzendesk/support/SupportEngineModule;

    invoke-direct {v1}, Lzendesk/support/SupportEngineModule;-><init>()V

    .line 35
    invoke-static {}, Lzendesk/support/DaggerSupportEngineComponent;->builder()Lzendesk/support/DaggerSupportEngineComponent$Builder;

    move-result-object v2

    sget-object v3, Lzendesk/core/Zendesk;->INSTANCE:Lzendesk/core/Zendesk;

    .line 36
    invoke-virtual {v3}, Lzendesk/core/Zendesk;->coreModule()Lzendesk/core/CoreModule;

    move-result-object v3

    invoke-virtual {v2, v3}, Lzendesk/support/DaggerSupportEngineComponent$Builder;->coreModule(Lzendesk/core/CoreModule;)Lzendesk/support/DaggerSupportEngineComponent$Builder;

    move-result-object v2

    .line 37
    invoke-virtual {v2, v0}, Lzendesk/support/DaggerSupportEngineComponent$Builder;->supportModule(Lzendesk/support/SupportModule;)Lzendesk/support/DaggerSupportEngineComponent$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v1}, Lzendesk/support/DaggerSupportEngineComponent$Builder;->supportEngineModule(Lzendesk/support/SupportEngineModule;)Lzendesk/support/DaggerSupportEngineComponent$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lzendesk/support/DaggerSupportEngineComponent$Builder;->build()Lzendesk/support/SupportEngineComponent;

    move-result-object v0

    .line 40
    invoke-interface {v0}, Lzendesk/support/SupportEngineComponent;->supportEngine()Lzendesk/support/SupportEngine;

    move-result-object v0

    return-object v0
.end method

.method private setupViewObserver(Lzendesk/messaging/AgentDetails;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lzendesk/support/SupportEngine;->stateViewObserver:Lzendesk/messaging/components/CompositeActionListener;

    new-instance v1, Lzendesk/support/SupportEngine$1;

    invoke-direct {v1, p0, p1}, Lzendesk/support/SupportEngine$1;-><init>(Lzendesk/support/SupportEngine;Lzendesk/messaging/AgentDetails;)V

    invoke-virtual {v0, v1}, Lzendesk/messaging/components/CompositeActionListener;->addListener(Lzendesk/messaging/components/ActionListener;)V

    .line 76
    iget-object p1, p0, Lzendesk/support/SupportEngine;->updateViewObserver:Lzendesk/messaging/components/CompositeActionListener;

    new-instance v0, Lzendesk/support/SupportEngine$2;

    invoke-direct {v0, p0}, Lzendesk/support/SupportEngine$2;-><init>(Lzendesk/support/SupportEngine;)V

    invoke-virtual {p1, v0}, Lzendesk/messaging/components/CompositeActionListener;->addListener(Lzendesk/messaging/components/ActionListener;)V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "SUPPORT"

    return-object v0
.end method

.method public getTransferOptionDescription()Lzendesk/messaging/Engine$TransferOptionDescription;
    .locals 1

    .line 99
    iget-object v0, p0, Lzendesk/support/SupportEngine;->description:Lzendesk/messaging/Engine$TransferOptionDescription;

    return-object v0
.end method

.method public onEvent(Lzendesk/messaging/Event;)V
    .locals 3

    .line 104
    invoke-virtual {p1}, Lzendesk/messaging/Event;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "message_submitted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "action_option_clicked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "response_option_clicked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 110
    :pswitch_0
    check-cast p1, Lzendesk/messaging/Event$MessageSubmitted;

    .line 112
    iget-object v0, p0, Lzendesk/support/SupportEngine;->supportModel:Lzendesk/support/SupportEngineModel;

    invoke-virtual {p1}, Lzendesk/messaging/Event$MessageSubmitted;->getTextInput()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lzendesk/support/SupportEngineModel;->textEntered(Ljava/lang/String;)V

    goto :goto_1

    .line 106
    :pswitch_1
    iget-object p1, p0, Lzendesk/support/SupportEngine;->supportModel:Lzendesk/support/SupportEngineModel;

    invoke-virtual {p1}, Lzendesk/support/SupportEngineModel;->actionItemClicked()V

    goto :goto_1

    .line 115
    :pswitch_2
    iget-object p1, p0, Lzendesk/support/SupportEngine;->supportModel:Lzendesk/support/SupportEngineModel;

    invoke-virtual {p1}, Lzendesk/support/SupportEngineModel;->retryClicked()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x74e855e5 -> :sswitch_2
        -0x5ec6887a -> :sswitch_1
        0x1d7546c3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public start(Lzendesk/messaging/MessagingApi;)V
    .locals 2

    .line 59
    invoke-interface {p1}, Lzendesk/messaging/MessagingApi;->getBotAgentDetails()Lzendesk/messaging/AgentDetails;

    move-result-object v0

    invoke-direct {p0, v0}, Lzendesk/support/SupportEngine;->setupViewObserver(Lzendesk/messaging/AgentDetails;)V

    .line 60
    iget-object v0, p0, Lzendesk/support/SupportEngine;->supportModel:Lzendesk/support/SupportEngineModel;

    iget-object v1, p0, Lzendesk/support/SupportEngine;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lzendesk/support/SupportEngineModel;->start(Landroid/content/Context;Lzendesk/messaging/MessagingApi;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 86
    iget-object v0, p0, Lzendesk/support/SupportEngine;->stateViewObserver:Lzendesk/messaging/components/CompositeActionListener;

    invoke-virtual {v0}, Lzendesk/messaging/components/CompositeActionListener;->clearListeners()V

    .line 87
    iget-object v0, p0, Lzendesk/support/SupportEngine;->updateViewObserver:Lzendesk/messaging/components/CompositeActionListener;

    invoke-virtual {v0}, Lzendesk/messaging/components/CompositeActionListener;->clearListeners()V

    return-void
.end method
