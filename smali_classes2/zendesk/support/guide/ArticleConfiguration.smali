.class public Lzendesk/support/guide/ArticleConfiguration;
.super Ljava/lang/Object;
.source "ArticleConfiguration.java"

# interfaces
.implements Lzendesk/configurations/Configuration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/guide/ArticleConfiguration$Builder;
    }
.end annotation


# static fields
.field static final ARTICLE_ID:I = 0x1

.field static final ARTICLE_MODEL:I = 0x2

.field static final UNKNOWN:I = -0x1


# instance fields
.field private final article:Lzendesk/support/guide/ArticleViewModel;

.field private final articleId:J

.field private final configurationState:I

.field private final configurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/configurations/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private final contactUsVisible:Z

.field private final engineRegistryId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lzendesk/support/guide/ArticleConfiguration$Builder;Ljava/lang/String;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lzendesk/support/guide/ArticleConfiguration$Builder;->access$000(Lzendesk/support/guide/ArticleConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lzendesk/support/guide/ArticleConfiguration;->configurationState:I

    .line 43
    invoke-static {p1}, Lzendesk/support/guide/ArticleConfiguration$Builder;->access$100(Lzendesk/support/guide/ArticleConfiguration$Builder;)Lzendesk/support/guide/ArticleViewModel;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/guide/ArticleConfiguration;->article:Lzendesk/support/guide/ArticleViewModel;

    .line 44
    invoke-static {p1}, Lzendesk/support/guide/ArticleConfiguration$Builder;->access$200(Lzendesk/support/guide/ArticleConfiguration$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lzendesk/support/guide/ArticleConfiguration;->articleId:J

    .line 45
    invoke-static {p1}, Lzendesk/support/guide/ArticleConfiguration$Builder;->access$300(Lzendesk/support/guide/ArticleConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lzendesk/support/guide/ArticleConfiguration;->contactUsVisible:Z

    .line 46
    invoke-static {p1}, Lzendesk/support/guide/ArticleConfiguration$Builder;->access$400(Lzendesk/support/guide/ArticleConfiguration$Builder;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/guide/ArticleConfiguration;->configurations:Ljava/util/List;

    .line 47
    iput-object p2, p0, Lzendesk/support/guide/ArticleConfiguration;->engineRegistryId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/support/guide/ArticleConfiguration$Builder;Ljava/lang/String;Lzendesk/support/guide/ArticleConfiguration$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lzendesk/support/guide/ArticleConfiguration;-><init>(Lzendesk/support/guide/ArticleConfiguration$Builder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lzendesk/support/guide/ArticleConfiguration;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lzendesk/support/guide/ArticleConfiguration;->engineRegistryId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method getArticle()Lzendesk/support/guide/ArticleViewModel;
    .locals 1

    .line 55
    iget-object v0, p0, Lzendesk/support/guide/ArticleConfiguration;->article:Lzendesk/support/guide/ArticleViewModel;

    return-object v0
.end method

.method getArticleId()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lzendesk/support/guide/ArticleConfiguration;->articleId:J

    return-wide v0
.end method

.method getConfigurationState()I
    .locals 1

    .line 51
    iget v0, p0, Lzendesk/support/guide/ArticleConfiguration;->configurationState:I

    return v0
.end method

.method public getConfigurations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/configurations/Configuration;",
            ">;"
        }
    .end annotation

    .line 69
    invoke-static {}, Lzendesk/configurations/ConfigurationHelper;->get()Lzendesk/configurations/ConfigurationHelper;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/guide/ArticleConfiguration;->configurations:Ljava/util/List;

    invoke-virtual {v0, v1, p0}, Lzendesk/configurations/ConfigurationHelper;->addSelfIfNotInList(Ljava/util/List;Lzendesk/configurations/Configuration;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEngines()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/messaging/Engine;",
            ">;"
        }
    .end annotation

    .line 84
    sget-object v0, Lzendesk/messaging/EngineListRegistry;->INSTANCE:Lzendesk/messaging/EngineListRegistry;

    iget-object v1, p0, Lzendesk/support/guide/ArticleConfiguration;->engineRegistryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lzendesk/messaging/EngineListRegistry;->retrieveEngineList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isContactUsButtonVisible()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lzendesk/support/guide/ArticleConfiguration;->contactUsVisible:Z

    return v0
.end method
