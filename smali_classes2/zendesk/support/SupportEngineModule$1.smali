.class Lzendesk/support/SupportEngineModule$1;
.super Ljava/lang/Object;
.source "SupportEngineModule.java"

# interfaces
.implements Lzendesk/messaging/components/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/SupportEngineModule;->stateActionListener(Lzendesk/messaging/components/CompositeActionListener;)Lzendesk/messaging/components/ActionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzendesk/messaging/components/ActionListener<",
        "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
        "Lzendesk/messaging/MessagingItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/SupportEngineModule;

.field final synthetic val$observer:Lzendesk/messaging/components/CompositeActionListener;


# direct methods
.method constructor <init>(Lzendesk/support/SupportEngineModule;Lzendesk/messaging/components/CompositeActionListener;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lzendesk/support/SupportEngineModule$1;->this$0:Lzendesk/support/SupportEngineModule;

    iput-object p2, p0, Lzendesk/support/SupportEngineModule$1;->val$observer:Lzendesk/messaging/components/CompositeActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAction(Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p1, Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState;

    invoke-virtual {p0, p1}, Lzendesk/support/SupportEngineModule$1;->onAction(Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState;)V

    return-void
.end method

.method public onAction(Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/messaging/components/bot/BotMessageDispatcher$ConversationState<",
            "Lzendesk/messaging/MessagingItem;",
            ">;)V"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lzendesk/support/SupportEngineModule$1;->val$observer:Lzendesk/messaging/components/CompositeActionListener;

    invoke-virtual {v0, p1}, Lzendesk/messaging/components/CompositeActionListener;->onAction(Ljava/lang/Object;)V

    return-void
.end method
