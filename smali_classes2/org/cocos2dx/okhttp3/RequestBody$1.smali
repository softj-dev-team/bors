.class Lorg/cocos2dx/okhttp3/RequestBody$1;
.super Lorg/cocos2dx/okhttp3/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/okhttp3/RequestBody;->create(Lorg/cocos2dx/okhttp3/MediaType;Lorg/cocos2dx/okio/ByteString;)Lorg/cocos2dx/okhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lorg/cocos2dx/okio/ByteString;

.field final synthetic val$contentType:Lorg/cocos2dx/okhttp3/MediaType;


# direct methods
.method constructor <init>(Lorg/cocos2dx/okhttp3/MediaType;Lorg/cocos2dx/okio/ByteString;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/cocos2dx/okhttp3/RequestBody$1;->val$contentType:Lorg/cocos2dx/okhttp3/MediaType;

    iput-object p2, p0, Lorg/cocos2dx/okhttp3/RequestBody$1;->val$content:Lorg/cocos2dx/okio/ByteString;

    invoke-direct {p0}, Lorg/cocos2dx/okhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/RequestBody$1;->val$content:Lorg/cocos2dx/okio/ByteString;

    invoke-virtual {v0}, Lorg/cocos2dx/okio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lorg/cocos2dx/okhttp3/MediaType;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/RequestBody$1;->val$contentType:Lorg/cocos2dx/okhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lorg/cocos2dx/okio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/cocos2dx/okhttp3/RequestBody$1;->val$content:Lorg/cocos2dx/okio/ByteString;

    invoke-interface {p1, v0}, Lorg/cocos2dx/okio/BufferedSink;->write(Lorg/cocos2dx/okio/ByteString;)Lorg/cocos2dx/okio/BufferedSink;

    return-void
.end method
