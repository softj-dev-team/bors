.class final Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection$PingRunnable;
.super Lorg/cocos2dx/okhttp3/internal/NamedRunnable;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PingRunnable"
.end annotation


# instance fields
.field final payload1:I

.field final payload2:I

.field final reply:Z

.field final synthetic this$0:Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection;


# direct methods
.method constructor <init>(Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection;ZII)V
    .locals 2

    .line 379
    iput-object p1, p0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection$PingRunnable;->this$0:Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 380
    iget-object p1, p1, Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s ping %08x%08x"

    invoke-direct {p0, p1, v0}, Lorg/cocos2dx/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    iput-boolean p2, p0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection$PingRunnable;->reply:Z

    .line 382
    iput p3, p0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection$PingRunnable;->payload1:I

    .line 383
    iput p4, p0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection$PingRunnable;->payload2:I

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 387
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection$PingRunnable;->this$0:Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection;

    iget-boolean v1, p0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection$PingRunnable;->reply:Z

    iget v2, p0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection$PingRunnable;->payload1:I

    iget v3, p0, Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection$PingRunnable;->payload2:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/cocos2dx/okhttp3/internal/http2/Http2Connection;->writePing(ZII)V

    return-void
.end method