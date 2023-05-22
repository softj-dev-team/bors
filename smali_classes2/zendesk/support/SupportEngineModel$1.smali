.class Lzendesk/support/SupportEngineModel$1;
.super Lcom/zendesk/service/ZendeskCallback;
.source "SupportEngineModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/SupportEngineModel;->processUserRequestMessage(Ljava/lang/String;)V
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

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lzendesk/support/SupportEngineModel;Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lzendesk/support/SupportEngineModel$1;->this$0:Lzendesk/support/SupportEngineModel;

    iput-object p2, p0, Lzendesk/support/SupportEngineModel$1;->val$message:Ljava/lang/String;

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

    const-string v1, "Error fetching settings."

    .line 124
    invoke-static {p1, v1, v0}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 111
    check-cast p1, Lzendesk/support/SupportSdkSettings;

    invoke-virtual {p0, p1}, Lzendesk/support/SupportEngineModel$1;->onSuccess(Lzendesk/support/SupportSdkSettings;)V

    return-void
.end method

.method public onSuccess(Lzendesk/support/SupportSdkSettings;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lzendesk/support/SupportEngineModel$1;->this$0:Lzendesk/support/SupportEngineModel;

    invoke-static {v0, p1}, Lzendesk/support/SupportEngineModel;->access$000(Lzendesk/support/SupportEngineModel;Lzendesk/support/SupportSdkSettings;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 115
    iget-object p1, p0, Lzendesk/support/SupportEngineModel$1;->this$0:Lzendesk/support/SupportEngineModel;

    sget-object v0, Lzendesk/support/SupportEngineModel$State;->AWAITING_EMAIL:Lzendesk/support/SupportEngineModel$State;

    invoke-static {p1, v0}, Lzendesk/support/SupportEngineModel;->access$102(Lzendesk/support/SupportEngineModel;Lzendesk/support/SupportEngineModel$State;)Lzendesk/support/SupportEngineModel$State;

    .line 116
    iget-object p1, p0, Lzendesk/support/SupportEngineModel$1;->this$0:Lzendesk/support/SupportEngineModel;

    invoke-static {p1}, Lzendesk/support/SupportEngineModel;->access$200(Lzendesk/support/SupportEngineModel;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object p1, p0, Lzendesk/support/SupportEngineModel$1;->this$0:Lzendesk/support/SupportEngineModel;

    iget-object v0, p0, Lzendesk/support/SupportEngineModel$1;->val$message:Ljava/lang/String;

    invoke-static {p1, v0}, Lzendesk/support/SupportEngineModel;->access$300(Lzendesk/support/SupportEngineModel;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
