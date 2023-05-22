.class public Lzendesk/support/guide/GuideSdkStartupProvider;
.super Lzendesk/core/SdkStartUpProvider;
.source "GuideSdkStartupProvider.java"


# instance fields
.field articleActionHandler:Lzendesk/support/guide/ViewArticleActionHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lzendesk/core/SdkStartUpProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected onStartUp(Landroid/content/Context;)V
    .locals 1

    .line 21
    sget-object p1, Lzendesk/core/Zendesk;->INSTANCE:Lzendesk/core/Zendesk;

    invoke-virtual {p1}, Lzendesk/core/Zendesk;->actionHandlerRegistry()Lzendesk/core/ActionHandlerRegistry;

    move-result-object p1

    .line 24
    iget-object v0, p0, Lzendesk/support/guide/GuideSdkStartupProvider;->articleActionHandler:Lzendesk/support/guide/ViewArticleActionHandler;

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {p1, v0}, Lzendesk/core/ActionHandlerRegistry;->remove(Lzendesk/core/ActionHandler;)V

    .line 28
    :cond_0
    new-instance v0, Lzendesk/support/guide/ViewArticleActionHandler;

    invoke-direct {v0}, Lzendesk/support/guide/ViewArticleActionHandler;-><init>()V

    iput-object v0, p0, Lzendesk/support/guide/GuideSdkStartupProvider;->articleActionHandler:Lzendesk/support/guide/ViewArticleActionHandler;

    .line 29
    invoke-interface {p1, v0}, Lzendesk/core/ActionHandlerRegistry;->add(Lzendesk/core/ActionHandler;)V

    return-void
.end method
