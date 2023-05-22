.class Lzendesk/support/SupportSdkModule;
.super Ljava/lang/Object;
.source "SupportSdkModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# static fields
.field private static final MAX_DISK_CACHE_SIZE:I = 0x1400000


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method configurationHelper()Lzendesk/configurations/ConfigurationHelper;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 129
    new-instance v0, Lzendesk/configurations/ConfigurationHelper;

    invoke-direct {v0}, Lzendesk/configurations/ConfigurationHelper;-><init>()V

    return-object v0
.end method

.method mainThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "SUPPORT_MAIN_THREAD_EXECUTOR"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 100
    new-instance v0, Lzendesk/support/SupportSdkModule$1;

    invoke-direct {v0, p0}, Lzendesk/support/SupportSdkModule$1;-><init>(Lzendesk/support/SupportSdkModule;)V

    return-object v0
.end method

.method okHttp3Downloader(Lokhttp3/OkHttpClient;)Lcom/squareup/picasso/OkHttp3Downloader;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 60
    new-instance v0, Lcom/squareup/picasso/OkHttp3Downloader;

    invoke-direct {v0, p1}, Lcom/squareup/picasso/OkHttp3Downloader;-><init>(Lokhttp3/OkHttpClient;)V

    return-object v0
.end method

.method provides()Lcom/google/gson/Gson;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 93
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    return-object v0
.end method

.method providesActionHandlers()Ljava/util/List;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/core/ActionHandler;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    new-instance v1, Lzendesk/support/DeepLinkToRequestActionHandler;

    invoke-direct {v1}, Lzendesk/support/DeepLinkToRequestActionHandler;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method providesPicasso(Landroid/content/Context;Lcom/squareup/picasso/OkHttp3Downloader;Ljava/util/concurrent/ExecutorService;)Lcom/squareup/picasso/Picasso;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 50
    new-instance v0, Lcom/squareup/picasso/Picasso$Builder;

    invoke-direct {v0, p1}, Lcom/squareup/picasso/Picasso$Builder;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {v0, p2}, Lcom/squareup/picasso/Picasso$Builder;->downloader(Lcom/squareup/picasso/Downloader;)Lcom/squareup/picasso/Picasso$Builder;

    move-result-object p1

    .line 52
    invoke-virtual {p1, p3}, Lcom/squareup/picasso/Picasso$Builder;->executor(Ljava/util/concurrent/ExecutorService;)Lcom/squareup/picasso/Picasso$Builder;

    move-result-object p1

    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 53
    invoke-virtual {p1, p2}, Lcom/squareup/picasso/Picasso$Builder;->defaultBitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/squareup/picasso/Picasso$Builder;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/squareup/picasso/Picasso$Builder;->build()Lcom/squareup/picasso/Picasso;

    move-result-object p1

    return-object p1
.end method

.method providesRequestDiskLruCache(Lzendesk/core/SessionStorage;)Lcom/jakewharton/disklrucache/DiskLruCache;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 82
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lzendesk/core/SessionStorage;->getZendeskDataDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "request"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/32 v1, 0x1400000

    const/4 p1, 0x1

    .line 83
    invoke-static {v0, p1, p1, v1, v2}, Lcom/jakewharton/disklrucache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/jakewharton/disklrucache/DiskLruCache;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method providesZendeskUrl(Lzendesk/core/ApplicationConfiguration;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 67
    invoke-virtual {p1}, Lzendesk/core/ApplicationConfiguration;->getZendeskUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method requestInfoDataSource(Lzendesk/support/SupportUiStorage;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ExecutorService;)Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;
    .locals 3
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation runtime Ljavax/inject/Named;
            value = "SUPPORT_MAIN_THREAD_EXECUTOR"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 123
    new-instance v0, Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;

    new-instance v1, Lzendesk/support/requestlist/RequestInfoDataSource$Disk;

    const-string v2, "local_request_infos"

    invoke-direct {v1, p2, p3, p1, v2}, Lzendesk/support/requestlist/RequestInfoDataSource$Disk;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lzendesk/support/SupportUiStorage;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lzendesk/support/requestlist/RequestInfoDataSource$LocalDataSource;-><init>(Lzendesk/support/requestlist/RequestInfoDataSource$Disk;)V

    return-object v0
.end method

.method supportUiStorage(Lcom/jakewharton/disklrucache/DiskLruCache;Lcom/google/gson/Gson;)Lzendesk/support/SupportUiStorage;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 114
    new-instance v0, Lzendesk/support/SupportUiStorage;

    invoke-direct {v0, p1, p2}, Lzendesk/support/SupportUiStorage;-><init>(Lcom/jakewharton/disklrucache/DiskLruCache;Lcom/google/gson/Gson;)V

    return-object v0
.end method
