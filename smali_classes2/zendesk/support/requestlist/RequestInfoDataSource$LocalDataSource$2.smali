.class Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource$2;
.super Lcom/zendesk/service/ZendeskCallback;
.source "RequestInfoDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;->remove(Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V
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
.field final synthetic this$0:Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;

.field final synthetic val$callback:Lcom/zendesk/service/ZendeskCallback;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource$2;->this$0:Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;

    iput-object p2, p0, Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource$2;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource$2;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-direct {p0}, Lcom/zendesk/service/ZendeskCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/zendesk/service/ErrorResponse;)V
    .locals 1

    .line 306
    iget-object v0, p0, Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource$2;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0, p1}, Lcom/zendesk/service/ZendeskCallback;->onError(Lcom/zendesk/service/ErrorResponse;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 290
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource$2;->onSuccess(Ljava/util/List;)V

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

    .line 293
    new-instance v0, Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource$2$1;

    invoke-direct {v0, p0}, Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource$2$1;-><init>(Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource$2;)V

    invoke-static {p1, v0}, Lcom/zendesk/util/CollectionUtils;->filter(Ljava/util/Collection;Lcom/zendesk/func/ZFunc1;)Ljava/util/List;

    move-result-object p1

    .line 301
    iget-object v0, p0, Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource$2;->this$0:Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;

    invoke-static {v0}, Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;->access$900(Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;)Lzendesk/support/requestlist/RequestInfoDataSource$Disk;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource$2;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-virtual {v0, p1, v1}, Lzendesk/support/requestlist/RequestInfoDataSource$Disk;->save(Ljava/util/List;Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method
