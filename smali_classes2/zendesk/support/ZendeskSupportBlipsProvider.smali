.class Lzendesk/support/ZendeskSupportBlipsProvider;
.super Ljava/lang/Object;
.source "ZendeskSupportBlipsProvider.java"

# interfaces
.implements Lzendesk/support/SupportBlipsProvider;


# static fields
.field private static final BLIPS_FIELD_NAME_REQUEST_ID:Ljava/lang/String; = "requestId"

.field private static final BLIPS_SUPPORT_ACTION_INIT:Ljava/lang/String; = "init"

.field private static final BLIPS_SUPPORT_ACTION_REQUEST_CREATED:Ljava/lang/String; = "requestCreated"

.field private static final BLIPS_SUPPORT_ACTION_REQUEST_LIST_VIEWED:Ljava/lang/String; = "requestListViewed"

.field private static final BLIPS_SUPPORT_ACTION_REQUEST_UPDATED:Ljava/lang/String; = "requestUpdated"

.field private static final BLIPS_SUPPORT_ACTION_REQUEST_VIEWED:Ljava/lang/String; = "requestViewed"

.field private static final BLIPS_SUPPORT_CATEGORY:Ljava/lang/String; = "SupportSDK"

.field private static final BLIPS_SUPPORT_CHANNEL:Ljava/lang/String; = "support_sdk"

.field private static final BLIPS_SUPPORT_VERSION:Ljava/lang/String; = "5.1.0"


# instance fields
.field private blipsProvider:Lzendesk/core/BlipsProvider;


# direct methods
.method constructor <init>(Lzendesk/core/BlipsProvider;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lzendesk/support/ZendeskSupportBlipsProvider;->blipsProvider:Lzendesk/core/BlipsProvider;

    return-void
.end method

.method private sendUserAction(Lzendesk/core/BlipsGroup;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/core/BlipsGroup;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lzendesk/support/ZendeskSupportBlipsProvider;->blipsProvider:Lzendesk/core/BlipsProvider;

    new-instance v8, Lzendesk/core/UserAction;

    const-string v2, "5.1.0"

    const-string v3, "support_sdk"

    const-string v4, "SupportSDK"

    const/4 v6, 0x0

    move-object v1, v8

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lzendesk/core/UserAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v8, p1}, Lzendesk/core/BlipsProvider;->sendBlip(Lzendesk/core/UserAction;Lzendesk/core/BlipsGroup;)V

    return-void
.end method


# virtual methods
.method public requestCreated(Ljava/lang/String;)V
    .locals 2

    .line 44
    invoke-static {p1}, Lcom/zendesk/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "requestId"

    .line 49
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object p1, Lzendesk/core/BlipsGroup;->BEHAVIOURAL:Lzendesk/core/BlipsGroup;

    const-string v1, "requestCreated"

    invoke-direct {p0, p1, v1, v0}, Lzendesk/support/ZendeskSupportBlipsProvider;->sendUserAction(Lzendesk/core/BlipsGroup;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public requestListViewed()V
    .locals 3

    .line 80
    sget-object v0, Lzendesk/core/BlipsGroup;->BEHAVIOURAL:Lzendesk/core/BlipsGroup;

    const-string v1, "requestListViewed"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lzendesk/support/ZendeskSupportBlipsProvider;->sendUserAction(Lzendesk/core/BlipsGroup;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public requestUpdated(Ljava/lang/String;)V
    .locals 2

    .line 56
    invoke-static {p1}, Lcom/zendesk/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "requestId"

    .line 61
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object p1, Lzendesk/core/BlipsGroup;->BEHAVIOURAL:Lzendesk/core/BlipsGroup;

    const-string v1, "requestUpdated"

    invoke-direct {p0, p1, v1, v0}, Lzendesk/support/ZendeskSupportBlipsProvider;->sendUserAction(Lzendesk/core/BlipsGroup;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public requestViewed(Ljava/lang/String;)V
    .locals 2

    .line 68
    invoke-static {p1}, Lcom/zendesk/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "requestId"

    .line 73
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object p1, Lzendesk/core/BlipsGroup;->BEHAVIOURAL:Lzendesk/core/BlipsGroup;

    const-string v1, "requestViewed"

    invoke-direct {p0, p1, v1, v0}, Lzendesk/support/ZendeskSupportBlipsProvider;->sendUserAction(Lzendesk/core/BlipsGroup;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public supportSdkInit()V
    .locals 3

    .line 39
    sget-object v0, Lzendesk/core/BlipsGroup;->REQUIRED:Lzendesk/core/BlipsGroup;

    const-string v1, "init"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lzendesk/support/ZendeskSupportBlipsProvider;->sendUserAction(Lzendesk/core/BlipsGroup;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
