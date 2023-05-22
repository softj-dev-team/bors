.class Lzendesk/support/RequestCreator$1;
.super Lcom/zendesk/service/ZendeskCallback;
.source "RequestCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/RequestCreator;->uploadAttachments(Lzendesk/support/CreateRequest;Ljava/util/List;Lcom/zendesk/service/ZendeskCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/service/ZendeskCallback<",
        "Lzendesk/support/UploadResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/RequestCreator;

.field final synthetic val$attachmentCount:I

.field final synthetic val$attachmentTokens:Ljava/util/List;

.field final synthetic val$callback:Lcom/zendesk/service/ZendeskCallback;

.field final synthetic val$request:Lzendesk/support/CreateRequest;

.field final synthetic val$uploadCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lzendesk/support/RequestCreator;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;ILzendesk/support/CreateRequest;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lzendesk/support/RequestCreator$1;->this$0:Lzendesk/support/RequestCreator;

    iput-object p2, p0, Lzendesk/support/RequestCreator$1;->val$attachmentTokens:Ljava/util/List;

    iput-object p3, p0, Lzendesk/support/RequestCreator$1;->val$uploadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p4, p0, Lzendesk/support/RequestCreator$1;->val$attachmentCount:I

    iput-object p5, p0, Lzendesk/support/RequestCreator$1;->val$request:Lzendesk/support/CreateRequest;

    iput-object p6, p0, Lzendesk/support/RequestCreator$1;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-direct {p0}, Lcom/zendesk/service/ZendeskCallback;-><init>()V

    return-void
.end method

.method private proceedWithRequestCreationIfFinishedUploading()V
    .locals 3

    .line 72
    iget-object v0, p0, Lzendesk/support/RequestCreator$1;->val$uploadCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget v1, p0, Lzendesk/support/RequestCreator$1;->val$attachmentCount:I

    if-ne v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lzendesk/support/RequestCreator$1;->val$request:Lzendesk/support/CreateRequest;

    iget-object v1, p0, Lzendesk/support/RequestCreator$1;->val$attachmentTokens:Ljava/util/List;

    invoke-virtual {v0, v1}, Lzendesk/support/CreateRequest;->setAttachments(Ljava/util/List;)V

    .line 74
    iget-object v0, p0, Lzendesk/support/RequestCreator$1;->this$0:Lzendesk/support/RequestCreator;

    invoke-static {v0}, Lzendesk/support/RequestCreator;->access$000(Lzendesk/support/RequestCreator;)Lzendesk/support/RequestProvider;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/RequestCreator$1;->val$request:Lzendesk/support/CreateRequest;

    iget-object v2, p0, Lzendesk/support/RequestCreator$1;->val$callback:Lcom/zendesk/service/ZendeskCallback;

    invoke-interface {v0, v1, v2}, Lzendesk/support/RequestProvider;->createRequest(Lzendesk/support/CreateRequest;Lcom/zendesk/service/ZendeskCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onError(Lcom/zendesk/service/ErrorResponse;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lzendesk/support/RequestCreator$1;->proceedWithRequestCreationIfFinishedUploading()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 58
    check-cast p1, Lzendesk/support/UploadResponse;

    invoke-virtual {p0, p1}, Lzendesk/support/RequestCreator$1;->onSuccess(Lzendesk/support/UploadResponse;)V

    return-void
.end method

.method public onSuccess(Lzendesk/support/UploadResponse;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lzendesk/support/RequestCreator$1;->val$attachmentTokens:Ljava/util/List;

    invoke-virtual {p1}, Lzendesk/support/UploadResponse;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-direct {p0}, Lzendesk/support/RequestCreator$1;->proceedWithRequestCreationIfFinishedUploading()V

    return-void
.end method
