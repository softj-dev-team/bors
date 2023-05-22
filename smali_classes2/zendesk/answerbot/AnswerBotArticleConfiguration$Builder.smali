.class Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;
.super Ljava/lang/Object;
.source "AnswerBotArticleConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/answerbot/AnswerBotArticleConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private articleId:J

.field private articleTitle:Ljava/lang/String;

.field private configurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/configurations/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private deflectionId:J

.field private interactionAccessToken:Ljava/lang/String;

.field private result:Lzendesk/answerbot/AnswerBotArticleResult;


# direct methods
.method public constructor <init>(JLjava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-wide p1, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->articleId:J

    .line 79
    iput-object p3, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->articleTitle:Ljava/lang/String;

    .line 80
    iput-wide p4, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->deflectionId:J

    .line 81
    iput-object p6, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->interactionAccessToken:Ljava/lang/String;

    .line 82
    sget-object p1, Lzendesk/answerbot/AnswerBotArticleResult;->NOT_SET:Lzendesk/answerbot/AnswerBotArticleResult;

    iput-object p1, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->result:Lzendesk/answerbot/AnswerBotArticleResult;

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->configurations:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lzendesk/answerbot/AnswerBotArticleConfiguration;)V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {p1}, Lzendesk/answerbot/AnswerBotArticleConfiguration;->access$600(Lzendesk/answerbot/AnswerBotArticleConfiguration;)J

    move-result-wide v0

    iput-wide v0, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->articleId:J

    .line 88
    invoke-static {p1}, Lzendesk/answerbot/AnswerBotArticleConfiguration;->access$700(Lzendesk/answerbot/AnswerBotArticleConfiguration;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->articleTitle:Ljava/lang/String;

    .line 89
    invoke-static {p1}, Lzendesk/answerbot/AnswerBotArticleConfiguration;->access$800(Lzendesk/answerbot/AnswerBotArticleConfiguration;)J

    move-result-wide v0

    iput-wide v0, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->deflectionId:J

    .line 90
    invoke-static {p1}, Lzendesk/answerbot/AnswerBotArticleConfiguration;->access$900(Lzendesk/answerbot/AnswerBotArticleConfiguration;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->interactionAccessToken:Ljava/lang/String;

    .line 91
    invoke-static {p1}, Lzendesk/answerbot/AnswerBotArticleConfiguration;->access$1000(Lzendesk/answerbot/AnswerBotArticleConfiguration;)Lzendesk/answerbot/AnswerBotArticleResult;

    move-result-object v0

    iput-object v0, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->result:Lzendesk/answerbot/AnswerBotArticleResult;

    .line 92
    invoke-static {p1}, Lzendesk/answerbot/AnswerBotArticleConfiguration;->access$1100(Lzendesk/answerbot/AnswerBotArticleConfiguration;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->configurations:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;)J
    .locals 2

    .line 64
    iget-wide v0, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->articleId:J

    return-wide v0
.end method

.method static synthetic access$100(Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->articleTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;)J
    .locals 2

    .line 64
    iget-wide v0, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->deflectionId:J

    return-wide v0
.end method

.method static synthetic access$300(Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->interactionAccessToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;)Lzendesk/answerbot/AnswerBotArticleResult;
    .locals 0

    .line 64
    iget-object p0, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->result:Lzendesk/answerbot/AnswerBotArticleResult;

    return-object p0
.end method

.method static synthetic access$500(Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->configurations:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public config()Lzendesk/configurations/Configuration;
    .locals 2

    .line 122
    new-instance v0, Lzendesk/answerbot/AnswerBotArticleConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lzendesk/answerbot/AnswerBotArticleConfiguration;-><init>(Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;Lzendesk/answerbot/AnswerBotArticleConfiguration$1;)V

    return-object v0
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

    .line 149
    iput-object p2, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->configurations:Ljava/util/List;

    .line 151
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->config()Lzendesk/configurations/Configuration;

    move-result-object p2

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzendesk/answerbot/AnswerBotArticleActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    invoke-static {v0, p2}, Lzendesk/configurations/ConfigurationUtil;->addToIntent(Landroid/content/Intent;Lzendesk/configurations/Configuration;)V

    return-object v0
.end method

.method public varargs intent(Landroid/content/Context;[Lzendesk/configurations/Configuration;)Landroid/content/Intent;
    .locals 0

    .line 135
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->intent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method resultIntent(Lzendesk/answerbot/AnswerBotArticleResult;)Landroid/content/Intent;
    .locals 1

    .line 161
    iput-object p1, p0, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->result:Lzendesk/answerbot/AnswerBotArticleResult;

    .line 163
    invoke-virtual {p0}, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->config()Lzendesk/configurations/Configuration;

    move-result-object p1

    .line 164
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 166
    invoke-static {v0, p1}, Lzendesk/configurations/ConfigurationUtil;->addToIntent(Landroid/content/Intent;Lzendesk/configurations/Configuration;)V

    return-object v0
.end method

.method public show(Landroid/app/Activity;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List<",
            "Lzendesk/configurations/Configuration;",
            ">;)V"
        }
    .end annotation

    .line 114
    invoke-virtual {p0, p1, p3}, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->intent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public varargs show(Landroid/app/Activity;I[Lzendesk/configurations/Configuration;)V
    .locals 0

    .line 103
    invoke-virtual {p0, p1, p3}, Lzendesk/answerbot/AnswerBotArticleConfiguration$Builder;->intent(Landroid/content/Context;[Lzendesk/configurations/Configuration;)Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
