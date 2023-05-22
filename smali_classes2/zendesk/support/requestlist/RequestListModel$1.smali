.class Lzendesk/support/requestlist/RequestListModel$1;
.super Lcom/zendesk/service/ZendeskCallback;
.source "RequestListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/requestlist/RequestListModel;->loadItems(ZLzendesk/support/SupportSdkSettings;Lcom/zendesk/service/ZendeskCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/service/ZendeskCallback<",
        "Ljava/util/List<",
        "Lzendesk/support/requestlist/RequestInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/requestlist/RequestListModel;

.field final synthetic val$callback:Lcom/zendesk/service/ZendeskCallback;

.field final synthetic val$supportSdkSettings:Lzendesk/support/SupportSdkSettings;


# direct methods
.method constructor <init>(Lzendesk/support/requestlist/RequestListModel;Lzendesk/support/SupportSdkSettings;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lzendesk/support/requestlist/RequestListModel$1;->this$0:Lzendesk/support/requestlist/RequestListModel;

    iput-object p2, p0, Lzendesk/support/requestlist/RequestListModel$1;->val$supportSdkSettings:Lzendesk/support/SupportSdkSettings;

    iput-object p3, p0, Lzendesk/support/requestlist/RequestListModel$1;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-direct {p0}, Lcom/zendesk/service/ZendeskCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/zendesk/service/ErrorResponse;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListModel$1;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-virtual {v0, p1}, Lcom/zendesk/service/ZendeskCallback;->onError(Lcom/zendesk/service/ErrorResponse;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 72
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lzendesk/support/requestlist/RequestListModel$1;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/requestlist/RequestInfo;",
            ">;)V"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListModel$1;->this$0:Lzendesk/support/requestlist/RequestListModel;

    iget-object v1, p0, Lzendesk/support/requestlist/RequestListModel$1;->val$supportSdkSettings:Lzendesk/support/SupportSdkSettings;

    .line 76
    invoke-virtual {v1}, Lzendesk/support/SupportSdkSettings;->isShowClosedRequests()Z

    move-result v1

    .line 75
    invoke-static {v0, p1, v1}, Lzendesk/support/requestlist/RequestListModel;->access$000(Lzendesk/support/requestlist/RequestListModel;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    .line 77
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListModel$1;->this$0:Lzendesk/support/requestlist/RequestListModel;

    invoke-static {v0}, Lzendesk/support/requestlist/RequestListModel;->access$100(Lzendesk/support/requestlist/RequestListModel;)Lcom/zendesk/func/ZFunc1;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zendesk/util/CollectionUtils;->map(Ljava/util/Collection;Lcom/zendesk/func/ZFunc1;)Ljava/util/List;

    move-result-object p1

    .line 78
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListModel$1;->this$0:Lzendesk/support/requestlist/RequestListModel;

    invoke-static {v0}, Lzendesk/support/requestlist/RequestListModel;->access$200(Lzendesk/support/requestlist/RequestListModel;)Lzendesk/core/MemoryCache;

    move-result-object v0

    const-string v1, "request_list_items"

    invoke-interface {v0, v1, p1}, Lzendesk/core/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListModel$1;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-virtual {v0, p1}, Lcom/zendesk/service/ZendeskCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
