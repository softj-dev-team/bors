.class public final Lzendesk/support/SupportEngineModule_StateCompositeActionListenerFactory;
.super Ljava/lang/Object;
.source "SupportEngineModule_StateCompositeActionListenerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/messaging/components/CompositeActionListener<",
        "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
        "Lzendesk/messaging/MessagingItem;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/support/SupportEngineModule;


# direct methods
.method public constructor <init>(Lzendesk/support/SupportEngineModule;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lzendesk/support/SupportEngineModule_StateCompositeActionListenerFactory;->module:Lzendesk/support/SupportEngineModule;

    return-void
.end method

.method public static create(Lzendesk/support/SupportEngineModule;)Lzendesk/support/SupportEngineModule_StateCompositeActionListenerFactory;
    .locals 1

    .line 34
    new-instance v0, Lzendesk/support/SupportEngineModule_StateCompositeActionListenerFactory;

    invoke-direct {v0, p0}, Lzendesk/support/SupportEngineModule_StateCompositeActionListenerFactory;-><init>(Lzendesk/support/SupportEngineModule;)V

    return-object v0
.end method

.method public static stateCompositeActionListener(Lzendesk/support/SupportEngineModule;)Lzendesk/messaging/components/CompositeActionListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/SupportEngineModule;",
            ")",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;"
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lzendesk/support/SupportEngineModule;->stateCompositeActionListener()Lzendesk/messaging/components/CompositeActionListener;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/messaging/components/CompositeActionListener;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lzendesk/support/SupportEngineModule_StateCompositeActionListenerFactory;->get()Lzendesk/messaging/components/CompositeActionListener;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/messaging/components/CompositeActionListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzendesk/messaging/components/CompositeActionListener<",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/messaging/MessagingItem;",
            ">;>;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lzendesk/support/SupportEngineModule_StateCompositeActionListenerFactory;->module:Lzendesk/support/SupportEngineModule;

    invoke-static {v0}, Lzendesk/support/SupportEngineModule_StateCompositeActionListenerFactory;->stateCompositeActionListener(Lzendesk/support/SupportEngineModule;)Lzendesk/messaging/components/CompositeActionListener;

    move-result-object v0

    return-object v0
.end method
