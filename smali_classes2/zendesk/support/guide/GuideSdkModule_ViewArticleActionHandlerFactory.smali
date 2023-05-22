.class public final Lzendesk/support/guide/GuideSdkModule_ViewArticleActionHandlerFactory;
.super Ljava/lang/Object;
.source "GuideSdkModule_ViewArticleActionHandlerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/guide/GuideSdkModule_ViewArticleActionHandlerFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/core/ActionHandler;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lzendesk/support/guide/GuideSdkModule_ViewArticleActionHandlerFactory;
    .locals 1

    .line 25
    invoke-static {}, Lzendesk/support/guide/GuideSdkModule_ViewArticleActionHandlerFactory$InstanceHolder;->access$000()Lzendesk/support/guide/GuideSdkModule_ViewArticleActionHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public static viewArticleActionHandler()Lzendesk/core/ActionHandler;
    .locals 1

    .line 29
    invoke-static {}, Lzendesk/support/guide/GuideSdkModule;->viewArticleActionHandler()Lzendesk/core/ActionHandler;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/core/ActionHandler;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lzendesk/support/guide/GuideSdkModule_ViewArticleActionHandlerFactory;->get()Lzendesk/core/ActionHandler;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/core/ActionHandler;
    .locals 1

    .line 21
    invoke-static {}, Lzendesk/support/guide/GuideSdkModule_ViewArticleActionHandlerFactory;->viewArticleActionHandler()Lzendesk/core/ActionHandler;

    move-result-object v0

    return-object v0
.end method
