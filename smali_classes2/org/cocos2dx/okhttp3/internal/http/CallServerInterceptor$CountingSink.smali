.class final Lorg/cocos2dx/okhttp3/internal/http/CallServerInterceptor$CountingSink;
.super Lorg/cocos2dx/okio/ForwardingSink;
.source "CallServerInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/okhttp3/internal/http/CallServerInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CountingSink"
.end annotation


# instance fields
.field successfulCount:J


# direct methods
.method constructor <init>(Lorg/cocos2dx/okio/Sink;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lorg/cocos2dx/okio/ForwardingSink;-><init>(Lorg/cocos2dx/okio/Sink;)V

    return-void
.end method


# virtual methods
.method public write(Lorg/cocos2dx/okio/Buffer;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-super {p0, p1, p2, p3}, Lorg/cocos2dx/okio/ForwardingSink;->write(Lorg/cocos2dx/okio/Buffer;J)V

    .line 150
    iget-wide v0, p0, Lorg/cocos2dx/okhttp3/internal/http/CallServerInterceptor$CountingSink;->successfulCount:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lorg/cocos2dx/okhttp3/internal/http/CallServerInterceptor$CountingSink;->successfulCount:J

    return-void
.end method
