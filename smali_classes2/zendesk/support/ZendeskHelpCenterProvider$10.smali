.class Lzendesk/support/ZendeskHelpCenterProvider$10;
.super Lzendesk/support/ZendeskHelpCenterProvider$ZendeskCallbackSuccess;
.source "ZendeskHelpCenterProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/ZendeskHelpCenterProvider;->getCategory(Ljava/lang/Long;Lcom/zendesk/service/ZendeskCallback;)V
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

.field final synthetic val$callback:Lcom/zendesk/service/ZendeskCallback;

.field final synthetic val$categoryId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lzendesk/support/ZendeskHelpCenterProvider;Lcom/zendesk/service/ZendeskCallback;Lcom/zendesk/service/ZendeskCallback;Ljava/lang/Long;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lzendesk/support/ZendeskHelpCenterProvider$10;->this$0:Lzendesk/support/ZendeskHelpCenterProvider;

    iput-object p3, p0, Lzendesk/support/ZendeskHelpCenterProvider$10;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    iput-object p4, p0, Lzendesk/support/ZendeskHelpCenterProvider$10;->val$categoryId:Ljava/lang/Long;

    invoke-direct {p0, p2}, Lzendesk/support/ZendeskHelpCenterProvider$ZendeskCallbackSuccess;-><init>(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 369
    check-cast p1, Lzendesk/support/HelpCenterSettings;

    invoke-virtual {p0, p1}, Lzendesk/support/ZendeskHelpCenterProvider$10;->onSuccess(Lzendesk/support/HelpCenterSettings;)V

    return-void
.end method

.method public onSuccess(Lzendesk/support/HelpCenterSettings;)V
    .locals 3

    .line 372
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider$10;->this$0:Lzendesk/support/ZendeskHelpCenterProvider;

    iget-object v1, p0, Lzendesk/support/ZendeskHelpCenterProvider$10;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-virtual {v0, v1, p1}, Lzendesk/support/ZendeskHelpCenterProvider;->sanityCheckHelpCenterSettings(Lcom/zendesk/service/ZendeskCallback;Lzendesk/support/HelpCenterSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider$10;->this$0:Lzendesk/support/ZendeskHelpCenterProvider;

    invoke-static {v0}, Lzendesk/support/ZendeskHelpCenterProvider;->access$200(Lzendesk/support/ZendeskHelpCenterProvider;)Lzendesk/support/ZendeskHelpCenterService;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/ZendeskHelpCenterProvider$10;->val$categoryId:Ljava/lang/Long;

    iget-object v2, p0, Lzendesk/support/ZendeskHelpCenterProvider$10;->this$0:Lzendesk/support/ZendeskHelpCenterProvider;

    invoke-virtual {v2, p1}, Lzendesk/support/ZendeskHelpCenterProvider;->getLocale(Lzendesk/support/HelpCenterSettings;)Ljava/util/Locale;

    move-result-object p1

    iget-object v2, p0, Lzendesk/support/ZendeskHelpCenterProvider$10;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-virtual {v0, v1, p1, v2}, Lzendesk/support/ZendeskHelpCenterService;->getCategoryById(Ljava/lang/Long;Ljava/util/Locale;Lcom/zendesk/service/ZendeskCallback;)V

    :cond_0
    return-void
.end method
