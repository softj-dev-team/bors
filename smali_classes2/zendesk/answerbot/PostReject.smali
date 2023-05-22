.class final Lzendesk/answerbot/PostReject;
.super Ljava/lang/Object;
.source "PostReject.java"


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

.field private final reason:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reason_id"
    .end annotation
.end field

.field private final resolutionChannelId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resolution_channel_id"
    .end annotation
.end field


# direct methods
.method constructor <init>(JJJLzendesk/answerbot/RejectionReason;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p1, p0, Lzendesk/answerbot/PostReject;->deflectionId:J

    .line 30
    iput-wide p3, p0, Lzendesk/answerbot/PostReject;->articleId:J

    .line 31
    iput-wide p5, p0, Lzendesk/answerbot/PostReject;->resolutionChannelId:J

    .line 32
    invoke-virtual {p7}, Lzendesk/answerbot/RejectionReason;->getCode()I

    move-result p1

    iput p1, p0, Lzendesk/answerbot/PostReject;->reason:I

    .line 33
    iput-object p8, p0, Lzendesk/answerbot/PostReject;->interactionAccessToken:Ljava/lang/String;

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

    if-eqz p1, :cond_8

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 45
    :cond_1
    check-cast p1, Lzendesk/answerbot/PostReject;

    .line 47
    iget-wide v2, p0, Lzendesk/answerbot/PostReject;->deflectionId:J

    iget-wide v4, p1, Lzendesk/answerbot/PostReject;->deflectionId:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    .line 50
    :cond_2
    iget-wide v2, p0, Lzendesk/answerbot/PostReject;->articleId:J

    iget-wide v4, p1, Lzendesk/answerbot/PostReject;->articleId:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    .line 53
    :cond_3
    iget-wide v2, p0, Lzendesk/answerbot/PostReject;->resolutionChannelId:J

    iget-wide v4, p1, Lzendesk/answerbot/PostReject;->resolutionChannelId:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    return v1

    .line 56
    :cond_4
    iget v2, p0, Lzendesk/answerbot/PostReject;->reason:I

    iget v3, p1, Lzendesk/answerbot/PostReject;->reason:I

    if-eq v2, v3, :cond_5

    return v1

    .line 59
    :cond_5
    iget-object v2, p0, Lzendesk/answerbot/PostReject;->interactionAccessToken:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object p1, p1, Lzendesk/answerbot/PostReject;->interactionAccessToken:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 60
    :cond_6
    iget-object p1, p1, Lzendesk/answerbot/PostReject;->interactionAccessToken:Ljava/lang/String;

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_8
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 7

    .line 65
    iget-wide v0, p0, Lzendesk/answerbot/PostReject;->deflectionId:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 66
    iget-wide v3, p0, Lzendesk/answerbot/PostReject;->articleId:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 67
    iget-wide v3, p0, Lzendesk/answerbot/PostReject;->resolutionChannelId:J

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 68
    iget v0, p0, Lzendesk/answerbot/PostReject;->reason:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 69
    iget-object v0, p0, Lzendesk/answerbot/PostReject;->interactionAccessToken:Ljava/lang/String;

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
