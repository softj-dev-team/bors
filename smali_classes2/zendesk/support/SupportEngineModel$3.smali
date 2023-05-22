.class Lzendesk/support/SupportEngineModel$3;
.super Lcom/zendesk/service/ZendeskCallback;
.source "SupportEngineModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/SupportEngineModel;->showRequestCreatedConfirmationMessage()V
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
.field final synthetic this$0:Lzendesk/support/SupportEngineModel;


# direct methods
.method constructor <init>(Lzendesk/support/SupportEngineModel;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lzendesk/support/SupportEngineModel$3;->this$0:Lzendesk/support/SupportEngineModel;

    invoke-direct {p0}, Lcom/zendesk/service/ZendeskCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/zendesk/service/ErrorResponse;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "SupportEngine"

    const-string v1, "Error fetching settings after ticket creation."

    .line 208
    invoke-static {p1, v1, v0}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 194
    check-cast p1, Lzendesk/support/SupportSdkSettings;

    invoke-virtual {p0, p1}, Lzendesk/support/SupportEngineModel$3;->onSuccess(Lzendesk/support/SupportSdkSettings;)V

    return-void
.end method

.method public onSuccess(Lzendesk/support/SupportSdkSettings;)V
    .locals 1

    .line 197
    invoke-virtual {p1}, Lzendesk/support/SupportSdkSettings;->isConversationsEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 198
    iget-object p1, p0, Lzendesk/support/SupportEngineModel$3;->this$0:Lzendesk/support/SupportEngineModel;

    invoke-static {p1}, Lzendesk/support/SupportEngineModel;->access$600(Lzendesk/support/SupportEngineModel;)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object p1, p0, Lzendesk/support/SupportEngineModel$3;->this$0:Lzendesk/support/SupportEngineModel;

    invoke-static {p1}, Lzendesk/support/SupportEngineModel;->access$700(Lzendesk/support/SupportEngineModel;)V

    .line 203
    :goto_0
    iget-object p1, p0, Lzendesk/support/SupportEngineModel$3;->this$0:Lzendesk/support/SupportEngineModel;

    sget-object v0, Lzendesk/support/SupportEngineModel$State;->COMPLETE:Lzendesk/support/SupportEngineModel$State;

    invoke-static {p1, v0}, Lzendesk/support/SupportEngineModel;->access$102(Lzendesk/support/SupportEngineModel;Lzendesk/support/SupportEngineModel$State;)Lzendesk/support/SupportEngineModel$State;

    return-void
.end method
