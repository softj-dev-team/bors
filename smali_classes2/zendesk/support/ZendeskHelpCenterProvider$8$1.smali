.class Lzendesk/support/ZendeskHelpCenterProvider$8$1;
.super Lzendesk/support/ZendeskHelpCenterProvider$ZendeskCallbackSuccess;
.source "ZendeskHelpCenterProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/ZendeskHelpCenterProvider$8;->onSuccess(Lzendesk/support/HelpCenterSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzendesk/support/ZendeskHelpCenterProvider$ZendeskCallbackSuccess<",
        "Lzendesk/support/Article;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lzendesk/support/ZendeskHelpCenterProvider$8;


# direct methods
.method constructor <init>(Lzendesk/support/ZendeskHelpCenterProvider$8;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lzendesk/support/ZendeskHelpCenterProvider$8$1;->this$1:Lzendesk/support/ZendeskHelpCenterProvider$8;

    invoke-direct {p0, p2}, Lzendesk/support/ZendeskHelpCenterProvider$ZendeskCallbackSuccess;-><init>(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 311
    check-cast p1, Lzendesk/support/Article;

    invoke-virtual {p0, p1}, Lzendesk/support/ZendeskHelpCenterProvider$8$1;->onSuccess(Lzendesk/support/Article;)V

    return-void
.end method

.method public onSuccess(Lzendesk/support/Article;)V
    .locals 3

    .line 315
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider$8$1;->this$1:Lzendesk/support/ZendeskHelpCenterProvider$8;

    iget-object v0, v0, Lzendesk/support/ZendeskHelpCenterProvider$8;->this$0:Lzendesk/support/ZendeskHelpCenterProvider;

    .line 317
    invoke-virtual {p1}, Lzendesk/support/Article;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zendesk/util/LocaleUtil;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Lzendesk/support/ZendeskHelpCenterProvider$8$1$1;

    invoke-direct {v2, p0}, Lzendesk/support/ZendeskHelpCenterProvider$8$1$1;-><init>(Lzendesk/support/ZendeskHelpCenterProvider$8$1;)V

    .line 315
    invoke-virtual {v0, p1, v1, v2}, Lzendesk/support/ZendeskHelpCenterProvider;->submitRecordArticleView(Lzendesk/support/Article;Ljava/util/Locale;Lcom/zendesk/service/ZendeskCallback;)V

    .line 335
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider$8$1;->this$1:Lzendesk/support/ZendeskHelpCenterProvider$8;

    iget-object v0, v0, Lzendesk/support/ZendeskHelpCenterProvider$8;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterProvider$8$1;->this$1:Lzendesk/support/ZendeskHelpCenterProvider$8;

    iget-object v0, v0, Lzendesk/support/ZendeskHelpCenterProvider$8;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-virtual {v0, p1}, Lcom/zendesk/service/ZendeskCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
