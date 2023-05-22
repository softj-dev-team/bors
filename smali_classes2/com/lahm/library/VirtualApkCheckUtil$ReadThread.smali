.class Lcom/lahm/library/VirtualApkCheckUtil$ReadThread;
.super Ljava/lang/Thread;
.source "VirtualApkCheckUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lahm/library/VirtualApkCheckUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lahm/library/VirtualApkCheckUtil;


# direct methods
.method private constructor <init>(Lcom/lahm/library/VirtualApkCheckUtil;Ljava/lang/String;Ljava/net/Socket;Lcom/lahm/library/VirtualCheckCallback;)V
    .locals 4

    .line 281
    iput-object p1, p0, Lcom/lahm/library/VirtualApkCheckUtil$ReadThread;->this$0:Lcom/lahm/library/VirtualApkCheckUtil;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 284
    :try_start_0
    invoke-virtual {p3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 287
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 288
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    .line 289
    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p4, :cond_0

    .line 290
    invoke-interface {p4}, Lcom/lahm/library/VirtualCheckCallback;->findSuspect()V

    goto :goto_0

    .line 292
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 293
    invoke-virtual {p3}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 295
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/lahm/library/VirtualApkCheckUtil;Ljava/lang/String;Ljava/net/Socket;Lcom/lahm/library/VirtualCheckCallback;Lcom/lahm/library/VirtualApkCheckUtil$1;)V
    .locals 0

    .line 280
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lahm/library/VirtualApkCheckUtil$ReadThread;-><init>(Lcom/lahm/library/VirtualApkCheckUtil;Ljava/lang/String;Ljava/net/Socket;Lcom/lahm/library/VirtualCheckCallback;)V

    return-void
.end method
