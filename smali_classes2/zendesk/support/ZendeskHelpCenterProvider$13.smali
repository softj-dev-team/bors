.class Lzendesk/support/ZendeskHelpCenterProvider$13;
.super Lzendesk/support/ZendeskHelpCenterProvider$ZendeskCallbackSuccess;
.source "ZendeskHelpCenterProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/ZendeskHelpCenterProvider;->downvoteArticle(Ljava/lang/Long;Lcom/zendesk/service/ZendeskCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzendesk/support/ZendeskHelpCenterProvider$ZendeskCallbackSuccess<",
        "Lzendesk/support/HelpCenterSettings;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/ZendeskHelpCenterProvider;

.field final synthetic val$articleId:Ljava/lang/Long;

.field final synthetic val$callback:Lcom/zendesk/service/ZendeskCallback;


# direct methods
.method constructor <init>(Lzendesk/support/ZendeskHelpCenterProvider;Lcom/zendesk/service/ZendeskCallback;Lcom/zendesk/service/ZendeskCallback;Ljava/lang/Long;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lzendesk/support/ZendeskHelpCenterProvider$13;->this$0:Lzendesk/support/ZendeskHelpCenterProvider;

    iput-object p3, p0, Lzendesk/support/ZendeskHelpCenterProvider$13;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    iput-object p4, p0, Lzendesk/support/ZendeskHelpCenterProvider$13;->val$articleId:Ljava/lang/Long;

    invoke-direct {p0, p2}, Lzendesk/support/ZendeskHelpCenterProvider$ZendeskCallbackSuccess;-><init>(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 435
    check-cast p1, Lzendesk/support/HelpCenterSettings;

    invoke-virtual {p0, p1}, Lzendesk/support/ZendeskHelpCenterProvider$13;->onSuccess(Lzendesk/support/HelpCenterSettings;)V

    return-void
.end method

.method public onSuccess(Lzendesk/support/HelpCenterSettings;)V
    .locals 3

    .line 438
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider$13;->this$0:Lzendesk/support/ZendeskHelpCenterProvider;

    iget-object v1, p0, Lzendesk/support/ZendeskHelpCenterProvider$13;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-static {v0, v1, p1}, Lzendesk/support/ZendeskHelpCenterProvider;->access$400(Lzendesk/support/ZendeskHelpCenterProvider;Lcom/zendesk/service/ZendeskCallback;Lzendesk/support/HelpCenterSettings;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 439
    iget-object p1, p0, Lzendesk/support/ZendeskHelpCenterProvider$13;->this$0:Lzendesk/support/ZendeskHelpCenterProvider;

    invoke-static {p1}, Lzendesk/support/ZendeskHelpCenterProvider;->access$200(Lzendesk/support/ZendeskHelpCenterProvider;)Lzendesk/support/ZendeskHelpCenterService;

    move-result-object p1

    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider$13;->val$articleId:Ljava/lang/Long;

    new-instance v1, Lzendesk/support/ZendeskHelpCenterProvider$13$1;

    iget-object v2, p0, Lzendesk/support/ZendeskHelpCenterProvider$13;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-direct {v1, p0, v2}, Lzendesk/support/ZendeskHelpCenterProvider$13$1;-><init>(Lzendesk/support/ZendeskHelpCenterProvider$13;Lcom/zendesk/service/ZendeskCallback;)V

    const-string v2, "{}"

    invoke-virtual {p1, v0, v2, v1}, Lzendesk/support/ZendeskHelpCenterService;->downvoteArticle(Ljava/lang/Long;Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V

    :cond_0
    return-void
.end method
