.class Lzendesk/support/ZendeskHelpCenterProvider$13$1;
.super Lzendesk/support/ZendeskHelpCenterProvider$ZendeskCallbackSuccess;
.source "ZendeskHelpCenterProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/ZendeskHelpCenterProvider$13;->onSuccess(Lzendesk/support/HelpCenterSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzendesk/support/ZendeskHelpCenterProvider$ZendeskCallbackSuccess<",
        "Lzendesk/support/ArticleVoteResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lzendesk/support/ZendeskHelpCenterProvider$13;


# direct methods
.method constructor <init>(Lzendesk/support/ZendeskHelpCenterProvider$13;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lzendesk/support/ZendeskHelpCenterProvider$13$1;->this$1:Lzendesk/support/ZendeskHelpCenterProvider$13;

    invoke-direct {p0, p2}, Lzendesk/support/ZendeskHelpCenterProvider$ZendeskCallbackSuccess;-><init>(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 440
    check-cast p1, Lzendesk/support/ArticleVoteResponse;

    invoke-virtual {p0, p1}, Lzendesk/support/ZendeskHelpCenterProvider$13$1;->onSuccess(Lzendesk/support/ArticleVoteResponse;)V

    return-void
.end method

.method public onSuccess(Lzendesk/support/ArticleVoteResponse;)V
    .locals 2

    .line 443
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider$13$1;->this$1:Lzendesk/support/ZendeskHelpCenterProvider$13;

    iget-object v0, v0, Lzendesk/support/ZendeskHelpCenterProvider$13;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider$13$1;->this$1:Lzendesk/support/ZendeskHelpCenterProvider$13;

    iget-object v0, v0, Lzendesk/support/ZendeskHelpCenterProvider$13;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-virtual {p1}, Lzendesk/support/ArticleVoteResponse;->getVote()Lzendesk/support/ArticleVote;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zendesk/service/ZendeskCallback;->onSuccess(Ljava/lang/Object;)V

    .line 446
    :cond_0
    iget-object p1, p0, Lzendesk/support/ZendeskHelpCenterProvider$13$1;->this$1:Lzendesk/support/ZendeskHelpCenterProvider$13;

    iget-object p1, p1, Lzendesk/support/ZendeskHelpCenterProvider$13;->this$0:Lzendesk/support/ZendeskHelpCenterProvider;

    invoke-static {p1}, Lzendesk/support/ZendeskHelpCenterProvider;->access$500(Lzendesk/support/ZendeskHelpCenterProvider;)Lzendesk/support/HelpCenterBlipsProvider;

    move-result-object p1

    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider$13$1;->this$1:Lzendesk/support/ZendeskHelpCenterProvider$13;

    iget-object v0, v0, Lzendesk/support/ZendeskHelpCenterProvider$13;->val$articleId:Ljava/lang/Long;

    const/4 v1, -0x1

    .line 447
    invoke-interface {p1, v0, v1}, Lzendesk/support/HelpCenterBlipsProvider;->articleVote(Ljava/lang/Long;I)V

    return-void
.end method
