.class Lcom/lahm/library/VirtualApkCheckUtil$ClientThread;
.super Ljava/lang/Thread;
.source "VirtualApkCheckUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lahm/library/VirtualApkCheckUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientThread"
.end annotation


# instance fields
.field port:I

.field secret:Ljava/lang/String;

.field final synthetic this$0:Lcom/lahm/library/VirtualApkCheckUtil;


# direct methods
.method private constructor <init>(Lcom/lahm/library/VirtualApkCheckUtil;Ljava/lang/String;I)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/lahm/library/VirtualApkCheckUtil$ClientThread;->this$0:Lcom/lahm/library/VirtualApkCheckUtil;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 325
    iput-object p2, p0, Lcom/lahm/library/VirtualApkCheckUtil$ClientThread;->secret:Ljava/lang/String;

    .line 326
    iput p3, p0, Lcom/lahm/library/VirtualApkCheckUtil$ClientThread;->port:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/lahm/library/VirtualApkCheckUtil;Ljava/lang/String;ILcom/lahm/library/VirtualApkCheckUtil$1;)V
    .locals 0

    .line 320
    invoke-direct {p0, p1, p2, p3}, Lcom/lahm/library/VirtualApkCheckUtil$ClientThread;-><init>(Lcom/lahm/library/VirtualApkCheckUtil;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 331
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 333
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    const-string v1, "127.0.0.1"

    iget v2, p0, Lcom/lahm/library/VirtualApkCheckUtil$ClientThread;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    const/16 v1, 0x7d0

    .line 334
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 335
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lahm/library/VirtualApkCheckUtil$ClientThread;->secret:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 337
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 338
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    .line 340
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 341
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 343
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 344
    iget-object v4, p0, Lcom/lahm/library/VirtualApkCheckUtil$ClientThread;->this$0:Lcom/lahm/library/VirtualApkCheckUtil;

    invoke-static {v4}, Lcom/lahm/library/VirtualApkCheckUtil;->access$400(Lcom/lahm/library/VirtualApkCheckUtil;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClientThread: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 347
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 348
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 349
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 359
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 357
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 355
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    .line 353
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_1

    .line 351
    :catch_4
    iget-object v0, p0, Lcom/lahm/library/VirtualApkCheckUtil$ClientThread;->this$0:Lcom/lahm/library/VirtualApkCheckUtil;

    invoke-static {v0}, Lcom/lahm/library/VirtualApkCheckUtil;->access$400(Lcom/lahm/library/VirtualApkCheckUtil;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/lahm/library/VirtualApkCheckUtil$ClientThread;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "port refused"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
