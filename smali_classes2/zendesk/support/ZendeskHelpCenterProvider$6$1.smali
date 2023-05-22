.class Lzendesk/support/ZendeskHelpCenterProvider$6$1;
.super Lzendesk/support/ZendeskHelpCenterProvider$ZendeskCallbackSuccess;
.source "ZendeskHelpCenterProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/ZendeskHelpCenterProvider$6;->onSuccess(Lzendesk/support/HelpCenterSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzendesk/support/ZendeskHelpCenterProvider$ZendeskCallbackSuccess<",
        "Lzendesk/support/ArticlesListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lzendesk/support/ZendeskHelpCenterProvider$6;


# direct methods
.method constructor <init>(Lzendesk/support/ZendeskHelpCenterProvider$6;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lzendesk/support/ZendeskHelpCenterProvider$6$1;->this$1:Lzendesk/support/ZendeskHelpCenterProvider$6;

    invoke-direct {p0, p2}, Lzendesk/support/ZendeskHelpCenterProvider$ZendeskCallbackSuccess;-><init>(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 223
    check-cast p1, Lzendesk/support/ArticlesListResponse;

    invoke-virtual {p0, p1}, Lzendesk/support/ZendeskHelpCenterProvider$6$1;->onSuccess(Lzendesk/support/ArticlesListResponse;)V

    return-void
.end method

.method public onSuccess(Lzendesk/support/ArticlesListResponse;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider$6$1;->this$1:Lzendesk/support/ZendeskHelpCenterProvider$6;

    iget-object v0, v0, Lzendesk/support/ZendeskHelpCenterProvider$6;->this$0:Lzendesk/support/ZendeskHelpCenterProvider;

    invoke-virtual {v0, p1}, Lzendesk/support/ZendeskHelpCenterProvider;->asFlatArticleList(Lzendesk/support/ArticlesResponse;)Ljava/util/List;

    move-result-object p1

    .line 228
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider$6$1;->this$1:Lzendesk/support/ZendeskHelpCenterProvider$6;

    iget-object v0, v0, Lzendesk/support/ZendeskHelpCenterProvider$6;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider$6$1;->this$1:Lzendesk/support/ZendeskHelpCenterProvider$6;

    iget-object v0, v0, Lzendesk/support/ZendeskHelpCenterProvider$6;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-virtual {v0, p1}, Lcom/zendesk/service/ZendeskCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
