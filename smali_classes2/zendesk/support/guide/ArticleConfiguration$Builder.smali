.class public Lzendesk/support/guide/ArticleConfiguration$Builder;
.super Ljava/lang/Object;
.source "ArticleConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/guide/ArticleConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private article:Lzendesk/support/guide/ArticleViewModel;

.field private articleId:J

.field private configurationState:I

.field private configurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/configurations/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private contactUsVisible:Z

.field private engines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/messaging/Engine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lzendesk/support/guide/ArticleConfiguration$Builder;->contactUsVisible:Z

    .line 96
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/guide/ArticleConfiguration$Builder;->configurations:Ljava/util/List;

    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/guide/ArticleConfiguration$Builder;->engines:Ljava/util/List;

    const/4 v0, -0x1

    .line 123
    iput v0, p0, Lzendesk/support/guide/ArticleConfiguration$Builder;->configurationState:I

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lzendesk/support/guide/ArticleConfiguration$Builder;->contactUsVisible:Z

    .line 96
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lzendesk/support/guide/ArticleConfiguration$Builder;->configurations:Ljava/util/List;

    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lzendesk/support/guide/ArticleConfiguration$Builder;->engines:Ljava/util/List;

    .line 105
    iput-wide p1, p0, Lzendesk/support/guide/ArticleConfiguration$Builder;->articleId:J

    .line 106
    iput v0, p0, Lzendesk/support/guide/ArticleConfiguration$Builder;->configurationState:I

    return-void
.end method

.method public constructor <init>(Lzendesk/support/Article;)V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lzendesk/support/guide/ArticleConfiguration$Builder;->contactUsVisible:Z

    .line 96
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/guide/ArticleConfiguration$Builder;->configurations:Ljava/util/List;

    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/guide/ArticleConfiguration$Builder;->engines:Ljava/util/List;

    .line 115
    new-instance v0, Lzendesk/support/guide/ArticleViewModel;

    invoke-direct {v0, p1}, Lzendesk/support/guide/ArticleViewModel;-><init>(Lzendesk/support/Article;)V

    iput-object v0, p0, Lzendesk/support/guide/ArticleConfiguration$Builder;->article:Lzendesk/support/guide/ArticleViewModel;

    const/4 p1, 0x2

    .line 116
    iput p1, p0, Lzendesk/support/guide/ArticleConfiguration$Builder;->configurationState:I

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/guide/ArticleConfiguration$Builder;)I
    .locals 0

    .line 90
    iget p0, p0, Lzendesk/support/guide/ArticleConfiguration$Builder;->configurationState:I

    return p0
.end method

.method static synthetic access$100(Lzendesk/support/guide/ArticleConfiguration$Builder;)Lzendesk/support/guide/ArticleViewModel;
    .locals 0

    .line 90
    iget-object p0, p0, Lzendesk/support/guide/ArticleConfiguration$Builder;->article:Lzendesk/support/guide/ArticleViewModel;

    return-object p0
.end method

.method static synthetic access$200(Lzendesk/support/guide/ArticleConfiguration$Builder;)J
    .locals 2

    .line 90
    iget-wide v0, p0, Lzendesk/support/guide/ArticleConfiguration$Builder;->articleId:J

    return-wide v0
.end method

