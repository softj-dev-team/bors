.class Lzendesk/support/ZendeskHelpCenterBlipsProvider;
.super Ljava/lang/Object;
.source "ZendeskHelpCenterBlipsProvider.java"

# interfaces
.implements Lzendesk/support/HelpCenterBlipsProvider;


# static fields
.field private static final BLIPS_FIELD_NAME_ARTICLE_ID:Ljava/lang/String; = "articleId"

.field private static final BLIPS_FIELD_NAME_CODE:Ljava/lang/String; = "code"

.field private static final BLIPS_FIELD_NAME_QUERY:Ljava/lang/String; = "query"

.field private static final BLIPS_FIELD_NAME_VOTE:Ljava/lang/String; = "vote"

.field private static final BLIPS_FIELD_VALUE_CODE:Ljava/lang/String; = "java"

.field private static final BLIPS_GUIDE_ACTION_SEARCH:Ljava/lang/String; = "search"

.field private static final BLIPS_GUIDE_ACTION_VOTE:Ljava/lang/String; = "articleVote"

.field private static final BLIPS_GUIDE_CATEGORY:Ljava/lang/String; = "GuideSDK"

.field private static final BLIPS_GUIDE_CHANNEL:Ljava/lang/String; = "guide_sdk"

.field private static final BLIPS_GUIDE_LABEL_HELP_CENTER:Ljava/lang/String; = "helpCenterForm"

.field private static final BLIPS_GUIDE_VERSION:Ljava/lang/String; = "1.0.9"

.field private static final LOG_TAG:Ljava/lang/String; = "HelpCenterBlipsProvider"


# instance fields
.field private blipsProvider:Lzendesk/core/BlipsProvider;

.field private locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lzendesk/core/BlipsProvider;Ljava/util/Locale;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lzendesk/support/ZendeskHelpCenterBlipsProvider;->blipsProvider:Lzendesk/core/BlipsProvider;

    .line 46
    iput-object p2, p0, Lzendesk/support/ZendeskHelpCenterBlipsProvider;->locale:Ljava/util/Locale;

    return-void
.end method

.method private sendUserAction(Lzendesk/core/BlipsGroup;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/core/BlipsGroup;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lzendesk/support/ZendeskHelpCenterBlipsProvider;->blipsProvider:Lzendesk/core/BlipsProvider;

    new-instance v8, Lzendesk/core/UserAction;

    const-string v2, "1.0.9"

    const-string v3, "guide_sdk"

    const-string v4, "GuideSDK"

    move-object v1, v8

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lzendesk/core/UserAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v8, p1}, Lzendesk/core/BlipsProvider;->sendBlip(Lzendesk/core/UserAction;Lzendesk/core/BlipsGroup;)V

    return-void
.end method


# virtual methods
.method public articleView(Lzendesk/support/Article;)V
    .locals 11

    const-string v0, "HelpCenterBlipsProvider"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "Aborting articleView blip: Article is null"

    .line 67
    invoke-static {v0, v1, p1}, Lcom/zendesk/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 71
    :cond_0
    invoke-virtual {p1}, Lzendesk/support/Article;->getHtmlUrl()Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-virtual {p1}, Lzendesk/support/Article;->getTitle()Ljava/lang/String;

    move-result-object v7

    .line 73
    invoke-virtual {p1}, Lzendesk/support/Article;->getLocale()Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    aput-object v5, v2, v1

    const/4 v3, 0x1

    aput-object v7, v2, v3

    const/4 v3, 0x2

    aput-object v9, v2, v3

    .line 75
    invoke-static {v2}, Lcom/zendesk/util/StringUtils;->hasLengthMany([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "Cannot blip articleView: Article required fields are null"

    .line 76
    invoke-static {v0, v1, p1}, Lcom/zendesk/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 80
    :cond_1
    invoke-virtual {p1}, Lzendesk/support/Article;->getId()Ljava/lang/Long;

    move-result-object v8

    if-nez v8, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "Cannot blip articleView: Id is null"

    .line 83
    invoke-static {v0, v1, p1}, Lcom/zendesk/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 87
    :cond_2
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string p1, "code"

    const-string v0, "java"

    .line 88
    invoke-interface {v10, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object p1, p0, Lzendesk/support/ZendeskHelpCenterBlipsProvider;->blipsProvider:Lzendesk/core/BlipsProvider;

    new-instance v0, Lzendesk/core/PageView;

    iget-object v1, p0, Lzendesk/support/ZendeskHelpCenterBlipsProvider;->locale:Ljava/util/Locale;

    .line 93
    invoke-static {v1}, Lcom/zendesk/util/LocaleUtil;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "1.0.9"

    const-string v4, "guide_sdk"

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lzendesk/core/PageView;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v1, Lzendesk/core/BlipsGroup;->PATHFINDER:Lzendesk/core/BlipsGroup;

    .line 90
    invoke-interface {p1, v0, v1}, Lzendesk/core/BlipsProvider;->sendBlip(Lzendesk/core/PageView;Lzendesk/core/BlipsGroup;)V

    return-void
.end method

.method public articleVote(Ljava/lang/Long;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "articleId"

    .line 108
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "vote"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object p1, Lzendesk/core/BlipsGroup;->BEHAVIOURAL:Lzendesk/core/BlipsGroup;

    const/4 p2, 0x0

    const-string v1, "articleVote"

    invoke-direct {p0, p1, v1, p2, v0}, Lzendesk/support/ZendeskHelpCenterBlipsProvider;->sendUserAction(Lzendesk/core/BlipsGroup;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public helpCenterSearch(Ljava/lang/String;)V
    .locals 3

    .line 51
    invoke-static {p1}, Lcom/zendesk/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "query"

    .line 56
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "code"

    const-string v1, "java"

    .line 57
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object p1, Lzendesk/core/BlipsGroup;->PATHFINDER:Lzendesk/core/BlipsGroup;

    const-string v1, "search"

    const-string v2, "helpCenterForm"

    invoke-direct {p0, p1, v1, v2, v0}, Lzendesk/support/ZendeskHelpCenterBlipsProvider;->sendUserAction(Lzendesk/core/BlipsGroup;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
