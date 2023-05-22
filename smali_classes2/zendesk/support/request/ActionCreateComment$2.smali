.class Lzendesk/support/request/ActionCreateComment$2;
.super Lcom/zendesk/service/ZendeskCallback;
.source "ActionCreateComment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/request/ActionCreateComment;->addComment(Lzendesk/support/request/AsyncMiddleware$Callback;Lzendesk/support/suas/Dispatcher;Lzendesk/support/request/StateConversation;Lzendesk/support/request/AttachmentUploadService$AttachmentUploadResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/service/ZendeskCallback<",
        "Lzendesk/support/Comment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/request/ActionCreateComment;

.field final synthetic val$attachments:Lzendesk/support/request/AttachmentUploadService$AttachmentUploadResult;

.field final synthetic val$callback:Lzendesk/support/request/AsyncMiddleware$Callback;

.field final synthetic val$con:Lzendesk/support/request/StateConversation;

.field final synthetic val$dispatcher:Lzendesk/support/suas/Dispatcher;

.field final synthetic val$requestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lzendesk/support/request/ActionCreateComment;Lzendesk/support/request/AttachmentUploadService$AttachmentUploadResult;Lzendesk/support/suas/Dispatcher;Ljava/lang/String;Lzendesk/support/request/StateConversation;Lzendesk/support/request/AsyncMiddleware$Callback;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lzendesk/support/request/ActionCreateComment$2;->this$0:Lzendesk/support/request/ActionCreateComment;

    iput-object p2, p0, Lzendesk/support/request/ActionCreateComment$2;->val$attachments:Lzendesk/support/request/AttachmentUploadService$AttachmentUploadResult;

    iput-object p3, p0, Lzendesk/support/request/ActionCreateComment$2;->val$dispatcher:Lzendesk/support/suas/Dispatcher;

    iput-object p4, p0, Lzendesk/support/request/ActionCreateComment$2;->val$requestId:Ljava/lang/String;

    iput-object p5, p0, Lzendesk/support/request/ActionCreateComment$2;->val$con:Lzendesk/support/request/StateConversation;

    iput-object p6, p0, Lzendesk/support/request/ActionCreateComment$2;->val$callback:Lzendesk/support/request/AsyncMiddleware$Callback;

    invoke-direct {p0}, Lcom/zendesk/service/ZendeskCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/zendesk/service/ErrorResponse;)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 133
    invoke-interface {p1}, Lcom/zendesk/service/ErrorResponse;->getReason()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lzendesk/support/request/ActionCreateComment$2;->this$0:Lzendesk/support/request/ActionCreateComment;

    invoke-static {v2}, Lzendesk/support/request/ActionCreateComment;->access$000(Lzendesk/support/request/ActionCreateComment;)Lzendesk/support/request/StateMessage;

    move-result-object v2

    invoke-virtual {v2}, Lzendesk/support/request/StateMessage;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "RequestActivity"

    const-string v5, "Unable to add comment to request. Error: \'%s\'. Message Id: %d"

    .line 132
    invoke-static {v2, v5, v1}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-interface {p1}, Lcom/zendesk/service/ErrorResponse;->isHttpError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-interface {p1}, Lcom/zendesk/service/ErrorResponse;->getStatus()I

    move-result v1

    const/16 v5, 0x1a6

    if-ne v1, v5, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 137
    iget-object v5, p0, Lzendesk/support/request/ActionCreateComment$2;->val$requestId:Ljava/lang/String;

    aput-object v5, v1, v3

    .line 138
    invoke-interface {p1}, Lcom/zendesk/service/ErrorResponse;->getReason()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    iget-object v3, p0, Lzendesk/support/request/ActionCreateComment$2;->this$0:Lzendesk/support/request/ActionCreateComment;

    invoke-static {v3}, Lzendesk/support/request/ActionCreateComment;->access$000(Lzendesk/support/request/ActionCreateComment;)Lzendesk/support/request/StateMessage;

    move-result-object v3

    invoke-virtual {v3}, Lzendesk/support/request/StateMessage;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "This request (%s) is closed. Error: \'%s\'. Message Id: %d"

    .line 137
    invoke-static {v2, v0, v1}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lzendesk/support/request/ActionCreateComment$2;->val$dispatcher:Lzendesk/support/suas/Dispatcher;

    iget-object v1, p0, Lzendesk/support/request/ActionCreateComment$2;->this$0:Lzendesk/support/request/ActionCreateComment;

    invoke-static {v1}, Lzendesk/support/request/ActionCreateComment;->access$200(Lzendesk/support/request/ActionCreateComment;)Lzendesk/support/request/ActionFactory;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/support/request/ActionFactory;->requestClosed()Lzendesk/support/suas/Action;

    move-result-object v1

    invoke-interface {v0, v1}, Lzendesk/support/suas/Dispatcher;->dispatch(Lzendesk/support/suas/Action;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lzendesk/support/request/ActionCreateComment$2;->val$dispatcher:Lzendesk/support/suas/Dispatcher;

    iget-object v1, p0, Lzendesk/support/request/ActionCreateComment$2;->this$0:Lzendesk/support/request/ActionCreateComment;

    invoke-static {v1}, Lzendesk/support/request/ActionCreateComment;->access$200(Lzendesk/support/request/ActionCreateComment;)Lzendesk/support/request/ActionFactory;

    move-result-object v1

    iget-object v2, p0, Lzendesk/support/request/ActionCreateComment$2;->this$0:Lzendesk/support/request/ActionCreateComment;

    invoke-static {v2}, Lzendesk/support/request/ActionCreateComment;->access$000(Lzendesk/support/request/ActionCreateComment;)Lzendesk/support/request/StateMessage;

    move-result-object v2

    invoke-virtual {v2, p1}, Lzendesk/support/request/StateMessage;->withError(Lcom/zendesk/service/ErrorResponse;)Lzendesk/support/request/StateMessage;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lzendesk/support/request/ActionFactory;->createCommentError(Lcom/zendesk/service/ErrorResponse;Lzendesk/support/request/StateMessage;)Lzendesk/support/suas/Action;

    move-result-object p1

    invoke-interface {v0, p1}, Lzendesk/support/suas/Dispatcher;->dispatch(Lzendesk/support/suas/Action;)V

    .line 142
    iget-object p1, p0, Lzendesk/support/request/ActionCreateComment$2;->val$callback:Lzendesk/support/request/AsyncMiddleware$Callback;

    invoke-interface {p1}, Lzendesk/support/request/AsyncMiddleware$Callback;->done()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 119
    check-cast p1, Lzendesk/support/Comment;

    invoke-virtual {p0, p1}, Lzendesk/support/request/ActionCreateComment$2;->onSuccess(Lzendesk/support/Comment;)V

    return-void
.end method

.method public onSuccess(Lzendesk/support/Comment;)V
    .locals 9

    .line 122
    iget-object v0, p0, Lzendesk/support/request/ActionCreateComment$2;->this$0:Lzendesk/support/request/ActionCreateComment;

    invoke-static {v0}, Lzendesk/support/request/ActionCreateComment;->access$000(Lzendesk/support/request/ActionCreateComment;)Lzendesk/support/request/StateMessage;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/request/ActionCreateComment$2;->val$attachments:Lzendesk/support/request/AttachmentUploadService$AttachmentUploadResult;

    invoke-virtual {v1}, Lzendesk/support/request/AttachmentUploadService$AttachmentUploadResult;->getRequestAttachments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzendesk/support/request/StateMessage;->withAttachments(Ljava/util/List;)Lzendesk/support/request/StateMessage;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lzendesk/support/request/StateMessage;->withDelivered()Lzendesk/support/request/StateMessage;

    move-result-object v2

    .line 124
    iget-object v0, p0, Lzendesk/support/request/ActionCreateComment$2;->val$dispatcher:Lzendesk/support/suas/Dispatcher;

    iget-object v1, p0, Lzendesk/support/request/ActionCreateComment$2;->this$0:Lzendesk/support/request/ActionCreateComment;

    invoke-static {v1}, Lzendesk/support/request/ActionCreateComment;->access$200(Lzendesk/support/request/ActionCreateComment;)Lzendesk/support/request/ActionFactory;

    move-result-object v7

    new-instance v8, Lzendesk/support/request/ActionCreateComment$CreateCommentResult;

    iget-object v3, p0, Lzendesk/support/request/ActionCreateComment$2;->val$requestId:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Lzendesk/support/Comment;->getId()Ljava/lang/Long;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lzendesk/support/request/ActionCreateComment$2;->val$attachments:Lzendesk/support/request/AttachmentUploadService$AttachmentUploadResult;

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lzendesk/support/request/ActionCreateComment$CreateCommentResult;-><init>(Lzendesk/support/request/StateMessage;Ljava/lang/String;JLzendesk/support/request/AttachmentUploadService$AttachmentUploadResult;)V

    invoke-virtual {v7, v8}, Lzendesk/support/request/ActionFactory;->createCommentSuccess(Lzendesk/support/request/ActionCreateComment$CreateCommentResult;)Lzendesk/support/suas/Action;

    move-result-object p1

    invoke-interface {v0, p1}, Lzendesk/support/suas/Dispatcher;->dispatch(Lzendesk/support/suas/Action;)V

    .line 126
    iget-object p1, p0, Lzendesk/support/request/ActionCreateComment$2;->this$0:Lzendesk/support/request/ActionCreateComment;

    invoke-static {p1}, Lzendesk/support/request/ActionCreateComment;->access$300(Lzendesk/support/request/ActionCreateComment;)Lzendesk/support/RequestProvider;

    move-result-object p1

    iget-object v0, p0, Lzendesk/support/request/ActionCreateComment$2;->val$requestId:Ljava/lang/String;

    iget-object v1, p0, Lzendesk/support/request/ActionCreateComment$2;->val$con:Lzendesk/support/request/StateConversation;

    invoke-virtual {v1}, Lzendesk/support/request/StateConversation;->getMessageIdMapper()Lzendesk/support/request/StateIdMapper;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/support/request/StateIdMapper;->getRemoteIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lzendesk/support/RequestProvider;->markRequestAsRead(Ljava/lang/String;I)V

    .line 127
    iget-object p1, p0, Lzendesk/support/request/ActionCreateComment$2;->val$callback:Lzendesk/support/request/AsyncMiddleware$Callback;

    invoke-interface {p1}, Lzendesk/support/request/AsyncMiddleware$Callback;->done()V

    return-void
.end method
