.class public Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener$NativeEvent;
.super Ljava/lang/Object;
.source "XMLHttpRequestJNIListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NativeEvent"
.end annotation


# instance fields
.field public errorDescription:Ljava/lang/String;

.field public progress:F

.field public sourceRequest:Lcom/sdkbox/services/HttpRequest;

.field public state:I

.field final synthetic this$0:Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener;Lcom/sdkbox/services/HttpRequest;I)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener$NativeEvent;->this$0:Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener$NativeEvent;->sourceRequest:Lcom/sdkbox/services/HttpRequest;

    .line 22
    iput p3, p0, Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener$NativeEvent;->type:I

    return-void
.end method

.method public constructor <init>(Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener;Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener;Lcom/sdkbox/services/HttpRequest;IF)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p3, p4}, Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener$NativeEvent;-><init>(Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener;Lcom/sdkbox/services/HttpRequest;I)V

    .line 32
    iput p5, p0, Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener$NativeEvent;->progress:F

    return-void
.end method

.method public constructor <init>(Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener;Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener;Lcom/sdkbox/services/HttpRequest;II)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p3, p4}, Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener$NativeEvent;-><init>(Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener;Lcom/sdkbox/services/HttpRequest;I)V

    .line 27
    iput p5, p0, Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener$NativeEvent;->state:I

    return-void
.end method

.method public constructor <init>(Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener;Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener;Lcom/sdkbox/services/HttpRequest;ILjava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p3, p4}, Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener$NativeEvent;-><init>(Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener;Lcom/sdkbox/services/HttpRequest;I)V

    .line 37
    iput-object p5, p0, Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener$NativeEvent;->errorDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getError()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener$NativeEvent;->errorDescription:Ljava/lang/String;

    return-object v0
.end method

.method getEventType()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener$NativeEvent;->type:I

    return v0
.end method

.method getProgress()F
    .locals 1

    .line 49
    iget v0, p0, Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener$NativeEvent;->progress:F

    return v0
.end method

.method getRequest()Ljava/lang/Object;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener$NativeEvent;->sourceRequest:Lcom/sdkbox/services/HttpRequest;

    return-object v0
.end method

.method getState()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/sdkbox/services/jni/XMLHttpRequestJNIListener$NativeEvent;->state:I

    return v0
.end method
