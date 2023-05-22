.class public Lcom/sdkbox/services/XMLHttpRequest;
.super Ljava/lang/Object;
.source "XMLHttpRequest.java"

# interfaces
.implements Lcom/sdkbox/services/HttpRequest;


# instance fields
.field private aborted:Z

.field private async:Z

.field private bodyContents:Ljava/lang/String;

.field private connection:Ljava/net/HttpURLConnection;

.field private contentLength:I

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sdkbox/services/HttpRequestListener;",
            ">;"
        }
    .end annotation
.end field

.field private method:Ljava/lang/String;

.field private overrideMimeType:Ljava/lang/String;

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private paramsAsBodyContents:Z

.field private readyState:Lcom/sdkbox/services/HttpRequestReadyState;

.field private requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private response:[B

.field private responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private responseMimeType:Ljava/lang/String;

.field private responseText:Ljava/lang/String;

.field private saveContents:Z

.field private saveFlags:I

.field private savePath:Ljava/lang/String;

.field private savedContentsOk:Z

.field private status:I

.field private timeout:I

.field private withCredentials:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/sdkbox/services/HttpRequestReadyState;->UNSENT:Lcom/sdkbox/services/HttpRequestReadyState;

    iput-object v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->readyState:Lcom/sdkbox/services/HttpRequestReadyState;

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->status:I

    const-string v1, ""

    .line 31
    iput-object v1, p0, Lcom/sdkbox/services/XMLHttpRequest;->responseText:Ljava/lang/String;

    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lcom/sdkbox/services/XMLHttpRequest;->response:[B

    .line 33
    iput v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->timeout:I

    const-string v2, "GET"

    .line 34
    iput-object v2, p0, Lcom/sdkbox/services/XMLHttpRequest;->method:Ljava/lang/String;

    .line 35
    iput v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->contentLength:I

    .line 36
    iput-object v1, p0, Lcom/sdkbox/services/XMLHttpRequest;->bodyContents:Ljava/lang/String;

    .line 37
    iput-boolean v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->paramsAsBodyContents:Z

    .line 38
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sdkbox/services/XMLHttpRequest;->parameters:Ljava/util/Map;

    .line 39
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sdkbox/services/XMLHttpRequest;->requestHeaders:Ljava/util/Map;

    .line 40
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sdkbox/services/XMLHttpRequest;->responseHeaders:Ljava/util/Map;

    const/4 v2, 0x1

    .line 41
    iput-boolean v2, p0, Lcom/sdkbox/services/XMLHttpRequest;->async:Z

    .line 42
    iput-boolean v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->aborted:Z

    .line 43
    iput-object v1, p0, Lcom/sdkbox/services/XMLHttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 44
    iput-object v1, p0, Lcom/sdkbox/services/XMLHttpRequest;->savePath:Ljava/lang/String;

    .line 45
    iput v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->saveFlags:I

    .line 46
    iput-boolean v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->saveContents:Z

    .line 47
    iput-boolean v2, p0, Lcom/sdkbox/services/XMLHttpRequest;->savedContentsOk:Z

    .line 50
    iput-object v1, p0, Lcom/sdkbox/services/XMLHttpRequest;->listeners:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->listeners:Ljava/util/List;

    return-void
.end method

.method private setupNativeObserver()V
    .locals 1

    .line 55
    new-instance v0, Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener;

    invoke-direct {v0}, Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sdkbox/services/XMLHttpRequest;->addEventListener(Lcom/sdkbox/services/HttpRequestListener;)V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->aborted:Z

    .line 71
    invoke-virtual {p0}, Lcom/sdkbox/services/XMLHttpRequest;->notifyAborted()V

    return-void
.end method

.method public addEventListener(Lcom/sdkbox/services/HttpRequestListener;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public deleteFile()Z
    .locals 2

    .line 459
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sdkbox/services/XMLHttpRequest;->savePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected dumpHeaders()V
    .locals 6

    .line 317
    iget-object v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->responseHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Header "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v3, "null"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "XMLHttpRequest"

    invoke-static {v5, v2, v4}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 321
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/Object;

    .line 322
    invoke-static {v5, v2, v4}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "null value"

    .line 325
    invoke-static {v5, v2, v1}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getAllResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->responseHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getReadyState()I
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->readyState:Lcom/sdkbox/services/HttpRequestReadyState;

    invoke-virtual {v0}, Lcom/sdkbox/services/HttpRequestReadyState;->getValue()I

    move-result v0

    return v0
.end method

.method public getResponse()[B
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->response:[B

    return-object v0
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->responseHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method protected getResponseHeaders()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    iget v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->status:I

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    .line 332
    iget-object v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->responseHeaders:Ljava/util/Map;

    .line 333
    sget-object v0, Lcom/sdkbox/services/HttpRequestReadyState;->HEADERS_RECEIVED:Lcom/sdkbox/services/HttpRequestReadyState;

    invoke-virtual {p0, v0}, Lcom/sdkbox/services/XMLHttpRequest;->setReadyState(Lcom/sdkbox/services/HttpRequestReadyState;)V

    :try_start_0
    const-string v0, "Content-Type"

    .line 335
    invoke-virtual {p0, v0}, Lcom/sdkbox/services/XMLHttpRequest;->getResponseHeader(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->responseMimeType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "unknown"

    .line 337
    iput-object v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->responseMimeType:Ljava/lang/String;

    :goto_0
    const/4 v0, 0x1

    :try_start_1
    const-string v2, "Content-Length"

    .line 340
    invoke-virtual {p0, v2}, Lcom/sdkbox/services/XMLHttpRequest;->getResponseHeader(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sdkbox/services/XMLHttpRequest;->contentLength:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    const/4 v1, -0x1

    .line 343
    iput v1, p0, Lcom/sdkbox/services/XMLHttpRequest;->contentLength:I

    return v0

    .line 347
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response code="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sdkbox/services/XMLHttpRequest;->status:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "XMLHttpRequest"

    invoke-static {v3, v0, v2}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public getResponseText()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->responseText:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseType()Ljava/lang/String;
    .locals 1

    const-string v0, "text/html"

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 254
    iget v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->status:I

    return v0
.end method

.method public getTimeout()I
    .locals 1

    .line 210
    iget v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->timeout:I

    return v0
.end method

.method public isSavedContentOk()Z
    .locals 1

    .line 455
    iget-boolean v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->savedContentsOk:Z

    return v0
.end method

.method public isWithCredentials()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->withCredentials:Z

    return v0
.end method

.method protected notifyAborted()V
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sdkbox/services/HttpRequestListener;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sdkbox/services/HttpRequestListener;

    check-cast v0, [Lcom/sdkbox/services/HttpRequestListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 265
    invoke-interface {v3, p0}, Lcom/sdkbox/services/HttpRequestListener;->onAbort(Lcom/sdkbox/services/HttpRequest;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyError(Ljava/lang/String;)V
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sdkbox/services/HttpRequestListener;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sdkbox/services/HttpRequestListener;

    check-cast v0, [Lcom/sdkbox/services/HttpRequestListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 292
    invoke-interface {v3, p0, p1}, Lcom/sdkbox/services/HttpRequestListener;->onError(Lcom/sdkbox/services/HttpRequest;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyOnLoad()V
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sdkbox/services/HttpRequestListener;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sdkbox/services/HttpRequestListener;

    check-cast v0, [Lcom/sdkbox/services/HttpRequestListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 299
    invoke-interface {v3, p0}, Lcom/sdkbox/services/HttpRequestListener;->onLoad(Lcom/sdkbox/services/HttpRequest;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyProgress(F)V
    .locals 4

    .line 281
    iget-boolean v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->aborted:Z

    if-eqz v0, :cond_0

    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sdkbox/services/HttpRequestListener;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sdkbox/services/HttpRequestListener;

    check-cast v0, [Lcom/sdkbox/services/HttpRequestListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 285
    invoke-interface {v3, p0, p1}, Lcom/sdkbox/services/HttpRequestListener;->onProgress(Lcom/sdkbox/services/HttpRequest;F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected notifyStateChange()V
    .locals 5

    .line 271
    iget-boolean v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->aborted:Z

    if-eqz v0, :cond_0

    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sdkbox/services/HttpRequestListener;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sdkbox/services/HttpRequestListener;

    check-cast v0, [Lcom/sdkbox/services/HttpRequestListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 275
    iget-object v4, p0, Lcom/sdkbox/services/XMLHttpRequest;->readyState:Lcom/sdkbox/services/HttpRequestReadyState;

    invoke-interface {v3, p0, v4}, Lcom/sdkbox/services/HttpRequestListener;->onReadyStateChange(Lcom/sdkbox/services/HttpRequest;Lcom/sdkbox/services/HttpRequestReadyState;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected notifyTimeout()V
    .locals 4

    .line 305
    iget-object v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sdkbox/services/HttpRequestListener;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sdkbox/services/HttpRequestListener;

    check-cast v0, [Lcom/sdkbox/services/HttpRequestListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 306
    invoke-interface {v3, p0}, Lcom/sdkbox/services/HttpRequestListener;->onTimeout(Lcom/sdkbox/services/HttpRequest;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public open(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->async:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/sdkbox/services/XMLHttpRequest;->open(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public open(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 81
    invoke-virtual/range {v0 .. v5}, Lcom/sdkbox/services/XMLHttpRequest;->open(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public open(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public overrideMimeType(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/sdkbox/services/XMLHttpRequest;->overrideMimeType:Ljava/lang/String;

    return-void
.end method

.method protected readAsync()V
    .locals 0

    .line 352
    invoke-virtual {p0}, Lcom/sdkbox/services/XMLHttpRequest;->readSync()V

    return-void
.end method

.method protected readContents()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    iget-boolean v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->saveContents:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 396
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 398
    :try_start_0
    iget-object v2, p0, Lcom/sdkbox/services/XMLHttpRequest;->savePath:Ljava/lang/String;

    iget v3, p0, Lcom/sdkbox/services/XMLHttpRequest;->saveFlags:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 400
    :catch_0
    iput-boolean v1, p0, Lcom/sdkbox/services/XMLHttpRequest;->savedContentsOk:Z

    :cond_0
    const/4 v0, 0x0

    .line 404
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcom/sdkbox/services/XMLHttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v4, 0x0

    .line 408
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_4

    .line 412
    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    iget-boolean v6, p0, Lcom/sdkbox/services/XMLHttpRequest;->saveContents:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v6, :cond_2

    if-eqz v0, :cond_2

    .line 415
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 417
    :catch_1
    :try_start_3
    iput-boolean v1, p0, Lcom/sdkbox/services/XMLHttpRequest;->savedContentsOk:Z

    .line 420
    :cond_2
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    .line 421
    iget v5, p0, Lcom/sdkbox/services/XMLHttpRequest;->contentLength:I

    if-lez v5, :cond_3

    div-int v5, v4, v5

    int-to-float v5, v5

    goto :goto_3

    :cond_3
    const/high16 v5, -0x40800000    # -1.0f

    :goto_3
    invoke-virtual {p0, v5}, Lcom/sdkbox/services/XMLHttpRequest;->notifyProgress(F)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 425
    :catch_2
    :goto_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->responseText:Ljava/lang/String;

    .line 426
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->response:[B

    const/high16 v0, 0x3f800000    # 1.0f

    .line 427
    invoke-virtual {p0, v0}, Lcom/sdkbox/services/XMLHttpRequest;->notifyProgress(F)V

    .line 428
    sget-object v0, Lcom/sdkbox/services/HttpRequestReadyState;->DONE:Lcom/sdkbox/services/HttpRequestReadyState;

    invoke-virtual {p0, v0}, Lcom/sdkbox/services/XMLHttpRequest;->setReadyState(Lcom/sdkbox/services/HttpRequestReadyState;)V

    .line 429
    invoke-virtual {p0}, Lcom/sdkbox/services/XMLHttpRequest;->notifyOnLoad()V

    return-void
.end method

.method protected readSync()V
    .locals 2

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 360
    sget-object v0, Lcom/sdkbox/services/HttpRequestReadyState;->OPENED:Lcom/sdkbox/services/HttpRequestReadyState;

    invoke-virtual {p0, v0}, Lcom/sdkbox/services/XMLHttpRequest;->setReadyState(Lcom/sdkbox/services/HttpRequestReadyState;)V

    .line 361
    iget-object v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->status:I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 369
    :catch_1
    :try_start_1
    iget-boolean v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->saveContents:Z

    if-eqz v0, :cond_0

    .line 370
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sdkbox/services/XMLHttpRequest;->savePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :cond_0
    const-string v0, "Error reading contents. Saved content (if any) has been deleted"

    .line 372
    invoke-virtual {p0, v0}, Lcom/sdkbox/services/XMLHttpRequest;->notifyError(Ljava/lang/String;)V

    return-void

    .line 363
    :catch_2
    iget-boolean v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->saveContents:Z

    if-eqz v0, :cond_1

    .line 364
    invoke-static {}, Lcom/sdkbox/plugin/SDKBox;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sdkbox/services/XMLHttpRequest;->savePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 366
    :cond_1
    invoke-virtual {p0}, Lcom/sdkbox/services/XMLHttpRequest;->notifyTimeout()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 376
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sdkbox/services/XMLHttpRequest;->notifyError(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 377
    iput-object v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->connection:Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 382
    :try_start_2
    invoke-virtual {p0}, Lcom/sdkbox/services/XMLHttpRequest;->getResponseHeaders()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    sget-object v0, Lcom/sdkbox/services/HttpRequestReadyState;->LOADING:Lcom/sdkbox/services/HttpRequestReadyState;

    invoke-virtual {p0, v0}, Lcom/sdkbox/services/XMLHttpRequest;->setReadyState(Lcom/sdkbox/services/HttpRequestReadyState;)V

    .line 384
    invoke-virtual {p0}, Lcom/sdkbox/services/XMLHttpRequest;->readContents()V

    goto :goto_2

    :cond_2
    const-string v0, "Can\'t read headers."

    .line 386
    invoke-virtual {p0, v0}, Lcom/sdkbox/services/XMLHttpRequest;->notifyError(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :catch_3
    :cond_3
    :goto_2
    return-void
.end method

.method public removeEventListener(Lcom/sdkbox/services/HttpRequestListener;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public saveContentsToFile(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 449
    iput-boolean v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->saveContents:Z

    .line 450
    iput-object p1, p0, Lcom/sdkbox/services/XMLHttpRequest;->savePath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 451
    iput p1, p0, Lcom/sdkbox/services/XMLHttpRequest;->saveFlags:I

    return-void
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public send(Z)V
    .locals 1

    .line 160
    iget-object p1, p0, Lcom/sdkbox/services/XMLHttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_1

    .line 162
    :try_start_0
    invoke-virtual {p0}, Lcom/sdkbox/services/XMLHttpRequest;->readSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :try_start_1
    iget-object p1, p0, Lcom/sdkbox/services/XMLHttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_1

    .line 165
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 171
    :try_start_2
    iget-object v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 176
    :catch_0
    :cond_0
    throw p1

    :catch_1
    :cond_1
    :goto_0
    return-void
.end method

.method public setBodyContents(Ljava/lang/String;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/sdkbox/services/XMLHttpRequest;->bodyContents:Ljava/lang/String;

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/sdkbox/services/XMLHttpRequest;->parameters:Ljava/util/Map;

    return-void
.end method

.method public setParamsAsBodyContents()V
    .locals 1

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->paramsAsBodyContents:Z

    return-void
.end method

.method protected setReadyState(Lcom/sdkbox/services/HttpRequestReadyState;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/sdkbox/services/XMLHttpRequest;->readyState:Lcom/sdkbox/services/HttpRequestReadyState;

    .line 259
    invoke-virtual {p0}, Lcom/sdkbox/services/XMLHttpRequest;->notifyStateChange()V

    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 184
    iget-object v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected setRequestHeaders()V
    .locals 4

    .line 311
    iget-object v0, p0, Lcom/sdkbox/services/XMLHttpRequest;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 312
    iget-object v2, p0, Lcom/sdkbox/services/XMLHttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRequestHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lcom/sdkbox/services/XMLHttpRequest;->requestHeaders:Ljava/util/Map;

    return-void
.end method

.method public setResponseType(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .line 215
    iput p1, p0, Lcom/sdkbox/services/XMLHttpRequest;->timeout:I

    return-void
.end method

.method public setWithCredentials(Z)V
    .locals 0

    .line 234
    iput-boolean p1, p0, Lcom/sdkbox/services/XMLHttpRequest;->withCredentials:Z

    return-void
.end method
