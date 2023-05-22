.class Lzendesk/support/request/ActionLoadSettings$1;
.super Lcom/zendesk/service/ZendeskCallback;
.source "ActionLoadSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/request/ActionLoadSettings;->execute(Lzendesk/support/suas/Dispatcher;Lzendesk/support/suas/GetState;Lzendesk/support/request/AsyncMiddleware$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/service/ZendeskCallback<",
        "Lzendesk/support/SupportSdkSettings;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/request/ActionLoadSettings;

.field final synthetic val$callback:Lzendesk/support/request/AsyncMiddleware$Callback;

.field final synthetic val$dispatcher:Lzendesk/support/suas/Dispatcher;


# direct methods
.method constructor <init>(Lzendesk/support/request/ActionLoadSettings;Lzendesk/support/suas/Dispatcher;Lzendesk/support/request/AsyncMiddleware$Callback;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lzendesk/support/request/ActionLoadSettings$1;->this$0:Lzendesk/support/request/ActionLoadSettings;

    iput-object p2, p0, Lzendesk/support/request/ActionLoadSettings$1;->val$dispatcher:Lzendesk/support/suas/Dispatcher;

    iput-object p3, p0, Lzendesk/support/request/ActionLoadSettings$1;->val$callback:Lzendesk/support/request/AsyncMiddleware$Callback;

    invoke-direct {p0}, Lcom/zendesk/service/ZendeskCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/zendesk/service/ErrorResponse;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 49
    invoke-interface {p1}, Lcom/zendesk/service/ErrorResponse;->getReason()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "RequestActivity"

    const-string v2, "Error loading settings. Error: \'%s\'"

    invoke-static {v1, v2, v0}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lzendesk/support/request/ActionLoadSettings$1;->val$dispatcher:Lzendesk/support/suas/Dispatcher;

    iget-object v1, p0, Lzendesk/support/request/ActionLoadSettings$1;->this$0:Lzendesk/support/request/ActionLoadSettings;

    invoke-static {v1}, Lzendesk/support/request/ActionLoadSettings;->access$100(Lzendesk/support/request/ActionLoadSettings;)Lzendesk/support/request/ActionFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lzendesk/support/request/ActionFactory;->loadSettingsError(Lcom/zendesk/service/ErrorResponse;)Lzendesk/support/suas/Action;

    move-result-object p1

    invoke-interface {v0, p1}, Lzendesk/support/suas/Dispatcher;->dispatch(Lzendesk/support/suas/Action;)V

    .line 51
    iget-object p1, p0, Lzendesk/support/request/ActionLoadSettings$1;->val$callback:Lzendesk/support/request/AsyncMiddleware$Callback;

    invoke-interface {p1}, Lzendesk/support/request/AsyncMiddleware$Callback;->done()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Lzendesk/support/SupportSdkSettings;

    invoke-virtual {p0, p1}, Lzendesk/support/request/ActionLoadSettings$1;->onSuccess(Lzendesk/support/SupportSdkSettings;)V

    return-void
.end method

.method public onSuccess(Lzendesk/support/SupportSdkSettings;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lzendesk/support/request/ActionLoadSettings$1;->this$0:Lzendesk/support/request/ActionLoadSettings;

    invoke-static {v0, p1}, Lzendesk/support/request/ActionLoadSettings;->access$000(Lzendesk/support/request/ActionLoadSettings;Lzendesk/support/SupportSdkSettings;)Lzendesk/support/request/StateSettings;

    move-result-object p1

    .line 43
    iget-object v0, p0, Lzendesk/support/request/ActionLoadSettings$1;->val$dispatcher:Lzendesk/support/suas/Dispatcher;

    iget-object v1, p0, Lzendesk/support/request/ActionLoadSettings$1;->this$0:Lzendesk/support/request/ActionLoadSettings;

    invoke-static {v1}, Lzendesk/support/request/ActionLoadSettings;->access$100(Lzendesk/support/request/ActionLoadSettings;)Lzendesk/support/request/ActionFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lzendesk/support/request/ActionFactory;->loadSettingsSuccess(Lzendesk/support/request/StateSettings;)Lzendesk/support/suas/Action;

    move-result-object p1

    invoke-interface {v0, p1}, Lzendesk/support/suas/Dispatcher;->dispatch(Lzendesk/support/suas/Action;)V

    .line 44
    iget-object p1, p0, Lzendesk/support/request/ActionLoadSettings$1;->val$callback:Lzendesk/support/request/AsyncMiddleware$Callback;

    invoke-interface {p1}, Lzendesk/support/request/AsyncMiddleware$Callback;->done()V

    return-void
.end method
