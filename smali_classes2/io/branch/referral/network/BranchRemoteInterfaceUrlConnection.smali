.class public Lio/branch/referral/network/BranchRemoteInterfaceUrlConnection;
.super Lio/branch/referral/network/BranchRemoteInterface;
.source "BranchRemoteInterfaceUrlConnection.java"


# static fields
.field private static final THREAD_TAG_POST:I = 0x66


# instance fields
.field private final branch:Lio/branch/referral/Branch;


# direct methods
.method public constructor <init>(Lio/branch/referral/Branch;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lio/branch/referral/network/BranchRemoteInterface;-><init>()V

    .line 39
    iput-object p1, p0, Lio/branch/referral/network/BranchRemoteInterfaceUrlConnection;->branch:Lio/branch/referral/Branch;

    return-void
.end method

.method private doRestfulGet(Ljava/lang/String;I)Lio/branch/referral/network/BranchRemoteInterface$BranchResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/branch/referral/network/BranchRemoteInterface$BranchRemoteException;
        }
    .end annotation

    const-string v0, "?"

    .line 56
    iget-object v1, p0, Lio/branch/referral/network/BranchRemoteInterfaceUrlConnection;->branch:Lio/branch/referral/Branch;

    invoke-virtual {v1}, Lio/branch/referral/Branch;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/branch/referral/PrefHelper;->getInstance(Landroid/content/Context;)Lio/branch/referral/PrefHelper;

    move-result-object v1

    const/16 v2, -0x71

    const/4 v3, 0x0

    .line 58
    :try_start_0
    invoke-virtual {v1}, Lio/branch/referral/PrefHelper;->getTimeout()I

    move-result v4

    .line 59
    invoke-virtual {v1}, Lio/branch/referral/PrefHelper;->getConnectTimeout()I

    move-result v5

    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v0, "&"

    .line 61
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "retryNumber"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64
    :try_start_1
    invoke-virtual {v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 65
    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 67
    sget-object v4, Lio/branch/referral/Defines$HeaderKey;->RequestId:Lio/branch/referral/Defines$HeaderKey;

    invoke-virtual {v4}, Lio/branch/referral/Defines$HeaderKey;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-direct {p0, v0}, Lio/branch/referral/network/BranchRemoteInterfaceUrlConnection;->maybeSetCloseRequestFlag(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 70
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0x1f4

    if-lt v5, v6, :cond_2

    .line 71
    invoke-virtual {v1}, Lio/branch/referral/PrefHelper;->getRetryCount()I

    move-result v6
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge p2, v6, :cond_2

    .line 73
    :try_start_2
    invoke-virtual {v1}, Lio/branch/referral/PrefHelper;->getRetryInterval()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 75
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    add-int/lit8 p2, p2, 0x1

    .line 78
    invoke-direct {p0, p1, p2}, Lio/branch/referral/network/BranchRemoteInterfaceUrlConnection;->doRestfulGet(Ljava/lang/String;I)Lio/branch/referral/network/BranchRemoteInterface$BranchResponse;

    move-result-object p1
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_1
    return-object p1

    :cond_2
    const/16 v6, 0xc8

    if-eq v5, v6, :cond_3

    .line 82
    :try_start_4
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 83
    new-instance v6, Lio/branch/referral/network/BranchRemoteInterface$BranchResponse;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {p0, v7}, Lio/branch/referral/network/BranchRemoteInterfaceUrlConnection;->getResponseString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lio/branch/referral/network/BranchRemoteInterface$BranchResponse;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    .line 85
    :cond_3
    new-instance v6, Lio/branch/referral/network/BranchRemoteInterface$BranchResponse;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {p0, v7}, Lio/branch/referral/network/BranchRemoteInterfaceUrlConnection;->getResponseString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lio/branch/referral/network/BranchRemoteInterface$BranchResponse;-><init>(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 89
    :catch_1
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "A resource conflict occurred with this request "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    .line 90
    new-instance v6, Lio/branch/referral/network/BranchRemoteInterface$BranchResponse;

    invoke-direct {v6, v3, v5}, Lio/branch/referral/network/BranchRemoteInterface$BranchResponse;-><init>(Ljava/lang/String;I)V

    .line 92
    :goto_1
    invoke-static {v4}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lio/branch/referral/network/BranchRemoteInterface$BranchResponse;->requestId:Ljava/lang/String;
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_4

    .line 130
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_4
    return-object v6

    :catchall_0
    move-exception p1

    move-object v3, v0

    goto/16 :goto_8

    :catch_2
    move-exception p1

    move-object v3, v0

    goto :goto_2

    :catch_3
    move-object v3, v0

    goto :goto_3

    :catch_4
    move-object v3, v0

    goto :goto_5

    :catch_5
    move-exception p1

    move-object v3, v0

    goto :goto_7

    :catchall_1
    move-exception p1

    goto/16 :goto_8

    :catch_6
    move-exception p1

    .line 126
    :goto_2
    :try_start_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Branch connect exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    .line 127
    new-instance p1, Lio/branch/referral/network/BranchRemoteInterface$BranchRemoteException;

    invoke-direct {p1, v2}, Lio/branch/referral/network/BranchRemoteInterface$BranchRemoteException;-><init>(I)V

    throw p1

    .line 114
    :catch_7
    :goto_3
    invoke-virtual {v1}, Lio/branch/referral/PrefHelper;->getRetryCount()I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-ge p2, v0, :cond_6

    .line 116
    :try_start_7
    invoke-virtual {v1}, Lio/branch/referral/PrefHelper;->getRetryInterval()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    :catch_8
    move-exception v0

    .line 118
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_4
    add-int/lit8 p2, p2, 0x1

    .line 121
    invoke-direct {p0, p1, p2}, Lio/branch/referral/network/BranchRemoteInterfaceUrlConnection;->doRestfulGet(Ljava/lang/String;I)Lio/branch/referral/network/BranchRemoteInterface$BranchResponse;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v3, :cond_5

    .line 130
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_5
    return-object p1

    .line 123
    :cond_6
    :try_start_9
    new-instance p1, Lio/branch/referral/network/BranchRemoteInterface$BranchRemoteException;

    const/16 p2, -0x78

    invoke-direct {p1, p2}, Lio/branch/referral/network/BranchRemoteInterface$BranchRemoteException;-><init>(I)V

    throw p1

    .line 101
    :catch_9
    :goto_5
    invoke-virtual {v1}, Lio/branch/referral/PrefHelper;->getRetryCount()I

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-ge p2, v0, :cond_8

    .line 103
    :try_start_a
    invoke-virtual {v1}, Lio/branch/referral/PrefHelper;->getRetryInterval()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_6

    :catch_a
    move-exception v0

    .line 105
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_6
    add-int/lit8 p2, p2, 0x1

    .line 108
    invoke-direct {p0, p1, p2}, Lio/branch/referral/network/BranchRemoteInterfaceUrlConnection;->doRestfulGet(Ljava/lang/String;I)Lio/branch/referral/network/BranchRemoteInterface$BranchResponse;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v3, :cond_7

    .line 130
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_7
    return-object p1

    .line 110
    :cond_8
    :try_start_c
    new-instance p1, Lio/branch/referral/network/BranchRemoteInterface$BranchRemoteException;

    const/16 p2, -0x6f

    invoke-direct {p1, p2}, Lio/branch/referral/network/BranchRemoteInterface$BranchRemoteException;-><init>(I)V

    throw p1

    :catch_b
    move-exception p1

    .line 96
    :goto_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Http connect exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    .line 97
    new-instance p1, Lio/branch/referral/network/BranchRemoteInterface$BranchRemoteException;

    invoke-direct {p1, v2}, Lio/branch/referral/network/BranchRemoteInterface$BranchRemoteException;-><init>(I)V

    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_8
    if-eqz v3, :cond_9

    .line 130
    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 132
    :cond_9
    throw p1
.end method

.method private doRestfulPost(Ljava/lang/String;Lorg/json/JSONObject;I)Lio/branch/referral/network/BranchRemoteInterface$BranchResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/branch/referral/network/BranchRemoteInterface$BranchRemoteException;
        }
    .end annotation

    const-string v0, "application/json"

    .line 138
    iget-object v1, p0, Lio/branch/referral/network/BranchRemoteInterfaceUrlConnection;->branch:Lio/branch/referral/Branch;

    invoke-virtual {v1}, Lio/branch/referral/Branch;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/branch/referral/PrefHelper;->getInstance(Landroid/content/Context;)Lio/branch/referral/PrefHelper;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Lio/branch/referral/PrefHelper;->getTimeout()I

    move-result v2

    .line 140
    invoke-virtual {v1}, Lio/branch/referral/PrefHelper;->getConnectTimeout()I

    move-result v3

    :try_start_0
    const-string v4, "retryNumber"

    .line 143
    invoke-virtual {p2, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 v4, 0x1f4

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 148
    :try_start_1
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v7, v8, :cond_0

    const/16 v7, 0x66

    .line 149
    invoke-static {v7}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 152
    :cond_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :try_start_2
    invoke-virtual {v7, v3}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 155
    invoke-virtual {v7, v2}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 156
    invoke-virtual {v7, v6}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 157
    invoke-virtual {v7, v6}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const-string v2, "Content-Type"

    .line 158
    invoke-virtual {v7, v2, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Accept"

    .line 159
    invoke-virtual {v7, v2, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "POST"

    .line 160
    invoke-virtual {v7, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 164
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 166
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    .line 168
    sget-object v0, Lio/branch/referral/Defines$HeaderKey;->RequestId:Lio/branch/referral/Defines$HeaderKey;

    invoke-virtual {v0}, Lio/branch/referral/Defines$HeaderKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-direct {p0, v7}, Lio/branch/referral/network/BranchRemoteInterfaceUrlConnection;->maybeSetCloseRequestFlag(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 171
    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    if-lt v2, v4, :cond_2

    .line 173
    invoke-virtual {v1}, Lio/branch/referral/PrefHelper;->getRetryCount()I

    move-result v3
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ge p3, v3, :cond_2

    .line 175
    :try_start_3
    invoke-virtual {v1}, Lio/branch/referral/PrefHelper;->getRetryInterval()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 177
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    add-int/lit8 p3, p3, 0x1

    .line 180
    invoke-direct {p0, p1, p2, p3}, Lio/branch/referral/network/BranchRemoteInterfaceUrlConnection;->doRestfulPost(Ljava/lang/String;Lorg/json/JSONObject;I)Lio/branch/referral/network/BranchRemoteInterface$BranchResponse;

    move-result-object p1
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v7, :cond_1

    .line 250
    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_1
    return-object p1

    :cond_2
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_3

    .line 184
    :try_start_5
    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 185
    new-instance v3, Lio/branch/referral/network/BranchRemoteInterface$BranchResponse;

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {p0, v8}, Lio/branch/referral/network/BranchRemoteInterfaceUrlConnection;->getResponseString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8, v2}, Lio/branch/referral/network/BranchRemoteInterface$BranchResponse;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    .line 187
    :cond_3
    new-instance v3, Lio/branch/referral/network/BranchRemoteInterface$BranchResponse;

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {p0, v8}, Lio/branch/referral/network/BranchRemoteInterfaceUrlConnection;->getResponseString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8, v2}, Lio/branch/referral/network/BranchRemoteInterface$BranchResponse;-><init>(Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 191
    :catch_2
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "A resource conflict occurred with this request "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    .line 192
    new-instance v3, Lio/branch/referral/network/BranchRemoteInterface$BranchResponse;

    invoke-direct {v3, v5, v2}, Lio/branch/referral/network/BranchRemoteInterface$BranchResponse;-><init>(Ljava/lang/String;I)V

    .line 194
    :goto_1
    iput-object v0, v3, Lio/branch/referral/network/BranchRemoteInterface$BranchResponse;->requestId:Ljava/lang/String;
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v7, :cond_4

    .line 250
    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_4
    return-object v3

    :catch_3
    move-exception p1

    goto :goto_2

    :catch_4
    move-object v5, v7

    goto :goto_3

    :catch_5
    move-object v5, v7

    goto :goto_5

    :catch_6
    move-object v5, v7

    goto/16 :goto_7

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :catch_7
    move-exception p1

    move-object v7, v5

    .line 242
    :goto_2
    :try_start_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    .line 243
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0xb

    if-lt p2, p3, :cond_5

    .line 244
    instance-of p1, p1, Landroid/os/NetworkOnMainThreadException;

    if-eqz p1, :cond_5

    const-string p1, "Branch Error: Don\'t call our synchronous methods on the main thread!!!"

    .line 245
    invoke-static {p1}, Lio/branch/referral/PrefHelper;->Debug(Ljava/lang/String;)V

    .line 247
    :cond_5
    new-instance p1, Lio/branch/referral/network/BranchRemoteInterface$BranchResponse;

    invoke-direct {p1, v5, v4}, Lio/branch/referral/network/BranchRemoteInterface$BranchResponse;-><init>(Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v7, :cond_6

    .line 250
    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_6
    return-object p1

    :catchall_1
    move-exception p1

    move-object v5, v7

    goto/16 :goto_9

    .line 228
    :catch_8
    :goto_3
    :try_start_8
    invoke-virtual {v1}, Lio/branch/referral/PrefHelper;->getRetryCount()I

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-ge p3, v0, :cond_8

    .line 230
    :try_start_9
    invoke-virtual {v1}, Lio/branch/referral/PrefHelper;->getRetryInterval()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    :catch_9
    move-exception v0

    .line 233
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_4
    add-int/2addr p3, v6

    .line 236
    invoke-direct {p0, p1, p2, p3}, Lio/branch/referral/network/BranchRemoteInterfaceUrlConnection;->doRestfulPost(Ljava/lang/String;Lorg/json/JSONObject;I)Lio/branch/referral/network/BranchRemoteInterface$BranchResponse;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v5, :cond_7

    .line 250
    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_7
    return-object p1

    .line 239
    :cond_8
    :try_start_b
    new-instance p1, Lio/branch/referral/network/BranchRemoteInterface$BranchRemoteException;

    const/16 p2, -0x71

    invoke-direct {p1, p2}, Lio/branch/referral/network/BranchRemoteInterface$BranchRemoteException;-><init>(I)V

    throw p1

    .line 214
    :catch_a
    :goto_5
    invoke-virtual {v1}, Lio/branch/referral/PrefHelper;->getRetryCount()I

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-ge p3, v0, :cond_a

    .line 216
    :try_start_c
    invoke-virtual {v1}, Lio/branch/referral/PrefHelper;->getRetryInterval()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_b
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_6

    :catch_b
    move-exception v0

    .line 218
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_6
    add-int/2addr p3, v6

    .line 221
    invoke-direct {p0, p1, p2, p3}, Lio/branch/referral/network/BranchRemoteInterfaceUrlConnection;->doRestfulPost(Ljava/lang/String;Lorg/json/JSONObject;I)Lio/branch/referral/network/BranchRemoteInterface$BranchResponse;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v5, :cond_9

    .line 250
    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_9
    return-object p1

    .line 223
    :cond_a
    :try_start_e
    new-instance p1, Lio/branch/referral/network/BranchRemoteInterface$BranchRemoteException;

    const/16 p2, -0x78

    invoke-direct {p1, p2}, Lio/branch/referral/network/BranchRemoteInterface$BranchRemoteException;-><init>(I)V

    throw p1

    .line 201
    :catch_c
    :goto_7
    invoke-virtual {v1}, Lio/branch/referral/PrefHelper;->getRetryCount()I

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-ge p3, v0, :cond_c

    .line 203
    :try_start_f
    invoke-virtual {v1}, Lio/branch/referral/PrefHelper;->getRetryInterval()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_d
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_8

    :catch_d
    move-exception v0

    .line 205
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_8
    add-int/2addr p3, v6

    .line 208
    invoke-direct {p0, p1, p2, p3}, Lio/branch/referral/network/BranchRemoteInterfaceUrlConnection;->doRestfulPost(Ljava/lang/String;Lorg/json/JSONObject;I)Lio/branch/referral/network/BranchRemoteInterface$BranchResponse;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz v5, :cond_b

    .line 250
    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_b
    return-object p1

    .line 210
    :cond_c
    :try_start_11
    new-instance p1, Lio/branch/referral/network/BranchRemoteInterface$BranchRemoteException;

    const/16 p2, -0x6f

    invoke-direct {p1, p2}, Lio/branch/referral/network/BranchRemoteInterface$BranchRemoteException;-><init>(I)V

    throw p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :goto_9
    if-eqz v5, :cond_d

    .line 250
    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 252
    :cond_d
    throw p1
.end method

.method private getResponseString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    .line 270
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 272
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 278
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private maybeSetCloseRequestFlag(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 1

    .line 261
    sget-object v0, Lio/branch/referral/Defines$HeaderKey;->SendCloseRequest:Lio/branch/referral/Defines$HeaderKey;

    invoke-virtual {v0}, Lio/branch/referral/Defines$HeaderKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 262
    iget-object v0, p0, Lio/branch/referral/network/BranchRemoteInterfaceUrlConnection;->branch:Lio/branch/referral/Branch;

    iget-boolean v0, v0, Lio/branch/referral/Branch;->closeRequestNeeded:Z

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lio/branch/referral/network/BranchRemoteInterfaceUrlConnection;->branch:Lio/branch/referral/Branch;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lio/branch/referral/Branch;->closeRequestNeeded:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public doRestfulGet(Ljava/lang/String;)Lio/branch/referral/network/BranchRemoteInterface$BranchResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/branch/referral/network/BranchRemoteInterface$BranchRemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lio/branch/referral/network/BranchRemoteInterfaceUrlConnection;->doRestfulGet(Ljava/lang/String;I)Lio/branch/referral/network/BranchRemoteInterface$BranchResponse;

    move-result-object p1

    return-object p1
.end method

.method public doRestfulPost(Ljava/lang/String;Lorg/json/JSONObject;)Lio/branch/referral/network/BranchRemoteInterface$BranchResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/branch/referral/network/BranchRemoteInterface$BranchRemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lio/branch/referral/network/BranchRemoteInterfaceUrlConnection;->doRestfulPost(Ljava/lang/String;Lorg/json/JSONObject;I)Lio/branch/referral/network/BranchRemoteInterface$BranchResponse;

    move-result-object p1

    return-object p1
.end method
