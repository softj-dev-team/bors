.class final Lcom/zharev/ZharevUtil$12;
.super Ljava/lang/Object;
.source "ZharevUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zharev/ZharevUtil;->showRequestByID(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$requestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lcom/zharev/ZharevUtil$12;->val$requestId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 704
    sget-object v0, Lzendesk/core/Zendesk;->INSTANCE:Lzendesk/core/Zendesk;

    invoke-virtual {v0}, Lzendesk/core/Zendesk;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lzendesk/core/Zendesk;->INSTANCE:Lzendesk/core/Zendesk;

    invoke-virtual {v0}, Lzendesk/core/Zendesk;->getIdentity()Lzendesk/core/Identity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 705
    invoke-static {}, Lzendesk/support/request/RequestActivity;->builder()Lzendesk/support/request/RequestConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/zharev/ZharevUtil$12;->val$requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lzendesk/support/request/RequestConfiguration$Builder;->withRequestId(Ljava/lang/String;)Lzendesk/support/request/RequestConfiguration$Builder;

    move-result-object v0

    invoke-static {}, Lcom/zharev/ZharevUtil;->access$000()Lcom/sdkbox/plugin/SDKBoxActivity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lzendesk/configurations/Configuration;

    invoke-virtual {v0, v1, v2}, Lzendesk/support/request/RequestConfiguration$Builder;->show(Landroid/content/Context;[Lzendesk/configurations/Configuration;)V

    :cond_0
    return-void
.end method
