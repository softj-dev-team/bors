.class Lzendesk/core/ZendeskPushRegistrationProvider$1;
.super Lzendesk/core/PassThroughErrorZendeskCallback;
.source "ZendeskPushRegistrationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/core/ZendeskPushRegistrationProvider;->getAuthTypeAndRequest(Ljava/lang/String;Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;Lcom/zendesk/service/ZendeskCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzendesk/core/PassThroughErrorZendeskCallback<",
        "Lzendesk/core/CoreSettings;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/core/ZendeskPushRegistrationProvider;

.field final synthetic val$callback:Lcom/zendesk/service/ZendeskCallback;

.field final synthetic val$identifier:Ljava/lang/String;

.field final synthetic val$tokenType:Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;


# direct methods
.method constructor <init>(Lzendesk/core/ZendeskPushRegistrationProvider;Lcom/zendesk/service/ZendeskCallback;Lcom/zendesk/service/ZendeskCallback;Ljava/lang/String;Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lzendesk/core/ZendeskPushRegistrationProvider$1;->this$0:Lzendesk/core/ZendeskPushRegistrationProvider;

    iput-object p3, p0, Lzendesk/core/ZendeskPushRegistrationProvider$1;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    iput-object p4, p0, Lzendesk/core/ZendeskPushRegistrationProvider$1;->val$identifier:Ljava/lang/String;

    iput-object p5, p0, Lzendesk/core/ZendeskPushRegistrationProvider$1;->val$tokenType:Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;

    invoke-direct {p0, p2}, Lzendesk/core/PassThroughErrorZendeskCallback;-><init>(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 68
    check-cast p1, Lzendesk/core/CoreSettings;

    invoke-virtual {p0, p1}, Lzendesk/core/ZendeskPushRegistrationProvider$1;->onSuccess(Lzendesk/core/CoreSettings;)V

    return-void
.end method

.method public onSuccess(Lzendesk/core/CoreSettings;)V
    .locals 4

    .line 71
    invoke-virtual {p1}, Lzendesk/core/CoreSettings;->getAuthentication()Lzendesk/core/AuthenticationType;

    move-result-object p1

    if-nez p1, :cond_1

    .line 74
    iget-object p1, p0, Lzendesk/core/ZendeskPushRegistrationProvider$1;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    if-eqz p1, :cond_0

    .line 75
    new-instance v0, Lcom/zendesk/service/ErrorResponseAdapter;

    const-string v1, "Authentication type is null."

    invoke-direct {v0, v1}, Lcom/zendesk/service/ErrorResponseAdapter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/zendesk/service/ZendeskCallback;->onError(Lcom/zendesk/service/ErrorResponse;)V

    :cond_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lzendesk/core/ZendeskPushRegistrationProvider$1;->this$0:Lzendesk/core/ZendeskPushRegistrationProvider;

    iget-object v1, p0, Lzendesk/core/ZendeskPushRegistrationProvider$1;->val$identifier:Ljava/lang/String;

    invoke-static {v0}, Lzendesk/core/ZendeskPushRegistrationProvider;->access$000(Lzendesk/core/ZendeskPushRegistrationProvider;)Ljava/util/Locale;

    move-result-object v2

    iget-object v3, p0, Lzendesk/core/ZendeskPushRegistrationProvider$1;->val$tokenType:Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;

    invoke-static {v0, v1, v2, p1, v3}, Lzendesk/core/ZendeskPushRegistrationProvider;->access$100(Lzendesk/core/ZendeskPushRegistrationProvider;Ljava/lang/String;Ljava/util/Locale;Lzendesk/core/AuthenticationType;Lzendesk/core/ZendeskPushRegistrationProvider$TokenType;)Lzendesk/core/PushRegistrationRequest;

    move-result-object p1

    .line 83
    iget-object v0, p0, Lzendesk/core/ZendeskPushRegistrationProvider$1;->this$0:Lzendesk/core/ZendeskPushRegistrationProvider;

    invoke-static {v0}, Lzendesk/core/ZendeskPushRegistrationProvider;->access$200(Lzendesk/core/ZendeskPushRegistrationProvider;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lzendesk/core/ZendeskPushRegistrationProvider$1;->this$0:Lzendesk/core/ZendeskPushRegistrationProvider;

    iget-object v1, p0, Lzendesk/core/ZendeskPushRegistrationProvider$1;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-static {v0, p1, v1}, Lzendesk/core/ZendeskPushRegistrationProvider;->access$300(Lzendesk/core/ZendeskPushRegistrationProvider;Lzendesk/core/PushRegistrationRequest;Lcom/zendesk/service/ZendeskCallback;)V

    goto :goto_0

    .line 86
    :cond_2
    iget-object v0, p0, Lzendesk/core/ZendeskPushRegistrationProvider$1;->this$0:Lzendesk/core/ZendeskPushRegistrationProvider;

    iget-object v1, p0, Lzendesk/core/ZendeskPushRegistrationProvider$1;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-static {v0, p1, v1}, Lzendesk/core/ZendeskPushRegistrationProvider;->access$400(Lzendesk/core/ZendeskPushRegistrationProvider;Lzendesk/core/PushRegistrationRequest;Lcom/zendesk/service/ZendeskCallback;)V

    :goto_0
    return-void
.end method
