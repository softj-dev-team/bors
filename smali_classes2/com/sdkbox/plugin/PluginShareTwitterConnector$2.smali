.class Lcom/sdkbox/plugin/PluginShareTwitterConnector$2;
.super Ljava/lang/Object;
.source "PluginShareTwitterConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/PluginShareTwitterConnector;->share(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/plugin/PluginShareTwitterConnector;


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/PluginShareTwitterConnector;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector$2;->this$0:Lcom/sdkbox/plugin/PluginShareTwitterConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector$2;->this$0:Lcom/sdkbox/plugin/PluginShareTwitterConnector;

    invoke-virtual {v0}, Lcom/sdkbox/plugin/PluginShareTwitterConnector;->isAuthentication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector$2;->this$0:Lcom/sdkbox/plugin/PluginShareTwitterConnector;

    invoke-virtual {v0}, Lcom/sdkbox/plugin/PluginShareTwitterConnector;->shareRequest()V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector$2;->this$0:Lcom/sdkbox/plugin/PluginShareTwitterConnector;

    sget-object v1, Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;->OperShareDirect:Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;

    invoke-static {v0, v1}, Lcom/sdkbox/plugin/PluginShareTwitterConnector;->access$102(Lcom/sdkbox/plugin/PluginShareTwitterConnector;Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;)Lcom/sdkbox/plugin/PluginShareTwitterConnector$Oper;

    .line 93
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginShareTwitterConnector$2;->this$0:Lcom/sdkbox/plugin/PluginShareTwitterConnector;

    invoke-virtual {v0}, Lcom/sdkbox/plugin/PluginShareTwitterConnector;->authenticationRequest()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 96
    sget-object v1, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->SocialShareStateFail:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sdkbox/plugin/PluginShareEvent;->sendEventToNative(Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
