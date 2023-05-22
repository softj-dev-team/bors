.class Lcom/sdkbox/plugin/PluginSocialShare$2;
.super Ljava/lang/Object;
.source "PluginSocialShare.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/PluginSocialShare;->nativeShare(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/plugin/PluginSocialShare;

.field final synthetic val$shareInfo:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/PluginSocialShare;Ljava/util/Map;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginSocialShare$2;->this$0:Lcom/sdkbox/plugin/PluginSocialShare;

    iput-object p2, p0, Lcom/sdkbox/plugin/PluginSocialShare$2;->val$shareInfo:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "image"

    .line 65
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Lcom/sdkbox/plugin/PluginSocialShare$2;->val$shareInfo:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "image/png"

    .line 68
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sdkbox/plugin/PluginSocialShare$2;->val$shareInfo:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.extra.STREAM"

    .line 70
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v0, "text/plain"

    .line 72
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/sdkbox/plugin/PluginSocialShare$2;->val$shareInfo:Ljava/util/Map;

    const-string v2, "title"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    iget-object v2, p0, Lcom/sdkbox/plugin/PluginSocialShare$2;->val$shareInfo:Ljava/util/Map;

    const-string v3, "text"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 76
    iget-object v3, p0, Lcom/sdkbox/plugin/PluginSocialShare$2;->val$shareInfo:Ljava/util/Map;

    const-string v4, "link"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    if-eqz v3, :cond_3

    if-nez v2, :cond_2

    goto :goto_2

    .line 85
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v2

    :goto_2
    if-eqz v0, :cond_4

    const-string v2, "android.intent.extra.SUBJECT"

    .line 89
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    if-eqz v3, :cond_5

    const-string v2, "android.intent.extra.TEXT"

    .line 92
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    const/high16 v2, 0x10000000

    .line 94
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 95
    iget-object v2, p0, Lcom/sdkbox/plugin/PluginSocialShare$2;->this$0:Lcom/sdkbox/plugin/PluginSocialShare;

    invoke-static {v2}, Lcom/sdkbox/plugin/PluginSocialShare;->access$300(Lcom/sdkbox/plugin/PluginSocialShare;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    sget-object v0, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->SocialShareStateSuccess:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    const-string v1, ""

    const-string v2, "platform_native"

    invoke-static {v0, v1, v2}, Lcom/sdkbox/plugin/PluginShareEvent;->sendEventToNative(Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 98
    sget-object v1, Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;->SocialShareStateFail:Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sdkbox/plugin/PluginShareEvent;->sendEventToNative(Lcom/sdkbox/plugin/SocialShareResponse$SocialShareState;Ljava/lang/String;)V

    :goto_3
    return-void
.end method
