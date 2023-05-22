.class public Lzendesk/support/SuggestedArticleSearch$Builder;
.super Ljava/lang/Object;
.source "SuggestedArticleSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/SuggestedArticleSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private categoryId:Ljava/lang/Long;

.field private labelNames:[Ljava/lang/String;

.field private locale:Ljava/util/Locale;

.field private query:Ljava/lang/String;

.field private sectionId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lzendesk/support/SuggestedArticleSearch;
    .locals 2

    .line 152
    new-instance v0, Lzendesk/support/SuggestedArticleSearch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzendesk/support/SuggestedArticleSearch;-><init>(Lzendesk/support/SuggestedArticleSearch$1;)V

    .line 154
    iget-object v1, p0, Lzendesk/support/SuggestedArticleSearch$Builder;->query:Ljava/lang/String;

    invoke-static {v0, v1}, Lzendesk/support/SuggestedArticleSearch;->access$102(Lzendesk/support/SuggestedArticleSearch;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    iget-object v1, p0, Lzendesk/support/SuggestedArticleSearch$Builder;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Lzendesk/support/SuggestedArticleSearch;->access$202(Lzendesk/support/SuggestedArticleSearch;Ljava/util/Locale;)Ljava/util/Locale;

    .line 156
    iget-object v1, p0, Lzendesk/support/SuggestedArticleSearch$Builder;->labelNames:[Ljava/lang/String;

    invoke-static {v1}, Lcom/zendesk/util/StringUtils;->toCsvString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lzendesk/support/SuggestedArticleSearch;->access$302(Lzendesk/support/SuggestedArticleSearch;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    iget-object v1, p0, Lzendesk/support/SuggestedArticleSearch$Builder;->categoryId:Ljava/lang/Long;

    invoke-static {v0, v1}, Lzendesk/support/SuggestedArticleSearch;->access$402(Lzendesk/support/SuggestedArticleSearch;Ljava/lang/Long;)Ljava/lang/Long;

    .line 158
    iget-object v1, p0, Lzendesk/support/SuggestedArticleSearch$Builder;->sectionId:Ljava/lang/Long;

    invoke-static {v0, v1}, Lzendesk/support/SuggestedArticleSearch;->access$502(Lzendesk/support/SuggestedArticleSearch;Ljava/lang/Long;)Ljava/lang/Long;

    return-object v0
.end method

.method public forLocale(Ljava/util/Locale;)Lzendesk/support/SuggestedArticleSearch$Builder;
    .locals 0

    .line 106
    iput-object p1, p0, Lzendesk/support/SuggestedArticleSearch$Builder;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method public withCategoryId(Ljava/lang/Long;)Lzendesk/support/SuggestedArticleSearch$Builder;
    .locals 0

    .line 129
    iput-object p1, p0, Lzendesk/support/SuggestedArticleSearch$Builder;->categoryId:Ljava/lang/Long;

    return-object p0
.end method

.method public varargs withLabelNames([Ljava/lang/String;)Lzendesk/support/SuggestedArticleSearch$Builder;
    .locals 0

    .line 118
    iput-object p1, p0, Lzendesk/support/SuggestedArticleSearch$Builder;->labelNames:[Ljava/lang/String;

    return-object p0
.end method

.method public withQuery(Ljava/lang/String;)Lzendesk/support/SuggestedArticleSearch$Builder;
    .locals 0

    .line 94
    iput-object p1, p0, Lzendesk/support/SuggestedArticleSearch$Builder;->query:Ljava/lang/String;

    return-object p0
.end method

.method public withSectionId(Ljava/lang/Long;)Lzendesk/support/SuggestedArticleSearch$Builder;
    .locals 0

    .line 140
    iput-object p1, p0, Lzendesk/support/SuggestedArticleSearch$Builder;->sectionId:Ljava/lang/Long;

    return-object p0
.end method
