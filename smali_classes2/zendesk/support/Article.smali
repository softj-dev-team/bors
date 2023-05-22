.class public Lzendesk/support/Article;
.super Ljava/lang/Object;
.source "Article.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Article"

.field public static final UNKNOWN_VOTE_COUNT:I = -0x1


# instance fields
.field private author:Lzendesk/core/User;

.field private authorId:Ljava/lang/Long;

.field private body:Ljava/lang/String;

.field private commentsDisabled:Z

.field private createdAt:Ljava/util/Date;

.field private draft:Z

.field private htmlUrl:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private labelNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private locale:Ljava/lang/String;

.field private outdated:Z

.field private position:Ljava/lang/Integer;

.field private sectionId:Ljava/lang/Long;

.field private sourceLocale:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private updatedAt:Ljava/util/Date;

.field private url:Ljava/lang/String;

.field private voteCount:Ljava/lang/Integer;

.field private voteSum:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Lzendesk/core/User;
    .locals 1

    .line 259
    iget-object v0, p0, Lzendesk/support/Article;->author:Lzendesk/core/User;

    return-object v0
.end method

.method public getAuthorId()Ljava/lang/Long;
    .locals 1

    .line 89
    iget-object v0, p0, Lzendesk/support/Article;->authorId:Ljava/lang/Long;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lzendesk/support/Article;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 3

    .line 174
    iget-object v0, p0, Lzendesk/support/Article;->createdAt:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 178
    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lzendesk/support/Article;->createdAt:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getDownvoteCount()I
    .locals 3

    .line 322
    iget-object v0, p0, Lzendesk/support/Article;->voteSum:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lzendesk/support/Article;->voteCount:Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lzendesk/support/Article;->voteCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Article"

    const-string v2, "Cannot determine vote count because vote_sum and / or vote_count are null"

    .line 323
    invoke-static {v1, v2, v0}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getHtmlUrl()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lzendesk/support/Article;->htmlUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 55
    iget-object v0, p0, Lzendesk/support/Article;->id:Ljava/lang/Long;

    return-object v0
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

    .line 110
    iget-object v0, p0, Lzendesk/support/Article;->labelNames:Ljava/util/List;

    invoke-static {v0}, Lcom/zendesk/util/CollectionUtils;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lzendesk/support/Article;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Ljava/lang/Integer;
    .locals 1

    .line 282
    iget-object v0, p0, Lzendesk/support/Article;->position:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSectionId()Ljava/lang/Long;
    .locals 1

    .line 162
    iget-object v0, p0, Lzendesk/support/Article;->sectionId:Ljava/lang/Long;

    return-object v0
.end method

.method public getSourceLocale()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lzendesk/support/Article;->sourceLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lzendesk/support/Article;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .locals 3

    .line 190
    iget-object v0, p0, Lzendesk/support/Article;->updatedAt:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 194
    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lzendesk/support/Article;->updatedAt:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getUpvoteCount()I
    .locals 3

    .line 298
    iget-object v0, p0, Lzendesk/support/Article;->voteSum:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lzendesk/support/Article;->voteCount:Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lzendesk/support/Article;->voteCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Article"

    const-string v2, "Cannot determine vote count because vote_sum and / or vote_count are null"

    .line 299
    invoke-static {v1, v2, v0}, Lcom/zendesk/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lzendesk/support/Article;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVoteCount()I
    .locals 1

    .line 151
    iget-object v0, p0, Lzendesk/support/Article;->voteCount:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getVoteSum()I
    .locals 1

    .line 136
    iget-object v0, p0, Lzendesk/support/Article;->voteSum:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isCommentsDisabled()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lzendesk/support/Article;->commentsDisabled:Z

    return v0
.end method

.method public isDraft()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lzendesk/support/Article;->draft:Z

    return v0
.end method

.method public isOutdated()Z
    .locals 1

    .line 248
    iget-boolean v0, p0, Lzendesk/support/Article;->outdated:Z

    return v0
.end method

.method public setAuthor(Lzendesk/core/User;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lzendesk/support/Article;->author:Lzendesk/core/User;

    return-void
.end method
