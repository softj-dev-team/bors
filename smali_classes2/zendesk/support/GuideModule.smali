.class public Lzendesk/support/GuideModule;
.super Ljava/lang/Object;
.source "GuideModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# instance fields
.field private final articleVoteStorage:Lzendesk/support/ArticleVoteStorage;

.field private final blipsProvider:Lzendesk/support/HelpCenterBlipsProvider;

.field private final helpCenterProvider:Lzendesk/support/HelpCenterProvider;

.field private final helpCenterTracker:Lzendesk/support/HelpCenterTracker;

.field private final id:Ljava/util/UUID;

.field private final okHttpClient:Lokhttp3/OkHttpClient;

.field private final settingsProvider:Lzendesk/support/HelpCenterSettingsProvider;


# direct methods
.method public constructor <init>(Lzendesk/support/HelpCenterProvider;Lzendesk/support/HelpCenterSettingsProvider;Lzendesk/support/HelpCenterBlipsProvider;Lzendesk/support/HelpCenterTracker;Lzendesk/support/ArticleVoteStorage;Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lzendesk/support/GuideModule;->helpCenterProvider:Lzendesk/support/HelpCenterProvider;

    .line 30
    iput-object p2, p0, Lzendesk/support/GuideModule;->settingsProvider:Lzendesk/support/HelpCenterSettingsProvider;

    .line 31
    iput-object p3, p0, Lzendesk/support/GuideModule;->blipsProvider:Lzendesk/support/HelpCenterBlipsProvider;

    .line 32
    iput-object p4, p0, Lzendesk/support/GuideModule;->helpCenterTracker:Lzendesk/support/HelpCenterTracker;

    .line 33
    iput-object p5, p0, Lzendesk/support/GuideModule;->articleVoteStorage:Lzendesk/support/ArticleVoteStorage;

    .line 34
    iput-object p6, p0, Lzendesk/support/GuideModule;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 35
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/GuideModule;->id:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public getId()Ljava/util/UUID;
    .locals 1

    .line 69
    iget-object v0, p0, Lzendesk/support/GuideModule;->id:Ljava/util/UUID;

    return-object v0
.end method

.method providesArticleVoteStorage()Lzendesk/support/ArticleVoteStorage;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 45
    iget-object v0, p0, Lzendesk/support/GuideModule;->articleVoteStorage:Lzendesk/support/ArticleVoteStorage;

    return-object v0
.end method

.method providesBlipsProvider()Lzendesk/support/HelpCenterBlipsProvider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 60
    iget-object v0, p0, Lzendesk/support/GuideModule;->blipsProvider:Lzendesk/support/HelpCenterBlipsProvider;

    return-object v0
.end method

.method providesHelpCenterProvider()Lzendesk/support/HelpCenterProvider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 40
    iget-object v0, p0, Lzendesk/support/GuideModule;->helpCenterProvider:Lzendesk/support/HelpCenterProvider;

    return-object v0
.end method

.method providesHelpCenterTracker()Lzendesk/support/HelpCenterTracker;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 55
    iget-object v0, p0, Lzendesk/support/GuideModule;->helpCenterTracker:Lzendesk/support/HelpCenterTracker;

    return-object v0
.end method

.method providesOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 65
    iget-object v0, p0, Lzendesk/support/GuideModule;->okHttpClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method providesSettingsProvider()Lzendesk/support/HelpCenterSettingsProvider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 50
    iget-object v0, p0, Lzendesk/support/GuideModule;->settingsProvider:Lzendesk/support/HelpCenterSettingsProvider;

    return-object v0
.end method
