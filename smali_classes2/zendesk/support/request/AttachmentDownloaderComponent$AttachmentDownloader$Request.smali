.class Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$Request;
.super Ljava/lang/Object;
.source "AttachmentDownloaderComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Request"
.end annotation


# instance fields
.field private final remoteAttachmentId:J

.field private final requestAttachment:Lzendesk/support/request/StateRequestAttachment;

.field private final requestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JLzendesk/support/request/StateRequestAttachment;)V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$Request;->requestId:Ljava/lang/String;

    .line 191
    iput-wide p2, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$Request;->remoteAttachmentId:J

    .line 192
    iput-object p4, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$Request;->requestAttachment:Lzendesk/support/request/StateRequestAttachment;

    return-void
.end method


# virtual methods
.method getRemoteAttachmentId()J
    .locals 2

    .line 200
    iget-wide v0, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$Request;->remoteAttachmentId:J

    return-wide v0
.end method

.method getRequestAttachment()Lzendesk/support/request/StateRequestAttachment;
    .locals 1

    .line 204
    iget-object v0, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$Request;->requestAttachment:Lzendesk/support/request/StateRequestAttachment;

    return-object v0
.end method

.method getRequestId()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lzendesk/support/request/AttachmentDownloaderComponent$AttachmentDownloader$Request;->requestId:Ljava/lang/String;

    return-object v0
.end method
