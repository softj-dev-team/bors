.class public final Lzendesk/answerbot/DeflectionArticle;
.super Ljava/lang/Object;
.source "DeflectionArticle.java"


# instance fields
.field private final articleId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "article_id"
    .end annotation
.end field

.field private final brandId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "brand_id"
    .end annotation
.end field

.field private final htmlUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "html_url"
    .end annotation
.end field

.field private final id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private final labelNames:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "label_names"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final locale:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locale"
    .end annotation
.end field

.field private final score:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "score"
    .end annotation
.end field

.field private final snippet:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "snippet"
    .end annotation
.end field

.field private final title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private final url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JJLjava/lang/String;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JJ",
            "Ljava/lang/String;",
            "D)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-wide p1, p0, Lzendesk/answerbot/DeflectionArticle;->id:J

    .line 47
    iput-object p3, p0, Lzendesk/answerbot/DeflectionArticle;->title:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lzendesk/answerbot/DeflectionArticle;->snippet:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lzendesk/answerbot/DeflectionArticle;->htmlUrl:Ljava/lang/String;

    .line 50
    iput-object p6, p0, Lzendesk/answerbot/DeflectionArticle;->url:Ljava/lang/String;

    .line 51
    iput-object p7, p0, Lzendesk/answerbot/DeflectionArticle;->labelNames:Ljava/util/List;

    .line 52
    iput-wide p8, p0, Lzendesk/answerbot/DeflectionArticle;->articleId:J

    .line 53
    iput-wide p10, p0, Lzendesk/answerbot/DeflectionArticle;->brandId:J

    .line 54
    iput-object p12, p0, Lzendesk/answerbot/DeflectionArticle;->locale:Ljava/lang/String;

    .line 55
    iput-wide p13, p0, Lzendesk/answerbot/DeflectionArticle;->score:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_12

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_6

    .line 107
    :cond_1
    check-cast p1, Lzendesk/answerbot/DeflectionArticle;

    .line 109
    iget-wide v2, p0, Lzendesk/answerbot/DeflectionArticle;->id:J

    iget-wide v4, p1, Lzendesk/answerbot/DeflectionArticle;->id:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    .line 112
    :cond_2
    iget-wide v2, p0, Lzendesk/answerbot/DeflectionArticle;->articleId:J

    iget-wide v4, p1, Lzendesk/answerbot/DeflectionArticle;->articleId:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    .line 115
    :cond_3
    iget-wide v2, p0, Lzendesk/answerbot/DeflectionArticle;->brandId:J

    iget-wide v4, p1, Lzendesk/answerbot/DeflectionArticle;->brandId:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    return v1

    .line 118
    :cond_4
    iget-wide v2, p1, Lzendesk/answerbot/DeflectionArticle;->score:D

    iget-wide v4, p0, Lzendesk/answerbot/DeflectionArticle;->score:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_5

    return v1

    .line 121
    :cond_5
    iget-object v2, p0, Lzendesk/answerbot/DeflectionArticle;->title:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lzendesk/answerbot/DeflectionArticle;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lzendesk/answerbot/DeflectionArticle;->title:Ljava/lang/String;

    if-eqz v2, :cond_7

    :goto_0
    return v1

    .line 124
    :cond_7
    iget-object v2, p0, Lzendesk/answerbot/DeflectionArticle;->snippet:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lzendesk/answerbot/DeflectionArticle;->snippet:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_1

    :cond_8
    iget-object v2, p1, Lzendesk/answerbot/DeflectionArticle;->snippet:Ljava/lang/String;

    if-eqz v2, :cond_9

    :goto_1
    return v1

    .line 127
    :cond_9
    iget-object v2, p0, Lzendesk/answerbot/DeflectionArticle;->htmlUrl:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v3, p1, Lzendesk/answerbot/DeflectionArticle;->htmlUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_2

    :cond_a
    iget-object v2, p1, Lzendesk/answerbot/DeflectionArticle;->htmlUrl:Ljava/lang/String;

    if-eqz v2, :cond_b

    :goto_2
    return v1

    .line 130
    :cond_b
    iget-object v2, p0, Lzendesk/answerbot/DeflectionArticle;->url:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v3, p1, Lzendesk/answerbot/DeflectionArticle;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_3

    :cond_c
    iget-object v2, p1, Lzendesk/answerbot/DeflectionArticle;->url:Ljava/lang/String;

    if-eqz v2, :cond_d

    :goto_3
    return v1

    .line 133
    :cond_d
    iget-object v2, p0, Lzendesk/answerbot/DeflectionArticle;->labelNames:Ljava/util/List;

    if-eqz v2, :cond_e

    iget-object v3, p1, Lzendesk/answerbot/DeflectionArticle;->labelNames:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_4

    :cond_e
    iget-object v2, p1, Lzendesk/answerbot/DeflectionArticle;->labelNames:Ljava/util/List;

    if-eqz v2, :cond_f

    :goto_4
    return v1

    .line 136
    :cond_f
    iget-object v2, p0, Lzendesk/answerbot/DeflectionArticle;->locale:Ljava/lang/String;

    iget-object p1, p1, Lzendesk/answerbot/DeflectionArticle;->locale:Ljava/lang/String;

    if-eqz v2, :cond_10

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5

    :cond_10
    if-nez p1, :cond_11

    goto :goto_5

    :cond_11
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_12
    :goto_6
    return v1
.end method

.method public getArticleId()J
    .locals 2

    .line 83
    iget-wide v0, p0, Lzendesk/answerbot/DeflectionArticle;->articleId:J

    return-wide v0
.end method

.method public getBrandId()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lzendesk/answerbot/DeflectionArticle;->brandId:J

    return-wide v0
.end method

.method public getHtmlUrl()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lzendesk/answerbot/DeflectionArticle;->htmlUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lzendesk/answerbot/DeflectionArticle;->id:J

    return-wide v0
.end method

.method public getLabelNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lzendesk/answerbot/DeflectionArticle;->labelNames:Ljava/util/List;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lzendesk/answerbot/DeflectionArticle;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()D
    .locals 2

    .line 95
    iget-wide v0, p0, Lzendesk/answerbot/DeflectionArticle;->score:D

    return-wide v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lzendesk/answerbot/DeflectionArticle;->snippet:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lzendesk/answerbot/DeflectionArticle;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lzendesk/answerbot/DeflectionArticle;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .line 143
    iget-wide v0, p0, Lzendesk/answerbot/DeflectionArticle;->id:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 144
    iget-object v0, p0, Lzendesk/answerbot/DeflectionArticle;->title:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 145
    iget-object v0, p0, Lzendesk/answerbot/DeflectionArticle;->snippet:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 146
    iget-object v0, p0, Lzendesk/answerbot/DeflectionArticle;->htmlUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 147
    iget-object v0, p0, Lzendesk/answerbot/DeflectionArticle;->url:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 148
    iget-object v0, p0, Lzendesk/answerbot/DeflectionArticle;->labelNames:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 149
    iget-wide v4, p0, Lzendesk/answerbot/DeflectionArticle;->articleId:J

    ushr-long v6, v4, v2

    xor-long/2addr v4, v6

    long-to-int v0, v4

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 150
    iget-wide v4, p0, Lzendesk/answerbot/DeflectionArticle;->brandId:J

    ushr-long v6, v4, v2

    xor-long/2addr v4, v6

    long-to-int v0, v4

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 151
    iget-object v0, p0, Lzendesk/answerbot/DeflectionArticle;->locale:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_5
    add-int/2addr v1, v3

    .line 152
    iget-wide v3, p0, Lzendesk/answerbot/DeflectionArticle;->score:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method
