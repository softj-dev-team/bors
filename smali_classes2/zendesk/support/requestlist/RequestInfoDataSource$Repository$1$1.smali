.class Lzendesk/support/requestlist/RequestInfoDataSource$Repository$1$1;
.super Lcom/zendesk/service/ZendeskCallback;
.source "RequestInfoDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/requestlist/RequestInfoDataSource$Repository$1;->onSuccess(Ljava/util/List;)V
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
.field final synthetic this$1:Lzendesk/support/requestlist/RequestInfoDataSource$Repository$1;

.field final synthetic val$localInfos:Ljava/util/List;


# direct methods
.method constructor <init>(Lzendesk/support/requestlist/RequestInfoDataSource$Repository$1;Ljava/util/List;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Repository$1$1;->this$1:Lzendesk/support/requestlist/RequestInfoDataSource$Repository$1;

    iput-object p2, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Repository$1$1;->val$localInfos:Ljava/util/List;

    invoke-direct {p0}, Lcom/zendesk/service/ZendeskCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/zendesk/service/ErrorResponse;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Repository$1$1;->this$1:Lzendesk/support/requestlist/RequestInfoDataSource$Repository$1;

    iget-object v0, v0, Lzendesk/support/requestlist/RequestInfoDataSource$Repository$1;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-virtual {v0, p1}, Lcom/zendesk/service/ZendeskCallback;->onError(Lcom/zendesk/service/ErrorResponse;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lzendesk/support/requestlist/RequestInfoDataSource$Repository$1$1;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/requestlist/RequestInfo;",
            ">;)V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Repository$1$1;->this$1:Lzendesk/support/requestlist/RequestInfoDataSource$Repository$1;

    iget-object v0, v0, Lzendesk/support/requestlist/RequestInfoDataSource$Repository$1;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    iget-object v1, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Repository$1$1;->this$1:Lzendesk/support/requestlist/RequestInfoDataSource$Repository$1;

    iget-object v1, v1, Lzendesk/support/requestlist/RequestInfoDataSource$Repository$1;->this$0:Lzendesk/support/requestlist/RequestInfoDataSource$Repository;

    invoke-static {v1}, Lzendesk/support/requestlist/RequestInfoDataSource$Repository;->access$000(Lzendesk/support/requestlist/RequestInfoDataSource$Repository;)Lzendesk/support/requestlist/RequestInfoMerger;

    move-result-object v1

    iget-object v2, p0, Lzendesk/support/requestlist/RequestInfoDataSource$Repository$1$1;->val$localInfos:Ljava/util/List;

    invoke-virtual {v1, v2, p1}, Lzendesk/support/requestlist/RequestInfoMerger;->merge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zendesk/service/ZendeskCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
