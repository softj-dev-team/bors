.class Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;
.super Ljava/lang/Object;
.source "AttachmentDownloaderComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/AttachmentDownloaderComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AttachmentDownloader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$Request;,
        Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$HttpCallback;,
        Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$CacheCallback;
    }
.end annotation


# instance fields
.field private final attachmentIo:Lzendesk/support/request/AttachmentDownloadService;

.field private final belvedere:Lzendesk/belvedere/Belvedere;

.field private final downloadingHistory:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lzendesk/belvedere/Belvedere;Lzendesk/support/request/AttachmentDownloadService;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;->belvedere:Lzendesk/belvedere/Belvedere;

    .line 113
    iput-object p2, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;->attachmentIo:Lzendesk/support/request/AttachmentDownloadService;

    .line 114
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;->downloadingHistory:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$200(Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;)Ljava/util/Set;
    .locals 0

    .line 105
    iget-object p0, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;->downloadingHistory:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$300(Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;Ljava/lang/String;Lcom/zendesk/service/ErrorResponse;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;->handleError(Ljava/lang/String;Lcom/zendesk/service/ErrorResponse;Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method static synthetic access$400(Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;)Lzendesk/belvedere/Belvedere;
    .locals 0

    .line 105
    iget-object p0, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;->belvedere:Lzendesk/belvedere/Belvedere;

    return-object p0
.end method

.method static synthetic access$500(Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;)Lzendesk/support/request/AttachmentDownloadService;
    .locals 0

    .line 105
    iget-object p0, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;->attachmentIo:Lzendesk/support/request/AttachmentDownloadService;

    return-object p0
.end method

.method private handleError(Ljava/lang/String;Lcom/zendesk/service/ErrorResponse;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;->downloadingHistory:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    .line 130
    invoke-virtual {p3, p2}, Lcom/zendesk/service/ZendeskCallback;->onError(Lcom/zendesk/service/ErrorResponse;)V

    :cond_0
    return-void
.end method


# virtual methods
.method download(Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$Request;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$Request;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/belvedere/MediaResult;",
            ">;)V"
        }
    .end annotation

    .line 118
    invoke-virtual {p1}, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$Request;->getRequestAttachment()Lzendesk/support/request/StateRequestAttachment;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lzendesk/support/request/StateRequestAttachment;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 121
    iget-object v2, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;->downloadingHistory:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    iget-object v2, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;->downloadingHistory:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v2, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;->attachmentIo:Lzendesk/support/request/AttachmentDownloadService;

    new-instance v3, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$HttpCallback;

    invoke-direct {v3, p0, p1, v0, p2}, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$HttpCallback;-><init>(Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$Request;Lzendesk/support/request/StateRequestAttachment;Lcom/zendesk/service/ZendeskCallback;)V

    invoke-virtual {v2, v1, v3}, Lzendesk/support/request/AttachmentDownloadService;->downloadAttachment(Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V

    :cond_0
    return-void
.end method
