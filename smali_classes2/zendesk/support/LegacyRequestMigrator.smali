.class Lzendesk/support/LegacyRequestMigrator;
.super Ljava/lang/Object;
.source "LegacyRequestMigrator.java"

# interfaces
.implements Lzendesk/support/RequestMigrator;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LegacyRequestMigrator"

.field private static final PREFS_COMMENT_COUNT_KEY_PREFIX:Ljava/lang/String; = "request-id-cc"

.field private static final REQUEST_KEY:Ljava/lang/String; = "stored_requests"


# instance fields
.field private legacyRequestStorage:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lzendesk/support/LegacyRequestMigrator;->legacyRequestStorage:Landroid/content/SharedPreferences;

    return-void
.end method

.method private getCommentCountKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 75
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "request-id-cc"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "%s-%s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public clearLegacyRequestStorage()V
    .locals 1

    .line 44
    iget-object v0, p0, Lzendesk/support/LegacyRequestMigrator;->legacyRequestStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getLegacyRequests()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/support/RequestData;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lzendesk/support/LegacyRequestMigrator;->legacyRequestStorage:Landroid/content/SharedPreferences;

    const-string v1, "stored_requests"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/zendesk/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "LegacyRequestMigrator"

    const-string v4, "Migrating legacy request IDs."

    .line 55
    invoke-static {v3, v4, v2}, Lcom/zendesk/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-static {v0}, Lcom/zendesk/util/StringUtils;->fromCsv(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 61
    invoke-direct {p0, v3}, Lzendesk/support/LegacyRequestMigrator;->getCommentCountKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    iget-object v5, p0, Lzendesk/support/LegacyRequestMigrator;->legacyRequestStorage:Landroid/content/SharedPreferences;

    const/4 v6, -0x1

    invoke-interface {v5, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-le v4, v6, :cond_1

    .line 65
    invoke-static {v3, v4, v1}, Lzendesk/support/RequestData;->create(Ljava/lang/String;II)Lzendesk/support/RequestData;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_1
    invoke-static {v3, v1, v1}, Lzendesk/support/RequestData;->create(Ljava/lang/String;II)Lzendesk/support/RequestData;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v2
.end method
