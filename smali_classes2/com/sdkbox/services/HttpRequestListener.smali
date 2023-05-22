.class public interface abstract Lcom/sdkbox/services/HttpRequestListener;
.super Ljava/lang/Object;
.source "HttpRequestListener.java"


# virtual methods
.method public abstract onAbort(Lcom/sdkbox/services/HttpRequest;)V
.end method

.method public abstract onError(Lcom/sdkbox/services/HttpRequest;Ljava/lang/String;)V
.end method

.method public abstract onLoad(Lcom/sdkbox/services/HttpRequest;)V
.end method

.method public abstract onProgress(Lcom/sdkbox/services/HttpRequest;F)V
.end method

.method public abstract onReadyStateChange(Lcom/sdkbox/services/HttpRequest;Lcom/sdkbox/services/HttpRequestReadyState;)V
.end method

.method public abstract onTimeout(Lcom/sdkbox/services/HttpRequest;)V
.end method
