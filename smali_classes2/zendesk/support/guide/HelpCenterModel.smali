.class Lzendesk/support/guide/HelpCenterModel;
.super Ljava/lang/Object;
.source "HelpCenterModel.java"

# interfaces
.implements Lzendesk/support/guide/HelpCenterMvp$Model;


# instance fields
.field private final provider:Lzendesk/support/HelpCenterProvider;

.field private final settingsProvider:Lzendesk/support/HelpCenterSettingsProvider;


# direct methods
.method constructor <init>(Lzendesk/support/HelpCenterProvider;Lzendesk/support/HelpCenterSettingsProvider;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lzendesk/support/guide/HelpCenterModel;->provider:Lzendesk/support/HelpCenterProvider;

    .line 26
    iput-object p2, p0, Lzendesk/support/guide/HelpCenterModel;->settingsProvider:Lzendesk/support/HelpCenterSettingsProvider;

    return-void
.end method


# virtual methods
.method public getSettings(Lcom/zendesk/service/ZendeskCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Lzendesk/support/HelpCenterSettings;",
            ">;)V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterModel;->settingsProvider:Lzendesk/support/HelpCenterSettingsProvider;

    invoke-interface {v0, p1}, Lzendesk/support/HelpCenterSettingsProvider;->getSettings(Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method

.method public search(Ljava/util/List;Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/zendesk/service/ZendeskCallback<",
            "Ljava/util/List<",
            "Lzendesk/support/SearchArticle;",
            ">;>;)V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterModel;->provider:Lzendesk/support/HelpCenterProvider;

    new-instance v1, Lzendesk/support/HelpCenterSearch$Builder;

    invoke-direct {v1}, Lzendesk/support/HelpCenterSearch$Builder;-><init>()V

    .line 34
    invoke-virtual {v1, p3}, Lzendesk/support/HelpCenterSearch$Builder;->withQuery(Ljava/lang/String;)Lzendesk/support/HelpCenterSearch$Builder;

    move-result-object p3

    .line 35
    invoke-virtual {p3, p1}, Lzendesk/support/HelpCenterSearch$Builder;->withCategoryIds(Ljava/util/List;)Lzendesk/support/HelpCenterSearch$Builder;

    move-result-object p1

    .line 36
    invoke-virtual {p1, p2}, Lzendesk/support/HelpCenterSearch$Builder;->withSectionIds(Ljava/util/List;)Lzendesk/support/HelpCenterSearch$Builder;

    move-result-object p1

    .line 37
    invoke-virtual {p1, p4}, Lzendesk/support/HelpCenterSearch$Builder;->withLabelNames([Ljava/lang/String;)Lzendesk/support/HelpCenterSearch$Builder;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lzendesk/support/HelpCenterSearch$Builder;->build()Lzendesk/support/HelpCenterSearch;

    move-result-object p1

    .line 32
    invoke-interface {v0, p1, p5}, Lzendesk/support/HelpCenterProvider;->searchArticles(Lzendesk/support/HelpCenterSearch;Lcom/zendesk/service/ZendeskCallback;)V

    return-void
.end method
