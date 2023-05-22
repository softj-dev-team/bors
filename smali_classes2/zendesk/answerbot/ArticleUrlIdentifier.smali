.class Lzendesk/answerbot/ArticleUrlIdentifier;
.super Ljava/lang/Object;
.source "ArticleUrlIdentifier.java"


# static fields
.field private static final HC_PATH_ELEMENT_ARTICLE:Ljava/lang/String; = "articles"

.field private static final HC_PATH_ELEMENT_HC:Ljava/lang/String; = "hc"

.field private static final HC_PATH_ELEMENT_NAME_SEPARATOR:Ljava/lang/String; = "-"


# instance fields
.field private final helpCenterProvider:Lzendesk/support/HelpCenterProvider;

.field private final subdomain:Ljava/lang/String;


# direct methods
.method constructor <init>(Lzendesk/core/ApplicationConfiguration;Lzendesk/support/HelpCenterProvider;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Lzendesk/core/ApplicationConfiguration;->getZendeskUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzendesk/answerbot/ArticleUrlIdentifier;->subdomain:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lzendesk/answerbot/ArticleUrlIdentifier;->helpCenterProvider:Lzendesk/support/HelpCenterProvider;

    return-void
.end method


# virtual methods
.method articleViewModelFromUrl(Ljava/lang/String;)Lzendesk/answerbot/ArticleViewModel;
    .locals 6

    .line 34
    invoke-static {p1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 40
    :cond_0
    iget-object v1, p0, Lzendesk/answerbot/ArticleUrlIdentifier;->subdomain:Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 43
    :cond_1
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->pathSegments()Ljava/util/List;

    move-result-object p1

    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v1, "articles"

    .line 50
    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    .line 51
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "hc"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v1, 0x2

    .line 56
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_4

    return-object v0

    :cond_4
    add-int/2addr v1, v3

    .line 60
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "-"

    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v1}, Lcom/zendesk/util/CollectionUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    return-object v0

    .line 69
    :cond_5
    aget-object v4, v1, v2

    invoke-static {v4}, Lcom/zendesk/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 70
    aget-object v0, v1, v2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 78
    array-length p1, v1

    if-le p1, v3, :cond_7

    .line 79
    array-length p1, v1

    :goto_0
    if-ge v3, p1, :cond_6

    .line 80
    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    .line 81
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_7
    const-string p1, ""

    .line 86
    :goto_1
    new-instance v1, Lzendesk/answerbot/ArticleViewModel;

    iget-object v2, p0, Lzendesk/answerbot/ArticleUrlIdentifier;->helpCenterProvider:Lzendesk/support/HelpCenterProvider;

    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v3}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    invoke-direct {v1, v2, v3, v0, p1}, Lzendesk/answerbot/ArticleViewModel;-><init>(Lzendesk/support/HelpCenterProvider;Landroidx/lifecycle/MutableLiveData;Ljava/lang/Long;Ljava/lang/String;)V

    return-object v1

    :cond_8
    :goto_2
    return-object v0
.end method
