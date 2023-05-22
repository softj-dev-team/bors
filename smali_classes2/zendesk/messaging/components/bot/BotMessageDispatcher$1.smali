.class Lzendesk/messaging/components/bot/BotMessageDispatcher$1;
.super Ljava/lang/Object;
.source "BotMessageDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/messaging/components/bot/BotMessageDispatcher;->processMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/messaging/components/bot/BotMessageDispatcher;

.field final synthetic val$dispatch:Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch;


# direct methods
.method constructor <init>(Lzendesk/messaging/components/bot/BotMessageDispatcher;Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher$1;->this$0:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    iput-object p2, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher$1;->val$dispatch:Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 60
    iget-object v0, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher$1;->this$0:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    invoke-static {v0}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->access$100(Lzendesk/messaging/components/bot/BotMessageDispatcher;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher$1;->val$dispatch:Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch;

    invoke-static {v1}, Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch;->access$000(Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    iget-object v0, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher$1;->val$dispatch:Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch;

    invoke-static {v0}, Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch;->access$200(Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/messaging/Update;

    if-eqz v1, :cond_0

    .line 63
    iget-object v2, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher$1;->this$0:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    invoke-virtual {v2, v1}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->dispatchUpdate(Lzendesk/messaging/Update;)V

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher$1;->this$0:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->access$302(Lzendesk/messaging/components/bot/BotMessageDispatcher;Z)Z

    .line 67
    iget-object v0, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher$1;->this$0:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    invoke-static {v0, v1}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->access$402(Lzendesk/messaging/components/bot/BotMessageDispatcher;Z)Z

    .line 68
    iget-object v0, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher$1;->this$0:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    invoke-virtual {v0}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->dispatchState()V

    .line 69
    iget-object v0, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher$1;->this$0:Lzendesk/messaging/components/bot/BotMessageDispatcher;

    invoke-static {v0}, Lzendesk/messaging/components/bot/BotMessageDispatcher;->access$500(Lzendesk/messaging/components/bot/BotMessageDispatcher;)V

    .line 70
    iget-object v0, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher$1;->val$dispatch:Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch;

    invoke-static {v0}, Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch;->access$600(Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch;)Lzendesk/messaging/components/bot/BotMessageDispatcher$DispatchListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lzendesk/messaging/components/bot/BotMessageDispatcher$1;->val$dispatch:Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch;

    invoke-static {v0}, Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch;->access$600(Lzendesk/messaging/components/bot/BotMessageDispatcher$Dispatch;)Lzendesk/messaging/components/bot/BotMessageDispatcher$DispatchListener;

    move-result-object v0

    invoke-interface {v0}, Lzendesk/messaging/components/bot/BotMessageDispatcher$DispatchListener;->onDispatch()V

    :cond_2
    return-void
.end method
