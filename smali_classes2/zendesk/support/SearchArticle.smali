.class public Lzendesk/support/SearchArticle;
.super Ljava/lang/Object;
.source "SearchArticle.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final article:Lzendesk/support/Article;

.field private final category:Lzendesk/support/Category;

.field private final section:Lzendesk/support/Section;


# direct methods
.method public constructor <init>(Lzendesk/support/Article;Lzendesk/support/Section;Lzendesk/support/Category;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lzendesk/support/SearchArticle;->article:Lzendesk/support/Article;

    .line 32
    iput-object p2, p0, Lzendesk/support/SearchArticle;->section:Lzendesk/support/Section;

    .line 33
    iput-object p3, p0, Lzendesk/support/SearchArticle;->category:Lzendesk/support/Category;

    return-void
.end method


# virtual methods
.method public getArticle()Lzendesk/support/Article;
    .locals 1

    .line 42
    iget-object v0, p0, Lzendesk/support/SearchArticle;->article:Lzendesk/support/Article;

    return-object v0
.end method

.method public getCategory()Lzendesk/support/Category;
    .locals 1

    .line 62
    iget-object v0, p0, Lzendesk/support/SearchArticle;->category:Lzendesk/support/Category;

    return-object v0
.end method

.method public getSection()Lzendesk/support/Section;
    .locals 1

    .line 52
    iget-object v0, p0, Lzendesk/support/SearchArticle;->section:Lzendesk/support/Section;

    return-object v0
.end method