.method static synthetic access$300(Lzendesk/support/guide/ArticleConfiguration$Builder;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lzendesk/support/guide/ArticleConfiguration$Builder;->contactUsVisible:Z

    return p0
.end method

.method static synthetic access$400(Lzendesk/support/guide/ArticleConfiguration$Builder;)Ljava/util/List;
    .locals 0

    .line 90
    iget-object p0, p0, Lzendesk/support/guide/ArticleConfiguration$Builder;->configurations:Ljava/util/List;

    return-object p0
.end method

.method private setConfigurations(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/configurations/Configuration;",
            ">;)V"
        }
    .end annotation

    .line 171
    invoke-static {p1}, Lcom/zendesk/util/CollectionUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iput-object p1, p0, Lzendesk/support/guide/ArticleConfiguration$Builder;->configurations:Ljava/util/List;

    .line 176
    invoke-static {}, Lzendesk/configurations/ConfigurationHelper;->get()Lzendesk/configurations/ConfigurationHelper;

    move-result-object v0

    const-class v1, Lzendesk/support/guide/ArticleConfiguration;

    invoke-virtual {v0, p1, v1}, Lzendesk/configurations/ConfigurationHelper;->findConfigForType(Ljava/util/List;Ljava/lang/Class;)Lzendesk/configurations/Configuration;

    move-result-object p1

    check-cast p1, Lzendesk/support/guide/ArticleConfiguration;

    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p1}, Lzendesk/support/guide/ArticleConfiguration;->isContactUsButtonVisible()Z

    move-result v0

    iput-boolean v0, p0, Lzendesk/support/guide/ArticleConfiguration$Builder;->contactUsVisible:Z

    .line 180
    sget-object v0, Lzendesk/messaging/EngineListRegistry;->INSTANCE:Lzendesk/messaging/EngineListRegistry;

    invoke-static {p1}, Lzendesk/support/guide/ArticleConfiguration;->access$500(Lzendesk/support/guide/ArticleConfiguration;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lzendesk/messaging/EngineListRegistry;->retrieveEngineList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/guide/ArticleConfiguration$Builder;->engines:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method public config()Lzendesk/configurations/Configuration;
    .locals 3

    .line 242
    sget-object v0, Lzendesk/messaging/EngineListRegistry;->INSTANCE:Lzendesk/messaging/EngineListRegistry;

    iget-object v1, p0, Lzendesk/support/guide/ArticleConfiguration$Builder;->engines:Ljava/util/List;

    invoke-virtual {v0, v1}, Lzendesk/messaging/EngineListRegistry;->register(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 243
    new-instance v1, Lzendesk/support/guide/ArticleConfiguration;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lzendesk/support/guide/ArticleConfiguration;-><init>(Lzendesk/support/guide/ArticleConfiguration$Builder;Ljava/lang/String;Lzendesk/support/guide/ArticleConfiguration$1;)V

    return-object v1
.end method

.method public intent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lzendesk/configurations/Configuration;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 228
    invoke-direct {p0, p2}, Lzendesk/support/guide/ArticleConfiguration$Builder;->setConfigurations(Ljava/util/List;)V

    .line 230
    invoke-virtual {p0}, Lzendesk/support/guide/ArticleConfiguration$Builder;->config()Lzendesk/configurations/Configuration;

    move-result-object p2

    .line 231
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzendesk/support/guide/ViewArticleActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    invoke-static {}, Lzendesk/configurations/ConfigurationHelper;->get()Lzendesk/configurations/ConfigurationHelper;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lzendesk/configurations/ConfigurationHelper;->addToIntent(Landroid/content/Intent;Lzendesk/configurations/Configuration;)V

    return-object v0
.end method

.method public varargs intent(Landroid/content/Context;[Lzendesk/configurations/Configuration;)Landroid/content/Intent;
    .locals 0

    .line 215
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lzendesk/support/guide/ArticleConfiguration$Builder;->intent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public show(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lzendesk/configurations/Configuration;",
            ">;)V"
        }
    .end annotation

    .line 202
    invoke-virtual {p0, p1, p2}, Lzendesk/support/guide/ArticleConfiguration$Builder;->intent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public varargs show(Landroid/content/Context;[Lzendesk/configurations/Configuration;)V
    .locals 0

    .line 192
    invoke-virtual {p0, p1, p2}, Lzendesk/support/guide/ArticleConfiguration$Builder;->intent(Landroid/content/Context;[Lzendesk/configurations/Configuration;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public withContactUsButtonVisible(Z)Lzendesk/support/guide/ArticleConfiguration$Builder;
    .locals 0

    .line 132
    iput-boolean p1, p0, Lzendesk/support/guide/ArticleConfiguration$Builder;->contactUsVisible:Z

    return-object p0
.end method

.method public withEngines(Ljava/util/List;)Lzendesk/support/guide/ArticleConfiguration$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/messaging/Engine;",
            ">;)",
            "Lzendesk/support/guide/ArticleConfiguration$Builder;"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lzendesk/support/guide/ArticleConfiguration$Builder;->engines:Ljava/util/List;

    return-object p0
.end method

.method public varargs withEngines([Lzendesk/messaging/Engine;)Lzendesk/support/guide/ArticleConfiguration$Builder;
    .locals 0

    .line 164
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzendesk/support/guide/ArticleConfiguration$Builder;->withEngines(Ljava/util/List;)Lzendesk/support/guide/ArticleConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method
