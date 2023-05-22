.class Lzendesk/answerbot/AnswerBotArticleConfiguration;
.super Ljava/lang/Object;
.source "AnswerBotArticleConfiguration.java"

# interfaces
.implements Lzendesk/configurations/Configuration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;
    }
.end annotation


# instance fields
.field private final articleId:J

.field private final articleTitle:Ljava/lang/String;

.field private final configurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/configurations/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private final deflectionId:J

.field private final interactionAccessToken:Ljava/lang/String;

.field private final result:Lzendesk/answerbot/AnswerBotArticleResult;


# direct methods
.method private constructor <init>(Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->access$000(Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration;->articleId:J

    .line 31
    invoke-static {p1}, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->access$100(Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration;->articleTitle:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->access$200(Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration;->deflectionId:J

    .line 33
    invoke-static {p1}, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->access$300(Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration;->interactionAccessToken:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->access$400(Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;)Lzendesk/answerbot/AnswerBotArticleResult;

    move-result-object v0

    iput-object v0, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration;->result:Lzendesk/answerbot/AnswerBotArticleResult;

    .line 35
    invoke-static {p1}, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->access$500(Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration;->configurations:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;Lzendesk/answerbot/AnswerBotArticleConfiguration$1;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lzendesk/answerbot/AnswerBotArticleConfiguration;-><init>(Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lzendesk/answerbot/AnswerBotArticleConfiguration;)Lzendesk/answerbot/AnswerBotArticleResult;
    .locals 0

    .line 20
    iget-object p0, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration;->result:Lzendesk/answerbot/AnswerBotArticleResult;

    return-object p0
.end method

.method static synthetic access$1100(Lzendesk/answerbot/AnswerBotArticleConfiguration;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration;->configurations:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lzendesk/answerbot/AnswerBotArticleConfiguration;)J
    .locals 2

    .line 20
    iget-wide v0, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration;->articleId:J

    return-wide v0
.end method

.method static synthetic access$700(Lzendesk/answerbot/AnswerBotArticleConfiguration;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration;->articleTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lzendesk/answerbot/AnswerBotArticleConfiguration;)J
    .locals 2

    .line 20
    iget-wide v0, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration;->deflectionId:J

    return-wide v0
.end method

.method static synthetic access$900(Lzendesk/answerbot/AnswerBotArticleConfiguration;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration;->interactionAccessToken:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method getArticleId()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration;->articleId:J

    return-wide v0
.end method

.method getArticleTitle()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration;->articleTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigurations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/configurations/Configuration;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration;->configurations:Ljava/util/List;

    return-object v0
.end method

.method getDeflectionId()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration;->deflectionId:J

    return-wide v0
.end method

.method getInteractionAccessToken()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration;->interactionAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method getResult()Lzendesk/answerbot/AnswerBotArticleResult;
    .locals 1

    .line 60
    iget-object v0, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration;->result:Lzendesk/answerbot/AnswerBotArticleResult;

    return-object v0
.end method
