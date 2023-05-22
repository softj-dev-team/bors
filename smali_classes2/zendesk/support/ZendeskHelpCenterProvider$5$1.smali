.class Lzendesk/support/ZendeskHelpCenterProvider$5$1;
.super Lzendesk/support/ZendeskHelpCenterProvider$ZendeskCallbackSuccess;
.source "ZendeskHelpCenterProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/ZendeskHelpCenterProvider$5;->onSuccess(Lzendesk/support/HelpCenterSettings;)V
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
.field final synthetic this$1:Lzendesk/support/ZendeskHelpCenterProvider$5;


# direct methods
.method constructor <init>(Lzendesk/support/ZendeskHelpCenterProvider$5;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lzendesk/support/ZendeskHelpCenterProvider$5$1;->this$1:Lzendesk/support/ZendeskHelpCenterProvider$5;

    invoke-direct {p0, p2}, Lzendesk/support/ZendeskHelpCenterProvider$ZendeskCallbackSuccess;-><init>(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 183
    check-cast p1, Lzendesk/support/ArticlesListResponse;

    invoke-virtual {p0, p1}, Lzendesk/support/ZendeskHelpCenterProvider$5$1;->onSuccess(Lzendesk/support/ArticlesListResponse;)V

    return-void
.end method

.method public onSuccess(Lzendesk/support/ArticlesListResponse;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider$5$1;->this$1:Lzendesk/support/ZendeskHelpCenterProvider$5;

    iget-object v0, v0, Lzendesk/support/ZendeskHelpCenterProvider$5;->this$0:Lzendesk/support/ZendeskHelpCenterProvider;

    invoke-virtual {v0, p1}, Lzendesk/support/ZendeskHelpCenterProvider;->asSearchArticleList(Lzendesk/support/ArticlesResponse;)Ljava/util/List;

    move-result-object p1

    .line 188
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider$5$1;->this$1:Lzendesk/support/ZendeskHelpCenterProvider$5;

    iget-object v0, v0, Lzendesk/support/ZendeskHelpCenterProvider$5;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider$5$1;->this$1:Lzendesk/support/ZendeskHelpCenterProvider$5;

    iget-object v0, v0, Lzendesk/support/ZendeskHelpCenterProvider$5;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-virtual {v0, p1}, Lcom/zendesk/service/ZendeskCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
