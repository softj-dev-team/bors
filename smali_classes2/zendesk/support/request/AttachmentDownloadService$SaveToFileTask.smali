.class Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;
.super Ljava/lang/Object;
.source "AttachmentDownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/AttachmentDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveToFileTask"
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

.field private final destFile:Lzendesk/belvedere/MediaResult;

.field private final responseBody:Lokhttp3/ResponseBody;


# direct methods
.method private constructor <init>(Lokhttp3/ResponseBody;Lzendesk/belvedere/MediaResult;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/ResponseBody;",
            "Lzendesk/belvedere/MediaResult;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/belvedere/MediaResult;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;->responseBody:Lokhttp3/ResponseBody;

    .line 72
    iput-object p2, p0, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;->destFile:Lzendesk/belvedere/MediaResult;

    .line 73
    iput-object p3, p0, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;->callback:Lcom/zendesk/service/ZendeskCallback;

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/ResponseBody;Lzendesk/belvedere/MediaResult;Lcom/zendesk/service/ZendeskCallback;Lzendesk/support/request/AttachmentDownloadService$1;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;-><init>(Lokhttp3/ResponseBody;Lzendesk/belvedere/MediaResult;Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    .line 82
    :try_start_0
    iget-object v1, p0, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;->destFile:Lzendesk/belvedere/MediaResult;

    invoke-virtual {v1}, Lzendesk/belvedere/MediaResult;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :try_start_1
    iget-object v2, p0, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v2

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    invoke-static {v1}, Lzendesk/support/Streams;->closeQuietly(Ljava/io/Closeable;)V

    .line 89
    iget-object v1, p0, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;->responseBody:Lokhttp3/ResponseBody;

    invoke-static {v1}, Lzendesk/support/Streams;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_0
    :try_start_2
    const-string v2, "RequestActivity"

    const-string v3, "Unable to save attachment to disk. Error: \'%s\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 85
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    new-instance v2, Lcom/zendesk/service/ErrorResponseAdapter;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/zendesk/service/ErrorResponseAdapter;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    invoke-static {v1}, Lzendesk/support/Streams;->closeQuietly(Ljava/io/Closeable;)V

    .line 89
    iget-object v0, p0, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;->responseBody:Lokhttp3/ResponseBody;

    invoke-static {v0}, Lzendesk/support/Streams;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v2

    .line 92
    :goto_1
    iget-object v1, p0, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;->callback:Lcom/zendesk/service/ZendeskCallback;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;->destFile:Lzendesk/belvedere/MediaResult;

    invoke-virtual {v1, v0}, Lcom/zendesk/service/ZendeskCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_2

    .line 96
    :cond_0
    invoke-virtual {v1, v0}, Lcom/zendesk/service/ZendeskCallback;->onError(Lcom/zendesk/service/ErrorResponse;)V

    :cond_1
    :goto_2
    return-void

    :catchall_1
    move-exception v0

    .line 88
    :goto_3
    invoke-static {v1}, Lzendesk/support/Streams;->closeQuietly(Ljava/io/Closeable;)V

    .line 89
    iget-object v1, p0, Lzendesk/support/request/AttachmentDownloadService$SaveToFileTask;->responseBody:Lokhttp3/ResponseBody;

    invoke-static {v1}, Lzendesk/support/Streams;->closeQuietly(Ljava/io/Closeable;)V

    .line 90
    throw v0
.end method
