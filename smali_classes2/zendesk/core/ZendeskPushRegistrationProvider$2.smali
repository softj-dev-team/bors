.class Lzendesk/core/ZendeskPushRegistrationProvider$2;
.super Lzendesk/core/PassThroughErrorZendeskCallback;
.source "ZendeskPushRegistrationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/core/ZendeskPushRegistrationProvider;->unregisterDevice(Lcom/zendesk/service/ZendeskCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzendesk/core/PassThroughErrorZendeskCallback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/core/ZendeskPushRegistrationProvider;

.field final synthetic val$callback:Lcom/zendesk/service/ZendeskCallback;

.field final synthetic val$userId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lzendesk/core/ZendeskPushRegistrationProvider;Lcom/zendesk/service/ZendeskCallback;Ljava/lang/Long;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lzendesk/core/ZendeskPushRegistrationProvider$2;->this$0:Lzendesk/core/ZendeskPushRegistrationProvider;

    iput-object p3, p0, Lzendesk/core/ZendeskPushRegistrationProvider$2;->val$userId:Ljava/lang/Long;

    iput-object p4, p0, Lzendesk/core/ZendeskPushRegistrationProvider$2;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-direct {p0, p2}, Lzendesk/core/PassThroughErrorZendeskCallback;-><init>(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 113
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lzendesk/core/ZendeskPushRegistrationProvider$2;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lzendesk/core/ZendeskPushRegistrationProvider$2;->this$0:Lzendesk/core/ZendeskPushRegistrationProvider;

    invoke-static {v0}, Lzendesk/core/ZendeskPushRegistrationProvider;->access$500(Lzendesk/core/ZendeskPushRegistrationProvider;)Lzendesk/core/PushDeviceIdStorage;

    move-result-object v0

    invoke-interface {v0}, Lzendesk/core/PushDeviceIdStorage;->removeRegisteredDeviceId()V

    .line 117
    iget-object v0, p0, Lzendesk/core/ZendeskPushRegistrationProvider$2;->this$0:Lzendesk/core/ZendeskPushRegistrationProvider;

    invoke-static {v0}, Lzendesk/core/ZendeskPushRegistrationProvider;->access$600(Lzendesk/core/ZendeskPushRegistrationProvider;)Lzendesk/core/BlipsCoreProvider;

    move-result-object v0

    iget-object v1, p0, Lzendesk/core/ZendeskPushRegistrationProvider$2;->val$userId:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lzendesk/core/BlipsCoreProvider;->corePushDisabled(Ljava/lang/Long;)V

    .line 118
    iget-object v0, p0, Lzendesk/core/ZendeskPushRegistrationProvider$2;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0, p1}, Lcom/zendesk/service/ZendeskCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
