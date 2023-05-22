.class Lzendesk/support/ZendeskHelpCenterProvider$1$1;
.super Lzendesk/support/ZendeskHelpCenterProvider$ZendeskCallbackSuccess;
.source "ZendeskHelpCenterProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/ZendeskHelpCenterProvider$1;->onSuccess(Lzendesk/support/HelpCenterSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzendesk/support/ZendeskHelpCenterProvider$ZendeskCallbackSuccess<",
        "Lzendesk/support/HelpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lzendesk/support/ZendeskHelpCenterProvider$1;


# direct methods
.method constructor <init>(Lzendesk/support/ZendeskHelpCenterProvider$1;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lzendesk/support/ZendeskHelpCenterProvider$1$1;->this$1:Lzendesk/support/ZendeskHelpCenterProvider$1;

    invoke-direct {p0, p2}, Lzendesk/support/ZendeskHelpCenterProvider$ZendeskCallbackSuccess;-><init>(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 63
    check-cast p1, Lzendesk/support/HelpResponse;

    invoke-virtual {p0, p1}, Lzendesk/support/ZendeskHelpCenterProvider$1$1;->onSuccess(Lzendesk/support/HelpResponse;)V

    return-void
.end method

.method public onSuccess(Lzendesk/support/HelpResponse;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider$1$1;->this$1:Lzendesk/support/ZendeskHelpCenterProvider$1;

    iget-object v0, v0, Lzendesk/support/ZendeskHelpCenterProvider$1;->this$0:Lzendesk/support/ZendeskHelpCenterProvider;

    invoke-static {v0}, Lzendesk/support/ZendeskHelpCenterProvider;->access$000(Lzendesk/support/ZendeskHelpCenterProvider;)Lzendesk/support/HelpCenterTracker;

    move-result-object v0

    invoke-interface {v0}, Lzendesk/support/HelpCenterTracker;->helpCenterLoaded()V

    .line 68
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider$1$1;->this$1:Lzendesk/support/ZendeskHelpCenterProvider$1;

    iget-object v0, v0, Lzendesk/support/ZendeskHelpCenterProvider$1;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider$1$1;->this$1:Lzendesk/support/ZendeskHelpCenterProvider$1;

    iget-object v0, v0, Lzendesk/support/ZendeskHelpCenterProvider$1;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    iget-object v1, p0, Lzendesk/support/ZendeskHelpCenterProvider$1$1;->this$1:Lzendesk/support/ZendeskHelpCenterProvider$1;

    iget-object v1, v1, Lzendesk/support/ZendeskHelpCenterProvider$1;->this$0:Lzendesk/support/ZendeskHelpCenterProvider;

    invoke-static {v1, p1}, Lzendesk/support/ZendeskHelpCenterProvider;->access$100(Lzendesk/support/ZendeskHelpCenterProvider;Lzendesk/support/HelpResponse;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zendesk/service/ZendeskCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
