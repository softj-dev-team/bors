.class Lzendesk/support/request/ActionInstallConfiguration$1$1;
.super Ljava/lang/Object;
.source "ActionInstallConfiguration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/request/ActionInstallConfiguration$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lzendesk/support/request/ActionInstallConfiguration$1;

.field final synthetic val$newConfig:Lzendesk/support/request/RequestConfiguration;


# direct methods
.method constructor <init>(Lzendesk/support/request/ActionInstallConfiguration$1;Lzendesk/support/request/RequestConfiguration;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lzendesk/support/request/ActionInstallConfiguration$1$1;->this$1:Lzendesk/support/request/ActionInstallConfiguration$1;

    iput-object p2, p0, Lzendesk/support/request/ActionInstallConfiguration$1$1;->val$newConfig:Lzendesk/support/request/RequestConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 106
    iget-object v0, p0, Lzendesk/support/request/ActionInstallConfiguration$1$1;->this$1:Lzendesk/support/request/ActionInstallConfiguration$1;

    iget-object v0, v0, Lzendesk/support/request/ActionInstallConfiguration$1;->val$dispatcher:Lzendesk/support/suas/Dispatcher;

    iget-object v1, p0, Lzendesk/support/request/ActionInstallConfiguration$1$1;->this$1:Lzendesk/support/request/ActionInstallConfiguration$1;

    iget-object v1, v1, Lzendesk/support/request/ActionInstallConfiguration$1;->this$0:Lzendesk/support/request/ActionInstallConfiguration;

    invoke-static {v1}, Lzendesk/support/request/ActionInstallConfiguration;->access$300(Lzendesk/support/request/ActionInstallConfiguration;)Lzendesk/support/request/ActionFactory;

    move-result-object v1

    iget-object v2, p0, Lzendesk/support/request/ActionInstallConfiguration$1$1;->val$newConfig:Lzendesk/support/request/RequestConfiguration;

    invoke-virtual {v1, v2}, Lzendesk/support/request/ActionFactory;->startConfig(Lzendesk/support/request/RequestConfiguration;)Lzendesk/support/suas/Action;

    move-result-object v1

    invoke-interface {v0, v1}, Lzendesk/support/suas/Dispatcher;->dispatch(Lzendesk/support/suas/Action;)V

    .line 107
    iget-object v0, p0, Lzendesk/support/request/ActionInstallConfiguration$1$1;->this$1:Lzendesk/support/request/ActionInstallConfiguration$1;

    iget-object v0, v0, Lzendesk/support/request/ActionInstallConfiguration$1;->val$callback:Lzendesk/support/request/AsyncMiddleware$Callback;

    invoke-interface {v0}, Lzendesk/support/request/AsyncMiddleware$Callback;->done()V

    return-void
.end method
