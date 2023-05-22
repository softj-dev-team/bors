.class public Lzendesk/support/ListArticleQuery;
.super Ljava/lang/Object;
.source "ListArticleQuery.java"


# instance fields
.field private include:Ljava/lang/String;

.field private labelNames:Ljava/lang/String;

.field private locale:Ljava/util/Locale;

.field private page:Ljava/lang/Integer;

.field private resultsPerPage:Ljava/lang/Integer;

.field private sortBy:Lzendesk/support/SortBy;

.field private sortOrder:Lzendesk/support/SortOrder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInclude()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lzendesk/support/ListArticleQuery;->include:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelNames()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lzendesk/support/ListArticleQuery;->labelNames:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 49
    iget-object v0, p0, Lzendesk/support/ListArticleQuery;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getPage()Ljava/lang/Integer;
    .locals 1

    .line 85
    iget-object v0, p0, Lzendesk/support/ListArticleQuery;->page:Ljava/lang/Integer;

    return-object v0
.end method

.method public getResultsPerPage()Ljava/lang/Integer;
    .locals 1

    .line 94
    iget-object v0, p0, Lzendesk/support/ListArticleQuery;->resultsPerPage:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSortBy()Lzendesk/support/SortBy;
    .locals 1

    .line 67
    iget-object v0, p0, Lzendesk/support/ListArticleQuery;->sortBy:Lzendesk/support/SortBy;

    return-object v0
.end method

.method public getSortOrder()Lzendesk/support/SortOrder;
    .locals 1

    .line 76
    iget-object v0, p0, Lzendesk/support/ListArticleQuery;->sortOrder:Lzendesk/support/SortOrder;

    return-object v0
.end method

.method public setInclude(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lzendesk/support/ListArticleQuery;->include:Ljava/lang/String;

    return-void
.end method

.method public setLabelNames(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lzendesk/support/ListArticleQuery;->labelNames:Ljava/lang/String;

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lzendesk/support/ListArticleQuery;->locale:Ljava/util/Locale;

    return-void
.end method

.method public setPage(Ljava/lang/Integer;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lzendesk/support/ListArticleQuery;->page:Ljava/lang/Integer;

    return-void
.end method

.method public setResultsPerPage(Ljava/lang/Integer;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lzendesk/support/ListArticleQuery;->resultsPerPage:Ljava/lang/Integer;

    return-void
.end method

.method public setSortBy(Lzendesk/support/SortBy;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lzendesk/support/ListArticleQuery;->sortBy:Lzendesk/support/SortBy;

    return-void
.end method

.method public setSortOrder(Lzendesk/support/SortOrder;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lzendesk/support/ListArticleQuery;->sortOrder:Lzendesk/support/SortOrder;

    return-void
.end method
