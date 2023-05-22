.class public Lzendesk/support/Section;
.super Ljava/lang/Object;
.source "Section.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private articlesCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "article_count"
    .end annotation
.end field

.field private categoryId:Ljava/lang/Long;

.field private createdAt:Ljava/util/Date;

.field private description:Ljava/lang/String;

.field private htmlUrl:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private locale:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private outdated:Z

.field private position:I

.field private sorting:Ljava/lang/String;

.field private sourceLocale:Ljava/lang/String;

.field private updatedAt:Ljava/util/Date;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArticlesCount()I
    .locals 1

    .line 168
    iget v0, p0, Lzendesk/support/Section;->articlesCount:I

    return v0
.end method

.method public getCategoryId()Ljava/lang/Long;
    .locals 1

    .line 71
    iget-object v0, p0, Lzendesk/support/Section;->categoryId:Ljava/lang/Long;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 3

    .line 101
    iget-object v0, p0, Lzendesk/support/Section;->createdAt:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lzendesk/support/Section;->createdAt:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lzendesk/support/Section;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlUrl()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lzendesk/support/Section;->htmlUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 41
    iget-object v0, p0, Lzendesk/support/Section;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lzendesk/support/Section;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lzendesk/support/Section;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 81
    iget v0, p0, Lzendesk/support/Section;->position:I

    return v0
.end method

.method public getSorting()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lzendesk/support/Section;->sorting:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceLocale()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lzendesk/support/Section;->sourceLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .locals 3

    .line 110
    iget-object v0, p0, Lzendesk/support/Section;->updatedAt:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lzendesk/support/Section;->updatedAt:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lzendesk/support/Section;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isOutdated()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lzendesk/support/Section;->outdated:Z

    return v0
.end method
