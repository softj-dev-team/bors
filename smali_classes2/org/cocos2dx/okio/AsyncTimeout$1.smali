.class Lorg/cocos2dx/okio/AsyncTimeout$1;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lorg/cocos2dx/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/okio/AsyncTimeout;->sink(Lorg/cocos2dx/okio/Sink;)Lorg/cocos2dx/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/okio/AsyncTimeout;

.field final synthetic val$sink:Lorg/cocos2dx/okio/Sink;


# direct methods
.method constructor <init>(Lorg/cocos2dx/okio/AsyncTimeout;Lorg/cocos2dx/okio/Sink;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lorg/cocos2dx/okio/AsyncTimeout$1;->this$0:Lorg/cocos2dx/okio/AsyncTimeout;

    iput-object p2, p0, Lorg/cocos2dx/okio/AsyncTimeout$1;->val$sink:Lorg/cocos2dx/okio/Sink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lorg/cocos2dx/okio/AsyncTimeout$1;->this$0:Lorg/cocos2dx/okio/AsyncTimeout;

    invoke-virtual {v0}, Lorg/cocos2dx/okio/AsyncTimeout;->enter()V

    .line 208
    :try_start_0
    iget-object v0, p0, Lorg/cocos2dx/okio/AsyncTimeout$1;->val$sink:Lorg/cocos2dx/okio/Sink;

    invoke-interface {v0}, Lorg/cocos2dx/okio/Sink;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 213
    iget-object v1, p0, Lorg/cocos2dx/okio/AsyncTimeout$1;->this$0:Lorg/cocos2dx/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/okio/AsyncTimeout;->exit(Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 211
    :try_start_1
    iget-object v1, p0, Lorg/cocos2dx/okio/AsyncTimeout$1;->this$0:Lorg/cocos2dx/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    :goto_0
    iget-object v1, p0, Lorg/cocos2dx/okio/AsyncTimeout$1;->this$0:Lorg/cocos2dx/okio/AsyncTimeout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/cocos2dx/okio/AsyncTimeout;->exit(Z)V

    throw v0
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lorg/cocos2dx/okio/AsyncTimeout$1;->this$0:Lorg/cocos2dx/okio/AsyncTimeout;

    invoke-virtual {v0}, Lorg/cocos2dx/okio/AsyncTimeout;->enter()V

    .line 195
    :try_start_0
    iget-object v0, p0, Lorg/cocos2dx/okio/AsyncTimeout$1;->val$sink:Lorg/cocos2dx/okio/Sink;

    invoke-interface {v0}, Lorg/cocos2dx/okio/Sink;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 200
    iget-object v1, p0, Lorg/cocos2dx/okio/AsyncTimeout$1;->this$0:Lorg/cocos2dx/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/okio/AsyncTimeout;->exit(Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 198
    :try_start_1
    iget-object v1, p0, Lorg/cocos2dx/okio/AsyncTimeout$1;->this$0:Lorg/cocos2dx/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    :goto_0
    iget-object v1, p0, Lorg/cocos2dx/okio/AsyncTimeout$1;->this$0:Lorg/cocos2dx/okio/AsyncTimeout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/cocos2dx/okio/AsyncTimeout;->exit(Z)V

    throw v0
.end method

.method public timeout()Lorg/cocos2dx/okio/Timeout;
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/cocos2dx/okio/AsyncTimeout$1;->this$0:Lorg/cocos2dx/okio/AsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/cocos2dx/okio/AsyncTimeout$1;->val$sink:Lorg/cocos2dx/okio/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/cocos2dx/okio/Buffer;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-wide v0, p1, Lorg/cocos2dx/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/cocos2dx/okio/Util;->checkOffsetAndCount(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_2

    .line 167
    iget-object v2, p1, Lorg/cocos2dx/okio/Buffer;->head:Lorg/cocos2dx/okio/Segment;

    :goto_1
    const-wide/32 v3, 0x10000

    cmp-long v5, v0, v3

    if-gez v5, :cond_1

    .line 168
    iget v3, v2, Lorg/cocos2dx/okio/Segment;->limit:I

    iget v4, v2, Lorg/cocos2dx/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    cmp-long v3, v0, p2

    if-ltz v3, :cond_0

    move-wide v0, p2

    goto :goto_2

    .line 167
    :cond_0
    iget-object v2, v2, Lorg/cocos2dx/okio/Segment;->next:Lorg/cocos2dx/okio/Segment;

    goto :goto_1

    :cond_1
    :goto_2
    const/4 v2, 0x0

    .line 178
    iget-object v3, p0, Lorg/cocos2dx/okio/AsyncTimeout$1;->this$0:Lorg/cocos2dx/okio/AsyncTimeout;

    invoke-virtual {v3}, Lorg/cocos2dx/okio/AsyncTimeout;->enter()V

    .line 180
    :try_start_0
    iget-object v3, p0, Lorg/cocos2dx/okio/AsyncTimeout$1;->val$sink:Lorg/cocos2dx/okio/Sink;

    invoke-interface {v3, p1, v0, v1}, Lorg/cocos2dx/okio/Sink;->write(Lorg/cocos2dx/okio/Buffer;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr p2, v0

    const/4 v0, 0x1

    .line 186
    iget-object v1, p0, Lorg/cocos2dx/okio/AsyncTimeout$1;->this$0:Lorg/cocos2dx/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/okio/AsyncTimeout;->exit(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 184
    :try_start_1
    iget-object p2, p0, Lorg/cocos2dx/okio/AsyncTimeout$1;->this$0:Lorg/cocos2dx/okio/AsyncTimeout;

    invoke-virtual {p2, p1}, Lorg/cocos2dx/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :goto_3
    iget-object p2, p0, Lorg/cocos2dx/okio/AsyncTimeout$1;->this$0:Lorg/cocos2dx/okio/AsyncTimeout;

    invoke-virtual {p2, v2}, Lorg/cocos2dx/okio/AsyncTimeout;->exit(Z)V

    throw p1

    :cond_2
    return-void
.end method
