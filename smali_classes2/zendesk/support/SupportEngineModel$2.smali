.class Lzendesk/support/SupportEngineModel$2;
.super Lcom/zendesk/service/ZendeskCallback;
.source "SupportEngineModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/SupportEngineModel;->createRequest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/service/ZendeskCallback<",
        "Lzendesk/support/Request;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/SupportEngineModel;


# direct methods
.method constructor <init>(Lzendesk/support/SupportEngineModel;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lzendesk/support/SupportEngineModel$2;->this$0:Lzendesk/support/SupportEngineModel;

    invoke-direct {p0}, Lcom/zendesk/service/ZendeskCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/zendesk/service/ErrorResponse;)V
    .locals 2

    .line 176
    iget-object v0, p0, Lzendesk/support/SupportEngineModel$2;->this$0:Lzendesk/support/SupportEngineModel;

    invoke-static {v0}, Lzendesk/support/SupportEngineModel;->access$500(Lzendesk/support/SupportEngineModel;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "SupportEngine"

    const-string v1, "Ticket not created: "

    .line 177
    invoke-static {p1, v1, v0}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 168
    check-cast p1, Lzendesk/support/Request;

    invoke-virtual {p0, p1}, Lzendesk/support/SupportEngineModel$2;->onSuccess(Lzendesk/support/Request;)V

    return-void
.end method

.method public onSuccess(Lzendesk/support/Request;)V
    .locals 0

    .line 171
    iget-object p1, p0, Lzendesk/support/SupportEngineModel$2;->this$0:Lzendesk/support/SupportEngineModel;

    invoke-static {p1}, Lzendesk/support/SupportEngineModel;->access$400(Lzendesk/support/SupportEngineModel;)V

    return-void
.end method
