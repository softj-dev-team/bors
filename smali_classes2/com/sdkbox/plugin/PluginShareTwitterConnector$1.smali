.class Lcom/sdkbox/plugin/PluginShareTwitterConnector$1;
.super Ljava/lang/Object;
.source "PluginShareTwitterConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/PluginShareTwitterConnector;->init(Lcom/sdkbox/plugin/JSON;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/plugin/PluginShareTwitterConnector;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$secret:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/PluginShareTwitterConnector;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector$1;->this$0:Lcom/sdkbox/plugin/PluginShareTwitterConnector;

    iput-object p2, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector$1;->val$secret:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 73
    :try_start_0
    new-instance v1, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    iget-object v2, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector$1;->this$0:Lcom/sdkbox/plugin/PluginShareTwitterConnector;

    invoke-static {v2}, Lcom/sdkbox/plugin/PluginShareTwitterConnector;->access$000(Lcom/sdkbox/plugin/PluginShareTwitterConnector;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/twitter/sdk/android/core/DefaultLogger;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/twitter/sdk/android/core/DefaultLogger;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->logger(Lcom/twitter/sdk/android/core/Logger;)Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    move-result-object v1

    new-instance v2, Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iget-object v3, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector$1;->val$key:Ljava/lang/String;

    iget-object v4, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector$1;->val$secret:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->twitterAuthConfig(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->debug(Z)Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->build()Lcom/twitter/sdk/android/core/TwitterConfig;

    move-result-object v1

    .line 74
    invoke-static {v1}, Lcom/twitter/sdk/android/core/Twitter;->initialize(Lcom/twitter/sdk/android/core/TwitterConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "twitter init fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "PluginShare"

    invoke-static {v2, v1, v0}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
