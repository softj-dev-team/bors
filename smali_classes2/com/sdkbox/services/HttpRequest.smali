.class public interface abstract Lcom/sdkbox/services/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# virtual methods
.method public abstract abort()V
.end method

.method public abstract addEventListener(Lcom/sdkbox/services/HttpRequestListener;)V
.end method

.method public abstract getAllResponseHeaders()Ljava/util/Map;
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
.end method

.method public abstract getReadyState()I
.end method

.method public abstract getResponse()[B
.end method

.method public abstract getResponseHeader(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getResponseText()Ljava/lang/String;
.end method

.method public abstract getResponseType()Ljava/lang/String;
.end method

.method public abstract getStatus()I
.end method

.method public abstract getTimeout()I
.end method

.method public abstract isWithCredentials()Z
.end method

.method public abstract open(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract open(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract open(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract overrideMimeType(Ljava/lang/String;)V
.end method

.method public abstract removeEventListener(Lcom/sdkbox/services/HttpRequestListener;)V
.end method

.method public abstract saveContentsToFile(Ljava/lang/String;)V
.end method

.method public abstract send(Z)V
.end method

.method public abstract setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setResponseType(Ljava/lang/String;)V
.end method

.method public abstract setTimeout(I)V
.end method

.method public abstract setWithCredentials(Z)V
.end method
