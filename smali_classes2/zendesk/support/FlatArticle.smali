.class public Lzendesk/support/FlatArticle;
.super Ljava/lang/Object;
.source "FlatArticle.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lzendesk/support/FlatArticle;",
        ">;"
    }
.end annotation


# instance fields
.field private article:Lzendesk/support/Article;

.field private category:Lzendesk/support/Category;

.field private section:Lzendesk/support/Section;


# direct methods
.method public constructor <init>(Lzendesk/support/Category;Lzendesk/support/Section;Lzendesk/support/Article;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 26
    new-instance p1, Lzendesk/support/Category;

    invoke-direct {p1}, Lzendesk/support/Category;-><init>()V

    :cond_0
    iput-object p1, p0, Lzendesk/support/FlatArticle;->category:Lzendesk/support/Category;

    if-nez p2, :cond_1

    .line 27
    new-instance p2, Lzendesk/support/Section;

    invoke-direct {p2}, Lzendesk/support/Section;-><init>()V

    :cond_1
    iput-object p2, p0, Lzendesk/support/FlatArticle;->section:Lzendesk/support/Section;

    if-nez p3, :cond_2

    .line 28
    new-instance p3, Lzendesk/support/Article;

    invoke-direct {p3}, Lzendesk/support/Article;-><init>()V

    :cond_2
    iput-object p3, p0, Lzendesk/support/FlatArticle;->article:Lzendesk/support/Article;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 12
    check-cast p1, Lzendesk/support/FlatArticle;

    invoke-virtual {p0, p1}, Lzendesk/support/FlatArticle;->compareTo(Lzendesk/support/FlatArticle;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lzendesk/support/FlatArticle;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 74
    :cond_0
    invoke-virtual {p0}, Lzendesk/support/FlatArticle;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lzendesk/support/FlatArticle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getArticle()Lzendesk/support/Article;
    .locals 1

    .line 58
    iget-object v0, p0, Lzendesk/support/FlatArticle;->article:Lzendesk/support/Article;

    return-object v0
.end method

.method public getCategory()Lzendesk/support/Category;
    .locals 1

    .line 38
    iget-object v0, p0, Lzendesk/support/FlatArticle;->category:Lzendesk/support/Category;

    return-object v0
.end method

.method public getSection()Lzendesk/support/Section;
    .locals 1

    .line 48
    iget-object v0, p0, Lzendesk/support/FlatArticle;->section:Lzendesk/support/Section;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lzendesk/support/FlatArticle;->category:Lzendesk/support/Category;

    invoke-virtual {v1}, Lzendesk/support/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lzendesk/support/FlatArticle;->section:Lzendesk/support/Section;

    invoke-virtual {v2}, Lzendesk/support/Section;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzendesk/support/FlatArticle;->article:Lzendesk/support/Article;

    invoke-virtual {v1}, Lzendesk/support/Article;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
