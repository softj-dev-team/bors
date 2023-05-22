.class public final Lzendesk/answerbot/DeflectionResponse;
.super Ljava/lang/Object;
.source "DeflectionResponse.java"


# instance fields
.field private final deflection:Lzendesk/answerbot/Deflection;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deflection"
    .end annotation
.end field

.field private final deflectionArticles:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deflection_articles"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/answerbot/DeflectionArticle;",
            ">;"
        }
    .end annotation
.end field

.field private final interactionAccessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "interaction_access_token"
    .end annotation
.end field

.field private final meta:Lzendesk/answerbot/DeflectionMeta;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "model_meta"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lzendesk/answerbot/DeflectionMeta;Lzendesk/answerbot/Deflection;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lzendesk/answerbot/DeflectionMeta;",
            "Lzendesk/answerbot/Deflection;",
            "Ljava/util/List<",
            "Lzendesk/answerbot/DeflectionArticle;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lzendesk/answerbot/DeflectionResponse;->interactionAccessToken:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lzendesk/answerbot/DeflectionResponse;->meta:Lzendesk/answerbot/DeflectionMeta;

    .line 28
    iput-object p3, p0, Lzendesk/answerbot/DeflectionResponse;->deflection:Lzendesk/answerbot/Deflection;

    .line 29
    iput-object p4, p0, Lzendesk/answerbot/DeflectionResponse;->deflectionArticles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_4

    .line 57
    :cond_1
    check-cast p1, Lzendesk/answerbot/DeflectionResponse;

    .line 59
    iget-object v2, p0, Lzendesk/answerbot/DeflectionResponse;->interactionAccessToken:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lzendesk/answerbot/DeflectionResponse;->interactionAccessToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lzendesk/answerbot/DeflectionResponse;->interactionAccessToken:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 63
    :cond_3
    iget-object v2, p0, Lzendesk/answerbot/DeflectionResponse;->meta:Lzendesk/answerbot/DeflectionMeta;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lzendesk/answerbot/DeflectionResponse;->meta:Lzendesk/answerbot/DeflectionMeta;

    invoke-virtual {v2, v3}, Lzendesk/answerbot/DeflectionMeta;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lzendesk/answerbot/DeflectionResponse;->meta:Lzendesk/answerbot/DeflectionMeta;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    .line 66
    :cond_5
    iget-object v2, p0, Lzendesk/answerbot/DeflectionResponse;->deflection:Lzendesk/answerbot/Deflection;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lzendesk/answerbot/DeflectionResponse;->deflection:Lzendesk/answerbot/Deflection;

    invoke-virtual {v2, v3}, Lzendesk/answerbot/Deflection;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_6
    iget-object v2, p1, Lzendesk/answerbot/DeflectionResponse;->deflection:Lzendesk/answerbot/Deflection;

    if-eqz v2, :cond_7

    :goto_2
    return v1

    .line 69
    :cond_7
    iget-object v2, p0, Lzendesk/answerbot/DeflectionResponse;->deflectionArticles:Ljava/util/List;

    if-eqz v2, :cond_8

    iget-object p1, p1, Lzendesk/answerbot/DeflectionResponse;->deflectionArticles:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 70
    :cond_8
    iget-object p1, p1, Lzendesk/answerbot/DeflectionResponse;->deflectionArticles:Ljava/util/List;

    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_a
    :goto_4
    return v1
.end method

.method public getDeflection()Lzendesk/answerbot/Deflection;
    .locals 1

    .line 41
    iget-object v0, p0, Lzendesk/answerbot/DeflectionResponse;->deflection:Lzendesk/answerbot/Deflection;

    return-object v0
.end method

.method public getDeflectionArticles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/answerbot/DeflectionArticle;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lzendesk/answerbot/DeflectionResponse;->deflectionArticles:Ljava/util/List;

    return-object v0
.end method

.method public getInteractionAccessToken()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lzendesk/answerbot/DeflectionResponse;->interactionAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method getMeta()Lzendesk/answerbot/DeflectionMeta;
    .locals 1

    .line 37
    iget-object v0, p0, Lzendesk/answerbot/DeflectionResponse;->meta:Lzendesk/answerbot/DeflectionMeta;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 75
    iget-object v0, p0, Lzendesk/answerbot/DeflectionResponse;->interactionAccessToken:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 76
    iget-object v2, p0, Lzendesk/answerbot/DeflectionResponse;->meta:Lzendesk/answerbot/DeflectionMeta;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lzendesk/answerbot/DeflectionMeta;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 77
    iget-object v2, p0, Lzendesk/answerbot/DeflectionResponse;->deflection:Lzendesk/answerbot/Deflection;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lzendesk/answerbot/Deflection;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 78
    iget-object v2, p0, Lzendesk/answerbot/DeflectionResponse;->deflectionArticles:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method
