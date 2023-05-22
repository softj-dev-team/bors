.class Lzendesk/support/ZendeskRequestProvider$11;
.super Lcom/zendesk/service/ZendeskCallback;
.source "ZendeskRequestProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/ZendeskRequestProvider;->getUpdatesForDevice(Lcom/zendesk/service/ZendeskCallback;)V
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
.field final synthetic this$0:Lzendesk/support/ZendeskRequestProvider;

.field final synthetic val$callback:Lcom/zendesk/service/ZendeskCallback;


# direct methods
.method constructor <init>(Lzendesk/support/ZendeskRequestProvider;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lzendesk/support/ZendeskRequestProvider$11;->this$0:Lzendesk/support/ZendeskRequestProvider;

    iput-object p2, p0, Lzendesk/support/ZendeskRequestProvider$11;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-direct {p0}, Lcom/zendesk/service/ZendeskCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/zendesk/service/ErrorResponse;)V
    .locals 1

    .line 427
    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider$11;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-virtual {v0, p1}, Lcom/zendesk/service/ZendeskCallback;->onError(Lcom/zendesk/service/ErrorResponse;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 405
    check-cast p1, Lzendesk/support/SupportSdkSettings;

    invoke-virtual {p0, p1}, Lzendesk/support/ZendeskRequestProvider$11;->onSuccess(Lzendesk/support/SupportSdkSettings;)V

    return-void
.end method

.method public onSuccess(Lzendesk/support/SupportSdkSettings;)V
    .locals 4

    .line 409
    invoke-virtual {p1}, Lzendesk/support/SupportSdkSettings;->isConversationsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    iget-object p1, p0, Lzendesk/support/ZendeskRequestProvider$11;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-static {p1}, Lzendesk/support/ZendeskRequestProvider;->access$900(Lcom/zendesk/service/ZendeskCallback;)V

    goto :goto_0

    .line 413
    :cond_0
    iget-object v0, p0, Lzendesk/support/ZendeskRequestProvider$11;->this$0:Lzendesk/support/ZendeskRequestProvider;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lzendesk/support/SupportSdkSettings;->getAuthenticationType()Lzendesk/core/AuthenticationType;

    move-result-object p1

    new-instance v2, Lzendesk/support/ZendeskRequestProvider$11$1;

    iget-object v3, p0, Lzendesk/support/ZendeskRequestProvider$11;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-direct {v2, p0, v3}, Lzendesk/support/ZendeskRequestProvider$11$1;-><init>(Lzendesk/support/ZendeskRequestProvider$11;Lcom/zendesk/service/ZendeskCallback;)V

    invoke-static {v0, v1, p1, v2}, Lzendesk/support/ZendeskRequestProvider;->access$800(Lzendesk/support/ZendeskRequestProvider;Ljava/lang/String;Lzendesk/core/AuthenticationType;Lcom/zendesk/service/ZendeskCallback;)V

    :goto_0
    return-void
.end method
