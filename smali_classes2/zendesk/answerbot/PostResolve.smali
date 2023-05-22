.class final Lzendesk/answerbot/PostResolve;
.super Ljava/lang/Object;
.source "PostResolve.java"


# instance fields
.field private final articleId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "article_id"
    .end annotation
.end field

.field private final deflectionId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deflection_id"
    .end annotation
.end field

.field private final interactionAccessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "interaction_access_token"
    .end annotation
.end field

.field private final resolutionChannelId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resolution_channel_id"
    .end annotation
.end field


# direct methods
.method constructor <init>(JJJLjava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lzendesk/answerbot/PostResolve;->deflectionId:J

    .line 27
    iput-wide p3, p0, Lzendesk/answerbot/PostResolve;->articleId:J

    .line 28
    iput-wide p5, p0, Lzendesk/answerbot/PostResolve;->resolutionChannelId:J

    .line 29
    iput-object p7, p0, Lzendesk/answerbot/PostResolve;->interactionAccessToken:Ljava/lang/String;

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

    if-eqz p1, :cond_7

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 41
    :cond_1
    check-cast p1, Lzendesk/answerbot/PostResolve;

    .line 43
    iget-wide v2, p0, Lzendesk/answerbot/PostResolve;->deflectionId:J

    iget-wide v4, p1, Lzendesk/answerbot/PostResolve;->deflectionId:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    .line 46
    :cond_2
    iget-wide v2, p0, Lzendesk/answerbot/PostResolve;->articleId:J

    iget-wide v4, p1, Lzendesk/answerbot/PostResolve;->articleId:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    .line 49
    :cond_3
    iget-wide v2, p0, Lzendesk/answerbot/PostResolve;->resolutionChannelId:J

    iget-wide v4, p1, Lzendesk/answerbot/PostResolve;->resolutionChannelId:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    return v1

    .line 52
    :cond_4
    iget-object v2, p0, Lzendesk/answerbot/PostResolve;->interactionAccessToken:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object p1, p1, Lzendesk/answerbot/PostResolve;->interactionAccessToken:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 53
    :cond_5
    iget-object p1, p1, Lzendesk/answerbot/PostResolve;->interactionAccessToken:Ljava/lang/String;

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_7
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 7

    .line 58
    iget-wide v0, p0, Lzendesk/answerbot/PostResolve;->deflectionId:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 59
    iget-wide v3, p0, Lzendesk/answerbot/PostResolve;->articleId:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 60
    iget-wide v3, p0, Lzendesk/answerbot/PostResolve;->resolutionChannelId:J

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 61
    iget-object v0, p0, Lzendesk/answerbot/PostResolve;->interactionAccessToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method
