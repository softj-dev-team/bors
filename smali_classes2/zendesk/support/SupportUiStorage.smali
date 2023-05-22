.class public Lzendesk/support/SupportUiStorage;
.super Ljava/lang/Object;
.source "SupportUiStorage.java"


# static fields
.field private static final CACHE_INDEX:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "SupportUiStorage"

.field public static final REQUEST_MAPPER:Ljava/lang/String; = "request_id_mapper"


# instance fields
.field private final gson:Lcom/google/gson/Gson;

.field private final storage:Lcom/jakewharton/disklrucache/DiskLruCache;


# direct methods
.method public constructor <init>(Lcom/jakewharton/disklrucache/DiskLruCache;Lcom/google/gson/Gson;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lzendesk/support/SupportUiStorage;->storage:Lcom/jakewharton/disklrucache/DiskLruCache;

    .line 37
    iput-object p2, p0, Lzendesk/support/SupportUiStorage;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method private static abortEdit(Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SupportUiStorage"

    const-string v3, "Unable to cache data"

    .line 84
    invoke-static {v2, v3, v1}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Unable to abort write"

    .line 89
    invoke-static {v2, v1, p0, v0}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lzendesk/support/SupportUiStorage;)Lcom/google/gson/Gson;
    .locals 0

    .line 25
    iget-object p0, p0, Lzendesk/support/SupportUiStorage;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method private static key(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 80
    invoke-static {p0}, Lcom/zendesk/util/DigestUtils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public read(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TE;"
        }
    .end annotation

    .line 62
    :try_start_0
    iget-object v0, p0, Lzendesk/support/SupportUiStorage;->storage:Lcom/jakewharton/disklrucache/DiskLruCache;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :try_start_1
    iget-object v1, p0, Lzendesk/support/SupportUiStorage;->storage:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-static {p1}, Lzendesk/support/SupportUiStorage;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;

    move-result-object p1

    .line 64
    new-instance v1, Lzendesk/support/SupportUiStorage$1;

    invoke-direct {v1, p0, p2}, Lzendesk/support/SupportUiStorage$1;-><init>(Lzendesk/support/SupportUiStorage;Ljava/lang/reflect/Type;)V

    invoke-static {p1, v1}, Lzendesk/support/Streams;->use(Ljava/io/Closeable;Lzendesk/support/Streams$Use;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 72
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const-string p1, "SupportUiStorage"

    const-string p2, "Unable to read from cache"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 74
    invoke-static {p1, p2, v0}, Lcom/zendesk/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public write(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 44
    :try_start_0
    iget-object v1, p0, Lzendesk/support/SupportUiStorage;->storage:Lcom/jakewharton/disklrucache/DiskLruCache;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :try_start_1
    iget-object v2, p0, Lzendesk/support/SupportUiStorage;->storage:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-static {p1}, Lzendesk/support/SupportUiStorage;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object v0

    .line 46
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 49
    :try_start_2
    invoke-virtual {v0, p1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    move-result-object p1

    .line 50
    iget-object v1, p0, Lzendesk/support/SupportUiStorage;->gson:Lcom/google/gson/Gson;

    invoke-static {v1, p1, p2}, Lzendesk/support/Streams;->toJson(Lcom/google/gson/Gson;Lokio/Sink;Ljava/lang/Object;)V

    .line 51
    invoke-virtual {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->commit()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 46
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 55
    :catch_0
    invoke-static {v0}, Lzendesk/support/SupportUiStorage;->abortEdit(Lcom/jakewharton/disklrucache/DiskLruCache$Editor;)V

    :cond_0
    :goto_0
    return-void
.end method
