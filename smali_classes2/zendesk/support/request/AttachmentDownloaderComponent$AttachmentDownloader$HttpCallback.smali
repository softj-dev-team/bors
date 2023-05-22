.class Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$HttpCallback;
.super Lcom/zendesk/service/ZendeskCallback;
.source "AttachmentDownloaderComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HttpCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/service/ZendeskCallback<",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/zendesk/service/ZendeskCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/belvedere/MediaResult;",
            ">;"
        }
    .end annotation
.end field

.field private final request:Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$Request;

.field private final requestAttachment:Lzendesk/support/request/StateRequestAttachment;

.field final synthetic this$0:Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;


# direct methods
.method constructor <init>(Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$Request;Lzendesk/support/request/StateRequestAttachment;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$Request;",
            "Lzendesk/support/request/StateRequestAttachment;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/belvedere/MediaResult;",
            ">;)V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$HttpCallback;->this$0:Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;

    invoke-direct {p0}, Lcom/zendesk/service/ZendeskCallback;-><init>()V

    .line 164
    iput-object p2, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$HttpCallback;->request:Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$Request;

    .line 165
    iput-object p3, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$HttpCallback;->requestAttachment:Lzendesk/support/request/StateRequestAttachment;

    .line 166
    iput-object p4, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$HttpCallback;->callback:Lcom/zendesk/service/ZendeskCallback;

    return-void
.end method


# virtual methods
.method public onError(Lcom/zendesk/service/ErrorResponse;)V
    .locals 3

    .line 179
    iget-object v0, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$HttpCallback;->this$0:Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;

    iget-object v1, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$HttpCallback;->requestAttachment:Lzendesk/support/request/StateRequestAttachment;

    invoke-virtual {v1}, Lzendesk/support/request/StateRequestAttachment;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$HttpCallback;->callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-static {v0, v1, p1, v2}, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;->access$300(Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;Ljava/lang/String;Lcom/zendesk/service/ErrorResponse;Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 156
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$HttpCallback;->onSuccess(Lokhttp3/ResponseBody;)V

    return-void
.end method

.method public onSuccess(Lokhttp3/ResponseBody;)V
    .locals 6

    .line 171
    iget-object v0, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$HttpCallback;->this$0:Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;

    .line 172
    invoke-static {v0}, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;->access$400(Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;)Lzendesk/belvedere/Belvedere;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$HttpCallback;->request:Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$Request;

    invoke-virtual {v1}, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$Request;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$HttpCallback;->request:Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$Request;

    invoke-virtual {v2}, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$Request;->getRemoteAttachmentId()J

    move-result-wide v2

    iget-object v4, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$HttpCallback;->requestAttachment:Lzendesk/support/request/StateRequestAttachment;

    .line 173
    invoke-virtual {v4}, Lzendesk/support/request/StateRequestAttachment;->getName()Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-static {v0, v1, v2, v3, v4}, Lzendesk/support/request/UtilsAttachment;->getLocalFile(Lzendesk/belvedere/Belvedere;Ljava/lang/String;JLjava/lang/String;)Lzendesk/belvedere/MediaResult;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$HttpCallback;->this$0:Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;

    invoke-static {v1}, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;->access$500(Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;)Lzendesk/support/request/AttachmentDownloadService;

    move-result-object v1

    new-instance v2, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$CacheCallback;

    iget-object v3, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$HttpCallback;->this$0:Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;

    iget-object v4, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$HttpCallback;->requestAttachment:Lzendesk/support/request/StateRequestAttachment;

    iget-object v5, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$HttpCallback;->callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-direct {v2, v3, v4, v5}, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$CacheCallback;-><init>(Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;Lzendesk/support/request/StateRequestAttachment;Lcom/zendesk/service/ZendeskCallback;)V

    invoke-virtual {v1, p1, v0, v2}, Lzendesk/support/request/AttachmentDownloadService;->storeAttachment(Lokhttp3/ResponseBody;Lzendesk/belvedere/MediaResult;Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method
