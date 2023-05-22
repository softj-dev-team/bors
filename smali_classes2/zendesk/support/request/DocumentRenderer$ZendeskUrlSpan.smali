.class Lzendesk/support/request/DocumentRenderer$ZendeskUrlSpan;
.super Landroid/text/style/URLSpan;
.source "DocumentRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/DocumentRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZendeskUrlSpan"
.end annotation


# instance fields
.field private final configHelper:Lzendesk/configurations/ConfigurationHelper;

.field private final configuration:Lzendesk/configurations/Configuration;

.field private final registry:Lzendesk/core/ActionHandlerRegistry;


# direct methods
.method constructor <init>(Ljava/lang/String;Lzendesk/core/ActionHandlerRegistry;Lzendesk/configurations/ConfigurationHelper;Lzendesk/configurations/Configuration;)V
    .locals 0

    .line 647
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 648
    iput-object p2, p0, Lzendesk/support/request/DocumentRenderer$ZendeskUrlSpan;->registry:Lzendesk/core/ActionHandlerRegistry;

    .line 649
    iput-object p3, p0, Lzendesk/support/request/DocumentRenderer$ZendeskUrlSpan;->configHelper:Lzendesk/configurations/ConfigurationHelper;

    .line 650
    iput-object p4, p0, Lzendesk/support/request/DocumentRenderer$ZendeskUrlSpan;->configuration:Lzendesk/configurations/Configuration;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 655
    invoke-virtual {p0}, Lzendesk/support/request/DocumentRenderer$ZendeskUrlSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    .line 657
    invoke-static {v0}, Lcom/zendesk/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 658
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->onClick(Landroid/view/View;)V

    return-void

    .line 662
    :cond_0
    iget-object v1, p0, Lzendesk/support/request/DocumentRenderer$ZendeskUrlSpan;->registry:Lzendesk/core/ActionHandlerRegistry;

    invoke-interface {v1, v0}, Lzendesk/core/ActionHandlerRegistry;->handlerByAction(Ljava/lang/String;)Lzendesk/core/ActionHandler;

    move-result-object v1

    if-nez v1, :cond_1

    .line 664
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->onClick(Landroid/view/View;)V

    return-void

    .line 668
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "help_center_view_article"

    .line 669
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    iget-object v0, p0, Lzendesk/support/request/DocumentRenderer$ZendeskUrlSpan;->configHelper:Lzendesk/configurations/ConfigurationHelper;

    iget-object v3, p0, Lzendesk/support/request/DocumentRenderer$ZendeskUrlSpan;->configuration:Lzendesk/configurations/Configuration;

    invoke-virtual {v0, v2, v3}, Lzendesk/configurations/ConfigurationHelper;->addToMap(Ljava/util/Map;Lzendesk/configurations/Configuration;)V

    .line 671
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lzendesk/core/ActionHandler;->handle(Ljava/util/Map;Landroid/content/Context;)V

    return-void
.end method
