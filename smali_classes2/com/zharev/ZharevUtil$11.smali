.class final Lcom/zharev/ZharevUtil$11;
.super Ljava/lang/Object;
.source "ZharevUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zharev/ZharevUtil;->showHelpCenter(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$token:Ljava/lang/String;

.field final synthetic val$userID:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 678
    iput-object p1, p0, Lcom/zharev/ZharevUtil$11;->val$token:Ljava/lang/String;

    iput-object p2, p0, Lcom/zharev/ZharevUtil$11;->val$userID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 681
    iget-object v0, p0, Lcom/zharev/ZharevUtil$11;->val$token:Ljava/lang/String;

    const-string v1, "Zendesk"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    new-instance v0, Lzendesk/core/JwtIdentity;

    iget-object v1, p0, Lcom/zharev/ZharevUtil$11;->val$token:Ljava/lang/String;

    invoke-direct {v0, v1}, Lzendesk/core/JwtIdentity;-><init>(Ljava/lang/String;)V

    .line 683
    sget-object v1, Lzendesk/core/Zendesk;->INSTANCE:Lzendesk/core/Zendesk;

    invoke-virtual {v1, v0}, Lzendesk/core/Zendesk;->setIdentity(Lzendesk/core/Identity;)V

    .line 685
    sget-object v0, Lzendesk/core/Zendesk;->INSTANCE:Lzendesk/core/Zendesk;

    invoke-virtual {v0}, Lzendesk/core/Zendesk;->provider()Lzendesk/core/ProviderStore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 688
    invoke-interface {v0}, Lzendesk/core/ProviderStore;->pushRegistrationProvider()Lzendesk/core/PushRegistrationProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/zharev/ZharevUtil$11;->val$userID:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lzendesk/core/PushRegistrationProvider;->registerWithDeviceIdentifier(Ljava/lang/String;Lcom/zendesk/service/ZendeskCallback;)V

    .line 691
    :cond_0
    sget-object v0, Lzendesk/core/Zendesk;->INSTANCE:Lzendesk/core/Zendesk;

    invoke-virtual {v0}, Lzendesk/core/Zendesk;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lzendesk/core/Zendesk;->INSTANCE:Lzendesk/core/Zendesk;

    invoke-virtual {v0}, Lzendesk/core/Zendesk;->getIdentity()Lzendesk/core/Identity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 692
    invoke-static {}, Lzendesk/support/guide/HelpCenterActivity;->builder()Lzendesk/support/guide/HelpCenterConfiguration$Builder;

    move-result-object v0

    invoke-static {}, Lcom/zharev/ZharevUtil;->access$000()Lcom/sdkbox/plugin/SDKBoxActivity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lzendesk/configurations/Configuration;

    invoke-virtual {v0, v1, v2}, Lzendesk/support/guide/HelpCenterConfiguration$Builder;->show(Landroid/content/Context;[Lzendesk/configurations/Configuration;)V

    :cond_1
    return-void
.end method
