.class public Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener;
.super Ljava/lang/Object;
.source "XMLHttpRequestJNIListener.java"

# interfaces
.implements Lcom/sdkbox/services/HttpRequestListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener$NativeEvent;
    }
.end annotation


# static fields
.field public static final EVENT:Ljava/lang/String; = "java_xhr_event"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbort(Lcom/sdkbox/services/HttpRequest;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 74
    invoke-interface {p1, p0}, Lcom/sdkbox/services/HttpRequest;->removeEventListener(Lcom/sdkbox/services/HttpRequestListener;)V

    .line 76
    :cond_0
    new-instance v0, Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener$NativeEvent;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener$NativeEvent;-><init>(Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener;Lcom/sdkbox/services/HttpRequest;I)V

    const-string p1, "java_xhr_event"

    invoke-static {p1, v0}, Lcom/sdkbox/jnibridge/NativeBridge;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Lcom/sdkbox/services/HttpRequest;Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 90
    invoke-interface {p1, p0}, Lcom/sdkbox/services/HttpRequest;->removeEventListener(Lcom/sdkbox/services/HttpRequestListener;)V

    .line 92
    :cond_0
    new-instance v6, Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener$NativeEvent;

    const/4 v4, 0x3

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener$NativeEvent;-><init>(Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener;Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener;Lcom/sdkbox/services/HttpRequest;ILjava/lang/String;)V

    const-string p1, "java_xhr_event"

    invoke-static {p1, v6}, Lcom/sdkbox/jnibridge/NativeBridge;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLoad(Lcom/sdkbox/services/HttpRequest;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 82
    invoke-interface {p1, p0}, Lcom/sdkbox/services/HttpRequest;->removeEventListener(Lcom/sdkbox/services/HttpRequestListener;)V

    .line 84
    :cond_0
    new-instance v0, Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener$NativeEvent;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener$NativeEvent;-><init>(Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener;Lcom/sdkbox/services/HttpRequest;I)V

    const-string p1, "java_xhr_event"

    invoke-static {p1, v0}, Lcom/sdkbox/jnibridge/NativeBridge;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onProgress(Lcom/sdkbox/services/HttpRequest;F)V
    .locals 7

    .line 68
    new-instance v6, Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener$NativeEvent;

    const/4 v4, 0x4

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener$NativeEvent;-><init>(Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener;Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener;Lcom/sdkbox/services/HttpRequest;IF)V

    const-string p1, "java_xhr_event"

    invoke-static {p1, v6}, Lcom/sdkbox/jnibridge/NativeBridge;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onReadyStateChange(Lcom/sdkbox/services/HttpRequest;Lcom/sdkbox/services/HttpRequestReadyState;)V
    .locals 7

    .line 63
    new-instance v6, Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener$NativeEvent;

    invoke-virtual {p2}, Lcom/sdkbox/services/HttpRequestReadyState;->getValue()I

    move-result v5

    const/4 v4, 0x5

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener$NativeEvent;-><init>(Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener;Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener;Lcom/sdkbox/services/HttpRequest;II)V

    const-string p1, "java_xhr_event"

    invoke-static {p1, v6}, Lcom/sdkbox/jnibridge/NativeBridge;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTimeout(Lcom/sdkbox/services/HttpRequest;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 98
    invoke-interface {p1, p0}, Lcom/sdkbox/services/HttpRequest;->removeEventListener(Lcom/sdkbox/services/HttpRequestListener;)V

    .line 100
    :cond_0
    new-instance v0, Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener$NativeEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener$NativeEvent;-><init>(Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener;Lcom/sdkbox/services/HttpRequest;I)V

    const-string p1, "java_xhr_event"

    invoke-static {p1, v0}, Lcom/sdkbox/jnibridge/NativeBridge;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
