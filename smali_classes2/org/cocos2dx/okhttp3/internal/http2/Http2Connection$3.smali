.class Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection$3;
.super Lorg/cocos2dx/okhttp3/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection;->sendDegradedPingLater()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection;


# direct methods
.method varargs constructor <init>(Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection$3;->this$0:Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection;

    invoke-direct {p0, p2, p3}, Lorg/cocos2dx/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 601
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection$3;->this$0:Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v1}, Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection;->writePing(ZII)V

    return-void
.end method
