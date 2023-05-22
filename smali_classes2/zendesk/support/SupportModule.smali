.class public Lzendesk/support/SupportModule;
.super Ljava/lang/Object;
.source "SupportModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# instance fields
.field private final articleVoteStorage:Lzendesk/support/ArticleVoteStorage;

.field private final blipsProvider:Lzendesk/support/SupportBlipsProvider;

.field private final helpCenterProvider:Lzendesk/support/HelpCenterProvider;

.field private final id:Ljava/util/UUID;

.field private final okHttpClient:Lokhttp3/OkHttpClient;

.field private final requestProvider:Lzendesk/support/RequestProvider;

.field private final settingsProvider:Lzendesk/support/SupportSettingsProvider;

.field private final uploadProvider:Lzendesk/support/UploadProvider;

.field private final zendeskTracker:Lzendesk/support/ZendeskTracker;


# direct methods
.method public constructor <init>(Lzendesk/support/RequestProvider;Lzendesk/support/UploadProvider;Lzendesk/support/HelpCenterProvider;Lzendesk/support/SupportSettingsProvider;Lzendesk/support/SupportBlipsProvider;Lokhttp3/OkHttpClient;Lzendesk/support/ZendeskTracker;Lzendesk/support/ArticleVoteStorage;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/SupportModule;->id:Ljava/util/UUID;

    .line 31
    iput-object p1, p0, Lzendesk/support/SupportModule;->requestProvider:Lzendesk/support/RequestProvider;

    .line 32
    iput-object p2, p0, Lzendesk/support/SupportModule;->uploadProvider:Lzendesk/support/UploadProvider;

    .line 33
    iput-object p3, p0, Lzendesk/support/SupportModule;->helpCenterProvider:Lzendesk/support/HelpCenterProvider;

    .line 34
    iput-object p4, p0, Lzendesk/support/SupportModule;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    .line 35
    iput-object p5, p0, Lzendesk/support/SupportModule;->blipsProvider:Lzendesk/support/SupportBlipsProvider;

    .line 36
    iput-object p6, p0, Lzendesk/support/SupportModule;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 37
    iput-object p7, p0, Lzendesk/support/SupportModule;->zendeskTracker:Lzendesk/support/ZendeskTracker;

    .line 38
    iput-object p8, p0, Lzendesk/support/SupportModule;->articleVoteStorage:Lzendesk/support/ArticleVoteStorage;

    return-void
.end method


# virtual methods
.method public getId()Ljava/util/UUID;
    .locals 1

    .line 82
    iget-object v0, p0, Lzendesk/support/SupportModule;->id:Ljava/util/UUID;

    return-object v0
.end method

.method providesArticleVoteStorage()Lzendesk/support/ArticleVoteStorage;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 78
    iget-object v0, p0, Lzendesk/support/SupportModule;->articleVoteStorage:Lzendesk/support/ArticleVoteStorage;

    return-object v0
.end method

.method providesBlipsProvider()Lzendesk/support/SupportBlipsProvider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 73
    iget-object v0, p0, Lzendesk/support/SupportModule;->blipsProvider:Lzendesk/support/SupportBlipsProvider;

    return-object v0
.end method

.method providesHelpCenterProvider()Lzendesk/support/HelpCenterProvider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 53
    iget-object v0, p0, Lzendesk/support/SupportModule;->helpCenterProvider:Lzendesk/support/HelpCenterProvider;

    return-object v0
.end method

.method providesOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 63
    iget-object v0, p0, Lzendesk/support/SupportModule;->okHttpClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method providesRequestProvider()Lzendesk/support/RequestProvider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 43
    iget-object v0, p0, Lzendesk/support/SupportModule;->requestProvider:Lzendesk/support/RequestProvider;

    return-object v0
.end method

.method providesSettingsProvider()Lzendesk/support/SupportSettingsProvider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 58
    iget-object v0, p0, Lzendesk/support/SupportModule;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    return-object v0
.end method

.method providesUploadProvider()Lzendesk/support/UploadProvider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 48
    iget-object v0, p0, Lzendesk/support/SupportModule;->uploadProvider:Lzendesk/support/UploadProvider;

    return-object v0
.end method

.method providesZendeskTracker()Lzendesk/support/ZendeskTracker;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 68
    iget-object v0, p0, Lzendesk/support/SupportModule;->zendeskTracker:Lzendesk/support/ZendeskTracker;

    return-object v0
.end method
