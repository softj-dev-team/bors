.class Lzendesk/support/ZendeskUploadService;
.super Ljava/lang/Object;
.source "ZendeskUploadService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ZendeskUploadService"


# instance fields
.field private final uploadService:Lzendesk/support/UploadService;


# direct methods
.method public constructor <init>(Lzendesk/support/UploadService;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lzendesk/support/ZendeskUploadService;->uploadService:Lzendesk/support/UploadService;

    return-void
.end method


# virtual methods
.method deleteAttachment(Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lzendesk/support/ZendeskUploadService;->uploadService:Lzendesk/support/UploadService;

    .line 53
    invoke-interface {v0, p1}, Lzendesk/support/UploadService;->deleteAttachment(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/zendesk/service/RetrofitZendeskCallbackAdapter;

    invoke-direct {v0, p2}, Lcom/zendesk/service/RetrofitZendeskCallbackAdapter;-><init>(Lcom/zendesk/service/ZendeskCallback;)V

    .line 54
    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method uploadAttachment(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/support/UploadResponseWrapper;",
            ">;)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lzendesk/support/ZendeskUploadService;->uploadService:Lzendesk/support/UploadService;

    .line 40
    invoke-static {p3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p3

    invoke-static {p3, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lzendesk/support/UploadService;->uploadAttachment(Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/zendesk/service/RetrofitZendeskCallbackAdapter;

    invoke-direct {p2, p4}, Lcom/zendesk/service/RetrofitZendeskCallbackAdapter;-><init>(Lcom/zendesk/service/ZendeskCallback;)V

    .line 41
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
